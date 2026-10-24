# integralFourier_eq_l2_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "839c4f378e6f0d713b26006e0239b587ff0eebdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90833e65-e430-e20a-76ee-d402d82b154b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "839c4f378e6f0d713b26006e0239b587ff0eebdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70954d09-b7f4-67a2-885f-63186a35f457",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2f32c7c-6937-afd7-e586-e7a6b4d95e02",
  "kind": "theorem",
  "lexical_name": "integralFourier_eq_l2_ae",
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
  "slug": "integralfourier-eq-l2-ae--bc6c6646c52bd01809fb6d7d",
  "source": {
    "blob": "839c4f378e6f0d713b26006e0239b587ff0eebdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 35,
    "path": "GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc6c6646c52bd01809fb6d7d32ca61e10de60e77aaf68923bdd607a352e0fe8d",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2f32c7c-6937-afd7-e586-e7a6b4d95e02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralFourier_eq_l2_ae (g : ℝ → ℂ) (hg : Integrable g)
    (hm : MemLp g 2 volume) :
    (𝓕 g : ℝ → ℂ) =ᵐ[volume] (𝓕 (hm.toLp g) : Lp ℂ 2 volume) := by
  let f : Lp ℂ 2 volume := hm.toLp g
  have hc : Continuous (𝓕 g : ℝ → ℂ) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ hg
  apply ae_eq_of_integral_contDiff_smul_eq hc.locallyIntegrable
    ((Lp.memLp (𝓕 f)).locallyIntegrable (by norm_num))
  intro t ht hs
  have hcs : HasCompactSupport (Complex.ofRealCLM ∘ t) := hs.comp_left rfl
  have hcd : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ t) := by fun_prop
  let φ : SchwartzMap ℝ ℂ := hcs.toSchwartzMap hcd
  have hdist := congrArg (fun d : TemperedDistribution ℝ ℂ => d φ)
    (Lp.fourier_toTemperedDistribution_eq f)
  simp only [TemperedDistribution.fourier_apply,
    Lp.toTemperedDistribution_apply, smul_eq_mul] at hdist
  have hinput : (∫ u : ℝ, (𝓕 φ) u * g u) =
      ∫ u : ℝ, (𝓕 φ) u * f u := by
    apply integral_congr_ae
    filter_upwards [hm.coeFn_toLp] with u hu
    simp only [f, hu]
  calc
    _ = ∫ ξ : ℝ, φ ξ * (𝓕 g) ξ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      simp [φ, RCLike.real_smul_eq_coe_mul]
    _ = ∫ u : ℝ, (𝓕 φ) u * g u := test_pairing g hg φ
    _ = ∫ u : ℝ, (𝓕 φ) u * f u := hinput
    _ = ∫ ξ : ℝ, φ ξ * (𝓕 f : Lp ℂ 2 volume) ξ := hdist
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      simp [φ, RCLike.real_smul_eq_coe_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `839c4f378e6f0d713b26006e0239b587ff0eebdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
