# orbit_index_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0edcaf6d90c9e9bd887f90d49e8f138103efa0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f5df300-233a-1e17-3377-f577096dce7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61d6fa7d-ec61-5f5c-14be-ffe18c6b8ed6",
  "kind": "theorem",
  "lexical_name": "orbit_index_invariant",
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
  "slug": "orbit-index-invariant--e2d2c50b3b1f51579dbbb884",
  "source": {
    "blob": "b0edcaf6d90c9e9bd887f90d49e8f138103efa0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AutomorphismIndex/Variant564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2d2c50b3b1f51579dbbb88452f5cfb8e296245daa909bc41e866acbff95b368",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/AutomorphismIndex/Variant564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61d6fa7d-ec61-5f5c-14be-ffe18c6b8ed6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbit_index_invariant
    {GroupElement Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : OrbitLocalRank GroupElement Frontier)
    (groupElement : GroupElement)
    (record : Frontier) :
    orbitFrontierIndex
        profileId stratum ranker
        (ranker.act groupElement record) =
      orbitFrontierIndex profileId stratum ranker record := by
  unfold orbitFrontierIndex
  rw [ranker.invariant]

end Mathematics.StratifiedBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/AutomorphismIndex/Variant564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AutomorphismIndex/Variant564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0edcaf6d90c9e9bd887f90d49e8f138103efa0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
