/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleValue
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPolePatch
import GRWTSK.Analysis.ComplexAnalysis.CenterJetVariation

set_option autoImplicit false

/-!
# Actual normalized-source derivative from a uniform analytic-difference bound

The finite derivative already exists, but its finite arithmetic radius alone
is not a source-derivative error. Bound the SAME source-minus-model difference
on the ENTIRE outer disk, then apply Cauchy at the center. The value output is
unchanged. No pointwise error inequality is differentiated.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.RationalPoleJet

open Metric Set
open GRWTSK.Analysis.ComplexAnalysis GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude magnitude_nonneg norm_le_magnitude)
open CriticalStripHeightDescent

/-- Outer-disk radius is independent of the smaller variation radius. -/
def check (c : Coordinates) (S : ℚ) (p : RationalPoleValue.Parameters) : Bool :=
  RationalPoleValue.check c p && decide (0 < S ∧ 0 < RationalPolePatch.leftMargin c S)

theorem check_iff (c : Coordinates) (S : ℚ) (p : RationalPoleValue.Parameters) :
    check c S p = true ↔ RationalPoleValue.check c p = true ∧
      0 < S ∧ 0 < RationalPolePatch.leftMargin c S := by
  simp [check, Bool.and_eq_true]

/-- Both factors use OUTER-disk bounds, not center magnitudes. -/
def uniformError (c : Coordinates) (S : ℚ) (p : RationalPoleValue.Parameters) : ℚ :=
  RationalPolePatch.factorBound c S * RationalPoleNormalizedJet.tailAllowance
    p.cutoff p.extraCorrections (RationalPolePatch.sizeBound c S)

theorem tailAllowance_nonneg (N p : ℕ) {B : ℚ} (hB : 0 ≤ B) :
    0 ≤ RationalPoleNormalizedJet.tailAllowance N p B := by
  have hm := PeriodicBernoulli.majorant_nonneg (2 * (p + 1))
  unfold RationalPoleNormalizedJet.tailAllowance
  positivity

theorem uniformError_nonneg (c : Coordinates) {S : ℚ} (hS : 0 ≤ S)
    (p : RationalPoleValue.Parameters) : 0 ≤ uniformError c S p := by
  unfold uniformError
  apply mul_nonneg
  · exact add_nonneg (magnitude_nonneg (sub c one)) hS
  · exact tailAllowance_nonneg _ _ (add_nonneg (magnitude_nonneg c) hS)

/-- All-point disk bounds retain the positive-half-plane guard even though F is entire. -/
theorem disk_geometry (c : Coordinates) (S : ℚ) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (S : ℝ)) :
    (RationalPolePatch.leftMargin c S : ℝ) ≤ z.re ∧
    ‖z‖ ≤ (RationalPolePatch.sizeBound c S : ℝ) ∧
    ‖z - 1‖ ≤ (RationalPolePatch.factorBound c S : ℝ) := by
  apply PoleNormalizedContourBounds.disk_bounds
  · simp [RationalPolePatch.leftMargin, toComplex]
  · simpa only [RationalPolePatch.sizeBound, Rat.cast_add] using
      add_le_add_right (norm_le_magnitude c) (S : ℝ)
  · simpa only [RationalPolePatch.factorBound, Rat.cast_add, toComplex_sub, toComplex_one] using
      add_le_add_right (norm_le_magnitude (sub c one)) (S : ℝ)
  · exact hz

