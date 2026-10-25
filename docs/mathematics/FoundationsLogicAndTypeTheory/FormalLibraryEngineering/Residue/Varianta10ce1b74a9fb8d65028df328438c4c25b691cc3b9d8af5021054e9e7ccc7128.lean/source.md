# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residue.Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4c804b32a7f3666b80df90052a6ffab1996c2c9` · SHA-256 `5b4a1c0e961aa0cd06b3837b464937a162058b89ab843ecb7bfc635799dea96a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residue3.Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Residue3.Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Residue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.DeriveFintype
import Mathlib.Tactic.NormNum

/-!
# Residues modulo three

Reflection fixes the excluded zero stratum and exchanges exactly the two safe
residues.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residue3.Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618

namespace Mathematics.SemiLocalDefect.ResidueDeflection

inductive Residue3
  | zero
  | plus
  | minus
deriving DecidableEq, Ord, Repr, Fintype

def Residue3.reflect :
    Residue3 → Residue3
  | .zero => .zero
  | .plus => .minus
  | .minus => .plus

def Residue3.Safe :
    Residue3 → Prop
  | .zero => False
  | .plus => True
  | .minus => True

instance (residue : Residue3) :
    Decidable residue.Safe := by
  cases residue <;>
    unfold Residue3.Safe <;>
    infer_instance

def Residue3.value :
    Residue3 → ZMod 3
  | .zero => 0
  | .plus => 1
  | .minus => -1

theorem residue3_reflect_involutive :
    Function.Involutive
      Residue3.reflect := by
  intro residue
  cases residue <;> rfl

theorem residue3_reflect_preserves_safe
    {residue : Residue3} :
    residue.Safe →
      residue.reflect.Safe := by
  cases residue <;>
    simp [Residue3.Safe, Residue3.reflect]

@[simp]
theorem residue3_zero_fixed :
    Residue3.zero.reflect =
      Residue3.zero :=
  rfl

theorem residue3_safe_ne_zero
    {residue : Residue3}
    (safe : residue.Safe) :
    residue ≠ .zero := by
  intro equality
  subst equality
  exact safe

theorem residue3_reflect_value
    (residue : Residue3) :
    residue.reflect.value =
      -residue.value := by
  cases residue <;>
    norm_num [Residue3.reflect,
      Residue3.value]

end Mathematics.SemiLocalDefect.ResidueDeflection
```
