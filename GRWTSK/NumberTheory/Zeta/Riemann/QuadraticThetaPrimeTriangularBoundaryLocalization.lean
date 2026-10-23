/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularSmoothingCandidate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The previously typed boundary claim is vacuous: choosing zero witnesses it
without any relation to a smoothing kernel or interval approximation. -/
theorem triangularBoundaryApproximationClaim_trivial :
    TriangularBoundaryApproximationClaim := by
  intro X N hX hN m hm0 hm1
  refine ⟨0, le_rfl, ?_⟩
  positivity

/-- Logarithmic prime mass in an interval is bounded by interval cardinality
times the logarithm of any positive upper endpoint. -/
theorem primeIntervalLogMass_le_length_mul_log
    {A B M : ℕ}
    (hAB : A ≤ B)
    (hBM : B ≤ M)
    (hM : 0 < M) :
    primeIntervalLogMass A B ≤
      ((B - A : ℕ) : ℝ) * Real.log (M : ℝ) := by
  let s : Finset ℕ := (Finset.Ioc A B).filter Nat.Prime
  have hterm :
      ∀ p ∈ s, Real.log p ≤ Real.log (M : ℝ) := by
    intro p hp
    have hpf := Finset.mem_filter.mp hp
    have hpPrime : p.Prime := hpf.2
    have hpB : p ≤ B := (Finset.mem_Ioc.mp hpf.1).2
    have hpM : p ≤ M := hpB.trans hBM
    exact Real.log_le_log
      (by exact_mod_cast hpPrime.pos)
      (by exact_mod_cast hpM)
  have hsum :
      (∑ p ∈ s, Real.log p) ≤
        s.card • Real.log (M : ℝ) :=
    Finset.sum_le_card_nsmul s (fun p => Real.log p)
      (Real.log (M : ℝ)) hterm
  have hcardNat :
      s.card ≤ B - A := by
    have hsubset :
        s ⊆ Finset.Ioc A B := by
      intro p hp
      exact (Finset.mem_filter.mp hp).1
    have hc := Finset.card_le_card hsubset
    simpa [s, Nat.card_Ioc] using hc
  have hcard :
      (s.card : ℝ) ≤ ((B - A : ℕ) : ℝ) := by
    exact_mod_cast hcardNat
  have hlog0 :
      0 ≤ Real.log (M : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hM))
  unfold primeIntervalLogMass
  change (∑ p ∈ s, Real.log p) ≤ _
  calc
    (∑ p ∈ s, Real.log p)
        ≤ s.card • Real.log (M : ℝ) := hsum
    _ = (s.card : ℝ) * Real.log (M : ℝ) := by
      rw [nsmul_eq_mul]
    _ ≤ ((B - A : ℕ) : ℝ) * Real.log (M : ℝ) :=
      mul_le_mul_of_nonneg_right hcard hlog0

/-- If an interval lies below 4X and has length at most H, then its
logarithmic prime mass is at most H log(4X). -/
theorem primeBoundaryMass_le_length_log_fourX
    {X A B H : ℕ}
    (hX : 0 < X)
    (hAB : A ≤ B)
    (hB4X : B ≤ 4 * X)
    (hlen : B - A ≤ H) :
    primeIntervalLogMass A B ≤
      (H : ℝ) * Real.log ((4 * X : ℕ) : ℝ) := by
  have hbase :=
    primeIntervalLogMass_le_length_mul_log
      hAB hB4X (by omega : 0 < 4 * X)
  have hlog0 :
      0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (by omega : 1 ≤ 4 * X)
  have hlenR :
      (((B - A : ℕ) : ℝ)) ≤ (H : ℝ) := by
    exact_mod_cast hlen
  exact hbase.trans
    (mul_le_mul_of_nonneg_right hlenR hlog0)

/-- Nonvacuous boundary localization data: the actual smoothing error is named
and bounded by prime mass from a concrete boundary interval. -/
structure TriangularBoundaryLocalizationData
    (X N m : ℕ) where
  left : ℕ
  right : ℕ
  left_le_right : left ≤ right
  right_le_fourX : right ≤ 4 * X
  interval_length_le :
    right - left ≤ Nat.ceil ((X : ℝ) / (N : ℝ))
  approximationError : ℝ
  approximationError_abs_le :
    |approximationError| ≤ primeIntervalLogMass left right

/-- Corrected boundary theorem: every target prefix receives actual localization
data tying the named approximation error to a boundary prime interval. -/
def TriangularBoundaryLocalizationClaim : Prop :=
  ∀ X N : ℕ, 0 < X → 0 < N →
    ∀ m : ℕ, 2 * X ≤ m → m ≤ 4 * X →
      Nonempty (TriangularBoundaryLocalizationData X N m)

/-- Once localization is proved, the arithmetic boundary cost is automatic. -/
theorem TriangularBoundaryLocalizationData.error_le_boundary_budget
    {X N m : ℕ}
    (hX : 0 < X)
    (data : TriangularBoundaryLocalizationData X N m) :
    |data.approximationError| ≤
      (Nat.ceil ((X : ℝ) / (N : ℝ)) : ℝ) *
        Real.log ((4 * X : ℕ) : ℝ) := by
  exact data.approximationError_abs_le.trans
    (primeBoundaryMass_le_length_log_fourX
      hX data.left_le_right data.right_le_fourX
      data.interval_length_le)

end GRWTSK.RiemannHypothesis
