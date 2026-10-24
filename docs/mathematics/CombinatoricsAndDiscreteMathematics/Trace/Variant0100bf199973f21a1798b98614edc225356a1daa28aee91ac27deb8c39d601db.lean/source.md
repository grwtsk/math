# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Trace.Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49eef764712108247285c07a71404608441cd8ee` · SHA-256 `b2a13c274cc8d5b5e9ea3593b689dd447e5bac236254a35b63a4a04f16dcacec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.StableTraceAlgebraLaws.Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.StableTraceAlgebraLaws.Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/Trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.FunctionalSymmetry

/-!
# Canonical finite crossed-product trace

The canonical trace reads the identity-group coefficient and averages it
against the invariant law.  The finite linearity laws are proved exactly.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.StableTraceAlgebraLaws.Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd

namespace Mathematics.SpectralClosure

def canonicalTrace
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (law : FiniteLaw State)
    (identity : Group)
    (element : CrossedProductElement State Group) : ℝ :=
  ∑ state,
    law.mass state * element.coefficient identity state

@[simp] theorem canonicalTrace_zero
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (law : FiniteLaw State)
    (identity : Group) :
    canonicalTrace law identity
      (CrossedProductElement.zero :
        CrossedProductElement State Group) = 0 := by
  simp [canonicalTrace, CrossedProductElement.zero]

theorem canonicalTrace_add
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (law : FiniteLaw State)
    (identity : Group)
    (left right : CrossedProductElement State Group) :
    canonicalTrace law identity (left.add right) =
      canonicalTrace law identity left +
      canonicalTrace law identity right := by
  simp only [canonicalTrace, CrossedProductElement.add]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro state _
  rw [mul_add]

theorem canonicalTrace_scale
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (law : FiniteLaw State)
    (identity : Group)
    (scalar : ℝ)
    (element : CrossedProductElement State Group) :
    canonicalTrace law identity (element.scale scalar) =
      scalar * canonicalTrace law identity element := by
  simp only [canonicalTrace, CrossedProductElement.scale]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro state _
  calc
    law.mass state *
          (scalar * element.coefficient identity state) =
        (law.mass state * scalar) *
          element.coefficient identity state := by
            rw [mul_assoc]
    _ = (scalar * law.mass state) *
          element.coefficient identity state := by
            rw [mul_comm (law.mass state) scalar]
    _ = scalar *
          (law.mass state *
            element.coefficient identity state) := by
            rw [mul_assoc]

def crossedProductUnit
    {State Group : Type}
    [Fintype State] [Fintype Group] [DecidableEq Group]
    (identity : Group) :
    CrossedProductElement State Group where
  coefficient groupElement _ :=
    if groupElement = identity then 1 else 0
  sourceSubject := fun _ _ => "crossed-product-unit"
  authorityClass := fun _ _ => .documentary

theorem canonicalTrace_unit
    {State Group : Type}
    [Fintype State] [Fintype Group] [DecidableEq Group]
    (law : FiniteLaw State)
    (identity : Group) :
    canonicalTrace law identity
        (crossedProductUnit identity :
          CrossedProductElement State Group) =
      1 := by
  simp [canonicalTrace, crossedProductUnit, law.totalMass]

theorem canonicalTrace_nonnegative_of_identity_coefficient
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (law : FiniteLaw State)
    (identity : Group)
    (element : CrossedProductElement State Group)
    (coefficientNonnegative :
      ∀ state, 0 ≤ element.coefficient identity state) :
    0 ≤ canonicalTrace law identity element := by
  unfold canonicalTrace
  apply Finset.sum_nonneg
  intro state _
  exact mul_nonneg
    (law.nonnegative state)
    (coefficientNonnegative state)

def stableInvariantTrace
    {State Group : Type}
    [Fintype State] [Fintype Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group)
    (element : CrossedProductElement State Group) : ℝ :=
  canonicalTrace invariant.law identity element

noncomputable def matrixFiberCanonicalTrace
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (rank : Nat)
    (law : FiniteLaw State)
    (identity : Group)
    (element :
      MatrixFiberCrossedProductElement State Group rank) : ℂ :=
  ∑ state,
    (law.mass state : ℂ) *
      normalizedMatrixTrace rank
        (element.coefficient identity state)

