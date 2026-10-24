# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4fb4fb2e7e8d771b3f9972aa73573d29ad1604a` · SHA-256 `17c1d825d16af2919ee9abcd09cc3722446f657a78e8842255887e3e1f90796d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Length.Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3","mathematical_subject":"Computation.DataStructures","original_sha256":"20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Length.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia Markus Himmel
-/
module

prelude
public import Init.Data.String.Basic
import Init.Data.Char.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3

public section

namespace String

/--
Returns the length of a string in Unicode code points.

Examples:
* `"".length = 0`
* `"abc".length = 3`
* `"L∃∀N".length = 4`
-/
@[extern "lean_string_length", expose, tagged_return]
def length (b : @& String) : Nat :=
  b.toList.length

@[simp]
theorem Internal.size_toArray {b : String} : (String.Internal.toArray b).size = b.length :=
  (rfl)

theorem length_toList {s : String} : s.toList.length = s.length := (rfl)

@[deprecated String.length_toList (since := "2025-10-30")]
theorem length_data {b : String} : b.toList.length = b.length := (rfl)

@[simp]
theorem length_ofList {l : List Char} : (String.ofList l).length = l.length := by
  rw [← String.length_toList, String.toList_ofList]

@[deprecated String.length_ofList (since := "2025-10-30")]
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.List.length_asString {l : List Char} : (String.ofList l).length = l.length :=
  String.length_ofList

@[simp] theorem length_empty : "".length = 0 := by simp [← length_toList, toList_empty]

@[simp]
theorem length_singleton {c : Char} : (String.singleton c).length = 1 := by
  simp [← length_toList]

@[simp] theorem length_push (c : Char) : (String.push s c).length = s.length + 1 := by
  simp [← length_toList]

@[simp] theorem length_pushn (c : Char) (n : Nat) : (pushn s c n).length = s.length + n := by
  rw [pushn_eq_repeat_push]; induction n <;> simp [Nat.repeat, Nat.add_assoc, *]

@[simp] theorem length_append (s t : String) : (s ++ t).length = s.length + t.length := by
  simp [← length_toList]

end String

namespace Char

@[deprecated String.length_singleton (since := "2026-02-12")]
theorem length_toString (c : Char) : c.toString.length = 1 := by
  simp

end Char
```
