# continuousLinearMapAt_symmL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:270e5444-41b7-b7bc-124c-0167bb8bfefd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a764b0cd-0507-9c65-bede-6b699c6a90b8",
  "kind": "theorem",
  "lexical_name": "continuousLinearMapAt_symmL",
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
  "slug": "continuouslinearmapat-symml--fa88b9eb9224996dee0079b3",
  "source": {
    "blob": "bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 401,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa88b9eb9224996dee0079b39f3ec80af0ade0612f8f9775da101f4a46756747",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a764b0cd-0507-9c65-bede-6b699c6a90b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousLinearMapAt_symmL (e : Trivialization F (π F E)) [e.IsLinear R] {b : B}
    (hb : b ∈ e.baseSet) (y : F) : e.continuousLinearMapAt R b (e.symmL R b y) = y :=
  e.linearMapAt_symmₗ hb y

variable (R) in
/-- In a vector bundle, a trivialization in the fiber (which is a priori only linear)
is in fact a continuous linear equiv between the fibers and the model fiber. -/
@[simps -fullyApplied apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
