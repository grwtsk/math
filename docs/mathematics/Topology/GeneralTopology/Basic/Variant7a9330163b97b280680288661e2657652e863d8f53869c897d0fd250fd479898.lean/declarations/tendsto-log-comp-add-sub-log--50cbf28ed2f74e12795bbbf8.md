# tendsto_log_comp_add_sub_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fe4380a167ceb6b20db4664740c8c4689c3eec0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e495aa0-7fda-5ef1-4afc-ea34b0d30627",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6aa857d-a7d6-03cf-58f8-c49e373530d2",
  "kind": "theorem",
  "lexical_name": "tendsto_log_comp_add_sub_log",
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
  "slug": "tendsto-log-comp-add-sub-log--50cbf28ed2f74e12795bbbf8",
  "source": {
    "blob": "5fe4380a167ceb6b20db4664740c8c4689c3eec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 462,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50cbf28ed2f74e12795bbbf8f5e56be608ac825f6b2b2b2ff794e9f417d0526f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6aa857d-a7d6-03cf-58f8-c49e373530d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_log_comp_add_sub_log (y : ℝ) :
    Tendsto (fun x : ℝ => log (x + y) - log x) atTop (𝓝 0) := by
  have : Tendsto (fun x ↦ 1 + y / x) atTop (𝓝 (1 + 0)) :=
    tendsto_const_nhds.add (tendsto_const_nhds.div_atTop tendsto_id)
  rw [← comap_exp_nhds_exp, exp_zero, tendsto_comap_iff, ← add_zero (1 : ℝ)]
  refine this.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ), eventually_gt_atTop (-y)] with x hx₀ hxy
  rw [comp_apply, exp_sub, exp_log, exp_log, one_add_div] <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fe4380a167ceb6b20db4664740c8c4689c3eec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
