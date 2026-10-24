# ediam_cthickening_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9a9222eff1becde505c2464191589eb0d49ef91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27a8d803-c31a-ccf3-269e-7370902089f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca86ca16-21e3-cfba-3842-1aae724d2b52",
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
  "slug": "ediam-cthickening-le--2be000a847d6c16e12c6aef8",
  "source": {
    "blob": "a9a9222eff1becde505c2464191589eb0d49ef91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 345,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2be000a847d6c16e12c6aef8587dd1c2e5897bcac2db1cc75bae803c246de3d6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca86ca16-21e3-cfba-3842-1aae724d2b52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_cthickening_le (ε : ℝ≥0) :
    EMetric.diam (cthickening ε s) ≤ EMetric.diam s + 2 * ε := by
  refine diam_le fun x hx y hy => ENNReal.le_of_forall_pos_le_add fun δ hδ _ => ?_
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9a9222eff1becde505c2464191589eb0d49ef91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