theorem stableInvariantTrace_unit
    {State Group : Type}
    [Fintype State] [Fintype Group] [DecidableEq Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group) :
    stableInvariantTrace invariant identity
        (crossedProductUnit identity :
          CrossedProductElement State Group) =
      1 :=
  canonicalTrace_unit invariant.law identity

theorem stableInvariantTrace_nonnegative_of_identity_coefficient
    {State Group : Type}
    [Fintype State] [Fintype Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group)
    (element : CrossedProductElement State Group)
    (coefficientNonnegative :
      ∀ state, 0 ≤ element.coefficient identity state) :
    0 ≤ stableInvariantTrace invariant identity element :=
  canonicalTrace_nonnegative_of_identity_coefficient
    invariant.law identity element coefficientNonnegative

/-!
Full positivity on `A⋆A`, traciality, and action invariance require an admitted
crossed-product multiplication, involution, and automorphism action.  The
current finite coefficient model does not manufacture those operations.  The
following record makes the extra premises explicit and proof-bearing.
-/

structure StableTraceAlgebraLaws
    {State Group : Type}
    [Fintype State] [Fintype Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group) where
  multiply :
    CrossedProductElement State Group →
      CrossedProductElement State Group →
        CrossedProductElement State Group
  involution :
    CrossedProductElement State Group →
      CrossedProductElement State Group
  automorphism :
    Group →
      CrossedProductElement State Group →
        CrossedProductElement State Group
  positive :
    ∀ element,
      0 ≤
        stableInvariantTrace invariant identity
          (multiply (involution element) element)
  tracial :
    ∀ left right,
      stableInvariantTrace invariant identity
          (multiply left right) =
        stableInvariantTrace invariant identity
          (multiply right left)
  automorphismInvariant :
    ∀ groupElement element,
      stableInvariantTrace invariant identity
          (automorphism groupElement element) =
        stableInvariantTrace invariant identity element
  proofRef : SpectralId

/-!
The matrix-fiber trace laws are conditional on an explicitly supplied
crossed-product multiplication, involution, unit, and automorphism action.
`normalizedMatrixTrace_matrixFiberAction` proves the local unitary-conjugation
step; this record retains the remaining global algebra and invariant-law
premises rather than silently deriving them from the word "unitary".
-/

structure MatrixFiberCanonicalTraceLaws
    {State G : Type}
    [Fintype State] [Fintype G] [Group G]
    (rank : Nat)
    (law : FiniteLaw State)
    (identity : G) where
  identityIsGroupIdentity : identity = 1
  unit :
    MatrixFiberCrossedProductElement State G rank
  multiply :
    MatrixFiberCrossedProductElement State G rank →
      MatrixFiberCrossedProductElement State G rank →
        MatrixFiberCrossedProductElement State G rank
  involution :
    MatrixFiberCrossedProductElement State G rank →
      MatrixFiberCrossedProductElement State G rank
  automorphism :
    G →
      MatrixFiberCrossedProductElement State G rank →
        MatrixFiberCrossedProductElement State G rank
  normalized :
    matrixFiberCanonicalTrace rank law identity unit = 1
  positiveRealPart :
    ∀ element,
      0 ≤
        (matrixFiberCanonicalTrace rank law identity
          (multiply (involution element) element)).re
  positiveImaginaryPartZero :
    ∀ element,
      (matrixFiberCanonicalTrace rank law identity
        (multiply (involution element) element)).im = 0
  tracial :
    ∀ left right,
      matrixFiberCanonicalTrace rank law identity
          (multiply left right) =
        matrixFiberCanonicalTrace rank law identity
          (multiply right left)
  automorphismInvariant :
    ∀ groupElement element,
      matrixFiberCanonicalTrace rank law identity
          (automorphism groupElement element) =
        matrixFiberCanonicalTrace rank law identity element
  proofRef : SpectralId

