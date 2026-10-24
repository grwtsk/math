# ediam_cthickening_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81cf52111bfa540144e44b1b090fa9420c004b15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e834fad7-0212-9432-51cf-07df8826c6db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:109a3aa5-d765-c42c-98b0-ba2f719a759a",
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
  "slug": "ediam-cthickening-le--94d1339adbca343d681ad895",
  "source": {
    "blob": "81cf52111bfa540144e44b1b090fa9420c004b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 340,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94d1339adbca343d681ad895490350d6888e6c3405273a24c185272482e9c401",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:109a3aa5-d765-c42c-98b0-ba2f719a759a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_cthickening_le (ε : ℝ≥0) :
    ediam (cthickening ε s) ≤ ediam s + 2 * ε := by
  refine ediam_le fun x hx y hy => ENNReal.le_of_forall_pos_le_add fun δ hδ _ => ?_
  rw [mem_cthickening_iff, ENNReal.ofReal_coe_nnreal] at hx hy
  have hε : (ε : ℝ≥0∞) < ε + δ := ENNReal.coe_lt_coe.2 (lt_add_of_pos_right _ hδ)
  replace hx := hx.trans_lt hε
  obtain ⟨x', hx', hxx'⟩ := infEDist_lt_iff.mp hx
  calc
    edist x y ≤ edist x x' + edist y x' := edist_triangle_right _ _ _
    _ ≤ ε + δ + (infEDist y s + ediam s) :=
      add_le_add hxx'.le (edist_le_infEDist_add_ediam hx')
    _ ≤ ε + δ + (ε + ediam s) := by grw [hy]
    _ = _ := by rw [two_mul]; ac_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81cf52111bfa540144e44b1b090fa9420c004b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
