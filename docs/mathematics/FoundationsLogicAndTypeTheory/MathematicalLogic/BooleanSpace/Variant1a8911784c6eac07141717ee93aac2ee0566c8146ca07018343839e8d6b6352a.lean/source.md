# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BooleanSpace.Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f556fc89a447c35d472b48aed39fa4d93d410faf` · SHA-256 `7dc9470a1bc8e49ef4580a4260bfece93ce9a16b629a23f9ff5b1665aed4e689`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DesignatedCantorRepresentation.Variantfb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.DesignatedCantorRepresentation.Variantfb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776","mathematical_subject":"Logic.Foundations","original_sha256":"fb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/1e7b1a9b7c438e6b6d8e1d492cbfcf80807087d20dad84776bae96932559747f/workspace/Surface/BitMatrix/Carrier/BooleanSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Carrier.Address

/-!
# Boolean carrier space and designated scalar interpreter

The real middle-thirds construction is represented by an explicit capability:
the caller supplies the scalar type and the designated digit equivalence.  All
interpreter and baseline-relative inverse theorems below are then kernel-checked
without postulating an analytic solver or silently choosing an alternative
ternary expansion.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DesignatedCantorRepresentation.Variantfb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776

namespace BitMatrix.Carrier

/-- Infinite designated binary digit streams. -/
abbrev BitStream := Nat → Bool

/-- Boolean states indexed by a carrier address type. -/
abbrev BooleanState (Address : Type) := Address → Bool

/-- Boolean exclusive-or, kept separate from matrix XOR. -/
def xorBit (left right : Bool) : Bool := left != right

@[simp]
theorem xorBit_self (value : Bool) : xorBit value value = false := by
  cases value <;> rfl

@[simp]
theorem xorBit_false_right (value : Bool) : xorBit value false = value := by
  cases value <;> rfl

@[simp]
theorem xorBit_cancel_left (left right : Bool) :
    xorBit left (xorBit left right) = right := by
  cases left <;> cases right <;> rfl

/--
The exact designated Cantor representation boundary.  A concrete real-series
implementation may instantiate this structure only after proving that its
chosen `{0,2}` expansion is an equivalence.
-/
structure DesignatedCantorRepresentation where
  Scalar : Type
  theta : BitStream ≃ Scalar

/--
The concrete symbolic designated-digit representation.  It closes the exact
carrier-codec algebra without pretending that an analytic equivalence with a
subset of `Real` has been constructed.  The latter remains a separate
topological capability in `BitMatrix.Topology.Cantor`.
-/
def symbolicCantorRepresentation : DesignatedCantorRepresentation where
  Scalar := BitStream
  theta := Equiv.refl BitStream

@[simp]
theorem symbolicCantorRepresentation_theta (stream : BitStream) :
    symbolicCantorRepresentation.theta stream = stream :=
  rfl

namespace DesignatedCantorRepresentation

/-- Read the designated binary digit sequence of a scalar. -/
def digits (representation : DesignatedCantorRepresentation) :
    representation.Scalar → BitStream :=
  representation.theta.symm

theorem theta_injective (representation : DesignatedCantorRepresentation) :
    Function.Injective representation.theta :=
  representation.theta.injective

theorem theta_surjective (representation : DesignatedCantorRepresentation) :
    Function.Surjective representation.theta :=
  representation.theta.surjective

@[simp]
theorem digits_theta
    (representation : DesignatedCantorRepresentation)
    (stream : BitStream) :
    representation.digits (representation.theta stream) = stream :=
  representation.theta.symm_apply_apply stream

@[simp]
theorem theta_digits
    (representation : DesignatedCantorRepresentation)
    (scalar : representation.Scalar) :
    representation.theta (representation.digits scalar) = scalar :=
  representation.theta.apply_symm_apply scalar

end DesignatedCantorRepresentation

/--
The designated scalar represented by the all-false digit stream.  This is a
representation-relative distinguished point; it does not assert that the
carrier scalar type has an independently chosen additive zero.
-/
def zeroScalar (representation : DesignatedCantorRepresentation) :
    representation.Scalar :=
  representation.theta (fun _ => false)

@[simp]
theorem DesignatedCantorRepresentation.digits_zeroScalar
    (representation : DesignatedCantorRepresentation) :
    representation.digits (zeroScalar representation) = fun _ => false := by
  simp [zeroScalar]

/-- The source-relative XOR interpreter under fixed address/digit conventions. -/
def distinguishedInterpreter
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline : BooleanState Address)
    (scalar : representation.Scalar) :
    BooleanState Address :=
  fun address =>
    xorBit (baseline address)
      (representation.digits scalar (enumeration.symm address))

/-- The discrepancy stream between a baseline and target state. -/
def discrepancy
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (baseline target : BooleanState Address) :
    BitStream :=
  fun index =>
    xorBit (baseline (enumeration index)) (target (enumeration index))

/--
For a fixed baseline, the distinguished interpreter is an exact equivalence
between designated scalars and all Boolean carrier states.
-/
def baselineEquiv
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline : BooleanState Address) :
    representation.Scalar ≃ BooleanState Address where
  toFun := distinguishedInterpreter enumeration representation baseline
  invFun target := representation.theta (discrepancy enumeration baseline target)
  left_inv scalar := by
    calc
      representation.theta
          (discrepancy enumeration baseline
            (distinguishedInterpreter enumeration representation baseline scalar)) =
          representation.theta (representation.theta.symm scalar) := by
        congr 1
        funext index
        simp [distinguishedInterpreter, discrepancy,
          DesignatedCantorRepresentation.digits]
      _ = scalar := representation.theta.apply_symm_apply scalar
  right_inv target := by
    funext address
    simp [distinguishedInterpreter, discrepancy,
      DesignatedCantorRepresentation.digits]

@[simp]
theorem baselineEquiv_apply
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline : BooleanState Address)
    (scalar : representation.Scalar) :
    baselineEquiv enumeration representation baseline scalar =
      distinguishedInterpreter enumeration representation baseline scalar :=
  rfl

@[simp]
theorem baselineEquiv_symm_apply
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline target : BooleanState Address) :
    (baselineEquiv enumeration representation baseline).symm target =
      representation.theta (discrepancy enumeration baseline target) :=
  rfl

/--
The baseline-relative interpreter returns the baseline exactly for the
designated all-false scalar.  The fixed representation and enumeration make
this an exact equality, not a choice of an arbitrary scalar called zero.
-/
theorem distinguishedInterpreter_eq_baseline_iff
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline : BooleanState Address)
    (scalar : representation.Scalar) :
    distinguishedInterpreter enumeration representation baseline scalar = baseline ↔
      scalar = zeroScalar representation := by
  constructor
  · intro interpreted
    apply (baselineEquiv enumeration representation baseline).injective
    rw [baselineEquiv_apply, interpreted]
    funext address
    simp [baselineEquiv, distinguishedInterpreter, zeroScalar]
  · intro scalarZero
    subst scalar
    funext address
    simp [distinguishedInterpreter, zeroScalar]

end BitMatrix.Carrier
```
