# fixedPoint_lipschitz_in_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e44fabd1-dcc8-49c6-ce1b-6f1224620c63",
  "kind": "theorem",
  "lexical_name": "fixedPoint_lipschitz_in_map",
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
  "slug": "fixedpoint-lipschitz-in-map--340c2fcdced57b59a5cebfea",
  "source": {
    "blob": "f5e688618d6c0ad2d635ec5c79e78294aec6a101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 316,
    "path": "GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:340c2fcdced57b59a5cebfea90dfb4dcc65894792a5b676cd8c1515ba9bc80e6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e44fabd1-dcc8-49c6-ce1b-6f1224620c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedPoint_lipschitz_in_map {g : α → α} (hg : ContractingWith K g) {C}
    (hfg : ∀ z, dist (f z) (g z) ≤ C) : dist (fixedPoint f hf) (fixedPoint g hg) ≤ C / (1 - K) :=
  hf.dist_fixedPoint_fixedPoint_of_dist_le' g hf.fixedPoint_isFixedPt hg.fixedPoint_isFixedPt hfg

end

variable [Nonempty α] [CompleteSpace α]

/-- If a map `f` has a contracting iterate `f^[n]`, then the fixed point of `f^[n]` is also a fixed
point of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5e688618d6c0ad2d635ec5c79e78294aec6a101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
