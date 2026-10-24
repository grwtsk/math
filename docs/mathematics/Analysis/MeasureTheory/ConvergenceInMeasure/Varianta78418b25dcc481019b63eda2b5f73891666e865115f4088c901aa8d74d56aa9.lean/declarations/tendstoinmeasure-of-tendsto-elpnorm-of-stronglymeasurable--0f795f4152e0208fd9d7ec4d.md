# tendstoInMeasure_of_tendsto_eLpNorm_of_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c836d3d-50a3-de94-8acf-9f033d4fe089",
  "kind": "theorem",
  "lexical_name": "tendstoInMeasure_of_tendsto_eLpNorm_of_stronglyMeasurable",
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
  "slug": "tendstoinmeasure-of-tendsto-elpnorm-of-stronglymeasurable--0f795f4152e0208fd9d7ec4d",
  "source": {
    "blob": "abe8c6ec3bb621a51511053bc209f63cfa1a03eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 324,
    "path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f795f4152e0208fd9d7ec4d45e3091ac19c16001b7c4a200d2ccc118a16d6b4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c836d3d-50a3-de94-8acf-9f033d4fe089`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoInMeasure_of_tendsto_eLpNorm_of_stronglyMeasurable (hp_ne_zero : p ≠ 0)
    (hp_ne_top : p ≠ ∞) (hf : ∀ n, StronglyMeasurable (f n)) (hg : StronglyMeasurable g)
    {l : Filter ι} (hfg : Tendsto (fun n => eLpNorm (f n - g) p μ) l (𝓝 0)) :
    TendstoInMeasure μ f l g := by
  intro ε hε
  replace hfg := ENNReal.Tendsto.const_mul
    (Tendsto.ennrpow_const p.toReal hfg) (Or.inr <| @ENNReal.ofReal_ne_top (1 / ε ^ p.toReal))
  simp only [mul_zero,
    ENNReal.zero_rpow_of_pos (ENNReal.toReal_pos hp_ne_zero hp_ne_top)] at hfg
  rw [ENNReal.tendsto_nhds_zero] at hfg ⊢
  intro δ hδ
  refine (hfg δ hδ).mono fun n hn => ?_
  refine le_trans ?_ hn
  rw [ENNReal.ofReal_div_of_pos (Real.rpow_pos_of_pos hε _), ENNReal.ofReal_one, mul_comm,
    mul_one_div, ENNReal.le_div_iff_mul_le _ (Or.inl ENNReal.ofReal_ne_top), mul_comm]
  · rw [← ENNReal.ofReal_rpow_of_pos hε]
    convert mul_meas_ge_le_pow_eLpNorm' μ hp_ne_zero hp_ne_top ((hf n).sub hg).aestronglyMeasurable
        (ENNReal.ofReal ε)
    rw [dist_eq_norm, ← ENNReal.ofReal_le_ofReal_iff (norm_nonneg _), ofReal_norm_eq_enorm]
    exact Iff.rfl
  · rw [Ne, ENNReal.ofReal_eq_zero, not_le]
    exact Or.inl (Real.rpow_pos_of_pos hε _)

/-- This lemma is superseded by `MeasureTheory.tendstoInMeasure_of_tendsto_eLpNorm` where we
allow `p = ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abe8c6ec3bb621a51511053bc209f63cfa1a03eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
