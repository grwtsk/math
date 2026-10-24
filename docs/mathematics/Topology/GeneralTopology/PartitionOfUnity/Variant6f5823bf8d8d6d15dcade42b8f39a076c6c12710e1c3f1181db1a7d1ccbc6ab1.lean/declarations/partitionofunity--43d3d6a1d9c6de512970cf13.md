# PartitionOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dff680256b732a3ddd0398a7fc04bee2bf0f8de743568bb85d1bc5475b68081",
  "kind": "structure",
  "lexical_name": "PartitionOfUnity",
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
  "slug": "partitionofunity--43d3d6a1d9c6de512970cf13",
  "source": {
    "blob": "d6e5fd80f460446bcf1d4859bcbae0b052c2d564",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43d3d6a1d9c6de512970cf137809f42f51a8607fd8aa64518b7b08fd7aa8657f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dff680256b732a3ddd0398a7fc04bee2bf0f8de743568bb85d1bc5475b68081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PartitionOfUnity (ι X : Type*) [TopologicalSpace X] (s : Set X := univ) where
  toFun : ι → C(X, ℝ)
  locallyFinite' : LocallyFinite fun i => support (toFun i)
  nonneg' : 0 ≤ toFun
  sum_eq_one' : ∀ x ∈ s, ∑ᶠ i, toFun i x = 1
  sum_le_one' : ∀ x, ∑ᶠ i, toFun i x ≤ 1
#align partition_of_unity PartitionOfUnity

/-- A `BumpCovering ι X s` is an indexed family of functions `f i`, `i : ι`, such that

* the supports of `f i` form a locally finite family of sets, i.e., for every point `x : X` there
  exists a neighborhood `U ∋ x` such that all but finitely many functions `f i` are zero on `U`;
* for all `i`, `x` we have `0 ≤ f i x ≤ 1`;
* each point `x ∈ s` belongs to the interior of `{x | f i x = 1}` for some `i`.

One of the main use cases for a `BumpCovering` is to define a `PartitionOfUnity`, see
`BumpCovering.toPartitionOfUnity`, but some proofs can directly use a `BumpCovering` instead of
a `PartitionOfUnity`.

If `X` is a normal paracompact space, then `BumpCovering.exists_isSubordinate` guarantees that for
every open covering `U : Set (Set X)` of `s` there exists a `BumpCovering` of `s` that is
subordinate to `U`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6e5fd80f460446bcf1d4859bcbae0b052c2d564` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
