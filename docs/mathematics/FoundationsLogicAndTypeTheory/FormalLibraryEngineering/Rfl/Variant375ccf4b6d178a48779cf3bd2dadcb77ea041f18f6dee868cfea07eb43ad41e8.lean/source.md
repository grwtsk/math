# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variant375ccf4b6d178a48779cf3bd2dadcb77ea041f18f6dee868cfea07eb43ad41e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9b5c57f993735e67c555219bece75dae98d7fc6` · SHA-256 `dbe77c2bdec970f82070727cee55f4d7d4466c9de43a81105691087bf26af85a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant1215b2c69976017da474085ab1635056ef0f67f89d3092a734b33facfc99cc87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1215b2c69976017da474085ab1635056ef0f67f89d3092a734b33facfc99cc87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant1215b2c69976017da474085ab1635056ef0f67f89d3092a734b33facfc99cc87","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1215b2c69976017da474085ab1635056ef0f67f89d3092a734b33facfc99cc87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/rfl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Relation.Rfl


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant1215b2c69976017da474085ab1635056ef0f67f89d3092a734b33facfc99cc87

example (a : Nat) : a = a := rfl

example (a : Nat) : a = a := by rfl

open Setoid

universe u
variable {α : Sort u} [Setoid α]

@[refl] def iseqv_refl (a : α) : a ≈ a :=
  iseqv.refl a

example (a : α) : a ≈ a := by rfl

example (a : Nat) : a ≤ a := by (fail_if_success rfl); apply Nat.le_refl

attribute [refl] Nat.le_refl

example (a : Nat) : a ≤ a := by rfl

structure Foo

def Foo.le (_ _ : Foo) := Unit → True
instance : LE Foo := ⟨Foo.le⟩

@[refl] theorem Foo.le_refl (a : Foo) : a ≤ a := fun _ => trivial

example (a : Foo) : a ≤ a := by apply Foo.le_refl
example (a : Foo) : a ≤ a := by rfl

example (x : Nat) : x ≤ x := by
  show _
  rfl
```
