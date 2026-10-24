# Submonoid.top_closure_mul_self_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb935d88-f416-a3aa-9ef3-8173de2ca3c9",
  "kind": "theorem",
  "lexical_name": "Submonoid.top_closure_mul_self_eq",
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
  "slug": "submonoid-top-closure-mul-self-eq--070c9e4d6d2725e243f6e3ef",
  "source": {
    "blob": "82746c2f2a4e25027e47de20068dc6441dfc4b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 426,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:070c9e4d6d2725e243f6e3efe47fb5a7ae5d59730a187f469a15d6064937ae8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb935d88-f416-a3aa-9ef3-8173de2ca3c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submonoid.top_closure_mul_self_eq (s : Submonoid M) :
    _root_.closure (s : Set M) * _root_.closure s = _root_.closure s :=
  Subset.antisymm s.top_closure_mul_self_subset fun x hx =>
    ⟨x, 1, hx, _root_.subset_closure s.one_mem, mul_one _⟩
#align submonoid.top_closure_mul_self_eq Submonoid.top_closure_mul_self_eq
#align add_submonoid.top_closure_add_self_eq AddSubmonoid.top_closure_add_self_eq

/-- The (topological-space) closure of a submonoid of a space `M` with `ContinuousMul` is
itself a submonoid. -/
@[to_additive "The (topological-space) closure of an additive submonoid of a space `M` with
`ContinuousAdd` is itself an additive submonoid."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82746c2f2a4e25027e47de20068dc6441dfc4b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
