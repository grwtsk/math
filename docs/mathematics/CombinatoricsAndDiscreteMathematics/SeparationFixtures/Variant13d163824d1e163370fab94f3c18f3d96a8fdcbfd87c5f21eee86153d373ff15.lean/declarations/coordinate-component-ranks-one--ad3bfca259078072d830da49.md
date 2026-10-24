# coordinate_component_ranks_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6a35c0b1e030b716987f023769e14e77f639caf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ff9b5f4-e796-28f5-f387-9be282de0d76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1230bfcc-daa5-0c37-588c-7e13a43a4059",
  "kind": "theorem",
  "lexical_name": "coordinate_component_ranks_one",
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
  "slug": "coordinate-component-ranks-one--ad3bfca259078072d830da49",
  "source": {
    "blob": "d6a35c0b1e030b716987f023769e14e77f639caf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad3bfca259078072d830da49d58ce11b9041f65ffc1b52c117f19fc77f2efe51",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1230bfcc-daa5-0c37-588c-7e13a43a4059`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinate_component_ranks_one :
    TargetSeparationRank coordinateObservation Finset.univ (Prod.fst : BooleanPair → Bool) = 1 ∧
      TargetSeparationRank coordinateObservation Finset.univ
        (Prod.snd : BooleanPair → Bool) = 1 := by
  decide

/-- Combining the independent coordinate tests gives equality, without a strict rank saving. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a35c0b1e030b716987f023769e14e77f639caf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
