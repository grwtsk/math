# eLpNorm_le_eLpNorm_mul_rpow_measure_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bc50a29-2b62-8aa9-2ed8-75a8b5476d91",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_mul_rpow_measure_univ",
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
  "slug": "elpnorm-le-elpnorm-mul-rpow-measure-univ--2470b5c81450b1773abb0b41",
  "source": {
    "blob": "b30f60e6cbe03298f63d040e626c201be6cad807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 70,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2470b5c81450b1773abb0b411176b650dac5571707b72015e72ae976c4fdd27d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc50a29-2b62-8aa9-2ed8-75a8b5476d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_mul_rpow_measure_univ {p q : ℝ≥0∞} (hpq : p ≤ q)
    (hf : AEStronglyMeasurable f μ) :
    eLpNorm f p μ ≤ eLpNorm f q μ * μ Set.univ ^ (1 / p.toReal - 1 / q.toReal) := by
  by_cases hp0 : p = 0
  · simp [hp0, zero_le]
  rw [← Ne] at hp0
  have hp0_lt : 0 < p := lt_of_le_of_ne (zero_le _) hp0.symm
  have hq0_lt : 0 < q := lt_of_lt_of_le hp0_lt hpq
  by_cases hq_top : q = ∞
  · simp only [hq_top, _root_.div_zero, one_div, ENNReal.toReal_top, sub_zero, eLpNorm_exponent_top,
      GroupWithZero.inv_zero]
    by_cases hp_top : p = ∞
    · simp only [hp_top, ENNReal.rpow_zero, mul_one, ENNReal.toReal_top, sub_zero,
        GroupWithZero.inv_zero, eLpNorm_exponent_top]
      exact le_rfl
    rw [eLpNorm_eq_eLpNorm' hp0 hp_top]
    have hp_pos : 0 < p.toReal := ENNReal.toReal_pos hp0_lt.ne' hp_top
    refine (eLpNorm'_le_eLpNormEssSup_mul_rpow_measure_univ hp_pos).trans (le_of_eq ?_)
    congr
    exact one_div _
  have hp_lt_top : p < ∞ := hpq.trans_lt (lt_top_iff_ne_top.mpr hq_top)
  have hp_pos : 0 < p.toReal := ENNReal.toReal_pos hp0_lt.ne' hp_lt_top.ne
  rw [eLpNorm_eq_eLpNorm' hp0_lt.ne.symm hp_lt_top.ne, eLpNorm_eq_eLpNorm' hq0_lt.ne.symm hq_top]
  have hpq_real : p.toReal ≤ q.toReal := ENNReal.toReal_mono hq_top hpq
  exact eLpNorm'_le_eLpNorm'_mul_rpow_measure_univ hp_pos hpq_real hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b30f60e6cbe03298f63d040e626c201be6cad807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
