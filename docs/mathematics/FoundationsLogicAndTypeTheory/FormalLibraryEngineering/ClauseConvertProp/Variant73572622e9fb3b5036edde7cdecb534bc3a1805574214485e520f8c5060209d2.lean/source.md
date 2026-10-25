# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClauseConvertProp.Variant73572622e9fb3b5036edde7cdecb534bc3a1805574214485e520f8c5060209d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `126006de92a43ac92b5e68d8061942722a2fad2d` · SHA-256 `0bd33da53bbce6bcc0d71ca2abc725ffec2bed37feb41a0d2c42aa9144a1599f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Or1.Variant4f16f403d22545aec3c00597655089a110377af3d476b59ec7b6fba23082b748","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f16f403d22545aec3c00597655089a110377af3d476b59ec7b6fba23082b748","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Or1.Variant4f16f403d22545aec3c00597655089a110377af3d476b59ec7b6fba23082b748","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4f16f403d22545aec3c00597655089a110377af3d476b59ec7b6fba23082b748","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/clauseConvertProp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Or1.Variant4f16f403d22545aec3c00597655089a110377af3d476b59ec7b6fba23082b748

open Qq

/-!
Type-safe conversion from proofs of `a ∨ b` to proofs of `a ∨ b ∨ false`.
-/

def or1 : List Q(Prop) → Q(Prop)
  | [] => q(False)
  | [p] => q($p)
  | p::ps => q($p ∨ $(or1 ps))

def or2 : List Q(Prop) → Q(Prop)
  | [] => q(False)
  | p::ps => q($p ∨ $(or2 ps))

def orChange : (ps : List Q(Prop)) → Q($(or1 ps) → $(or2 ps))
  | [] => q(id)
  | [p] => q(Or.inl)
  | p::(ps1::ps2) => q(by
      intro h
      cases h with
        | inl h => exact Or.inl h
        | inr h => exact Or.inr ($(orChange (ps1::ps2)) h))
```
