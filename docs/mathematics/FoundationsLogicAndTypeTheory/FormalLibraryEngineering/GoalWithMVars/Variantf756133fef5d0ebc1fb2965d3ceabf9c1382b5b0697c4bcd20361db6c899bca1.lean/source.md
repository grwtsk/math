# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalWithMVars.Variantf756133fef5d0ebc1fb2965d3ceabf9c1382b5b0697c4bcd20361db6c899bca1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7114d31c7ec20ff36155f07f11e9622640e11729` · SHA-256 `68e900a48e331706311682e4891433b65c116c81e90292231323e900c4b59fce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalWithMVars.Variantcfea836cd3919948dac6e203f9f917ef3c366f8fae0dcf460148655aadb1cec4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cfea836cd3919948dac6e203f9f917ef3c366f8fae0dcf460148655aadb1cec4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GoalWithMVars.Variantcfea836cd3919948dac6e203f9f917ef3c366f8fae0dcf460148655aadb1cec4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cfea836cd3919948dac6e203f9f917ef3c366f8fae0dcf460148655aadb1cec4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/GoalWithMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
module

public import Lean.Meta.Basic
import Lean.Meta.CollectMVars


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalWithMVars.Variantcfea836cd3919948dac6e203f9f917ef3c366f8fae0dcf460148655aadb1cec4

public section

open Lean Std Lean.Meta

namespace Aesop

structure GoalWithMVars where
  goal : MVarId
  mvars : Std.HashSet MVarId
  deriving Inhabited

instance : Repr GoalWithMVars where
  reprPrec
    | g, _ => s!"\{ goal := {repr g.goal}, mvars := {repr g.mvars.toArray} }"

instance : BEq GoalWithMVars :=
  ⟨λ g₁ g₂ => g₁.goal == g₂.goal⟩

namespace GoalWithMVars

def ofMVarId (goal : MVarId) : MetaM GoalWithMVars := do
  return { goal, mvars := ← goal.getMVarDependencies }

end Aesop.GoalWithMVars
```
