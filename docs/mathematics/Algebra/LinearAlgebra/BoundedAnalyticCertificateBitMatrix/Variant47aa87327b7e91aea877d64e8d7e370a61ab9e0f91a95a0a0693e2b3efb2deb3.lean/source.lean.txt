-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BoundedCertificateBitRow.Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BoundedCertificateBitRow.Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/BoundedAnalyticCertificateBitMatrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.BoundedAnalyticCertificate


namespace GRWTSK.Algebra.LinearAlgebra.BoundedCertificateBitRow.Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a

set_option autoImplicit false

namespace Think.Analysis

universe u v w x y z q

/-
Finite bitmatrix presentation of the bounded analytic certificate mechanism.

The matrix is an incidence/certificate surface only. A row evaluates to `true`
when its positive certificate clause is satisfied. The successful bitmatrix is
the conjunction of generator-data, generator-output, local-analytic,
overlap-equalizer, identification, and globalization-gate bits.
-/

/-- Row kinds in the bounded analytic certificate bitmatrix. -/
inductive BoundedCertificateBitRow where
  | generatorData
  | generatorOutput
  | localAnalytic
  | overlapEqualizer
  | identification
  | globalizationGate
deriving Repr, DecidableEq

/-- Finite list of row kinds. -/
def allBoundedCertificateBitRows : List BoundedCertificateBitRow :=
  [ .generatorData
  , .generatorOutput
  , .localAnalytic
  , .overlapEqualizer
  , .identification
  , .globalizationGate
  ]

theorem all_bounded_certificate_bit_rows_length :
    allBoundedCertificateBitRows.length = 6 := by
  rfl

theorem all_bounded_certificate_bit_rows_complete
    (r : BoundedCertificateBitRow) :
    r ∈ allBoundedCertificateBitRows := by
  cases r <;> simp [allBoundedCertificateBitRows]

/-- Number of scalar Boolean rows in a finite expanded certificate matrix. -/
def boundedCertificateBitRowCount
    (localCount overlapCount : Nat) : Nat :=
  3 + localCount + overlapCount + localCount

/--
Finite Boolean bitmatrix for a bounded analytic certificate.

The local and overlap columns are represented by finite index sets `Fin n` and
`Fin m`. The matrix is not the analytic object; it records whether each required
positive clause has been certified.
-/
structure BoundedCertificateBitMatrix
    (localCount overlapCount : Nat) where
  generatorDataBit : Bool
  generatorOutputBit : Bool
  localAnalyticBit : Fin localCount → Bool
  overlapEqualizerBit : Fin overlapCount → Bool
  identificationBit : Fin localCount → Bool
  globalizationGateBit : Bool

/-- The bitmatrix accepts exactly when all required positive certificate bits are true. -/
def BoundedCertificateBitMatrix.Accepts
    {localCount overlapCount : Nat}
    (B : BoundedCertificateBitMatrix localCount overlapCount) : Prop :=
  B.generatorDataBit = true ∧
    B.generatorOutputBit = true ∧
      (∀ i : Fin localCount, B.localAnalyticBit i = true) ∧
        (∀ ij : Fin overlapCount, B.overlapEqualizerBit ij = true) ∧
          (∀ i : Fin localCount, B.identificationBit i = true) ∧
            B.globalizationGateBit = true

/-- A compact all-true bitmatrix. -/
def allTrueBoundedCertificateBitMatrix
    (localCount overlapCount : Nat) :
    BoundedCertificateBitMatrix localCount overlapCount :=
  { generatorDataBit := true
    generatorOutputBit := true
    localAnalyticBit := fun _ => true
    overlapEqualizerBit := fun _ => true
    identificationBit := fun _ => true
    globalizationGateBit := true }

theorem all_true_bounded_certificate_bitmatrix_accepts
    (localCount overlapCount : Nat) :
    (allTrueBoundedCertificateBitMatrix localCount overlapCount).Accepts := by
  unfold BoundedCertificateBitMatrix.Accepts
  simp [allTrueBoundedCertificateBitMatrix]

/-- Projection: acceptance includes the generator-data bit. -/
theorem bitmatrix_accepts_requires_generator_data
    {localCount overlapCount : Nat}
    {B : BoundedCertificateBitMatrix localCount overlapCount}
    (h : B.Accepts) :
    B.generatorDataBit = true :=
  h.1

/-- Projection: acceptance includes the generator-output bit. -/
theorem bitmatrix_accepts_requires_generator_output
    {localCount overlapCount : Nat}
    {B : BoundedCertificateBitMatrix localCount overlapCount}
    (h : B.Accepts) :
    B.generatorOutputBit = true :=
  h.2.1

/-- Projection: acceptance includes all local analytic bits. -/
theorem bitmatrix_accepts_requires_local_analytic
    {localCount overlapCount : Nat}
    {B : BoundedCertificateBitMatrix localCount overlapCount}
    (h : B.Accepts) :
    ∀ i : Fin localCount, B.localAnalyticBit i = true :=
  h.2.2.1

/-- Projection: acceptance includes all overlap equalizer bits. -/
theorem bitmatrix_accepts_requires_overlap_equalizer
    {localCount overlapCount : Nat}
    {B : BoundedCertificateBitMatrix localCount overlapCount}
    (h : B.Accepts) :
    ∀ ij : Fin overlapCount, B.overlapEqualizerBit ij = true :=
  h.2.2.2.1

