/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletConductorCertificateReduction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletConductorTailBudgets
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteEnclosureReturn

/-!
# Conductor-filtered concrete interval certificate coverage

MSC2020: 11M26, 11M41, 65G30.
Local composition of Programs 7 and 10, inspected at grwtsk/math
8d7c8b8084caa6ff3cf6b254da449042617519f8. Coordination: math#1804, #1807;
research#50. The exact `consumerDecision`, packet, Gram factor, and source
checker are unchanged. The new fourth-moment `tailPacket_encloses` can supply
an enclosure premise after the actual arithmetic tail comparison is proved.

Only principal sources OR nonprincipal conductors below `conductorCutoff A`
need interval packets. The large-conductor branch is discharged by the original
`primitiveArithmeticValue` through `ArithmeticWindowModel.source_eq`.
The principal case is included in residual coverage, NOT silently discarded.

Every residual source, support window, dense test code and accuracy remains
quantified. The fixed metric may be singular; it must not vary with accuracy. A supplied
positive source scale restores any conductor normalization before source return.
Actual arithmetic enclosures, the dense supported test model and the completed
pole-inclusive source-return theorem are NOT constructed here. Complex tests
must use the exact realification including all imaginary coupling entries.
This is not a finite verification of GRH or a new definition of that target.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit,
runtime refinement and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates

open GRWTSK.NumberTheory.WeilDenseCertificateReduction
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.IntervalMatrix

/-- Program 10's concrete finite packets are required only in the residual
conductor branch. Acceptance still binds the exact packet to its source. -/
theorem primitiveGRH_of_conductor_filtered_interval_coverage
    {Window : ℕ → Type*} [∀ A, TopologicalSpace (Window A)]
    {Code : ℕ → Type*} {Index : (A : ℕ) → Code A → Type*}
    {ProofData : (A : ℕ) → Code A → Type*}
    [∀ A d, Fintype (Index A d)] [∀ A d, DecidableEq (Index A d)]
    (form : PrimitiveDirichletSource → (A : ℕ) → Window A → ℝ)
    (encode : (A : ℕ) → Code A → Window A)
    (dense : ∀ A, DenseRange (encode A))
    (continuous : ∀ source A, Continuous (form source A))
    (models : ∀ (source : PrimitiveDirichletSource) (hn : source.character ≠ 1) (A : ℕ),
      ArithmeticWindowModel source hn (A : ℝ) (Window A) (form source A))
    (matrix : PrimitiveDirichletSource → (A : ℕ) → (d : Code A) →
      Matrix (Index A d) (Index A d) ℝ)
    (coordinates : (A : ℕ) → (d : Code A) → Index A d → ℝ)
    (metric : (A : ℕ) → (d : Code A) → Matrix (Index A d) (Index A d) ℚ)
    (oracle : (A : ℕ) → (d : Code A) →
      CertificateChecker PrimitiveDirichletSource (ProofData A d) (Packet (Index A d))
        (enclosureMeaning (fun source => matrix source A d)))
    (hmass : ∀ A d, 0 ≤ quadratic (fun i j => (metric A d i j : ℝ)) (coordinates A d))
    (scale : PrimitiveDirichletSource → ℝ) (hscale : ∀ source, 0 < scale source)
    (hreturn : ∀ source A d,
      scale source * quadratic (matrix source A d) (coordinates A d) ≤
        form source A (encode A d))
    (covered : ∀ source A,
      (source.character = 1 ∨ source.character.conductor < conductorCutoff (A : ℝ)) →
      ∀ (d : Code A) (k : ℕ), ∃ c : CertificateData (Index A d) (ProofData A d),
        consumerDecision (fun s => matrix s A d) (oracle A d) source c = .accept ∧
        c.packet.metric = metric A d ∧ (c.packet.tolerance : ℝ) = (1 / 2 : ℝ) ^ k)
    (returnsToArithmetic :
      (∀ source A (f : Window A), 0 ≤ form source A f) → PrimitiveDirichletGRH) :
    PrimitiveDirichletGRH := by
  apply returnsToArithmetic
  intro source A f
  by_cases hres : source.character = 1 ∨
      source.character.conductor < conductorCutoff (A : ℝ)
  · have hmatrices := nonneg_of_certified_packets
      (fun s d => quadratic (matrix s A d) (coordinates A d))
      (fun s d => matrix s A d) (coordinates A) (metric A) (oracle A) source
      (hmass A) (fun _ => le_rfl) (covered source A hres)
    have hcodes : ∀ d : Code A, 0 ≤ form source A (encode A d) := by
      intro d
      exact (mul_nonneg (hscale source).le (hmatrices d)).trans (hreturn source A d)
    exact nonneg_of_dense_range (form source A) (encode A) (dense A)
      (continuous source A) hcodes f
  · have hn : source.character ≠ 1 := fun h => hres (Or.inl h)
    have hlarge : conductorCutoff (A : ℝ) ≤ source.character.conductor :=
      le_of_not_gt (fun h => hres (Or.inr h))
    letI : NeZero source.modulus := ⟨source.modulus_ne_zero⟩
    let model := models source hn A
    rw [model.source_eq f]
    exact primitiveArithmeticValue_nonneg_of_cutoff source.character source.primitive hn
      (A : ℝ) (model.squareIntegrable f) (model.archimedeanIntegrable f) hlarge

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates
