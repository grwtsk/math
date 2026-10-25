# IterM.step_takeWhileM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d30fbd98bc4c8ae66a0f46b19219c5701bf8482",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed03918a4c49c6f284e404fcd9db80ef58f82eb338b8cbde3933f343063075f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a971ede-e5a4-4b7a-8101-9565e739953c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de3c8861-f1ac-4729-5620-f49fefcf6ab2",
  "kind": "theorem",
  "lexical_name": "IterM.step_takeWhileM",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "iterm-step-takewhilem--009018a0a9a508a141fb9f8c",
  "source": {
    "blob": "7d30fbd98bc4c8ae66a0f46b19219c5701bf8482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Varianted03918a4c49c6f284e404fcd9db80ef58f82eb338b8cbde3933f343063075f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:009018a0a9a508a141fb9f8c3c25a2f0fc026eaddd5f16b39337fa47fb8ca2b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Varianted03918a4c49c6f284e404fcd9db80ef58f82eb338b8cbde3933f343063075f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de3c8861-f1ac-4729-5620-f49fefcf6ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.step_takeWhileM {α m β} [Monad m] [MonadAttach m] [LawfulMonad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} :
    (it.takeWhileM P).step = (do
      match (← it.step).inflate with
      | .yield it' out h => match ← MonadAttach.attach (P out) with
        | ⟨.up true, hP⟩ => pure <| .deflate <| .yield (it'.takeWhileM P) out (.yield h hP)
        | ⟨.up false, hP⟩ => pure <| .deflate <| .done (.rejected h hP)
      | .skip it' h => pure <| .deflate <| .skip (it'.takeWhileM P) (.skip h)
      | .done h => pure <| .deflate <| .done (.done h)) := by
  simp only [takeWhileM, step_takeWhileWithPostcondition]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp only [Function.comp_apply, PostconditionT.operation_attachLift, PlausibleIterStep.yield,
    PlausibleIterStep.done]
    apply bind_congr
    rintro ⟨⟨x⟩, hx⟩
    cases x <;> rfl
  · simp
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Varianted03918a4c49c6f284e404fcd9db80ef58f82eb338b8cbde3933f343063075f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Varianted03918a4c49c6f284e404fcd9db80ef58f82eb338b8cbde3933f343063075f6.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d30fbd98bc4c8ae66a0f46b19219c5701bf8482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
