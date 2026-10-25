# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClauseConvertType.Variant6569ef11b3d4708c27f4f759180a8c9b2ce2bb83ab9ce272113064848d6e8d02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9bc75bac44f3c70c0fa64aab40f3e3e9e500927` · SHA-256 `623489490e9987f92668ff81f9547e3518663e5521c52ea5e143fa24b39ad007`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrLevel.Variant279b4b8b8340173c38ff04ac3c110c119b8353edd663cab316deea137c76823f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"279b4b8b8340173c38ff04ac3c110c119b8353edd663cab316deea137c76823f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OrLevel.Variant279b4b8b8340173c38ff04ac3c110c119b8353edd663cab316deea137c76823f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"279b4b8b8340173c38ff04ac3c110c119b8353edd663cab316deea137c76823f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/clauseConvertType.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrLevel.Variant279b4b8b8340173c38ff04ac3c110c119b8353edd663cab316deea137c76823f

open Qq Lean

/-!
Type-safe conversion from values of type `Sum α β` to values of type `Sum α (Sum β Empty)`.
-/

def orLevel : (ps : List ((u : Level) × Q(Type u))) → Level
  | [] => .zero
  | ⟨u, _⟩ :: ps => .max u (orLevel ps)

def or1 : (ps : List ((u : Level) × Q(Type u))) → Q(Type $(orLevel ps))
  | [] => q(Empty)
  | [⟨_, p⟩] => q($p)
  | ⟨u, p⟩::ps => q(Sum $p $(or1 ps))

def or2 : (ps : List ((u : Level) × Q(Type u))) → Q(Type $(orLevel ps))
  | [] => q(Empty)
  | ⟨u, p⟩ :: ps => q(Sum $p $(or2 ps))

def orChange : (ps : List ((u : Level) × Q(Type u))) → Q($(or1 ps) → $(or2 ps))
  | [] => q(id)
  | [⟨_, _⟩] => q(Sum.inl)
  | ⟨_, _⟩::(ps1::ps2) =>
    let h := orChange (ps1::ps2)
    q(fun h => match h with
      | Sum.inl l => Sum.inl l
      | Sum.inr r => Sum.inr ($h r))
```
