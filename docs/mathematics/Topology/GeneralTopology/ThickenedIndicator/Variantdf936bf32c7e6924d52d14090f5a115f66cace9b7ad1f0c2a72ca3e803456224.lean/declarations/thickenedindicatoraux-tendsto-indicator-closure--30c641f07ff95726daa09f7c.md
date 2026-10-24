# thickenedIndicatorAux_tendsto_indicator_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4820d1b3b9a9c571b9a01efeb02aad32f60e0978",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ce0c526-e784-9f6e-a9d5-a942d8348263",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f2c26b3-623f-5653-e335-ae1006491513",
  "kind": "theorem",
  "lexical_name": "thickenedIndicatorAux_tendsto_indicator_closure",
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
  "slug": "thickenedindicatoraux-tendsto-indicator-closure--30c641f07ff95726daa09f7c",
  "source": {
    "blob": "4820d1b3b9a9c571b9a01efeb02aad32f60e0978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30c641f07ff95726daa09f7c2938bef87cd3a998fd6655831a8532335c23c65d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f2c26b3-623f-5653-e335-ae1006491513`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thickenedIndicatorAux_tendsto_indicator_closure {δseq : ℕ → ℝ}
    (δseq_lim : Tendsto δseq atTop (𝓝 0)) (E : Set α) :
    Tendsto (fun n => thickenedIndicatorAux (δseq n) E) atTop
      (𝓝 (indicator (closure E) fun _ => (1 : ℝ≥0∞))) := by
  rw [tendsto_pi_nhds]
  intro x
  by_cases x_mem_closure : x ∈ closure E
  · simp_rw [thickenedIndicatorAux_one_of_mem_closure _ E x_mem_closure]
    rw [show (indicator (closure E) fun _ => (1 : ℝ≥0∞)) x = 1 by
        simp only [x_mem_closure, indicator_of_mem]]
    exact tendsto_const_nhds
  · rw [show (closure E).indicator (fun _ => (1 : ℝ≥0∞)) x = 0 by
        simp only [x_mem_closure, indicator_of_not_mem, not_false_iff]]
    rcases exists_real_pos_lt_infEdist_of_not_mem_closure x_mem_closure with ⟨ε, ⟨ε_pos, ε_lt⟩⟩
    rw [Metric.tendsto_nhds] at δseq_lim
    specialize δseq_lim ε ε_pos
    simp only [dist_zero_right, Real.norm_eq_abs, eventually_atTop, ge_iff_le] at δseq_lim
    rcases δseq_lim with ⟨N, hN⟩
    apply @tendsto_atTop_of_eventually_const _ _ _ _ _ _ _ N
    intro n n_large
    have key : x ∉ thickening ε E := by simpa only [thickening, mem_setOf_eq, not_lt] using ε_lt.le
    refine' le_antisymm _ bot_le
    apply (thickenedIndicatorAux_mono (lt_of_abs_lt (hN n n_large)).le E x).trans
    exact (thickenedIndicatorAux_zero ε_pos E key).le
#align thickened_indicator_aux_tendsto_indicator_closure thickenedIndicatorAux_tendsto_indicator_closure

/-- The `δ`-thickened indicator of a set `E` is the function that equals `1` on `E`
and `0` outside a `δ`-thickening of `E` and interpolates (continuously) between
these values using `infEdist _ E`.

`thickenedIndicator` is the (bundled) bounded continuous function with `ℝ≥0`-values.
See `thickenedIndicatorAux` for the unbundled `ℝ≥0∞`-valued function. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4820d1b3b9a9c571b9a01efeb02aad32f60e0978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
