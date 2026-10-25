# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BooleanSpace.Variant48acb6822c0f03c6e097a48e629a97f666c01bfd0e76e9a67a229372f451d58a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03d8c6cf8b1c70c6d88f4a210360294eaa1eb513` · SHA-256 `8d1b16db4eede345683cf50b0e135bda28e79f4d762a99487d7b848764d5b30d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DesignatedCantorRepresentation.Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.DesignatedCantorRepresentation.Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615","mathematical_subject":"Logic.Foundations","original_sha256":"7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/9591c6ff30638559b50c01f70f8215488732641430867dc44c348c446c634ebe/workspace/Surface/BitMatrix/Carrier/BooleanSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Carrier.Address

/-!
# Boolean carrier space and designated scalar interpreter

The real middle-thirds construction is represented by an explicit capability:
the caller supplies the scalar type and the designated digit equivalence.  All
interpreter and baseline-relative inverse theorems below are then kernel-checked
without postulating an analytic solver or silently choosing an alternative
ternary expansion.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DesignatedCantorRepresentation.Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615

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

end BitMatrix.Carrier
```
