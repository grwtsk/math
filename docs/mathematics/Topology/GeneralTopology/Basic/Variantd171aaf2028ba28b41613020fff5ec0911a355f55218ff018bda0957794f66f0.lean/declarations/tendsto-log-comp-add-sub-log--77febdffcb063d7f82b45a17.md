# tendsto_log_comp_add_sub_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61c17865-a97a-9b81-136b-6f5812cb3bf4",
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
  "slug": "tendsto-log-comp-add-sub-log--77febdffcb063d7f82b45a17",
  "source": {
    "blob": "192a9b92912b130a9f9ab5782632889268de615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 474,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77febdffcb063d7f82b45a175694ed80b17d8e83ff4cbfddb008d67774947a53",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61c17865-a97a-9b81-136b-6f5812cb3bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_log_comp_add_sub_log (y : ℝ) :
    Tendsto (fun x : ℝ => log (x + y) - log x) atTop (𝓝 0) := by
  have : Tendsto (fun x ↦ 1 + y / x) atTop (𝓝 (1 + 0))
  · exact tendsto_const_nhds.add (tendsto_const_nhds.div_atTop tendsto_id)
  rw [← comap_exp_nhds_exp, exp_zero, tendsto_comap_iff, ← add_zero (1 : ℝ)]
  refine' this.congr' _
  filter_upwards [eventually_gt_atTop (0 : ℝ), eventually_gt_atTop (-y)] with x hx₀ hxy
  rw [comp_apply, exp_sub, exp_log, exp_log, one_add_div] <;> linarith
#align real.tendsto_log_comp_add_sub_log Real.tendsto_log_comp_add_sub_log

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `192a9b92912b130a9f9ab5782632889268de615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
