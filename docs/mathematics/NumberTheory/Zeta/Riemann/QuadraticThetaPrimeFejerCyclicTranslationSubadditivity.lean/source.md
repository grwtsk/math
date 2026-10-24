# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTranslationSubadditivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98650995823c6291507b2d5277fc32f4154694e3` · SHA-256 `acc4aec533ca009562013fc31c29c94e5064934515aee2dca7c73a71fa746f0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTranslationTelescoping
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Translation L1 is always nonnegative. -/
theorem cyclicTranslationL1_nonnegative
    {L : ℕ}
    (f : ZMod L → ℝ)
    (r : ZMod L) :
    0 ≤ cyclicTranslationL1 f r := by
  unfold cyclicTranslationL1
  exact Finset.sum_nonneg fun x hx => abs_nonneg _

/-- Generic cyclic translation L1 is subadditive in the shift. -/
theorem cyclicTranslationL1_add_le
    {L : ℕ}
    (f : ZMod L → ℝ)
    (r s : ZMod L) :
    cyclicTranslationL1 f (r + s) ≤
      cyclicTranslationL1 f r + cyclicTranslationL1 f s := by
  unfold cyclicTranslationL1
  have hpoint :
      ∀ x : ZMod L,
        |f x - f (x - (r + s))| ≤
          |f x - f (x - r)| +
          |f (x - r) - f ((x - r) - s)| := by
    intro x
    simpa [sub_eq_add_neg, add_assoc, add_comm, add_left_comm] using
      abs_sub_le (f x) (f (x - r)) (f ((x - r) - s))
  calc
    (∑ x : ZMod L, |f x - f (x - (r + s))|)
      ≤
      ∑ x : ZMod L,
        (|f x - f (x - r)| +
          |f (x - r) - f ((x - r) - s)|) := by
            exact Finset.sum_le_sum fun x hx => hpoint x
    _ =
      (∑ x : ZMod L, |f x - f (x - r)|) +
      (∑ x : ZMod L,
        |f (x - r) - f ((x - r) - s)|) := by
          rw [Finset.sum_add_distrib]
    _ =
      (∑ x : ZMod L, |f x - f (x - r)|) +
      (∑ y : ZMod L, |f y - f (y - s)|) := by
          congr 1
          let e : ZMod L ≃ ZMod L := {
            toFun := fun x => x - r
            invFun := fun y => y + r
            left_inv := by intro x; simp
            right_inv := by intro y; simp
          }
          exact Fintype.sum_equiv e _ _ (by
            intro x
            simp [e])
    _ = _ := rfl

/-- Natural-multiple telescoping from subadditivity. -/
theorem cyclicTranslationL1_natCast_le
    {L : ℕ}
    (f : ZMod L → ℝ)
    (k : ℕ) :
    cyclicTranslationL1 f (k : ZMod L) ≤
      (k : ℝ) * cyclicTranslationL1 f (1 : ZMod L) := by
  induction k with
  | zero =>
      simp [cyclicTranslationL1]
  | succ k ih =>
      have hsub :=
        cyclicTranslationL1_add_le f
          (k : ZMod L) (1 : ZMod L)
      have hnonneg :=
        cyclicTranslationL1_nonnegative f (1 : ZMod L)
      rw [← Nat.cast_succ] at hsub
      calc
        cyclicTranslationL1 f ((k + 1 : ℕ) : ZMod L)
          ≤ cyclicTranslationL1 f (k : ZMod L) +
              cyclicTranslationL1 f (1 : ZMod L) := hsub
        _ ≤ (k : ℝ) * cyclicTranslationL1 f (1 : ZMod L) +
              cyclicTranslationL1 f (1 : ZMod L) := by
                linarith
        _ = ((k + 1 : ℕ) : ℝ) *
              cyclicTranslationL1 f (1 : ZMod L) := by
                push_cast
                ring

/-- Any cyclic shift costs at most its cyclic distance times the one-step
translation L1. -/
theorem cyclicTranslationL1_le_cyclicDistance
    {L : ℕ}
    (hL : 0 < L)
    (f : ZMod L → ℝ)
    (r : ZMod L) :
    cyclicTranslationL1 f r ≤
      (min r.val (L - r.val) : ℕ) *
        cyclicTranslationL1 f (1 : ZMod L) := by
  have hforward :
      cyclicTranslationL1 f r ≤
        (r.val : ℝ) *
          cyclicTranslationL1 f (1 : ZMod L) := by
    have h :=
      cyclicTranslationL1_natCast_le f r.val
    simpa only [ZMod.natCast_zmod_val] using h
  have hvalle : r.val ≤ L := (r.val_lt).le
  have hreverseCast :
      ((L - r.val : ℕ) : ZMod L) = -r := by
    calc
      ((L - r.val : ℕ) : ZMod L)
        = (L : ZMod L) - (r.val : ZMod L) := by
            rw [Nat.cast_sub hvalle]
      _ = 0 - r := by
            rw [ZMod.natCast_self, ZMod.natCast_zmod_val]
      _ = -r := by simp
  have hreverse :
      cyclicTranslationL1 f r ≤
        ((L - r.val : ℕ) : ℝ) *
          cyclicTranslationL1 f (1 : ZMod L) := by
    rw [← cyclicTranslationL1_neg f r]
    rw [← hreverseCast]
    exact cyclicTranslationL1_natCast_le f (L - r.val)
  by_cases hmin : r.val ≤ L - r.val
  · rw [Nat.min_eq_left hmin]
    exact hforward
  · have hrev : L - r.val ≤ r.val := Nat.le_of_not_ge hmin
    rw [Nat.min_eq_right hrev]
    exact hreverse

/-- The sharp-prefix telescoping supplier is now source-proved. -/
theorem cyclicSharpTranslationTelescoping :
    CyclicSharpTranslationTelescopingClaim := by
  intro X m hX hm0 hm1 r
  rw [cyclicSharpTranslationL1_eq_generic,
    cyclicSharpTranslationL1_eq_generic]
  exact cyclicTranslationL1_le_cyclicDistance
    (by
      unfold fejerOctavePeriod
      omega)
    (cyclicSharpPrefixIndicator X m) r

/-- The final smoothing frontier is reduced to the local one-step boundary
estimate alone. -/
def CyclicSharpUnitTranslationOnlyFrontier : Prop :=
  CyclicSharpUnitTranslationBoundClaim

end GRWTSK.RiemannHypothesis
```
