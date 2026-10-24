# hasFTaylorSeriesUpTo_fourierIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35e48eb80086356065c8ed7390f06c85122f7ad4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f3ca9c6-ff35-9fc6-ab74-6de600666560",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f431146-4ba8-8d3a-1076-f216c55f48c6",
  "kind": "lemma",
  "lexical_name": "hasFTaylorSeriesUpTo_fourierIntegral",
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
  "slug": "hasftaylorseriesupto-fourierintegral--55fb5648d33d1afb4d727845",
  "source": {
    "blob": "35e48eb80086356065c8ed7390f06c85122f7ad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 443,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55fb5648d33d1afb4d7278459059de2f9f437b0a9fe3aff99f27907097104450",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f431146-4ba8-8d3a-1076-f216c55f48c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasFTaylorSeriesUpTo_fourierIntegral {N : WithTop ℕ∞}
    (hf : ∀ (n : ℕ), n ≤ N → Integrable (fun v ↦ ‖v‖^n * ‖f v‖) μ)
    (h'f : AEStronglyMeasurable f μ) :
    HasFTaylorSeriesUpTo N (fourierIntegral 𝐞 μ L.toLinearMap₂ f)
      (fun w n ↦ fourierIntegral 𝐞 μ L.toLinearMap₂ (fun v ↦ fourierPowSMulRight L f v n) w) := by
  constructor
  · intro w
    rw [curry0_apply, Matrix.zero_empty, fourierIntegral_continuousMultilinearMap_apply'
      (integrable_fourierPowSMulRight L (hf 0 bot_le) h'f)]
    simp only [fourierPowSMulRight_apply, pow_zero, Finset.univ_eq_empty, Finset.prod_empty,
      one_smul]
  · intro n hn w
    have I₁ : Integrable (fun v ↦ fourierPowSMulRight L f v n) μ :=
      integrable_fourierPowSMulRight L (hf n hn.le) h'f
    have I₂ : Integrable (fun v ↦ ‖v‖ * ‖fourierPowSMulRight L f v n‖) μ := by
      apply ((hf (n+1) (ENat.add_one_natCast_le_withTop_of_lt hn)).const_mul
          ((2 * π * ‖L‖) ^ n)).mono'
        (continuous_norm.aestronglyMeasurable.mul (h'f.fourierPowSMulRight L n).norm)
      filter_upwards with v
      simp only [Pi.mul_apply, norm_mul, norm_norm]
      calc
      ‖v‖ * ‖fourierPowSMulRight L f v n‖
        ≤ ‖v‖ * ((2 * π * ‖L‖) ^ n * ‖v‖ ^ n * ‖f v‖) := by
          gcongr; apply norm_fourierPowSMulRight_le
      _ = (2 * π * ‖L‖) ^ n * (‖v‖ ^ (n + 1) * ‖f v‖) := by rw [pow_succ]; ring
    have I₃ : Integrable (fun v ↦ fourierPowSMulRight L f v (n + 1)) μ :=
      integrable_fourierPowSMulRight L (hf (n + 1) (ENat.add_one_natCast_le_withTop_of_lt hn)) h'f
    have I₄ : Integrable
        (fun v ↦ fourierSMulRight L (fun v ↦ fourierPowSMulRight L f v n) v) μ := by
      apply (I₂.const_mul ((2 * π * ‖L‖))).mono' (h'f.fourierPowSMulRight L n).fourierSMulRight
      filter_upwards with v
      exact (norm_fourierSMulRight_le _ _ _).trans (le_of_eq (by ring))
    have E : curryLeft
          (fourierIntegral 𝐞 μ L.toLinearMap₂ (fun v ↦ fourierPowSMulRight L f v (n + 1)) w) =
        fourierIntegral 𝐞 μ L.toLinearMap₂
          (fourierSMulRight L fun v ↦ fourierPowSMulRight L f v n) w := by
      ext w' m
      rw [curryLeft_apply, fourierIntegral_continuousMultilinearMap_apply' I₃,
        fourierIntegral_continuousLinearMap_apply' I₄,
        fourierIntegral_continuousMultilinearMap_apply' (I₄.apply_continuousLinearMap _)]
      congr with v
      simp only [fourierPowSMulRight_apply, mul_comm, pow_succ, neg_mul, Fin.prod_univ_succ,
        Fin.cons_zero, Fin.cons_succ, neg_smul, fourierSMulRight_apply, neg_apply, smul_apply,
        smul_comm (M := ℝ) (N := ℂ) (α := E), smul_smul]
    exact E ▸ hasFDerivAt_fourierIntegral L I₁ I₂ w
  · intro n hn
    apply fourierIntegral_continuous Real.continuous_fourierChar (by apply L.continuous₂)
    exact integrable_fourierPowSMulRight L (hf n hn) h'f

/-- Variant of `hasFTaylorSeriesUpTo_fourierIntegral` in which the smoothness index is restricted
to `ℕ∞` (and so are the inequalities in the assumption `hf`). Avoids normcasting in some
applications. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e48eb80086356065c8ed7390f06c85122f7ad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
