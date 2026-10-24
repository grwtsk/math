# Seminorm.gauge_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49c3a1f3e957a4dc8668df1f4f4e31e793690624",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7b7f45d-13a6-3d95-4bf5-f59d4e665e88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb0bf38f-898c-ea32-eb55-4be58cfbd75a",
  "kind": "theorem",
  "lexical_name": "Seminorm.gauge_ball",
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
  "slug": "seminorm-gauge-ball--0e0aab73a84122004daa6718",
  "source": {
    "blob": "49c3a1f3e957a4dc8668df1f4f4e31e793690624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 502,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e0aab73a84122004daa67185eb1ca6cf7d2400bd5f842a3c577bf7b94b5cdc1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb0bf38f-898c-ea32-eb55-4be58cfbd75a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Seminorm.gauge_ball (p : Seminorm ℝ E) : gauge (p.ball 0 1) = p := by
  ext x
  obtain hp | hp := { r : ℝ | 0 < r ∧ x ∈ r • p.ball 0 1 }.eq_empty_or_nonempty
  · rw [gauge, hp, Real.sInf_empty]
    by_contra h
    have hpx : 0 < p x := (apply_nonneg _ _).lt_of_ne h
    have hpx₂ : 0 < 2 * p x := mul_pos zero_lt_two hpx
    refine hp.subset ⟨hpx₂, (2 * p x)⁻¹ • x, ?_, smul_inv_smul₀ hpx₂.ne' _⟩
    rw [p.mem_ball_zero, map_smul_eq_mul, Real.norm_eq_abs, abs_of_pos (inv_pos.2 hpx₂),
      inv_mul_lt_iff₀ hpx₂, mul_one]
    exact lt_mul_of_one_lt_left hpx one_lt_two
  refine IsGLB.csInf_eq ⟨fun r => ?_, fun r hr => le_of_forall_pos_le_add fun ε hε => ?_⟩ hp
  · rintro ⟨hr, y, hy, rfl⟩
    rw [p.mem_ball_zero] at hy
    rw [map_smul_eq_mul, Real.norm_eq_abs, abs_of_pos hr]
    exact mul_le_of_le_one_right hr.le hy.le
  · have hpε : 0 < p x + ε := by positivity
    refine hr ⟨hpε, (p x + ε)⁻¹ • x, ?_, smul_inv_smul₀ hpε.ne' _⟩
    rw [p.mem_ball_zero, map_smul_eq_mul, Real.norm_eq_abs, abs_of_pos (inv_pos.2 hpε),
      inv_mul_lt_iff₀ hpε, mul_one]
    exact lt_add_of_pos_right _ hε

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c3a1f3e957a4dc8668df1f4f4e31e793690624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
