# ContinuousMapClass.toCocompactMapClass_of_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b51e618d64b9a561fec0715a363a699755605c9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:572d0c25-c1a1-b1c2-7b6a-03b1d4da9b42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73a26c6e-571f-cc4e-2676-060829698f88",
  "kind": "theorem",
  "lexical_name": "ContinuousMapClass.toCocompactMapClass_of_norm",
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
  "slug": "continuousmapclass-tococompactmapclass-of-norm--a2dcd5cdb678090c326a275b",
  "source": {
    "blob": "b51e618d64b9a561fec0715a363a699755605c9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2dcd5cdb678090c326a275b38dabe5e2949c2fe7ace4b651b10eacb1e965015",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73a26c6e-571f-cc4e-2676-060829698f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMapClass.toCocompactMapClass_of_norm [ProperSpace E] [FunLike 𝓕 E F]
    [ContinuousMapClass 𝓕 E F] (h : ∀ (f : 𝓕) (ε : ℝ), ∃ r : ℝ, ∀ x : E, r < ‖x‖ → ε < ‖f x‖) :
    CocompactMapClass 𝓕 E F where
  cocompact_tendsto := (tendsto_cocompact_cocompact_of_norm <| h ·)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b51e618d64b9a561fec0715a363a699755605c9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
