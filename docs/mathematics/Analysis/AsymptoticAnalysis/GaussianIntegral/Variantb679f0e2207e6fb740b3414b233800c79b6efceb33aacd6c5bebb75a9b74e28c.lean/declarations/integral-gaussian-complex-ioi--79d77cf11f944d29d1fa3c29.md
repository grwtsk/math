# integral_gaussian_complex_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3038cda35f1c8daaaac127fae8010a711397d216",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f25fe2d4-b0fb-ecc5-922a-d9955bbf34bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14e6055b-6a9b-8d4f-60c4-09657f80083a",
  "kind": "theorem",
  "lexical_name": "integral_gaussian_complex_Ioi",
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
  "slug": "integral-gaussian-complex-ioi--79d77cf11f944d29d1fa3c29",
  "source": {
    "blob": "3038cda35f1c8daaaac127fae8010a711397d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 292,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79d77cf11f944d29d1fa3c293210d4b4b0d9a6336365ce3416622a3be9c76664",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e6055b-6a9b-8d4f-60c4-09657f80083a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_gaussian_complex_Ioi {b : ℂ} (hb : 0 < re b) :
    ∫ x : ℝ in Ioi 0, cexp (-b * (x : ℂ) ^ 2) = (π / b) ^ (1 / 2 : ℂ) / 2 := by
  have full_integral := integral_gaussian_complex hb
  have : MeasurableSet (Ioi (0 : ℝ)) := measurableSet_Ioi
  rw [← integral_add_compl this (integrable_cexp_neg_mul_sq hb), compl_Ioi] at full_integral
  suffices ∫ x : ℝ in Iic 0, cexp (-b * (x : ℂ) ^ 2) = ∫ x : ℝ in Ioi 0, cexp (-b * (x : ℂ) ^ 2) by
    rw [this, ← mul_two] at full_integral
    rwa [eq_div_iff]; exact two_ne_zero
  have : ∀ c : ℝ, ∫ x in (0 : ℝ)..c, cexp (-b * (x : ℂ) ^ 2) =
      ∫ x in -c..0, cexp (-b * (x : ℂ) ^ 2) := by
    intro c
    have := intervalIntegral.integral_comp_sub_left (a := 0) (b := c)
      (fun x => cexp (-b * (x : ℂ) ^ 2)) 0
    simpa [zero_sub, neg_sq, neg_zero] using this
  have t1 :=
    intervalIntegral_tendsto_integral_Ioi 0 (integrable_cexp_neg_mul_sq hb).integrableOn tendsto_id
  have t2 :
    Tendsto (fun c : ℝ => ∫ x : ℝ in (0 : ℝ)..c, cexp (-b * (x : ℂ) ^ 2)) atTop
      (𝓝 (∫ x : ℝ in Iic 0, cexp (-b * (x : ℂ) ^ 2))) := by
    simp_rw [this]
    refine intervalIntegral_tendsto_integral_Iic _ ?_ tendsto_neg_atTop_atBot
    apply (integrable_cexp_neg_mul_sq hb).integrableOn
  exact tendsto_nhds_unique t2 t1

-- The Gaussian integral on the half-line, `∫ x in Ioi 0, exp (-b * x^2)`, for real `b`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3038cda35f1c8daaaac127fae8010a711397d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
