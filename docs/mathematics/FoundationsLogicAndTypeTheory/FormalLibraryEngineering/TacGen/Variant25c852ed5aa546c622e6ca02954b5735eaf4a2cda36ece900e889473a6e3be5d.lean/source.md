# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacGen.Variant25c852ed5aa546c622e6ca02954b5735eaf4a2cda36ece900e889473a6e3be5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93290a86e3add70fc93cec17fe61af522efec4cc` · SHA-256 `fa62e80882085e3864506042b91fe4387803a98e0bdec79309bb34e7441cdb69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant3b06829b92ee2800d14dbf91f5b40ae38bd8c94440460e1e43ced565fdf81135","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b06829b92ee2800d14dbf91f5b40ae38bd8c94440460e1e43ced565fdf81135","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant3b06829b92ee2800d14dbf91f5b40ae38bd8c94440460e1e43ced565fdf81135","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3b06829b92ee2800d14dbf91f5b40ae38bd8c94440460e1e43ced565fdf81135","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/TacGen.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant3b06829b92ee2800d14dbf91f5b40ae38bd8c94440460e1e43ced565fdf81135

open Lean
open Lean.Meta

theorem foo (a b c : Nat) : a + b + c = c + b + a := by
  rw [Nat.add_assoc, Nat.add_comm, Nat.add_comm b]

@[aesop 100%]
def tacGen₁ : Aesop.TacGen := λ _ => do
 return #[("apply foo", 1.0)]

example (a b c : Nat) : a + b + c = c + b + a := by
  aesop

@[aesop 100%]
def tacGen₂ : Aesop.TacGen := λ _ =>
  return #[
    ("rw [Nat.add_comm b]", 0.5),
    ("rw [Nat.add_assoc]", 0.9),
    ("rw [Nat.add_comm]", 0.8)
  ]

example (a b c : Nat) : a + b + c = c + b + a := by
  aesop (erase tacGen₁)
```