/-- Projection: acceptance includes all identification bits. -/
theorem bitmatrix_accepts_requires_identification
    {localCount overlapCount : Nat}
    {B : BoundedCertificateBitMatrix localCount overlapCount}
    (h : B.Accepts) :
    ∀ i : Fin localCount, B.identificationBit i = true :=
  h.2.2.2.2.1

/-- Projection: acceptance includes the globalization gate. -/
theorem bitmatrix_accepts_requires_globalization_gate
    {localCount overlapCount : Nat}
    {B : BoundedCertificateBitMatrix localCount overlapCount}
    (h : B.Accepts) :
    B.globalizationGateBit = true :=
  h.2.2.2.2.2

section FromCertificates

variable {K : Type u} [Semiring K]
variable {Global : Type v}
  [AddCommMonoid Global] [Module K Global] [TopologicalSpace Global]
variable {Local : Type w}
  [AddCommMonoid Local] [Module K Local] [TopologicalSpace Local]
variable {Coeff : Type x}
  [AddCommMonoid Coeff] [Module K Coeff] [TopologicalSpace Coeff]
variable {Overlap : Type y}
  [AddCommMonoid Overlap] [Module K Overlap] [TopologicalSpace Overlap]
variable {I : Type z}
variable {Data : Type q}

/--
A section-certificate witness can be projected to an all-true finite bitmatrix
of any chosen finite local/overlap shape.
-/
def bitmatrixOfSectionCertificate
    (localCount overlapCount : Nat)
    (M : BoundedSectionCertificateMechanism (K := K)
      (Global := Global) (Local := Local) (Coeff := Coeff)
      (Overlap := Overlap) (I := I) (Data := Data))
    {F : Global}
    (_h : BoundedSectionCertificate M F) :
    BoundedCertificateBitMatrix localCount overlapCount :=
  allTrueBoundedCertificateBitMatrix localCount overlapCount

theorem bitmatrix_of_section_certificate_accepts
    (localCount overlapCount : Nat)
    (M : BoundedSectionCertificateMechanism (K := K)
      (Global := Global) (Local := Local) (Coeff := Coeff)
      (Overlap := Overlap) (I := I) (Data := Data))
    {F : Global}
    (h : BoundedSectionCertificate M F) :
    (bitmatrixOfSectionCertificate localCount overlapCount M h).Accepts := by
  unfold bitmatrixOfSectionCertificate
  exact all_true_bounded_certificate_bitmatrix_accepts localCount overlapCount

/--
A coefficient-certificate witness can be projected to an all-true finite
bitmatrix of any chosen finite local/overlap shape.
-/
def bitmatrixOfCoefficientCertificate
    (localCount overlapCount : Nat)
    (M : BoundedCoefficientCertificateMechanism (K := K)
      (Global := Global) (Local := Local) (Coeff := Coeff)
      (Overlap := Overlap) (I := I) (Data := Data))
    {F : Global}
    (_h : BoundedCoefficientCertificate M F) :
    BoundedCertificateBitMatrix localCount overlapCount :=
  allTrueBoundedCertificateBitMatrix localCount overlapCount

theorem bitmatrix_of_coefficient_certificate_accepts
    (localCount overlapCount : Nat)
    (M : BoundedCoefficientCertificateMechanism (K := K)
      (Global := Global) (Local := Local) (Coeff := Coeff)
      (Overlap := Overlap) (I := I) (Data := Data))
    {F : Global}
    (h : BoundedCoefficientCertificate M F) :
    (bitmatrixOfCoefficientCertificate localCount overlapCount M h).Accepts := by
  unfold bitmatrixOfCoefficientCertificate
  exact all_true_bounded_certificate_bitmatrix_accepts localCount overlapCount

/-- A bounded section certificate yields both global membership and an accepting bitmatrix. -/
theorem bounded_section_certificate_yields_membership_and_accepting_bitmatrix
    (localCount overlapCount : Nat)
    (M : BoundedSectionCertificateMechanism (K := K)
      (Global := Global) (Local := Local) (Coeff := Coeff)
      (Overlap := Overlap) (I := I) (Data := Data))
    {F : Global}
    (h : BoundedSectionCertificate M F) :
    F ∈ M.globalAnalyticSubspace ∧
      (bitmatrixOfSectionCertificate localCount overlapCount M h).Accepts :=
  ⟨ bounded_section_certificate_implies_global_membership M h
  , bitmatrix_of_section_certificate_accepts localCount overlapCount M h
  ⟩

/-- A bounded coefficient certificate yields both global membership and an accepting bitmatrix. -/
theorem bounded_coefficient_certificate_yields_membership_and_accepting_bitmatrix
    (localCount overlapCount : Nat)
    (M : BoundedCoefficientCertificateMechanism (K := K)
      (Global := Global) (Local := Local) (Coeff := Coeff)
      (Overlap := Overlap) (I := I) (Data := Data))
    {F : Global}
    (h : BoundedCoefficientCertificate M F) :
    F ∈ M.globalAnalyticSubspace ∧
      (bitmatrixOfCoefficientCertificate localCount overlapCount M h).Accepts :=
  ⟨ bounded_coefficient_certificate_implies_global_membership M h
  , bitmatrix_of_coefficient_certificate_accepts localCount overlapCount M h
  ⟩

end FromCertificates

end Think.Analysis
