# eLpNorm'_lt_top_of_eLpNorm'_lt_top_of_exponent_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:293c7598-ea0b-e81c-6581-797d7d92b86d",
  "kind": "theorem",
  "lexical_name": "eLpNorm'_lt_top_of_eLpNorm'_lt_top_of_exponent_le",
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
  "slug": "elpnorm-lt-top-of-elpnorm-lt-top-of-exponent-le--74c4b669682f3733d3a0600a",
  "source": {
    "blob": "b30f60e6cbe03298f63d040e626c201be6cad807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 110,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74c4b669682f3733d3a0600ac65bb14398b6232195503333a921c729565c431d",
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

Occurrence: `result:293c7598-ea0b-e81c-6581-797d7d92b86d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm'_lt_top_of_eLpNorm'_lt_top_of_exponent_le {p q : ℝ} [IsFiniteMeasure μ]
    (hf : AEStronglyMeasurable f μ) (hfq_lt_top : eLpNorm' f q μ < ∞) (hp_nonneg : 0 ≤ p)
    (hpq : p ≤ q) : eLpNorm' f p μ < ∞ := by
  rcases le_or_lt p 0 with hp_nonpos | hp_pos
  · rw [le_antisymm hp_nonpos hp_nonneg]
    simp
  have hq_pos : 0 < q := lt_of_lt_of_le hp_pos hpq
  calc
    eLpNorm' f p μ ≤ eLpNorm' f q μ * μ Set.univ ^ (1 / p - 1 / q) :=
      eLpNorm'_le_eLpNorm'_mul_rpow_measure_univ hp_pos hpq hf
    _ < ∞ := by
      rw [ENNReal.mul_lt_top_iff]
      refine Or.inl ⟨hfq_lt_top, ENNReal.rpow_lt_top_of_nonneg ?_ (measure_ne_top μ Set.univ)⟩
      rwa [le_sub_comm, sub_zero, one_div, one_div, inv_le_inv₀ hq_pos hp_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b30f60e6cbe03298f63d040e626c201be6cad807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
