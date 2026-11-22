/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, transitive axiom audit, fresh kernel replay: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeJacobiGmAdaptiveCertificate
import Mathlib.Tactic

/-!
# Exact integer curvature of the source's signed smoothed prime-power readout

Alpoge's native Level.Gm comprises the *real signed* finite prime-power
sum plus -x*log x and a linear correction (Euler constant and genuine
nontrivial-character L'/L(1,chi)). The arithmetic term is a finite sum
of ramps max(x-n,0) with coefficients Lambda(n)*phase(n)/n.

These lemmas are RH-independent algebra on the literal source cutoff.
They formalize:
  (1) integer second difference of each ramp is exactly Kronecker delta;
  (2) sum of ramps recovers a signed coefficient at integer k;
  (3) piecewise affineness where there is no active threshold;
  (4) endpoint modulus certification on each knot-free interval.

The exact equality with *Alpoge's separately pinned native Level.Gm*
remains an isolated source normalization obligation. No final theorem,
RH, spectral zero data, or substitute positive quadratic is imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeGmDiscreteCurvature

/-- A ramp with threshold at an actual integer arithmetic position. -/
def hinge (n : ℕ) (x : ℝ) : ℝ := max (x - (n : ℝ)) 0

/-- Arbitrary signed finite prime-power coefficients, including
negative or vanishing real character-phase weights. -/
def signedHingeHead (M : ℕ) (c : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 M, c n * hinge n x

/-- The symmetric integer second difference of a source function. -/
def secondDifference (F : ℝ → ℝ) (k : ℕ) : ℝ :=
  F ((k : ℝ) + 1) - 2 * F (k : ℝ) + F ((k : ℝ) - 1)

/-- Any integer ramp has discrete curvature only at its own kink.
The last endpoint and the zero-valued threshold are preserved. -/
theorem hinge_secondDifference (n k : ℕ) (hn : 0 < n) (hk : 0 < k) :
    secondDifference (hinge n) k = if n = k then 1 else 0 := by
  unfold secondDifference hinge
  rcases lt_trichotomy n k with hlt | heq | hgt
  · have h₁ : (n : ℝ) ≤ (k : ℝ) - 1 := by
      have hnat : n + 1 ≤ k := Nat.succ_le_iff.mpr hlt
      exact_mod_cast hnat
    have h₂ : (n : ℝ) ≤ (k : ℝ) := by linarith
    have h₃ : (n : ℝ) ≤ (k : ℝ) + 1 := by linarith
    rw [max_eq_left (by linarith : 0 ≤ (k : ℝ) + 1 - n),
      max_eq_left (by linarith : 0 ≤ (k : ℝ) - n),
      max_eq_left (by linarith : 0 ≤ (k : ℝ) - 1 - n)]
    simp only [if_neg (ne_of_lt hlt)]
    ring
  · subst n
    simp [max_eq_left, max_eq_right]
  · have h₁ : (k : ℝ) + 1 ≤ (n : ℝ) := by
      have hnat : k + 1 ≤ n := Nat.succ_le_iff.mpr hgt
      exact_mod_cast hnat
    rw [max_eq_right (by linarith : (k : ℝ) + 1 - n ≤ 0),
      max_eq_right (by linarith : (k : ℝ) - n ≤ 0),
      max_eq_right (by linarith : (k : ℝ) - 1 - n ≤ 0)]
    simp only [if_neg (ne_of_gt hgt)]
    ring

/-- A finite signed source's discrete second difference is the exact
coefficient at k, not a magnitude, provided k is in the original
finite arithmetic window. -/
theorem signedHingeHead_secondDifference (M k : ℕ) (hk : 0 < k)
    (c : ℕ → ℝ) :
    secondDifference (signedHingeHead M c) k =
      if k ∈ Finset.Icc 1 M then c k else 0 := by
  classical
  have hsum :
      secondDifference (signedHingeHead M c) k =
        ∑ n ∈ Finset.Icc 1 M, c n *
          secondDifference (hinge n) k := by
    simp only [secondDifference, signedHingeHead,
      Finset.mul_sum, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hsum]
  calc
    (∑ n ∈ Finset.Icc 1 M, c n *
        secondDifference (hinge n) k) =
      ∑ n ∈ Finset.Icc 1 M, if n = k then c n else 0 := by
        apply Finset.sum_congr rfl
        intro n hn
        have hnpos : 0 < n := (Finset.mem_Icc.mp hn).1
        rw [hinge_secondDifference n k hnpos hk]
        split_ifs <;> ring
    _ = if k ∈ Finset.Icc 1 M then c k else 0 := by
        simp

/-- Every hinge is affine between endpoints that do not straddle
its integer threshold. This includes exact equality at a threshold. -/
theorem hinge_affine_on_knot_free (n : ℕ)
    (a b t : ℝ) (hab : a ≤ b) (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    (hsep : (n : ℝ) ≤ a ∨ b ≤ (n : ℝ)) :
    hinge n ((1 - t) * a + t * b) =
      (1 - t) * hinge n a + t * hinge n b := by
  have hxlo : a ≤ (1 - t) * a + t * b := by nlinarith
  have hxhi : (1 - t) * a + t * b ≤ b := by nlinarith
  rcases hsep with hnlo | hnhi
  · have h₁ : 0 ≤ a - (n : ℝ) := by linarith
    have h₂ : 0 ≤ b - (n : ℝ) := by linarith
    have h₃ : 0 ≤ (1 - t) * a + t * b - (n : ℝ) := by linarith
    simp only [hinge, max_eq_left h₁, max_eq_left h₂, max_eq_left h₃]
    ring
  · have h₁ : a - (n : ℝ) ≤ 0 := by linarith
    have h₂ : b - (n : ℝ) ≤ 0 := by linarith
    have h₃ : (1 - t) * a + t * b - (n : ℝ) ≤ 0 := by linarith
    simp only [hinge, max_eq_right h₁, max_eq_right h₂,
      max_eq_right h₃, mul_zero, add_zero]

/-- The entire signed sum, with arbitrarily negative coefficients,
is exactly affine on an interval containing no active source kink. -/
theorem signedHingeHead_affine_of_no_knot (M : ℕ) (c : ℕ → ℝ)
    (a b t : ℝ) (hab : a ≤ b) (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    (hnoknot : ∀ n ∈ Finset.Icc 1 M, c n ≠ 0 →
      (n : ℝ) ≤ a ∨ b ≤ (n : ℝ)) :
    signedHingeHead M c ((1 - t) * a + t * b) =
      (1 - t) * signedHingeHead M c a +
        t * signedHingeHead M c b := by
  classical
  unfold signedHingeHead
  rw [← Finset.mul_sum, ← Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hz : c n = 0
  · simp [hz]
  · rw [hinge_affine_on_knot_free n a b t hab ht0 ht1 (hnoknot n hn hz)]
    ring

/-- A signed arithmetic error cannot overshoot its two endpoint
moduli on a kink-free interval; this is exact, not a sampled mesh. -/
theorem signedHingeHead_abs_le_max_endpoints (M : ℕ) (c : ℕ → ℝ)
    (a b t : ℝ) (hab : a ≤ b) (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    (hnoknot : ∀ n ∈ Finset.Icc 1 M, c n ≠ 0 →
      (n : ℝ) ≤ a ∨ b ≤ (n : ℝ)) :
    |signedHingeHead M c ((1 - t) * a + t * b)| ≤
      max (|signedHingeHead M c a|) (|signedHingeHead M c b|) := by
  rw [signedHingeHead_affine_of_no_knot M c a b t hab ht0 ht1 hnoknot]
  have hleft : 0 ≤ 1 - t := by linarith
  calc
    |(1 - t) * signedHingeHead M c a +
        t * signedHingeHead M c b|
      ≤ |(1 - t) * signedHingeHead M c a| +
          |t * signedHingeHead M c b| := abs_add_le _ _
    _ = (1 - t) * |signedHingeHead M c a| +
        t * |signedHingeHead M c b| := by
          rw [abs_mul, abs_mul, abs_of_nonneg hleft,
            abs_of_nonneg ht0]
    _ ≤ (1 - t) * max (|signedHingeHead M c a|)
            (|signedHingeHead M c b|) +
          t * max (|signedHingeHead M c a|)
            (|signedHingeHead M c b|) := by
          apply add_le_add
          · exact mul_le_mul_of_nonneg_left (le_max_left _ _) hleft
          · exact mul_le_mul_of_nonneg_left (le_max_right _ _) ht0
    _ = _ := by ring

end GRWTSK.NumberTheory.AlpogeGmDiscreteCurvature
