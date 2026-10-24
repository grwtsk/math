# continuous_stoneCechUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "490dc97ef1d481089e0c432496b0b30d41fc9c03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18bd4ed9-d90d-d5f6-247b-3ec5ae312407",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db36c55b-5cf9-7f9f-6ca5-a393b383dada",
  "kind": "theorem",
  "lexical_name": "continuous_stoneCechUnit",
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
  "slug": "continuous-stonecechunit--545398f22bf4b8f7befda573",
  "source": {
    "blob": "490dc97ef1d481089e0c432496b0b30d41fc9c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 333,
    "path": "GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:545398f22bf4b8f7befda5730d4bdef6554f3e8666e766e56add47aab12ab9e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db36c55b-5cf9-7f9f-6ca5-a393b383dada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_stoneCechUnit : Continuous (stoneCechUnit : α → StoneCech α) :=
  (T2Quotient.continuous_mk _).comp continuous_preStoneCechUnit

/-- The image of `stoneCechUnit` is dense. (But `stoneCechUnit` need
  not be an embedding, for example if the original space is not Hausdorff.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `490dc97ef1d481089e0c432496b0b30d41fc9c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
