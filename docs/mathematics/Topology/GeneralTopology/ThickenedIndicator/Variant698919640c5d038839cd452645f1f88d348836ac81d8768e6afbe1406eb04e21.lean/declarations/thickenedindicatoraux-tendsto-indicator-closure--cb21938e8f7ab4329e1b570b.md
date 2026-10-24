# thickenedIndicatorAux_tendsto_indicator_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79f0009c-e73c-bf35-75c8-188a953540df",
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
  "slug": "thickenedindicatoraux-tendsto-indicator-closure--cb21938e8f7ab4329e1b570b",
  "source": {
    "blob": "00c921650d72ad4f6e52b200baca6915ed80fde7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb21938e8f7ab4329e1b570bc0e113f16db9bf13fbc2194f1736bad6154f73a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f0009c-e73c-bf35-75c8-188a953540df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–170.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c921650d72ad4f6e52b200baca6915ed80fde7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
