/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.LinearMap.ReedSolomonRefinement
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Data.Fin.VecNotation
import Mathlib.Tactic.FinCases
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.PiProd

set_option autoImplicit false

open scoped BigOperators

/-!
# Reed--Solomon refinement returned to the screw kernel

The source payload has exactly the three entries used by the screw kernel.  Four-symbol
quadratic Reed--Solomon observations may use unrelated node sets at different bins, while
transport always decodes to this source before re-encoding.  The theorem below returns all
certified observation errors through the signed screw functional.

The literal finite zero-bin source is recorded using analytic multiplicities and the
rotated coordinate `-Im ρ + i (Re ρ - 1/2)`.  Root certification and enclosure errors remain
separate source premises; this file does not replace them with an encoding identity.

The audit record is heterogeneous: its syndrome and comparison types need not have the
same dimension or scale as either the three source signals or the four code symbols.
Coverage is a proof that the refined bins add to the actual source payload.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.ScrewKernelRefinement

noncomputable section

open GRWTSK.Algebra.LinearAlgebra.LinearMap.ReedSolomonRefinement

/-- The three source values consumed by the screw kernel. -/
abbrev SourcePayload := Fin 3 → ℂ

/-- Four Reed--Solomon evaluation symbols. -/
abbrev Symbols := Fin 4 → ℂ

/-- The rotated coordinate `z_ρ = -Im ρ + i (Re ρ - 1/2)` attached to a complex zero. -/
def zeroCoordinate (ρ : ℂ) : ℂ :=
  -(ρ.im : ℂ) + Complex.I * ((ρ.re - (1 / 2 : ℝ) : ℝ) : ℂ)

/-- The literal source function supplied by a finite zero bin, retaining multiplicities.

External root enclosures and zero certificates are intentionally not inferred from this
formula; their errors enter the reconstruction theorem through the observation premises. -/
def zeroBinFunction {α : Type*} (B : Finset α) (root : α → ℂ)
    (multiplicity : α → ℕ) (v : ℝ) : ℂ :=
  ∑ ρ ∈ B, (multiplicity ρ : ℂ) *
    (Complex.exp (Complex.I * zeroCoordinate (root ρ) * (v : ℂ)) - 1) /
      zeroCoordinate (root ρ) ^ 2

/-- The actual three-coordinate source payload `(g(t-u), g(t), g(-u))`. -/
def sourcePayload (g : ℝ → ℂ) (t u : ℝ) : SourcePayload :=
  ![g (t - u), g t, g (-u)]

/-- The exact three-coordinate payload of a finite zero bin. -/
def zeroBinSourcePayload {α : Type*} (B : Finset α) (root : α → ℂ)
    (multiplicity : α → ℕ) (t u : ℝ) : SourcePayload :=
  sourcePayload (zeroBinFunction B root multiplicity) t u

@[simp]
theorem sourcePayload_apply_zero (g : ℝ → ℂ) (t u : ℝ) :
    sourcePayload g t u 0 = g (t - u) :=
  rfl

@[simp]
theorem sourcePayload_apply_one (g : ℝ → ℂ) (t u : ℝ) :
    sourcePayload g t u 1 = g t :=
  rfl

@[simp]
theorem sourcePayload_apply_two (g : ℝ → ℂ) (t u : ℝ) :
    sourcePayload g t u 2 = g (-u) :=
  rfl

/-- The signed source functional `L x = x₀ - x₁ - x₂`. -/
def screwFunctional : SourcePayload →L[ℂ] ℂ :=
  (ContinuousLinearMap.proj (R := ℂ) (φ := fun _ : Fin 3 => ℂ) (0 : Fin 3)) -
    (ContinuousLinearMap.proj (R := ℂ) (φ := fun _ : Fin 3 => ℂ) (1 : Fin 3)) -
      (ContinuousLinearMap.proj (R := ℂ) (φ := fun _ : Fin 3 => ℂ) (2 : Fin 3))

@[simp]
theorem screwFunctional_apply (x : SourcePayload) :
    screwFunctional x = x 0 - x 1 - x 2 := by
  simp [screwFunctional]

/-- This bin's contribution to the screw kernel. -/
def screwContribution (g : ℝ → ℂ) (t u : ℝ) : ℂ :=
  screwFunctional (sourcePayload g t u)

@[simp]
theorem screwContribution_eq (g : ℝ → ℂ) (t u : ℝ) :
    screwContribution g t u = g (t - u) - g t - g (-u) := by
  simp [screwContribution]

