# foundry_first_witness_observer_reducer_pipeline_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbb8e6cb-93ff-9776-e79e-9c010bba1146",
  "kind": "theorem",
  "lexical_name": "foundry_first_witness_observer_reducer_pipeline_sound",
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
  "slug": "foundry-first-witness-observer-reducer-pipeline-sound--e06ba6ce5936d6d08a5e87e6",
  "source": {
    "blob": "666acd35005bb5c87aa666630b36f06c4093324b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e06ba6ce5936d6d08a5e87e65d15f448843b36ec5431f98ade0dbf0ac86de1b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbb8e6cb-93ff-9776-e79e-9c010bba1146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foundry_first_witness_observer_reducer_pipeline_sound
    (F : FoundryRootReducerPipeline) :
    F.root.sound ∧
    F.allChildrenSound ∧
    F.rootWitnessesDelegation ∧
    F.noBypass :=
  by
    exact
      ⟨F.root.soundProof,
       F.allChildrenSoundProof,
       F.rootWitnessesDelegationProof,
       F.noBypassProof⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `666acd35005bb5c87aa666630b36f06c4093324b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
