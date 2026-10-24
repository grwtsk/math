# _root_.GRWTSK.Topology.MetricTopology.Thickening.Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.Disjoint.exists_thickenings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81e9d061-e9b0-5f8d-4cdc-62627f9541ce",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.Thickening.Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.Disjoint.exists_thickenings",
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
  "slug": "root-grwtsk-topology-metrictopology-thickening-variant918ff2b3d9fea77663--a4811e8706f5369e3846859d",
  "source": {
    "blob": "171028dd690792c08d89df66361b5edfaba72194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 409,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4811e8706f5369e3846859dc894bc74be544027f736eefd3630256ac5e3a257",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81e9d061-e9b0-5f8d-4cdc-62627f9541ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.MetricTopology.Thickening.Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.Disjoint.exists_thickenings (hst : Disjoint s t) (hs : IsCompact s)
    (ht : IsClosed t) :
    ∃ δ, 0 < δ ∧ Disjoint (thickening δ s) (thickening δ t) := by
  obtain ⟨r, hr, h⟩ := exists_pos_forall_lt_edist hs ht hst
  refine ⟨r / 2, half_pos (NNReal.coe_pos.2 hr), ?_⟩
  rw [disjoint_iff_inf_le]
  rintro z ⟨hzs, hzt⟩
  rw [mem_thickening_iff_exists_edist_lt] at hzs hzt
  rw [← NNReal.coe_two, ← NNReal.coe_div, ENNReal.ofReal_coe_nnreal] at hzs hzt
  obtain ⟨x, hx, hzx⟩ := hzs
  obtain ⟨y, hy, hzy⟩ := hzt
  refine (h x hx y hy).not_ge ?_
  calc
    edist x y ≤ edist z x + edist z y := edist_triangle_left _ _ _
    _ ≤ ↑(r / 2) + ↑(r / 2) := add_le_add hzx.le hzy.le
    _ = r := by rw [← ENNReal.coe_add, add_halves]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `171028dd690792c08d89df66361b5edfaba72194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
