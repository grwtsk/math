/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletConductorProfileBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDenseCertificateReduction
import GRWTSK.FunctionalAnalysis.WeightedConjugatePairing

/-!
# Conductor-filtered certificates for the original Dirichlet arithmetic value

MSC2020: 11M06, 11M26, 11M41, 46C20.

This is a local consequence and interface composition, not a new Weil criterion.
It combines RP-OC-07 (DCU-T4/T6) with RP-OC-10's exact-source certificate coverage
and RP-OC-02's signed whole-divisor perturbation bound. Source pin for all three:
`grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`.
Individual statements, primary arguments and source maps are in the adjacent
`.provenance/` directory. Coordination: math#1804, #1807, #1801; research#50.

`conductorCutoff T` is the ceiling of the existing exact real zero-margin
threshold, not the much larger elementary integer frontier. At or above this
cutoff the existing arithmetic comparison needs no positive certificate. Below
it, density and a sound checker return a sign ONLY if every requested test and
every accuracy is covered. No such coverage is constructed here.

The form is bound to the existing `primitiveArithmeticValue` by the explicit
`ArithmeticWindowModel.source_eq`. Its original signed prime correlations,
all active prime powers, conductor, and gamma/parity terms remain unchanged.
The principal sector is separate: its nonnegativity and the full pole-inclusive
arithmetic return are premises. Neither may be replaced by a positive shift or
an auxiliary matrix. The target is RP-OC-10's actual analytically continued
Dirichlet L-function, not a redefined GRH or a totalized Dirichlet series.

The represented tests, their topology, density and archimedean domain are
explicit inputs. No pointwise function-space topology is silently assumed to
make the Weil form continuous. The source-return premise must also discharge
coverage of the actual smooth compactly supported test domain at all windows.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit
and independent analytical review: NOT_RUN. No root import or dependency change.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates

open MeasureTheory LowSchur CharacterWindow OddRootProjection SourcePrimeCorrelation
open ConductorProfiles
open GRWTSK.NumberTheory.WeilDenseCertificateReduction
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates
open GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

/-- Only integer conductors strictly below this cutoff need residual certificates. -/
def conductorCutoff (T : ℝ) : ℕ := Nat.ceil (conductorThreshold T 0)