inductive InvariantSectorMeaning
  | constantBitfieldComponent
  | trivialGroupRepresentation
  | kernelInvariantObservable
  | arithmeticMainTermComponent
  | registeredOther
  deriving DecidableEq, Repr

structure InvariantProjectionCertificate where
  projectionRef : SpectralId
  meaning : InvariantSectorMeaning
  idempotenceStatement : Prop
  status : ProofDisposition

structure InvariantSectorReduction
    (State Group : Type)
    [Fintype State] [Fintype Group] where
  projection : InvariantProjectionCertificate
  removeDeclaredSector :
    CrossedProductElement State Group →
      CrossedProductElement State Group
  reductionRef : SpectralId

inductive ReducedTraceMode
  | centralSector
  | cornerAlgebra
  deriving DecidableEq, Repr

structure CentralSectorReduction
    (State Group : Type)
    [Fintype State] [Fintype Group] where
  mode :
    { value : ReducedTraceMode //
      value = .centralSector }
  projection : InvariantProjectionCertificate
  multiply :
    CrossedProductElement State Group →
      CrossedProductElement State Group →
        CrossedProductElement State Group
  complementMultiply :
    CrossedProductElement State Group →
      CrossedProductElement State Group
  complementUnit :
    CrossedProductElement State Group
  complementMultiplyDefinition :
    ∀ element,
      complementMultiply element =
        multiply complementUnit element
  central :
    ∀ element,
      multiply complementUnit element =
        multiply element complementUnit
  reductionRef : SpectralId

def centralSectorReducedTrace
    {State Group : Type}
    [Fintype State] [Fintype Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group)
    (reduction : CentralSectorReduction State Group)
    (element : CrossedProductElement State Group) : ℝ :=
  stableInvariantTrace invariant identity
    (reduction.complementMultiply element)

noncomputable def normalizedCentralSectorReducedTrace
    {State Group : Type}
    [Fintype State] [Fintype Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group)
    (reduction : CentralSectorReduction State Group)
    (_denominatorNonzero :
      stableInvariantTrace invariant identity
          reduction.complementUnit ≠ 0)
    (element : CrossedProductElement State Group) : ℝ :=
  centralSectorReducedTrace invariant identity reduction element /
    stableInvariantTrace invariant identity
      reduction.complementUnit

structure CornerAlgebraReduction
    (State Group : Type)
    [Fintype State] [Fintype Group] where
  mode :
    { value : ReducedTraceMode //
      value = .cornerAlgebra }
  projection : InvariantProjectionCertificate
  multiply :
    CrossedProductElement State Group →
      CrossedProductElement State Group →
        CrossedProductElement State Group
  compress :
    CrossedProductElement State Group →
      CrossedProductElement State Group
  complementUnit :
    CrossedProductElement State Group
  complementUnitIdempotent :
    multiply complementUnit complementUnit =
      complementUnit
  compressionDefinition :
    ∀ element,
      compress element =
        multiply complementUnit
          (multiply element complementUnit)
  cornerClosed :
    ∀ left right,
      compress left = left →
      compress right = right →
      compress (multiply left right) =
        multiply left right
  reductionRef : SpectralId

structure CornerAlgebraElement
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (reduction : CornerAlgebraReduction State Group) where
  ambient : CrossedProductElement State Group
  membership : reduction.compress ambient = ambient

noncomputable def normalizedCornerAlgebraTrace
    {State Group : Type}
    [Fintype State] [Fintype Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group)
    (reduction : CornerAlgebraReduction State Group)
    (_denominatorNonzero :
      stableInvariantTrace invariant identity
          reduction.complementUnit ≠ 0)
    (element : CornerAlgebraElement reduction) : ℝ :=
  stableInvariantTrace invariant identity element.ambient /
    stableInvariantTrace invariant identity
      reduction.complementUnit

def reducedStableTrace
    {State Group : Type}
    [Fintype State] [Fintype Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group)
    (reduction : InvariantSectorReduction State Group)
    (element : CrossedProductElement State Group) : ℝ :=
  stableInvariantTrace invariant identity
    (reduction.removeDeclaredSector element)

end Mathematics.SpectralClosure
```
