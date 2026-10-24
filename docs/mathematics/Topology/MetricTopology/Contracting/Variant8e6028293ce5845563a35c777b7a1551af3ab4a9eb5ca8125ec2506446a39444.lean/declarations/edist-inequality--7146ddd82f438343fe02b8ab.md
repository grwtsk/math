# edist_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad33f545-a464-a1aa-4ff8-c4999fc8f9ca",
  "kind": "theorem",
  "lexical_name": "edist_inequality",
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
  "slug": "edist-inequality--7146ddd82f438343fe02b8ab",
  "source": {
    "blob": "f5e688618d6c0ad2d635ec5c79e78294aec6a101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7146ddd82f438343fe02b8ab1d5fbbc4fdd347525a4e8a80202306f588e04499",
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

Occurrence: `result:ad33f545-a464-a1aa-4ff8-c4999fc8f9ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_inequality (hf : ContractingWith K f) {x y} (h : edist x y ≠ ∞) :
    edist x y ≤ (edist x (f x) + edist y (f y)) / (1 - K) :=
  suffices edist x y ≤ edist x (f x) + edist y (f y) + K * edist x y by
    rwa [ENNReal.le_div_iff_mul_le (Or.inl hf.one_sub_K_ne_zero) (Or.inl one_sub_K_ne_top),
      mul_comm, ENNReal.sub_mul fun _ _ ↦ h, one_mul, tsub_le_iff_right]
  calc
    edist x y ≤ edist x (f x) + edist (f x) (f y) + edist (f y) y := edist_triangle4 _ _ _ _
    _ = edist x (f x) + edist y (f y) + edist (f x) (f y) := by rw [edist_comm y, add_right_comm]
    _ ≤ edist x (f x) + edist y (f y) + K * edist x y := add_le_add le_rfl (hf.2 _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5e688618d6c0ad2d635ec5c79e78294aec6a101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