/-- The entire large-conductor branch is supplied by the original arithmetic bound. -/
theorem primitiveArithmeticValue_nonneg_of_cutoff {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (hlarge : conductorCutoff T ≤ chi.conductor) :
    0 ≤ primitiveArithmeticValue chi hp hn T f := by
  have hceil : conductorThreshold T 0 ≤ (conductorCutoff T : ℝ) := Nat.le_ceil _
  have hcast : (conductorCutoff T : ℝ) ≤ (chi.conductor : ℝ) := by
    exact_mod_cast hlarge
  simpa only [zero_mul] using
    primitiveArithmeticValue_margin_of_threshold chi hp hn T 0 hf harch
      (hceil.trans hcast)

/-- A negative original value cannot be supported on a zero-energy test. -/
theorem energy_pos_of_negative {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (hnegative : primitiveArithmeticValue chi hp hn T f < 0) :
    0 < energy f := by
  have hE : 0 ≤ energy f := integral_nonneg (fun _ => sq_nonneg _)
  by_contra h
  have hz : energy f = 0 := le_antisymm (le_of_not_gt h) hE
  have hbound := primitiveArithmeticValue_lower_bound chi hp hn T hf harch
  rw [hz, mul_zero] at hbound
  exact (not_le_of_gt hnegative) hbound

/-- Every genuine negative witness lies in the residual conductor branch. -/
theorem conductor_lt_cutoff_of_negative {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (hnegative : primitiveArithmeticValue chi hp hn T f < 0) :
    chi.conductor < conductorCutoff T := by
  by_contra h
  exact (not_le_of_gt hnegative)
    (primitiveArithmeticValue_nonneg_of_cutoff chi hp hn T hf harch (le_of_not_gt h))

/-- A signed upper endpoint sharpens the conductor bound by its Rayleigh quotient.
The positive-energy premise is essential; no division by a null test is admitted. -/
theorem conductor_le_threshold_of_upper_bound {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T upper : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (henergy : 0 < energy f)
    (hupper : primitiveArithmeticValue chi hp hn T f ≤ upper) :
    (chi.conductor : ℝ) ≤ conductorThreshold T (upper / energy f) := by
  have hbound := (primitiveArithmeticValue_lower_bound chi hp hn T hf harch).trans hupper
  have hcoefficient : Real.log (q : ℝ) + gammaConstant 1 0 - primeMass T ≤
      upper / energy f := (le_div_iff₀ henergy).mpr hbound
  have hlog : Real.log (q : ℝ) ≤ primeMass T - gammaConstant 1 0 + upper / energy f := by
    linarith
  have hq : (0 : ℝ) < q := by
    exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne q)
  have hc : chi.conductor = q := hp
  calc
    (chi.conductor : ℝ) = (q : ℝ) := by rw [hc]
    _ = Real.exp (Real.log (q : ℝ)) := (Real.exp_log hq).symm
    _ ≤ conductorThreshold T (upper / energy f) := Real.exp_le_exp.mpr hlog

/-- An explicit representation in the ORIGINAL supported arithmetic test domain.
This record is an input, not a construction of a smooth dictionary or topology. -/
structure ArithmeticWindowModel (source : PrimitiveDirichletSource)
    (nonprincipal : source.character ≠ 1) (T : ℝ) (X : Type*) (form : X → ℝ) where
  realize : X → ℝ → ℂ
  squareIntegrable : ∀ x, MemLp (realize x) 2 volume
  supported : ∀ x t, t ∉ Set.Icc (-T) T → realize x t = 0
  archimedeanIntegrable : ∀ x,
    IntegrableOn (gammaCorrectionDensity (gammaParity source.character) (realize x))
      (Set.Ioi 0)
  source_eq :
    letI : NeZero source.modulus := ⟨source.modulus_ne_zero⟩
    ∀ x, form x = primitiveArithmeticValue source.character source.primitive nonprincipal
      T (realize x)

/-- RP-OC-10 coverage is needed only for nonprincipal sources below the exact
window cutoff. The principal sector and return to the full actual L-function
remain separate premises. All windows, dense tests and accuracies are retained. -/
theorem primitiveGRH_of_conductor_filtered_coverage
    {Window : ℕ → Type*} [∀ A : ℕ, TopologicalSpace (Window A)]
    {Code : ℕ → Type*} {Certificate : Type*}
    (form : PrimitiveDirichletSource → ∀ A : ℕ, Window A → ℝ)
    (encode : ∀ A : ℕ, Code A → Window A)
    (dense : ∀ A : ℕ, DenseRange (encode A))
    (continuous : ∀ (source : PrimitiveDirichletSource) (A : ℕ),
      Continuous (form source A))
    (models : ∀ (source : PrimitiveDirichletSource) (hn : source.character ≠ 1) (A : ℕ),
      ArithmeticWindowModel source hn (A : ℝ) (Window A) (form source A))
    (checker : ∀ A : ℕ,
      CertificateChecker PrimitiveDirichletSource Certificate (Code A × ℕ)
        (lowerBoundMeaning (fun source d => form source A (encode A d))
          (fun k => (1 / 2 : ℝ) ^ k)))
    (covered : ∀ (source : PrimitiveDirichletSource), source.character ≠ 1 →
      ∀ A : ℕ, source.character.conductor < conductorCutoff (A : ℝ) →
      ∀ (d : Code A) (k : ℕ), ∃ c : Certificate, (checker A).Accepts source c (d, k))
    (principal : ∀ (source : PrimitiveDirichletSource), source.character = 1 →
      ∀ (A : ℕ) (x : Window A), 0 ≤ form source A x)
    (returnsToArithmetic :
      (∀ (source : PrimitiveDirichletSource) (A : ℕ) (x : Window A),
        0 ≤ form source A x) → PrimitiveDirichletGRH) :
    PrimitiveDirichletGRH := by
  apply returnsToArithmetic
  intro source A x
  by_cases hn : source.character = 1
  · exact principal source hn A x
  · by_cases hsmall : source.character.conductor < conductorCutoff (A : ℝ)
    · exact dense_nonneg_of_complete_coverage (fun s => form s A) (encode A)
        (fun k => (1 / 2 : ℝ) ^ k) (checker A) source (dense A)
        (continuous source A) dyadic_errors_arbitrarily_small (covered source hn A hsmall) x
    · letI : NeZero source.modulus := ⟨source.modulus_ne_zero⟩
      let model := models source hn A
      rw [model.source_eq x]
      exact primitiveArithmeticValue_nonneg_of_cutoff source.character source.primitive hn
        (A : ℝ) (model.squareIntegrable x) (model.archimedeanIntegrable x)
        (le_of_not_gt hsmall)

/-- RP-OC-02's complete signed pairing budget localizes the conductor only after
identification with the same original arithmetic value. No ordinate projection,
positive surrogate or finite-head-only sign enters this return. -/
theorem conductor_bounds_of_pairing_budget {q : ℕ} [NeZero q] {ι : Type*}
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (m w : ι → ℝ) (j : ι → ι) (u e : ι → ℂ) (S E M m0 tail : ℝ)
    (hm : ∀ i, 0 ≤ m i) (hw : ∀ i, 0 ≤ w i)
    (hj : ∀ i, w (j i) = w i) (hS : 0 ≤ S) (hE : 0 ≤ E)
    (hu : ∀ i, ‖u i‖ ≤ S * w i) (he : ∀ i, ‖e i‖ ≤ E * w i)
    (hs : Summable (fun i => m i * w i ^ 2))
    (hM : (∑' i, m i * w i ^ 2) ≤ M)
    (hnegative : (GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.pairing m j u u).re
      ≤ -2 * m0 + tail)
    (hbudget : tail + M * (2 * S * E + E ^ 2) ≤ m0) (hm0 : 0 < m0)
    (hsource : primitiveArithmeticValue chi hp hn T f =
      (GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.pairing
        m j (u + e) (u + e)).re) :
    0 < energy f ∧
      (chi.conductor : ℝ) ≤ conductorThreshold T (-m0 / energy f) ∧
      chi.conductor < conductorCutoff T := by
  have hpair := GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.pairing_add_self_re_le_neg
    m w j u e S E M m0 tail hm hw hj hS hE hu he hs hM hnegative hbudget
  have hupper : primitiveArithmeticValue chi hp hn T f ≤ -m0 := by
    rw [hsource]
    exact hpair
  have hneg : primitiveArithmeticValue chi hp hn T f < 0 :=
    hupper.trans_lt (neg_neg_of_pos hm0)
  have henergy := energy_pos_of_negative chi hp hn T hf harch hneg
  exact ⟨henergy, conductor_le_threshold_of_upper_bound chi hp hn T (-m0) hf harch
    henergy hupper, conductor_lt_cutoff_of_negative chi hp hn T hf harch hneg⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates
