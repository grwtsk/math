# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Shadow.Variant80dae8b8ce2dc2c8c875362d3e7a5b46a0521e2e12339fbd6236ad46afb5b8db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f899a35d8b0d2c81080b931c7a1281f5b103e26` · SHA-256 `0c78964fcd22aa80323c5ea581021e850ad243d566a58caa4f71ef78e06f21bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShadowMutationResult.Variant7b3abd715128266bba90f40e21ebfa8b4b34f94593eb8e143f0eee5106790e9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b3abd715128266bba90f40e21ebfa8b4b34f94593eb8e143f0eee5106790e9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ShadowMutationResult.Variant7b3abd715128266bba90f40e21ebfa8b4b34f94593eb8e143f0eee5106790e9b","mathematical_subject":"Foundations.Unclassified","original_sha256":"7b3abd715128266bba90f40e21ebfa8b4b34f94593eb8e143f0eee5106790e9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Shadow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Mutation.Obstruction

/-!
# Immutable shadow mutation

The pure construction returns the original canonical snapshot unchanged and a
separate counterfactual state.  It exposes no operation that writes the
canonical carrier.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShadowMutationResult.Variant7b3abd715128266bba90f40e21ebfa8b4b34f94593eb8e143f0eee5106790e9b

namespace Mathematics.Mutation

structure ShadowMutationResult
    {State : Type}
    (snapshot : ImmutableSnapshot State) where
  canonical : ImmutableSnapshot State
  shadowState : State
  mutationProgramId : StableId
  canonical_unchanged :
    canonical = snapshot

def applyShadowMutation
    {State : Type}
    (snapshot : ImmutableSnapshot State)
    (program : MutationProgram State) :
    ShadowMutationResult snapshot where
  canonical := snapshot
  shadowState := program.mutate snapshot.state
  mutationProgramId := program.programId
  canonical_unchanged := rfl

theorem shadow_mutation_preserves_canonical
    {State : Type}
    (snapshot : ImmutableSnapshot State)
    (program : MutationProgram State) :
    (applyShadowMutation snapshot program).canonical = snapshot :=
  (applyShadowMutation snapshot program).canonical_unchanged

end Mathematics.Mutation
```
