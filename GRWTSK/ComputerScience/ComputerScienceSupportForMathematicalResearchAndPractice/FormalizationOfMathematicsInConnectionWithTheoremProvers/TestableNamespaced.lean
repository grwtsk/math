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
