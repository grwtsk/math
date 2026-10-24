# eLpNorm'_le_eLpNorm'_mul_rpow_measure_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96d4e1ee-3bb3-bce0-f6cc-393e4b22dadc",
  "kind": "theorem",
  "lexical_name": "eLpNorm'_le_eLpNorm'_mul_rpow_measure_univ",
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
  "slug": "elpnorm-le-elpnorm-mul-rpow-measure-univ--bebd69e9f5a5a55b69fcff5a",
  "source": {
    "blob": "b30f60e6cbe03298f63d040e626c201be6cad807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 37,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bebd69e9f5a5a55b69fcff5a16678499913ec519eef6e96c2a13022825d5d7fb",
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

Occurrence: `result:96d4e1ee-3bb3-bce0-f6cc-393e4b22dadc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm'_le_eLpNorm'_mul_rpow_measure_univ {p q : ℝ} (hp0_lt : 0 < p) (hpq : p ≤ q)
    (hf : AEStronglyMeasurable f μ) :
    eLpNorm' f p μ ≤ eLpNorm' f q μ * μ Set.univ ^ (1 / p - 1 / q) := by
  have hq0_lt : 0 < q := lt_of_lt_of_le hp0_lt hpq
  by_cases hpq_eq : p = q
  · rw [hpq_eq, sub_self, ENNReal.rpow_zero, mul_one]
  have hpq : p < q := lt_of_le_of_ne hpq hpq_eq
  let g := fun _ : α => (1 : ℝ≥0∞)
  have h_rw : (∫⁻ a, ‖f a‖ₑ ^ p ∂μ) = ∫⁻ a, (‖f a‖ₑ * g a) ^ p ∂μ :=
    lintegral_congr fun a => by simp [g]
  repeat' rw [eLpNorm'_eq_lintegral_enorm]
  rw [h_rw]
  let r := p * q / (q - p)
  have hpqr : 1 / p = 1 / q + 1 / r := by field_simp [r, hp0_lt.ne', hq0_lt.ne']
  calc
    (∫⁻ a : α, (‖f a‖ₑ * g a) ^ p ∂μ) ^ (1 / p) ≤
        (∫⁻ a : α, ‖f a‖ₑ ^ q ∂μ) ^ (1 / q) * (∫⁻ a : α, g a ^ r ∂μ) ^ (1 / r) :=
      ENNReal.lintegral_Lp_mul_le_Lq_mul_Lr hp0_lt hpq hpqr μ hf.enorm aemeasurable_const
    _ = (∫⁻ a : α, ‖f a‖ₑ ^ q ∂μ) ^ (1 / q) * μ Set.univ ^ (1 / p - 1 / q) := by
      rw [hpqr]; simp [r, g]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b30f60e6cbe03298f63d040e626c201be6cad807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
