# laplace_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3403f3476f66d59f410f1690197ec72d46c68d75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:881f7f13-c382-ad0f-ea3b-284155039938",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ed6fcde-eac9-22f9-d332-d8eda26a78a7",
  "kind": "theorem",
  "lexical_name": "laplace_analytic",
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
  "slug": "laplace-analytic--c4e5db34825de38fdc486178",
  "source": {
    "blob": "3403f3476f66d59f410f1690197ec72d46c68d75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4e5db34825de38fdc486178cbcf3506bcdf0a0f546a287ac580b7d531e9e88e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ed6fcde-eac9-22f9-d332-d8eda26a78a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplace_analytic (f : ℝ → ℝ) (hf : IntegrableOn f (Ioi 1))
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ f A) (s : ℂ) (hs : 0 < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (f A : ℂ)) s := by
  let μ₀ : Measure ℝ := volume.restrict (Ioi 1)
  let μ : Measure ℝ := μ₀.withDensity (fun A ↦ ENNReal.ofReal (f A))
  have hm : AEMeasurable (fun A ↦ ENNReal.ofReal (f A)) μ₀ :=
    hf.aestronglyMeasurable.aemeasurable.ennreal_ofReal
  have hfinite : ∀ᵐ A ∂μ₀, ENNReal.ofReal (f A) < ⊤ :=
    Eventually.of_forall (fun _ ↦ ENNReal.ofReal_lt_top)
  have hsame : ∀ᵐ A ∂μ₀, (ENNReal.ofReal (f A)).toReal = f A := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
    exact ENNReal.toReal_ofReal (hpos A hA.le)
  have hexp (z : ℂ) (hz : 0 ≤ z.re) :
      Integrable (fun A : ℝ ↦ Complex.exp (-z * A)) μ := by
    apply (integrable_withDensity_iff_integrable_smul₀' hm hfinite).mpr
    apply (laplace_integrable f hf z hz).congr
    filter_upwards [hsame] with A hA
    rw [hA, Complex.real_smul]
    exact mul_comm _ _
  have hconv (t : ℝ) (ht : 0 < t) :
      Integrable (fun A : ℝ ↦ Real.exp (-t * id A)) μ := by
    have h := (hexp (t : ℂ) ht.le).norm
    simpa only [id_eq, Complex.norm_exp, Complex.mul_re, Complex.neg_re,
      Complex.ofReal_re, Complex.neg_im, Complex.ofReal_im, neg_zero,
      zero_mul, sub_zero] using h
  have heq : transform id μ = (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (f A : ℂ)) := by
    funext z
    change (∫ A : ℝ, Complex.exp (-z * A) ∂μ) = _
    rw [show μ = μ₀.withDensity (fun A ↦ ENNReal.ofReal (f A)) from rfl,
      integral_withDensity_eq_integral_toReal_smul₀ hm hfinite]
    apply integral_congr_ae
    filter_upwards [hsame] with A hA
    rw [hA, Complex.real_smul]
    exact mul_comm _ _
  rw [← heq]
  exact transform_analytic 0 hconv s hs

/-- Exponential tilting preserves the literal actual negative-part Laplace integrand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3403f3476f66d59f410f1690197ec72d46c68d75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
