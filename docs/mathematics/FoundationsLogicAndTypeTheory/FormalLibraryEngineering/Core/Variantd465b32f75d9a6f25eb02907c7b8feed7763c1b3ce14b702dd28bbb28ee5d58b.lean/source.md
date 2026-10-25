# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantd465b32f75d9a6f25eb02907c7b8feed7763c1b3ce14b702dd28bbb28ee5d58b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6e09429769a36390f635102b2ee96ada0910166` · SHA-256 `c681e65f277e3a8f27a489a5a198189a318cf14ddedb359edeb7cb189d6d4815`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.System.Variantcc3120f92cd9948b4fab115779d04ce41c94aee01c287103f4803e521a6adaf9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc3120f92cd9948b4fab115779d04ce41c94aee01c287103f4803e521a6adaf9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.System.Variantcc3120f92cd9948b4fab115779d04ce41c94aee01c287103f4803e521a6adaf9","mathematical_subject":"Foundations.Unclassified","original_sha256":"cc3120f92cd9948b4fab115779d04ce41c94aee01c287103f4803e521a6adaf9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/System/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity

/-! # Systems and natural transformations -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.System.Variantcc3120f92cd9948b4fab115779d04ce41c94aee01c287103f4803e521a6adaf9

namespace Mathematics.System

universe u v w

/-- A deterministic state machine with a separate observation map. -/
structure System (State : Type u) (Input : Type v) (Output : Type w) where
  step : State → Input → State
  observe : State → Output

universe u₁ v₁ w₁

/-- A morphism preserves both transition and observation structure. -/
structure SystemHom
    {State : Type u} {Input : Type v} {Output : Type w}
    {State' : Type u₁} {Input' : Type v₁} {Output' : Type w₁}
    (source : System State Input Output)
    (target : System State' Input' Output') where
  mapState : State → State'
  mapInput : Input → Input'
  mapOutput : Output → Output'
  step_naturality :
    ∀ state input,
      mapState (source.step state input) =
        target.step (mapState state) (mapInput input)
  observe_naturality :
    ∀ state,
      mapOutput (source.observe state) =
        target.observe (mapState state)

namespace SystemHom

def identity (system : System State Input Output) : SystemHom system system where
  mapState := id
  mapInput := id
  mapOutput := id
  step_naturality := by intros; rfl
  observe_naturality := by intros; rfl

def comp
    {source : System State Input Output}
    {middle : System State' Input' Output'}
    {target : System State'' Input'' Output''}
    (after : SystemHom middle target)
    (before : SystemHom source middle) :
    SystemHom source target where
  mapState := after.mapState ∘ before.mapState
  mapInput := after.mapInput ∘ before.mapInput
  mapOutput := after.mapOutput ∘ before.mapOutput
  step_naturality := by
    intro state input
    simp only [Function.comp_apply, before.step_naturality, after.step_naturality]
  observe_naturality := by
    intro state
    simp only [Function.comp_apply, before.observe_naturality,
      after.observe_naturality]

end SystemHom

end Mathematics.System
```