/-- The finite zero-bin source returns to the literal signed screw-kernel expression. -/
@[simp]
theorem zeroBinScrewContribution_eq {α : Type*} (B : Finset α) (root : α → ℂ)
    (multiplicity : α → ℕ) (t u : ℝ) :
    screwContribution (zeroBinFunction B root multiplicity) t u =
      zeroBinFunction B root multiplicity (t - u) -
        zeroBinFunction B root multiplicity t -
          zeroBinFunction B root multiplicity (-u) := by
  simp

/-- Pointwise additivity of refined bin functions gives exact source coverage. -/
theorem sourcePayload_refines {ι : Type*} (s : Finset ι)
    (g : ℝ → ℂ) (childFunction : ι → ℝ → ℂ) (t u : ℝ)
    (refines : ∀ v, g v = ∑ i ∈ s, childFunction i v) :
    CoverageCertificate s (sourcePayload g t u)
      (fun i => sourcePayload (childFunction i) t u) := by
  unfold CoverageCertificate
  funext k
  fin_cases k <;> simp [sourcePayload, refines]

/-- Exact Reed--Solomon aggregation of the screw source across a disjoint refinement. -/
theorem encoded_source_refines {ι : Type*} (s : Finset ι)
    (parent : QuadraticEvaluationCode ℂ)
    (child : ι → QuadraticEvaluationCode ℂ)
    (g : ℝ → ℂ) (childFunction : ι → ℝ → ℂ) (t u : ℝ)
    (refines : ∀ v, g v = ∑ i ∈ s, childFunction i v) :
    parent.encode (sourcePayload g t u) =
      ∑ i ∈ s, transport parent.toCode (child i).toCode
        ((child i).encode (sourcePayload (childFunction i) t u)) := by
  exact encode_aggregate s parent.toCode (fun i => (child i).toCode)
    (sourcePayload g t u) (fun i => sourcePayload (childFunction i) t u)
    (sourcePayload_refines s g childFunction t u refines)

/-- Source-preserving Reed--Solomon refinement with all certified errors returned to the
actual screw-kernel functional.

The parent audit error is the aggregate comparison seam `δ_B`; each child audit error is
its independent source enclosure `ε_j`.  The coverage proof is stored in the parent audit
record.  Syndrome and comparison data remain available for separate falsification and
positivity checks but do not silently strengthen this analytic estimate.  Instantiating
`g` with `zeroBinFunction B root multiplicity` gives the stated finite-zero-bin theorem. -/
theorem screwKernel_source_preserving_refinement_error
    {ι ParentSyndrome ParentComparison ChildSyndrome ChildComparison : Type*}
    {ChildCoverage : Prop} (s : Finset ι)
    (parent : QuadraticEvaluationCode ℂ)
    (child : ι → QuadraticEvaluationCode ℂ)
    (g : ℝ → ℂ) (childFunction : ι → ℝ → ℂ) (t u : ℝ)
    (parentObservation :
      Observation Symbols ParentSyndrome ParentComparison
        (CoverageCertificate s (sourcePayload g t u)
          (fun i => sourcePayload (childFunction i) t u)))
    (childObservation :
      ι → Observation Symbols ChildSyndrome ChildComparison ChildCoverage)
    (aggregateError :
      ‖parentObservation.symbols -
        ∑ i ∈ s, transport parent.toCode (child i).toCode
          (childObservation i).symbols‖ ≤
        parentObservation.audit.interpolationError)
    (sourceError : ∀ i ∈ s,
      ‖(childObservation i).symbols -
        (child i).encode (sourcePayload (childFunction i) t u)‖ ≤
          (childObservation i).audit.interpolationError) :
    ‖screwFunctional (parent.decode parentObservation.symbols) -
        screwContribution g t u‖ ≤
      ‖screwFunctional.comp parent.decode‖ *
          parentObservation.audit.interpolationError +
        ∑ i ∈ s, ‖screwFunctional.comp (child i).decode‖ *
          (childObservation i).audit.interpolationError := by
  simpa [screwContribution, QuadraticEvaluationCode.toCode] using
    source_error_bound s parent.toCode (fun i => (child i).toCode)
      screwFunctional (sourcePayload g t u)
      (fun i => sourcePayload (childFunction i) t u)
      parentObservation.symbols (fun i => (childObservation i).symbols)
      (fun i => (childObservation i).audit.interpolationError)
      parentObservation.audit.interpolationError
      parentObservation.audit.coverage aggregateError sourceError

end

end GRWTSK.NumberTheory.Zeta.Riemann.ScrewKernelRefinement
