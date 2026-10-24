# NNReal.upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ebcb869-cc8a-e3bc-d899-56204d5e6b13",
  "kind": "theorem",
  "lexical_name": "NNReal.upper_bound",
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
  "slug": "nnreal-upper-bound--84eb80a4eada09ff6339171d",
  "source": {
    "blob": "77cc4bca6fcb8e95aeecf896bb413fc08a18c905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 803,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84eb80a4eada09ff6339171d2fff97a72ae98bac578c3e016f74a3229b25b2ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ebcb869-cc8a-e3bc-d899-56204d5e6b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 803–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NNReal.upper_bound {α : Type*} [TopologicalSpace α] (f : α →ᵇ ℝ≥0) (x : α) :
    f x ≤ nndist f 0 := by
  have key : nndist (f x) ((0 : α →ᵇ ℝ≥0) x) ≤ nndist f 0 := @dist_coe_le_dist α ℝ≥0 _ _ f 0 x
  simp only [coe_zero, Pi.zero_apply] at key
  rwa [NNReal.nndist_zero_eq_val' (f x)] at key

end BoundedContinuousFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean#L803).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77cc4bca6fcb8e95aeecf896bb413fc08a18c905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
