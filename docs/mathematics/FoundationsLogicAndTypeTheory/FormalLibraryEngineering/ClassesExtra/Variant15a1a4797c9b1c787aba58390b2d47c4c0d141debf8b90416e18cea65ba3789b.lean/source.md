# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClassesExtra.Variant15a1a4797c9b1c787aba58390b2d47c4c0d141debf8b90416e18cea65ba3789b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb0b91434e372429cd16e457d10b4c2914405343` · SHA-256 `fe6ed6c1cfdfd821e62ec6bc8834c0aac0a9dd9a0fc8114bfea82b53bea37c55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulOrderOrd.Variantae136aa2755f7ace8978dc2f0a8d3ccad2b53723c5d98c08bcc587db889bb3a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae136aa2755f7ace8978dc2f0a8d3ccad2b53723c5d98c08bcc587db889bb3a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LawfulOrderOrd.Variantae136aa2755f7ace8978dc2f0a8d3ccad2b53723c5d98c08bcc587db889bb3a7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ae136aa2755f7ace8978dc2f0a8d3ccad2b53723c5d98c08bcc587db889bb3a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Order/ClassesExtra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Ord.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulOrderOrd.Variantae136aa2755f7ace8978dc2f0a8d3ccad2b53723c5d98c08bcc587db889bb3a7

namespace Std

/--
This typeclass states that the synthesized `Ord α` instance is compatible with the `LE α`
instance. This means that according to `compare`, the following are equivalent:

* `a` is less than or equal to `b` according to `compare`.
* `b` is greater than or equal to `b` according to `compare`.
* `a ≤ b` holds.

`LawfulOrderOrd α` automatically entails that `Ord α` is oriented (see `OrientedOrd α`)
and that `LE α` is total.

`Ord α` and `LE α` mutually determine each other in the presence of `LawfulOrderOrd α`.
-/
public class LawfulOrderOrd (α : Type u) [Ord α] [LE α] where
  isLE_compare : ∀ a b : α, (compare a b).isLE ↔ a ≤ b
  isGE_compare : ∀ a b : α, (compare a b).isGE ↔ b ≤ a

public theorem LawfulOrderOrd.isLE_compare_eq_false {α : Type u} [Ord α] [LE α] [LawfulOrderOrd α] {a b : α} :
    (compare a b).isLE = false ↔ ¬ a ≤ b := by
  simp [← isLE_compare]

public theorem LawfulOrderOrd.isGE_compare_eq_false {α : Type u} [Ord α] [LE α] [LawfulOrderOrd α] {a b : α} :
    (compare a b).isGE = false ↔ ¬ b ≤ a := by
  simp [← isGE_compare]

public abbrev LawfulOrderCmp (cmp : α → α → Ordering) [LE α] := @Std.LawfulOrderOrd α ⟨cmp⟩ _

end Std
```
