# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32eebd54addc2b5cec94a965ab17acc700d87bfe776002dee37779088140bb44",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d2a7d4ccd6a475e3e4204f06",
  "source": {
    "blob": "b82f207e7111d1043404195a3fea09cd64293172",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 201,
    "path": "GRWTSK/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2a7d4ccd6a475e3e4204f06d70d1097c21d0b4ba670f389e6325bf7fafea1a0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32eebd54addc2b5cec94a965ab17acc700d87bfe776002dee37779088140bb44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance : Ord SearchNode where
  compare := compareOn fun n => toLex (toLex (n.ppGoal.length, n.lastIdx), n.ppGoal)

/--
A somewhat arbitrary penalty function.
Note that `n.lastIdx` penalizes using later lemmas from a particular call to `rw?` at a node,
but once we have moved on to the next node these penalties are "forgiven".

(You might in interpret this as encouraging
the algorithm to "trust" the ordering provided by `rw?`.)

I tried out a various (positive) linear combinations of
`.history.size`, `.lastIdx`, and `.ppGoal.length` (and also the `.log2`s of these).
* `.lastIdx.log2` is quite good, and the best coefficient is around 1.
* `.lastIdx / 10` is almost as good.
* `.history.size` makes things worse (similarly with `.log2`).
* `.ppGoal.length` makes little difference (similarly with `.log2`).
Here testing consisting of running the current `rw_search` test suite,
rejecting values for which any failed, and trying to minimize the run time reported by
```shell
lake build &&  \
time (lake env lean test/RewriteSearch/Basic.lean; \
  lake env lean test/RewriteSearch/Polynomial.lean)
```

With a larger test suite it might be worth running this minimization again,
and considering other penalty functions.

(If you do this, please choose a penalty function which is in the interior of the region
where the test suite works.
I think it would be a bad idea to optimize the run time at the expense of fragility.)
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b82f207e7111d1043404195a3fea09cd64293172` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
