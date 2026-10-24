# snorm'_lim_eq_lintegral_liminf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "086920a13e481303d1474b03c12442c2af516c1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4abc9180-8875-9180-a629-a00777876154",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f26cfbd2-75d3-550e-bf3e-6323ed766258",
  "kind": "theorem",
  "lexical_name": "snorm'_lim_eq_lintegral_liminf",
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
  "slug": "snorm-lim-eq-lintegral-liminf--d6af9dfdaef03253c8b9dd56",
  "source": {
    "blob": "086920a13e481303d1474b03c12442c2af516c1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1306,
    "line": 1292,
    "path": "GRWTSK/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6af9dfdaef03253c8b9dd56855e8d8c174596fb7d0de714db5f90972df2edc1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f26cfbd2-75d3-550e-bf3e-6323ed766258`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1292–1306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snorm'_lim_eq_lintegral_liminf {ι} [Nonempty ι] [LinearOrder ι] {f : ι → α → G} {p : ℝ}
    (hp_nonneg : 0 ≤ p) {f_lim : α → G}
    (h_lim : ∀ᵐ x : α ∂μ, Tendsto (fun n => f n x) atTop (𝓝 (f_lim x))) :
    snorm' f_lim p μ = (∫⁻ a, atTop.liminf fun m => (‖f m a‖₊ : ℝ≥0∞) ^ p ∂μ) ^ (1 / p) := by
  suffices h_no_pow :
    (∫⁻ a, (‖f_lim a‖₊ : ℝ≥0∞) ^ p ∂μ) = ∫⁻ a, atTop.liminf fun m => (‖f m a‖₊ : ℝ≥0∞) ^ p ∂μ
  · rw [snorm', h_no_pow]
  refine' lintegral_congr_ae (h_lim.mono fun a ha => _)
  dsimp only
  rw [Tendsto.liminf_eq]
  simp_rw [ENNReal.coe_rpow_of_nonneg _ hp_nonneg, ENNReal.tendsto_coe]
  refine' ((NNReal.continuous_rpow_const hp_nonneg).tendsto ‖f_lim a‖₊).comp _
  exact (continuous_nnnorm.tendsto (f_lim a)).comp ha
#align measure_theory.Lp.snorm'_lim_eq_lintegral_liminf MeasureTheory.Lp.snorm'_lim_eq_lintegral_liminf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean#L1292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `086920a13e481303d1474b03c12442c2af516c1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
