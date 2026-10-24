# PartitionOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bf16d69ca1d460dac15fb85fea52cbcdfa56897ca633328696a9fd98a50e68e",
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
  "slug": "partitionofunity--2e63d4808c5afe733e6c5ef6",
  "source": {
    "blob": "6e3294a9d2321c4e9ba1ce3c497bd285b98207c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantbee5cf63d99272e4909c0dc62e3bd9a520063d831a187b3a5a2f5f2b2d418180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e63d4808c5afe733e6c5ef6a873e9781add44284c015a1ac786272ccd1c8592",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variantbee5cf63d99272e4909c0dc62e3bd9a520063d831a187b3a5a2f5f2b2d418180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bf16d69ca1d460dac15fb85fea52cbcdfa56897ca633328696a9fd98a50e68e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PartitionOfUnity (ι X : Type*) [TopologicalSpace X] (s : Set X := univ) where
  /-- The collection of continuous functions underlying this partition of unity -/
  toFun : ι → C(X, ℝ)
  /-- the supports of the underlying functions are a locally finite family of sets -/
  locallyFinite' : LocallyFinite fun i => support (toFun i)
  /-- the functions are non-negative -/
  nonneg' : 0 ≤ toFun
  /-- the functions sum up to one on `s` -/
  sum_eq_one' : ∀ x ∈ s, ∑ᶠ i, toFun i x = 1
  /-- the functions sum up to at most one, globally -/
  sum_le_one' : ∀ x, ∑ᶠ i, toFun i x ≤ 1

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variantbee5cf63d99272e4909c0dc62e3bd9a520063d831a187b3a5a2f5f2b2d418180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantbee5cf63d99272e4909c0dc62e3bd9a520063d831a187b3a5a2f5f2b2d418180.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3294a9d2321c4e9ba1ce3c497bd285b98207c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
