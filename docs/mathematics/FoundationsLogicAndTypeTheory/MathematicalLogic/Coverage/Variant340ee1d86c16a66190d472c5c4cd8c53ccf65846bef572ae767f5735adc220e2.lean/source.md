# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Coverage.Variant340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e997c28046ea5d0c9255d19f17146e85206852f4` · SHA-256 `340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Codec.SequentialPrimeSource
import BitMatrix.Rhetorical.Core
import BitMatrix.Topology.DesignatedCantor

/-!
# One invariant theory in four rhetorical modes

This module is the formal correspondence layer for the four presentations in
`docs/bit/mapping-rhetorical-systems.md`.
-/

namespace BitMatrix.Rhetorical

/-- The invariant interpreter tuple, parameterized by its exact capabilities. -/
structure InvariantTheory where
  Address : Type
  enumeration : BitMatrix.Carrier.AddressEnumeration Address
  cantor : BitMatrix.Carrier.DesignatedCantorRepresentation
  baseline : BitMatrix.Carrier.BooleanState Address

/-- An optional source specialization of the invariant interpreter tuple. -/
structure SourceSpecialization (theory : InvariantTheory) where
  codec : BitMatrix.Codec.SourceCodec theory.Address
  source : BitMatrix.Codec.CanonicalSource
  baseline_eq : codec.encode source = theory.baseline

/--
Concrete invariant theory for any supplied canonical source.  Natural-number
addresses use their certified identity enumeration, scalars are exact symbolic
digit streams, and the source baseline is the exact one-hot source codec.
This does not identify the scalar type with a subset of `Real`.
-/
noncomputable def canonicalSourceTheory
    (source : BitMatrix.Codec.CanonicalSource) : InvariantTheory where
  Address := Nat
  enumeration := BitMatrix.Carrier.naturalAddressEnumeration
  cantor := BitMatrix.Carrier.symbolicCantorRepresentation
  baseline := BitMatrix.Codec.oneHotSourceCodec.encode source

/-- The supplied source is definitionally the distinguished baseline of its
concrete invariant theory. -/
noncomputable def canonicalSourceSpecialization
    (source : BitMatrix.Codec.CanonicalSource) :
    SourceSpecialization (canonicalSourceTheory source) where
  codec := BitMatrix.Codec.oneHotSourceCodec
  source := source
  baseline_eq := rfl

/-- Small explicit fixture proving the concrete specialization is inhabited;
it is not the prose document's distinguished self-source. -/
def emptyCanonicalSource : BitMatrix.Codec.CanonicalSource where
  body := ""
  noCarriageReturn := by simp
  noTerminalLineFeed := by simp

noncomputable def emptySourceSpecialization :
    SourceSpecialization (canonicalSourceTheory emptyCanonicalSource) :=
  canonicalSourceSpecialization emptyCanonicalSource

/-! ## Complete documented project specialization -/

/--
The production invariant theory using the restricted sequential-prime carrier,
its filtered increasing enumeration, the analytic middle-thirds Cantor subset
of `Real`, and the actual embedded rhetorical Markdown source.
-/
noncomputable def documentedSourceTheory : InvariantTheory where
  Address := BitMatrix.Carrier.SequentialPrimeCarrierAddress
  enumeration :=
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration
  cantor := BitMatrix.Topology.analyticCantorRepresentation
  baseline := BitMatrix.Codec.SequentialPrimeSource.baselineCarrier

/-- No capability argument is needed for the documented source specialization. -/
noncomputable def documentedSourceSpecialization :
    SourceSpecialization documentedSourceTheory where
  codec := BitMatrix.Codec.SequentialPrimeSource.sourceCodec
  source := BitMatrix.Codec.SequentialPrimeSource.distinguishedCanonicalSource
  baseline_eq := rfl

/-- Exact real source-relative scalar of a target carrier state. -/
noncomputable def sourceRelativeScalar
    (target : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) :
    BitMatrix.Topology.ExactCantorScalar :=
  (BitMatrix.Carrier.baselineEquiv
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier).symm target

/-- The source-relative scalar is the exact designated ternary discrepancy. -/
theorem sourceRelativeScalar_val
    (target : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) :
    (sourceRelativeScalar target : Real) =
      BitMatrix.Topology.designatedCantorScalar
        (BitMatrix.Carrier.discrepancy
          BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
          BitMatrix.Codec.SequentialPrimeSource.baselineCarrier target) := by
  change ((show BitMatrix.Topology.ExactCantorScalar from
    BitMatrix.Topology.analyticCantorRepresentation.theta
      (BitMatrix.Carrier.discrepancy
        BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
        BitMatrix.Codec.SequentialPrimeSource.baselineCarrier target)) : Real) = _
  exact BitMatrix.Topology.analyticCantorRepresentation_theta_val _

