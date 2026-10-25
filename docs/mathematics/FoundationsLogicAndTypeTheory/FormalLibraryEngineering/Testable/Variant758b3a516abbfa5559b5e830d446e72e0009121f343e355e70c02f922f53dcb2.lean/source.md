# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Testable.Variant758b3a516abbfa5559b5e830d446e72e0009121f343e355e70c02f922f53dcb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `911afcdda960ebfc9009bef7924aab808904e150` · SHA-256 `112a7343b44d9a177a7c18c4b00c9eba95acd6bafb85d95a850d9b4ede4b0e67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyType.Variant14bcefcea8cc671c236ffcaf9a02a23708a7c1ae8fb446350a56aa9d8261ecc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14bcefcea8cc671c236ffcaf9a02a23708a7c1ae8fb446350a56aa9d8261ecc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MyType.Variant14bcefcea8cc671c236ffcaf9a02a23708a7c1ae8fb446350a56aa9d8261ecc8","mathematical_subject":"Foundations.Unclassified","original_sha256":"14bcefcea8cc671c236ffcaf9a02a23708a7c1ae8fb446350a56aa9d8261ecc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/Testable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import Plausible.Testable


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyType.Variant14bcefcea8cc671c236ffcaf9a02a23708a7c1ae8fb446350a56aa9d8261ecc8

open Plausible

structure MyType where
  x : Nat
  y : Nat
  h : x ≤ y
  deriving Repr

instance : Shrinkable MyType where
  shrink := fun ⟨x, y, _⟩ =>
    let proxy := Shrinkable.shrink (x, y - x)
    proxy.map (fun (fst, snd) => ⟨fst, fst + snd, by omega⟩)

instance : Arbitrary MyType :=
  ⟨do
    let x ← SampleableExt.interpSample Nat
    let xyDiff ← SampleableExt.interpSample Nat
    return ⟨x, x + xyDiff, by omega⟩⟩

/-- info: Unable to find a counter-example -/
#guard_msgs in
#eval Testable.check <| ∀ a b : MyType, a.y ≤ b.x → a.x ≤ b.y
```
