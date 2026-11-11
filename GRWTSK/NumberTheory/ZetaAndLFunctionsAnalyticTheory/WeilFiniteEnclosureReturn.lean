/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDenseCertificateReduction
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.IntervalMatrixCertificateConsumer
import GRWTSK.FunctionalAnalysis.WeightedConjugatePairingTopology

/-!
# Primitive Dirichlet return from exact-source finite enclosure coverage

OCERT-1 follow-up, math issue #1807 and research issue #47. Reuses the existing
PrimitiveDirichletSource/PrimitiveDirichletGRH, including conductor one, rather
than introducing another GRH predicate. The new finite rule composes the
existing rational Gram checker and an exact-source enclosure checker. Code d
may choose its own finite frame; its fixed reconstruction metric may be singular.

The true test space, common-support dense encoding, source-matrix lower return,
sound arithmetic enclosure checker, and coverage at EVERY source/window/code/
accuracy are premises. No finite matrix is asserted to represent the whole
infinite-dimensional support window. For complex tests, instantiate the matrix
and coordinates by the proved realification and splitVector, retaining imaginary
couplings. No all-real-tests restriction is silently imposed.

The final arithmetic return must identify the full original Weil form, including
all prime powers, conductor, gamma/parity terms, both applicable pole orientations
and multiplicities. Neither this return nor universal positive coverage is proved
here. SOURCE_PROOF_CANDIDATE; elaboration, fresh kernel replay, transitive axiom
audit, runtime refinement and independent review NOT_RUN. No novelty claim.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilFiniteEnclosureReturn

open GRWTSK.NumberTheory.WeilDenseCertificateReduction
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.IntervalMatrix

/-- Concrete finite-certificate refinement of the existing dense-test GRH
consumer. All unknown arithmetic suppliers remain visible arguments. -/
theorem primitiveGRH_of_interval_certificate_coverage
    {Window : ℕ → Type*} [∀ A, TopologicalSpace (Window A)]
    {Code : ℕ → Type*} {Index : (A : ℕ) → Code A → Type*}
    {ProofData : (A : ℕ) → Code A → Type*}
    [∀ A d, Fintype (Index A d)] [∀ A d, DecidableEq (Index A d)]
    (form : PrimitiveDirichletSource → (A : ℕ) → Window A → ℝ)
    (encode : (A : ℕ) → Code A → Window A)
    (dense : ∀ A, DenseRange (encode A))
    (continuous : ∀ source A, Continuous (form source A))
    (matrix : PrimitiveDirichletSource → (A : ℕ) → (d : Code A) →
      Matrix (Index A d) (Index A d) ℝ)
    (coordinates : (A : ℕ) → (d : Code A) → Index A d → ℝ)
    (metric : (A : ℕ) → (d : Code A) → Matrix (Index A d) (Index A d) ℚ)
    (oracle : (A : ℕ) → (d : Code A) →
      CertificateChecker PrimitiveDirichletSource (ProofData A d) (Packet (Index A d))
        (enclosureMeaning (fun source => matrix source A d)))
    (hmass : ∀ A d, 0 ≤ quadratic (fun i j => (metric A d i j : ℝ)) (coordinates A d))
    (hreturn : ∀ source A d,
      quadratic (matrix source A d) (coordinates A d) ≤ form source A (encode A d))
    (covered : ∀ source A (d : Code A) (k : ℕ),
      ∃ c : CertificateData (Index A d) (ProofData A d),
        consumerDecision (fun s => matrix s A d) (oracle A d) source c = .accept ∧
        c.packet.metric = metric A d ∧ (c.packet.tolerance : ℝ) = (1 / 2 : ℝ) ^ k)
    (returnsToArithmetic :
      (∀ source A (f : Window A), 0 ≤ form source A f) → PrimitiveDirichletGRH) :
    PrimitiveDirichletGRH := by
  apply returnsToArithmetic
  intro source A f
  have hcodes := nonneg_of_certified_packets (fun s d => form s A (encode A d))
    (fun s d => matrix s A d) (coordinates A) (metric A) (oracle A) source
    (hmass A) (hreturn source A) (covered source A)
  exact nonneg_of_dense_range (form source A) (encode A) (dense A)
    (continuous source A) hcodes f

/-- Program 2 supplies the continuity theorem for its FULL summable signed
pairing. This specialization removes a separate continuity premise, but does
not construct the arithmetic evaluation model or its source-return theorem.
The further dependency was inspected at 86e182d7abbc9d9622be4b95037d735f0eb1917d. -/
theorem primitiveGRH_of_weighted_interval_certificate_coverage
    {Window : ℕ → Type*} [∀ A, NormedAddCommGroup (Window A)]
    [∀ A, NormedSpace ℂ (Window A)] {Label : ℕ → Type*}
    {Code : ℕ → Type*} {Index : (A : ℕ) → Code A → Type*}
    {ProofData : (A : ℕ) → Code A → Type*}
    [∀ A d, Fintype (Index A d)] [∀ A d, DecidableEq (Index A d)]
    (model : PrimitiveDirichletSource → (A : ℕ) →
      GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel (Label A) (Window A))
    (encode : (A : ℕ) → Code A → Window A)
    (dense : ∀ A, DenseRange (encode A))
    (matrix : PrimitiveDirichletSource → (A : ℕ) → (d : Code A) →
      Matrix (Index A d) (Index A d) ℝ)
    (coordinates : (A : ℕ) → (d : Code A) → Index A d → ℝ)
    (metric : (A : ℕ) → (d : Code A) → Matrix (Index A d) (Index A d) ℚ)
    (oracle : (A : ℕ) → (d : Code A) →
      CertificateChecker PrimitiveDirichletSource (ProofData A d) (Packet (Index A d))
        (enclosureMeaning (fun source => matrix source A d)))
    (hmass : ∀ A d, 0 ≤ quadratic (fun i j => (metric A d i j : ℝ)) (coordinates A d))
    (hreturn : ∀ source A d,
      quadratic (matrix source A d) (coordinates A d) ≤
        (model source A).quadratic (encode A d))
    (covered : ∀ source A (d : Code A) (k : ℕ),
      ∃ c : CertificateData (Index A d) (ProofData A d),
        consumerDecision (fun s => matrix s A d) (oracle A d) source c = .accept ∧
        c.packet.metric = metric A d ∧ (c.packet.tolerance : ℝ) = (1 / 2 : ℝ) ^ k)
    (returnsToArithmetic :
      (∀ source A (f : Window A), 0 ≤ (model source A).quadratic f) → PrimitiveDirichletGRH) :
    PrimitiveDirichletGRH := by
  exact primitiveGRH_of_interval_certificate_coverage
    (fun source A => (model source A).quadratic) encode dense
    (fun source A => (model source A).continuous_quadratic)
    matrix coordinates metric oracle hmass hreturn covered returnsToArithmetic

end GRWTSK.NumberTheory.WeilFiniteEnclosureReturn
