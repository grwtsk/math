# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Coverage.Variantcae913be08abc254735d9db33fcca6d6a9266dc98882e96967abd4b1ec354894

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e69d2d075476fddd4b70eb74948171873de999d3` · SHA-256 `cae913be08abc254735d9db33fcca6d6a9266dc98882e96967abd4b1ec354894`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Codec.Source
import BitMatrix.Rhetorical.Core

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
