# hasBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "075be3f89eef066d88fb74cde58229f1af98ccb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7946851-f6c4-2ed3-6b35-678ad74c1bf0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04d2e187-a05f-65f8-e6b8-b353b05882f2",
  "kind": "theorem",
  "lexical_name": "hasBasis",
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
  "slug": "hasbasis--b0b35edbf72e83028fd43d0b",
  "source": {
    "blob": "075be3f89eef066d88fb74cde58229f1af98ccb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 138,
    "path": "GRWTSK/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0b35edbf72e83028fd43d0beb949751b78aee900393e538ed33c7f252b30626",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04d2e187-a05f-65f8-e6b8-b353b05882f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem hasBasis (B : GroupFilterBasis G) (x : G) :
    HasBasis (B.N x) (fun V : Set G ↦ V ∈ B) fun V ↦ (fun y ↦ x * y) '' V :=
  HasBasis.map (fun y ↦ x * y) toFilterBasis.hasBasis

/-- The topological space structure coming from a group filter basis. -/
@[to_additive (attr := instance_reducible)
  /-- The topological space structure coming from an additive group filter basis. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075be3f89eef066d88fb74cde58229f1af98ccb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