/-- Decoding the exact source-relative scalar reconstructs every target state. -/
theorem documentedInterpreter_sourceRelativeScalar
    (target : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) :
    BitMatrix.Carrier.distinguishedInterpreter
      BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
      BitMatrix.Topology.analyticCantorRepresentation
      BitMatrix.Codec.SequentialPrimeSource.baselineCarrier
      (sourceRelativeScalar target) = target :=
  (BitMatrix.Carrier.baselineEquiv
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier).apply_symm_apply target

/-- Encoding after interpreting a scalar returns that scalar exactly. -/
theorem sourceRelativeScalar_documentedInterpreter
    (scalar : BitMatrix.Topology.ExactCantorScalar) :
    sourceRelativeScalar
      (BitMatrix.Carrier.distinguishedInterpreter
        BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
        BitMatrix.Topology.analyticCantorRepresentation
        BitMatrix.Codec.SequentialPrimeSource.baselineCarrier scalar) = scalar :=
  (BitMatrix.Carrier.baselineEquiv
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier).symm_apply_apply scalar

/-- Production equivalence with no uninhabited project capability. -/
noncomputable def documentedSourceRelativeEquiv :
    BitMatrix.Topology.ExactCantorScalar ≃
      BitMatrix.Carrier.BooleanState
        BitMatrix.Carrier.SequentialPrimeCarrierAddress :=
  BitMatrix.Carrier.baselineEquiv
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier

/-- Predicate selecting exactly states accepted as encodings by the source codec. -/
def documentedSourceStatePredicate
    (state : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) : Prop :=
  ∃ source : BitMatrix.Codec.CanonicalSource,
    BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source = state

/-- The exact image of the documented sequential-prime source constructor. -/
abbrev DocumentedSourceState :=
  BitMatrix.Codec.SourceCodec.SourceState
    BitMatrix.Codec.SequentialPrimeSource.sourceCodec

/-- Exact Cantor scalars whose interpreted states are documented source states. -/
abbrev SelfSourceScalarDomain :=
  { scalar : BitMatrix.Topology.ExactCantorScalar //
    documentedSourceStatePredicate (documentedSourceRelativeEquiv scalar) }

/--
Validity-restricted source/scalar equivalence for the concrete project codec.
This instantiates the generic restriction theorem; no predicate capability or
analytic approximation is supplied by a caller.
-/
noncomputable def selfSourceScalarEquiv :
    SelfSourceScalarDomain ≃ DocumentedSourceState where
  toFun scalar := ⟨documentedSourceRelativeEquiv scalar, scalar.property⟩
  invFun state := ⟨documentedSourceRelativeEquiv.symm state.val,
    by
      rw [documentedSourceRelativeEquiv.apply_symm_apply]
      exact state.property⟩
  left_inv scalar := by
    apply Subtype.ext
    exact documentedSourceRelativeEquiv.symm_apply_apply scalar
  right_inv state := by
    apply Subtype.ext
    exact documentedSourceRelativeEquiv.apply_symm_apply state.val

/-- Every encoded canonical source has an exact scalar in the restricted domain. -/
noncomputable def scalarOfCanonicalSource
    (source : BitMatrix.Codec.CanonicalSource) : SelfSourceScalarDomain :=
  ⟨sourceRelativeScalar
      (BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source),
    by
      refine ⟨source, ?_⟩
      exact (documentedInterpreter_sourceRelativeScalar
        (BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source)).symm⟩

@[simp]
theorem selfSourceScalarEquiv_scalarOfCanonicalSource
    (source : BitMatrix.Codec.CanonicalSource) :
    (selfSourceScalarEquiv (scalarOfCanonicalSource source)).val =
      BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source := by
  change documentedSourceRelativeEquiv
    (sourceRelativeScalar
      (BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source)) = _
  exact documentedInterpreter_sourceRelativeScalar
    (BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source)

theorem selfSourceScalarEquiv_inverse_laws :
    Function.LeftInverse selfSourceScalarEquiv.symm selfSourceScalarEquiv ∧
      Function.RightInverse selfSourceScalarEquiv.symm selfSourceScalarEquiv :=
  ⟨selfSourceScalarEquiv.left_inv, selfSourceScalarEquiv.right_inv⟩

/-- Exact zero scalar identifies precisely the embedded-document baseline. -/
theorem documentedInterpreter_eq_baseline_iff
    (scalar : BitMatrix.Topology.ExactCantorScalar) :
    BitMatrix.Carrier.distinguishedInterpreter
      BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
      BitMatrix.Topology.analyticCantorRepresentation
      BitMatrix.Codec.SequentialPrimeSource.baselineCarrier scalar =
        BitMatrix.Codec.SequentialPrimeSource.baselineCarrier ↔
      scalar = BitMatrix.Carrier.zeroScalar
        BitMatrix.Topology.analyticCantorRepresentation :=
  BitMatrix.Carrier.distinguishedInterpreter_eq_baseline_iff
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier scalar

private def quadrantCoordinate
    (horizontal vertical : ℝ)
    (horizontalLower : -1 ≤ horizontal)
    (horizontalUpper : horizontal ≤ 1)
    (verticalLower : -1 ≤ vertical)
    (verticalUpper : vertical ≤ 1) :
    RhetoricalCoordinate where
  structuralHierarchy := horizontal
  interpreterPrecision := vertical
  structuralLower := horizontalLower
  structuralUpper := horizontalUpper
  precisionLower := verticalLower
  precisionUpper := verticalUpper

