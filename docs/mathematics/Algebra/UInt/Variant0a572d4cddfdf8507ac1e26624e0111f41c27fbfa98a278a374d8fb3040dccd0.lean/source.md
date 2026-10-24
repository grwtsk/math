# Complete source: GRWTSK.Algebra.UInt.Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c49a27e02b09ac09f1358d3694697daa620a4a06` · SHA-256 `ddbfc2160a23d5803193104701cbc6523eced5fa08733e0b6754d593411d7e5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UInt8ValEqOfLt.Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.UInt8ValEqOfLt.Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/UInt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Ring.Basic
import Mathlib.Data.ZMod.Defs


namespace GRWTSK.Algebra.UInt8ValEqOfLt.Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820

lemma UInt8.val_eq_of_lt {a : Nat} : a < UInt8.size -> (ofNat a).val = a := Nat.mod_eq_of_lt

lemma UInt16.val_eq_of_lt {a : Nat} : a < UInt16.size -> (ofNat a).val = a := Nat.mod_eq_of_lt

lemma UInt32.val_eq_of_lt {a : Nat} : a < UInt32.size -> (ofNat a).val = a := Nat.mod_eq_of_lt

lemma UInt64.val_eq_of_lt {a : Nat} : a < UInt64.size -> (ofNat a).val = a := Nat.mod_eq_of_lt

lemma USize.val_eq_of_lt {a : Nat} : a < USize.size -> (ofNat a).val = a := Nat.mod_eq_of_lt

instance UInt8.neZero : NeZero UInt8.size := ⟨by decide⟩

instance UInt16.neZero : NeZero UInt16.size := ⟨by decide⟩

instance UInt32.neZero : NeZero UInt32.size := ⟨by decide⟩

instance UInt64.neZero : NeZero UInt64.size := ⟨by decide⟩

instance USize.neZero : NeZero USize.size := NeZero.of_pos usize_size_gt_zero

example : (0 : UInt8) = ⟨0⟩ := rfl

set_option hygiene false in
run_cmd
  for typeName in [`UInt8, `UInt16, `UInt32, `UInt64, `USize].map Lean.mkIdent do
  Lean.Elab.Command.elabCommand (← `(
    namespace $typeName
      instance : Inhabited $typeName where
        default := 0

      instance : Neg $typeName where
        neg a := mk (-a.val)

      instance : Pow $typeName ℕ where
        pow a n := mk (a.val ^ n)

      instance : SMul ℕ $typeName where
        smul n a := mk (n • a.val)

      instance : SMul ℤ $typeName where
        smul z a := mk (z • a.val)

      instance : NatCast $typeName where
        natCast n := mk n

      instance : IntCast $typeName where
        intCast z := mk z

      lemma zero_def : (0 : $typeName) = ⟨0⟩ := rfl

      lemma one_def : (1 : $typeName) = ⟨1⟩ := rfl

      lemma neg_def (a : $typeName) : -a = ⟨-a.val⟩ := rfl

      lemma sub_def (a b : $typeName) : a - b = ⟨a.val - b.val⟩ := rfl

      lemma mul_def (a b : $typeName) : a * b = ⟨a.val * b.val⟩ := rfl

      lemma mod_def (a b : $typeName) : a % b = ⟨a.val % b.val⟩ := rfl

      lemma add_def (a b : $typeName) : a + b = ⟨a.val + b.val⟩ := rfl

      lemma pow_def (a : $typeName) (n : ℕ) : a ^ n = ⟨a.val ^ n⟩ := rfl

      lemma nsmul_def (n : ℕ) (a : $typeName) : n • a = ⟨n • a.val⟩ := rfl

      lemma zsmul_def (z : ℤ) (a : $typeName) : z • a = ⟨z • a.val⟩ := rfl

      lemma natCast_def (n : ℕ) : (n : $typeName) = ⟨n⟩ := rfl

      lemma intCast_def (z : ℤ) : (z : $typeName) = ⟨z⟩ := rfl

      lemma eq_of_val_eq : ∀ {a b : $typeName}, a.val = b.val -> a = b
      | ⟨_⟩, ⟨_⟩, h => congrArg mk h

      lemma val_injective : Function.Injective val := @eq_of_val_eq

      lemma val_eq_of_eq : ∀ {a b : $typeName}, a = b -> a.val = b.val
      | ⟨_⟩, ⟨_⟩, h => congrArg val h

      @[simp] lemma mk_val_eq : ∀ (a : $typeName), mk a.val = a
      | ⟨_, _⟩ => rfl

      instance : CommRing $typeName :=
        Function.Injective.commRing val val_injective
          rfl rfl (fun _ _ => rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
          (fun _ _ => rfl) (fun _ _ => rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ => rfl)

    end $typeName
  ))

namespace UInt8

/-- Is this an uppercase ASCII letter? -/
def isUpper (c : UInt8) : Bool :=
  c ≥ 65 && c ≤ 90

/-- Is this a lowercase ASCII letter? -/
def isLower (c : UInt8) : Bool :=
  c ≥ 97 && c ≤ 122

/-- Is this an alphabetic ASCII character? -/
def isAlpha (c : UInt8) : Bool :=
  c.isUpper || c.isLower

/-- Is this an ASCII digit character? -/
def isDigit (c : UInt8) : Bool :=
  c ≥ 48 && c ≤ 57

/-- Is this an alphanumeric ASCII character? -/
def isAlphanum (c : UInt8) : Bool :=
  c.isAlpha || c.isDigit

theorem toChar_aux (n : Nat) (h : n < size) : Nat.isValidChar (UInt32.ofNat n).1 := by
  rw [UInt32.val_eq_of_lt]
  exact Or.inl $ Nat.lt_trans h $ by decide
  exact Nat.lt_trans h $ by decide

/-- The numbers from 0 to 256 are all valid UTF-8 characters, so we can embed one in the other. -/
def toChar (n : UInt8) : Char := ⟨n.toUInt32, toChar_aux n.1 n.1.2⟩

end UInt8
```
