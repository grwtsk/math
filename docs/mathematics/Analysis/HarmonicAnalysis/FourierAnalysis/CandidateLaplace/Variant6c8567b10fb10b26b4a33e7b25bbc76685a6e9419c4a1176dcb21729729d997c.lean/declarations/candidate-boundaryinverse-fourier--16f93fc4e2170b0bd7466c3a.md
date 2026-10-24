# candidate_boundaryInverse_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb18c4086ac13665a56359474d59d1a5692622a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c77f7b7e-6456-b350-1509-9e5ee1713246",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:623815b6-eef9-ba8d-ccbd-804e67092eff",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_fourier",
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
  "slug": "candidate-boundaryinverse-fourier--16f93fc4e2170b0bd7466c3a",
  "source": {
    "blob": "eb18c4086ac13665a56359474d59d1a5692622a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 15,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/CandidateLaplace/Variant6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16f93fc4e2170b0bd7466c3aac5a991641af597764ab2239f0af1b7742647e8f",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/CandidateLaplace/Variant6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:623815b6-eef9-ba8d-ccbd-804e67092eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_fourier (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (τ : ℝ) :
    (∫ x : ℝ, Complex.exp (-(τ : ℂ) * I * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) = candidate X ε h ((τ : ℂ) * I) := by
  let f := angularFrequency (candidate X ε h)
  have hf : Integrable f := (candidate_frequency_admission X hX ε h hε hh hh1).1
  have hif : Integrable (𝓕⁻ f) := by
    have heq : boundaryInverse (candidate X ε h) = 𝓕⁻ f :=
      funext (boundaryInverse_eq_fourierInv _)
    rw [← heq]
    exact candidate_boundaryInverse_integrable X hX ε h hε hh hh1
  have hff : Integrable (𝓕 f) := by
    simpa only [Real.fourierInv_eq_fourier_neg, neg_neg] using hif.comp_neg
  have hc : Continuous f := by
    apply continuous_iff_continuousAt.mpr
    intro ξ
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simp)).continuousAt.comp
      (by fun_prop)
  have he := hf.fourier_fourierInv_eq hff (hc.continuousAt (x := τ / (2 * Real.pi)))
  have hπ : (2 : ℝ) * Real.pi ≠ 0 := by positivity
  have ha : (2 * Real.pi * (τ / (2 * Real.pi)) : ℝ) = τ := by field_simp
  change (𝓕 (𝓕⁻ f)) (τ / (2 * Real.pi)) = f (τ / (2 * Real.pi)) at he
  simpa only [f, angularFrequency, ha] using
    (show (∫ x : ℝ, Complex.exp (-(τ : ℂ) * I * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) = f (τ / (2 * Real.pi)) from by
      rw [← he, Real.fourier_real_eq_integral_exp_smul]
      apply integral_congr_ae
      filter_upwards [] with x
      rw [← boundaryInverse_eq_fourierInv]
      congr 1
      simp only [Complex.ofReal_mul, Complex.ofReal_div]
      congr 1
      norm_num only [Complex.ofReal_ofNat, Complex.ofReal_neg]
      field_simp)

/-- The exact real offset shift identifies every exponential time tilt pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/CandidateLaplace/Variant6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/CandidateLaplace/Variant6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb18c4086ac13665a56359474d59d1a5692622a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
