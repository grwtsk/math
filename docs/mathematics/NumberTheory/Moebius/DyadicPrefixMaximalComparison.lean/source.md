# Complete source: GRWTSK.NumberTheory.Moebius.DyadicPrefixMaximalComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a48f1478b662e4895cf30c6544cc14872b71f474` · SHA-256 `1f3888e053277847592e1500faca7b515118d0d08e17003add0bbe6f035cff56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #433 / #430 / #410 / #405 / #397 / #391 / #388 / #373 /
  #369 / #366 / #357 / #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.TerminalMertensTwoPointPrefixObstruction
import Mathlib.Tactic.Linarith
import Lean.Elab.Tactic.Omega

/-!
# Finite dyadic maximal comparison

This module proves one source-independent finite comparison needed after the
terminal-prefix information-loss witness.  A prefix crossing a dyadic midpoint
is decomposed into the complete left half plus a prefix of the right half.
A weighted two-term square inequality then pays one additional depth factor.

The resulting theorem controls every prefix square on an interval of length
`2^m` by `(m+1)` times a finite tree energy containing squares of aligned
dyadic block sums.

No Möbius estimate, asymptotic statement, positivity assumption beyond sums of
squares, maximal-energy witness, or Riemann-hypothesis conclusion is proved.
All proof scripts await exact-head Lean elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.DyadicPrefixComparison

open scoped BigOperators

/-- Prefix sum of length `N` beginning at `start`. -/
def intervalPrefixSum (a : ℕ → ℝ) (start N : ℕ) : ℝ :=
  ∑ i ∈ Finset.range N, a (start + i)

/-- The aligned dyadic block sum of length `2^m`. -/
def dyadicBlockSum (a : ℕ → ℝ) (start m : ℕ) : ℝ :=
  intervalPrefixSum a start (2 ^ m)

/-- Full binary-tree energy of aligned dyadic block sums.

At depth zero this is the singleton block square.  At successor depth the root
block square is added to the complete left and right subtree energies. -/
def dyadicTreeEnergy (a : ℕ → ℝ) (start : ℕ) : ℕ → ℝ
  | 0 => dyadicBlockSum a start 0 ^ 2
  | m + 1 =>
      dyadicBlockSum a start (m + 1) ^ 2 +
        dyadicTreeEnergy a start m +
        dyadicTreeEnergy a (start + 2 ^ m) m

theorem intervalPrefixSum_zero (a : ℕ → ℝ) (start : ℕ) :
    intervalPrefixSum a start 0 = 0 := by
  simp [intervalPrefixSum]

theorem intervalPrefixSum_add
    (a : ℕ → ℝ) (start M N : ℕ) :
    intervalPrefixSum a start (M + N) =
      intervalPrefixSum a start M +
        intervalPrefixSum a (start + M) N := by
  simp [intervalPrefixSum, Finset.sum_range_add, Nat.add_assoc]

theorem dyadicTreeEnergy_nonneg
    (a : ℕ → ℝ) (start m : ℕ) :
    0 ≤ dyadicTreeEnergy a start m := by
  induction m generalizing start with
  | zero =>
      simp only [dyadicTreeEnergy]
      exact sq_nonneg _
  | succ m ih =>
      simp only [dyadicTreeEnergy]
      exact add_nonneg
        (add_nonneg (sq_nonneg _) (ih start))
        (ih (start + 2 ^ m))

/-- The root block square is one summand of its dyadic tree energy. -/
theorem dyadicBlockSum_sq_le_treeEnergy
    (a : ℕ → ℝ) (start m : ℕ) :
    dyadicBlockSum a start m ^ 2 ≤ dyadicTreeEnergy a start m := by
  cases m with
  | zero =>
      simp [dyadicTreeEnergy]
  | succ m =>
      simp only [dyadicTreeEnergy]
      have hL := dyadicTreeEnergy_nonneg a start m
      have hR := dyadicTreeEnergy_nonneg a (start + 2 ^ m) m
      nlinarith

/-- Algebraic payment for adjoining one complete dyadic block to a prefix
already controlled by `k` units of right-subtree energy. -/
private theorem add_sq_le_succ_mul_energy
    {k L R EL ER : ℝ}
    (hk : 0 < k)
    (hL : L ^ 2 ≤ EL)
    (hR : R ^ 2 ≤ k * ER) :
    (L + R) ^ 2 ≤ (k + 1) * (EL + ER) := by
  have hk1 : 0 ≤ k + 1 := by linarith
  have hA : 0 ≤ k * (k + 1) * (EL - L ^ 2) := by
    exact mul_nonneg (mul_nonneg hk.le hk1) (sub_nonneg.mpr hL)
  have hB : 0 ≤ (k * L - R) ^ 2 := sq_nonneg _
  have hC : 0 ≤ (k + 1) * (k * ER - R ^ 2) := by
    exact mul_nonneg hk1 (sub_nonneg.mpr hR)
  have hprod :
      0 ≤ k * ((k + 1) * (EL + ER) - (L + R) ^ 2) := by
    nlinarith
  have hgap :
      0 ≤ (k + 1) * (EL + ER) - (L + R) ^ 2 :=
    (mul_nonneg_iff_of_pos_left hk).mp hprod
  linarith

