# tendstoInMeasure_of_tendsto_eLpNorm_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f84a110b923e3111260b98a5c5cafea1e7c74af0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d825a9ff-6deb-fd21-e3ad-e1c49b2da58e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e03ae54b-00f1-4946-f95e-ead5f6576925",
  "kind": "theorem",
  "lexical_name": "tendstoInMeasure_of_tendsto_eLpNorm_of_ne_top",
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
  "slug": "tendstoinmeasure-of-tendsto-elpnorm-of-ne-top--b22111c0733a0bee66eecfb4",
  "source": {
    "blob": "f84a110b923e3111260b98a5c5cafea1e7c74af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 406,
    "path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b22111c0733a0bee66eecfb4848405f2e099db9d23ec1db01a29bed5662d7266",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e03ae54b-00f1-4946-f95e-ead5f6576925`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoInMeasure_of_tendsto_eLpNorm_of_ne_top [SeminormedAddCommGroup E]
    (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞)
    {l : Filter ι} (hfg : Tendsto (fun n => eLpNorm (f n - g) p μ) l (𝓝 0)) :
    TendstoInMeasure μ f l g := by
  refine tendstoInMeasure_of_ne_top fun ε hε hε_top ↦ ?_
  replace hfg := ENNReal.Tendsto.const_mul (a := 1 / ε ^ p.toReal)
    (Tendsto.ennrpow_const p.toReal hfg) (Or.inr <| by simp [hε.ne'])
  simp only [mul_zero,
    ENNReal.zero_rpow_of_pos (ENNReal.toReal_pos hp_ne_zero hp_ne_top)] at hfg
  rw [ENNReal.tendsto_nhds_zero] at hfg ⊢
  intro δ hδ
  refine (hfg δ hδ).mono fun n hn => ?_
  refine le_trans ?_ hn
  rw [one_div, ← ENNReal.inv_mul_le_iff, inv_inv]
  · convert!
      mul_meas_ge_le_pow_eLpNorm' μ hp_ne_zero hp_ne_top ε
      using 6
    simp [edist_eq_enorm_sub]
  · simp [hε_top]
  · simp [hε.ne']

@[deprecated (since := "2026-09-11")]
alias tendstoInMeasure_of_tendsto_eLpNorm_of_stronglyMeasurable :=
  tendstoInMeasure_of_tendsto_eLpNorm_of_ne_top

/-- See also `MeasureTheory.tendstoInMeasure_of_tendsto_eLpNorm` which work for general
Lp-convergence for all `p ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f84a110b923e3111260b98a5c5cafea1e7c74af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
