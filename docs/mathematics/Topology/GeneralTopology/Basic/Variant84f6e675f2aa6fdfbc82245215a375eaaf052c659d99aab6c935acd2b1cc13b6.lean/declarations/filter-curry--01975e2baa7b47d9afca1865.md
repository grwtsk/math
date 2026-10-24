# filter_curry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f95b73d-4d07-0f6d-e6af-e9914ce9b22e",
  "kind": "theorem",
  "lexical_name": "filter_curry",
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
  "slug": "filter-curry--01975e2baa7b47d9afca1865",
  "source": {
    "blob": "fc63bb9f2f6fff6dae45fde191b4f6eac7300595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1025,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01975e2baa7b47d9afca1865d85d5f093648de314604d31be10b698518c28857",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f95b73d-4d07-0f6d-e6af-e9914ce9b22e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1025–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_curry (f : α × β →₀ M) (p : α → Prop) [DecidablePred p] :
    (f.filter fun a : α × β => p a.1).curry = f.curry.filter p := by
  ext a b
  simp [filter_apply, apply_ite (DFunLike.coe · b)]

end Curry

section
variable [AddZeroClass M]

/-- The additive monoid isomorphism between `α × β →₀ M` and `α →₀ β →₀ M` given by
currying/uncurrying. -/
@[simps! symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean#L1025).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc63bb9f2f6fff6dae45fde191b4f6eac7300595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