/-- Every prefix square on a dyadic interval is controlled by the complete
aligned dyadic-tree energy with exactly one factor per possible binary depth. -/
theorem intervalPrefixSum_sq_le_dyadicTreeEnergy
    (a : ℕ → ℝ) :
    ∀ m start N : ℕ, N ≤ 2 ^ m →
      intervalPrefixSum a start N ^ 2 ≤
        ((m : ℝ) + 1) * dyadicTreeEnergy a start m := by
  intro m
  induction m with
  | zero =>
      intro start N hN
      have hcases : N = 0 ∨ N = 1 := by omega
      rcases hcases with rfl | rfl
      · simp [intervalPrefixSum, dyadicTreeEnergy]
        exact sq_nonneg _
      · simp [intervalPrefixSum, dyadicBlockSum, dyadicTreeEnergy]
  | succ m ih =>
      intro start N hN
      let H : ℕ := 2 ^ m
      have hpow : 2 ^ (m + 1) = H + H := by
        dsimp [H]
        rw [Nat.pow_succ]
        omega
      by_cases hleft : N ≤ H
      · have hIH := ih start N hleft
        have hEL : 0 ≤ dyadicTreeEnergy a start m :=
          dyadicTreeEnergy_nonneg a start m
        have hER : 0 ≤ dyadicTreeEnergy a (start + H) m := by
          simpa [H] using dyadicTreeEnergy_nonneg a (start + 2 ^ m) m
        have hroot :
            dyadicTreeEnergy a start m ≤
              dyadicTreeEnergy a start (m + 1) := by
          simp only [dyadicTreeEnergy]
          have hs := sq_nonneg (dyadicBlockSum a start (m + 1))
          nlinarith
        have hcoef :
            ((m : ℝ) + 1) * dyadicTreeEnergy a start m ≤
              ((m : ℝ) + 2) * dyadicTreeEnergy a start m := by
          exact mul_le_mul_of_nonneg_right (by linarith) hEL
        have hrootmul :
            ((m : ℝ) + 2) * dyadicTreeEnergy a start m ≤
              ((m : ℝ) + 2) * dyadicTreeEnergy a start (m + 1) := by
          exact mul_le_mul_of_nonneg_left hroot (by positivity)
        calc
          intervalPrefixSum a start N ^ 2 ≤
              ((m : ℝ) + 1) * dyadicTreeEnergy a start m := hIH
          _ ≤ ((m : ℝ) + 2) * dyadicTreeEnergy a start m := hcoef
          _ ≤ ((m : ℝ) + 2) * dyadicTreeEnergy a start (m + 1) := hrootmul
          _ = (((m + 1 : ℕ) : ℝ) + 1) *
              dyadicTreeEnergy a start (m + 1) := by
                push_cast
                ring
      · have hright : H < N := by omega
        let Rn : ℕ := N - H
        have hRn : Rn ≤ H := by
          dsimp [Rn]
          rw [hpow] at hN
          omega
        have hsplitN : N = H + Rn := by
          dsimp [Rn]
          omega
        have hsplit :
            intervalPrefixSum a start N =
              dyadicBlockSum a start m +
                intervalPrefixSum a (start + H) Rn := by
          rw [hsplitN, intervalPrefixSum_add]
          rfl
        have hR :=
          ih (start + H) Rn hRn
        have hL :
            dyadicBlockSum a start m ^ 2 ≤
              dyadicTreeEnergy a start m :=
          dyadicBlockSum_sq_le_treeEnergy a start m
        have hpair :
            (dyadicBlockSum a start m +
              intervalPrefixSum a (start + H) Rn) ^ 2 ≤
              ((m : ℝ) + 2) *
                (dyadicTreeEnergy a start m +
                  dyadicTreeEnergy a (start + H) m) := by
          convert add_sq_le_succ_mul_energy
            (k := (m : ℝ) + 1)
            (L := dyadicBlockSum a start m)
            (R := intervalPrefixSum a (start + H) Rn)
            (EL := dyadicTreeEnergy a start m)
            (ER := dyadicTreeEnergy a (start + H) m)
            (by positivity) hL hR using 1
          ring
        have hsubtree :
            dyadicTreeEnergy a start m +
                dyadicTreeEnergy a (start + H) m ≤
              dyadicTreeEnergy a start (m + 1) := by
          simp only [dyadicTreeEnergy]
          have hs := sq_nonneg (dyadicBlockSum a start (m + 1))
          dsimp [H]
          nlinarith
        have hsubtreeMul :
            ((m : ℝ) + 2) *
                (dyadicTreeEnergy a start m +
                  dyadicTreeEnergy a (start + H) m) ≤
              ((m : ℝ) + 2) *
                dyadicTreeEnergy a start (m + 1) := by
          exact mul_le_mul_of_nonneg_left hsubtree (by positivity)
        rw [hsplit]
        calc
          (dyadicBlockSum a start m +
              intervalPrefixSum a (start + H) Rn) ^ 2 ≤
              ((m : ℝ) + 2) *
                (dyadicTreeEnergy a start m +
                  dyadicTreeEnergy a (start + H) m) := hpair
          _ ≤ ((m : ℝ) + 2) *
              dyadicTreeEnergy a start (m + 1) := hsubtreeMul
          _ = (((m + 1 : ℕ) : ℝ) + 1) *
              dyadicTreeEnergy a start (m + 1) := by
                push_cast
                ring

end GRWTSK.RiemannHypothesis.CCC.DyadicPrefixComparison

#print axioms GRWTSK.RiemannHypothesis.CCC.DyadicPrefixComparison.intervalPrefixSum_sq_le_dyadicTreeEnergy
```
