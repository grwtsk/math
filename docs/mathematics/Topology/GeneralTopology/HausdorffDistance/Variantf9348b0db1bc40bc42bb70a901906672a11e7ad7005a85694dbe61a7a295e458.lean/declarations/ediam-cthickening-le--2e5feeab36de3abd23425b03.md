# ediam_cthickening_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5327577-0825-b6b8-b4c4-52a50d2433ef",
  "kind": "theorem",
  "lexical_name": "ediam_cthickening_le",
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
  "slug": "ediam-cthickening-le--2e5feeab36de3abd23425b03",
  "source": {
    "blob": "58cd97ea1567cab3e19f1cd95c79eda3a9517db7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1232,
    "line": 1218,
    "path": "GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e5feeab36de3abd23425b03edbff75c61273d24b61275807566331fc3a767c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5327577-0825-b6b8-b4c4-52a50d2433ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1218–1232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_cthickening_le (ε : ℝ≥0) :
    EMetric.diam (cthickening ε s) ≤ EMetric.diam s + 2 * ε := by
  refine' diam_le fun x hx y hy => ENNReal.le_of_forall_pos_le_add fun δ hδ _ => _
  rw [mem_cthickening_iff, ENNReal.ofReal_coe_nnreal] at hx hy
  have hε : (ε : ℝ≥0∞) < ε + δ := ENNReal.coe_lt_coe.2 (lt_add_of_pos_right _ hδ)
  replace hx := hx.trans_lt hε
  obtain ⟨x', hx', hxx'⟩ := infEdist_lt_iff.mp hx
  calc
    edist x y ≤ edist x x' + edist y x' := edist_triangle_right _ _ _
    _ ≤ ε + δ + (infEdist y s + EMetric.diam s) :=
      add_le_add hxx'.le (edist_le_infEdist_add_ediam hx')
    _ ≤ ε + δ + (ε + EMetric.diam s) := add_le_add_left (add_le_add_right hy _) _
    _ = _ := by rw [two_mul]; ac_rfl
#align metric.ediam_cthickening_le Metric.ediam_cthickening_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean#L1218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cd97ea1567cab3e19f1cd95c79eda3a9517db7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