/-- Canonical witnesses occupying the four open quadrants. -/
noncomputable def fourModePresentation (theory : InvariantTheory) :
    FourModePresentation InvariantTheory where
  invariant := theory
  formalHypotactic :=
    ⟨.formalHypotaxis,
      quadrantCoordinate (1 / 2) (1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  formalParatactic :=
    ⟨.formalParataxis,
      quadrantCoordinate (-1 / 2) (1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  pragmaticParatactic :=
    ⟨.pragmaticParataxis,
      quadrantCoordinate (-1 / 2) (-1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  pragmaticHypotactic :=
    ⟨.pragmaticHypotaxis,
      quadrantCoordinate (1 / 2) (-1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  formalHypotactic_mode := rfl
  formalParatactic_mode := rfl
  pragmaticParatactic_mode := rfl
  pragmaticHypotactic_mode := rfl
  formalHypotactic_semantic := rfl
  formalParatactic_semantic := rfl
  pragmaticParatactic_semantic := rfl
  pragmaticHypotactic_semantic := rfl

/-- Kernel-checked four-mode coverage and semantic invariance. -/
theorem four_mode_coverage (theory : InvariantTheory) :
    let presentations := fourModePresentation theory
    presentations.formalHypotactic.mode = .formalHypotaxis ∧
    presentations.formalParatactic.mode = .formalParataxis ∧
    presentations.pragmaticParatactic.mode = .pragmaticParataxis ∧
    presentations.pragmaticHypotactic.mode = .pragmaticHypotaxis ∧
    classify origin presentations.formalHypotactic.coordinate =
      .formalHypotaxis ∧
    classify origin presentations.formalParatactic.coordinate =
      .formalParataxis ∧
    classify origin presentations.pragmaticParatactic.coordinate =
      .pragmaticParataxis ∧
    classify origin presentations.pragmaticHypotactic.coordinate =
      .pragmaticHypotaxis ∧
    presentations.formalHypotactic.semanticValue =
      presentations.formalParatactic.semanticValue ∧
    presentations.formalParatactic.semanticValue =
      presentations.pragmaticParatactic.semanticValue ∧
      presentations.pragmaticParatactic.semanticValue =
      presentations.pragmaticHypotactic.semanticValue := by
  norm_num [fourModePresentation, classify, quadrantCoordinate, origin]

/-- Every target Boolean state has exactly one scalar relative to the baseline. -/
theorem source_relative_scalar_exists_unique
    (theory : InvariantTheory)
    (target : BitMatrix.Carrier.BooleanState theory.Address) :
    ∃! scalar : theory.cantor.Scalar,
      BitMatrix.Carrier.distinguishedInterpreter
        theory.enumeration.enumerate theory.cantor theory.baseline scalar = target := by
  let equivalence := BitMatrix.Carrier.baselineEquiv
    theory.enumeration.enumerate theory.cantor theory.baseline
  refine ⟨equivalence.symm target, equivalence.apply_symm_apply target, ?_⟩
  intro scalar equal
  apply equivalence.injective
  calc
    equivalence scalar = target := equal
    _ = equivalence (equivalence.symm target) :=
      (equivalence.apply_symm_apply target).symm

/-- Restricting an equivalence to a validity predicate remains an equivalence. -/
def validityRestrictedEquiv
    (theory : InvariantTheory)
    (Valid : BitMatrix.Carrier.BooleanState theory.Address → Prop) :
    { scalar : theory.cantor.Scalar //
      Valid ((BitMatrix.Carrier.baselineEquiv
        theory.enumeration.enumerate theory.cantor theory.baseline) scalar) } ≃
    { state : BitMatrix.Carrier.BooleanState theory.Address // Valid state } where
  toFun scalar := ⟨
    (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline) scalar,
    scalar.property⟩
  invFun state := ⟨
    (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).symm state,
    by
      rw [(BitMatrix.Carrier.baselineEquiv
        theory.enumeration.enumerate theory.cantor theory.baseline).apply_symm_apply]
      exact state.property⟩
  left_inv scalar := by
    apply Subtype.ext
    exact (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).symm_apply_apply scalar
  right_inv state := by
    apply Subtype.ext
    exact (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).apply_symm_apply state

/--
Formal classification of the transformation-cardinality boundary.  A proof of
this proposition for the concrete infinite carrier remains an external set-
theoretic theorem; the interface prevents it from being confused with the
state-parameterization theorem above.
-/
def TransformationCardinalityBoundary
    (theory : InvariantTheory)
    (program : theory.cantor.Scalar →
      BitMatrix.Carrier.BooleanState theory.Address →
        BitMatrix.Carrier.BooleanState theory.Address) : Prop :=
  ¬Function.Surjective program

end BitMatrix.Rhetorical
```