/-- A uniform residual is DERIVED from the inherited exact Bernoulli source. -/
theorem uniform_source_error {c : Coordinates} {S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : check c S p = true) {z : ℂ} (hz : z ∈ closedBall (toComplex c) (S : ℝ)) :
    ‖poleNormalizedZeta z -
        PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1) z‖ ≤
      (uniformError c S p : ℝ) := by
  obtain ⟨hp,hS,hl⟩ := (check_iff _ _ _).mp hc
  have hN := ((RationalPoleValue.check_iff_valid _ _).mp hp).2.1
  obtain ⟨hzre,hzB,hzD⟩ := disk_geometry c S hz
  have hpos : 0 < z.re := lt_of_lt_of_le (by exact_mod_cast hl) hzre
  have htail : (0 : ℝ) ≤ (RationalPoleNormalizedJet.tailAllowance
      p.cutoff p.extraCorrections (RationalPolePatch.sizeBound c S) : ℝ) := by
    exact_mod_cast tailAllowance_nonneg p.cutoff p.extraCorrections
      (add_nonneg (magnitude_nonneg c) hS.le)
  have h := PoleNormalizedEndpointJet.source_error hN p.extraCorrections hpos hzB
  have h' : ‖poleNormalizedZeta z -
        PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1) z‖ ≤
      ‖z - 1‖ * (RationalPoleNormalizedJet.tailAllowance
        p.cutoff p.extraCorrections (RationalPolePatch.sizeBound c S) : ℝ) := by
    simpa only [RationalPoleNormalizedJet.tailAllowance, Rat.cast_mul, Rat.cast_div,
      Rat.cast_prod, Rat.cast_add, Rat.cast_natCast, Rat.cast_pow, mul_assoc] using h
  exact h'.trans (by
    rw [uniformError, Rat.cast_mul]
    exact mul_le_mul_of_nonneg_right hzD htail)

/-- The derivative's finite radius is augmented by the UNIFORM source radius / S. -/
def derivativeBall (c : Coordinates) (S : ℚ) (p : RationalPoleValue.Parameters) : Ball :=
  let b := (RationalPoleValue.finiteJet c p).2
  ⟨b.mid, b.rad + uniformError c S p / S⟩

/-- Applies Cauchy to F-G on a genuine circle, not to a pointwise inequality. -/
theorem derivativeBall_sound {c : Coordinates} {S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : check c S p = true) :
    Holds (derivativeBall c S p) (deriv poleNormalizedZeta (toComplex c)) := by
  obtain ⟨hp,hS,_hl⟩ := (check_iff _ _ _).mp hc
  have hN := ((RationalPoleValue.check_iff_valid _ _).mp hp).2.1
  have he := ClosedDiskCauchy.derivative_error_at_center (by exact_mod_cast hS)
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun z _ => PoleNormalizedEndpointJet.differentiable_model hN (p.extraCorrections + 1) z)
    (fun z hz => uniform_source_error hc (sphere_subset_closedBall hz))
  have hf := (RationalPoleValue.finiteJet_sound hp).2
  unfold Holds derivativeBall
  calc
    _ ≤ ‖deriv poleNormalizedZeta (toComplex c) -
          deriv (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1)) (toComplex c)‖ +
        ‖deriv (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1)) (toComplex c) -
          toComplex (RationalPoleValue.finiteJet c p).2.mid‖ := by
      simpa only [dist_eq_norm] using dist_triangle (deriv poleNormalizedZeta (toComplex c))
        (deriv (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1)) (toComplex c))
        (toComplex (RationalPoleValue.finiteJet c p).2.mid)
    _ ≤ (uniformError c S p : ℝ) / (S : ℝ) +
        ((RationalPoleValue.finiteJet c p).2.rad : ℝ) := add_le_add he hf
    _ = _ := by push_cast; ring

/-- Both components now refer to the actual source; no new value approximation is made. -/
def jet (c : Coordinates) (S : ℚ) (p : RationalPoleValue.Parameters) : Ball × Ball :=
  (RationalPoleValue.valueBall c p, derivativeBall c S p)

theorem jet_sound {c : Coordinates} {S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : check c S p = true) :
    Holds (jet c S p).1 (poleNormalizedZeta (toComplex c)) ∧
    Holds (jet c S p).2 (deriv poleNormalizedZeta (toComplex c)) :=
  ⟨RationalPoleValue.valueBall_sound ((check_iff _ _ _).mp hc).1, derivativeBall_sound hc⟩

def evaluate (c : Coordinates) (S : ℚ) (p : RationalPoleValue.Parameters) : Option (Ball × Ball) :=
  if check c S p then some (jet c S p) else none

theorem evaluate_sound {c : Coordinates} {S : ℚ} {p : RationalPoleValue.Parameters} {j : Ball × Ball}
    (h : evaluate c S p = some j) :
    Holds j.1 (poleNormalizedZeta (toComplex c)) ∧
    Holds j.2 (deriv poleNormalizedZeta (toComplex c)) := by
  by_cases hc : check c S p = true
  · have hj : jet c S p = j := by simpa [evaluate, hc] using h
    rw [← hj]
    exact jet_sound hc
  · simp [evaluate, hc] at h

end GRWTSK.RiemannHypothesis.RationalPoleJet
