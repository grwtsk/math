# muq_smooth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19e5d6d7-0a7b-692a-91dc-ad955b0bcf59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c3565c9-cf02-7003-916d-d2b5c3a4d27f",
  "kind": "theorem",
  "lexical_name": "muq_smooth",
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
  "slug": "muq-smooth--fbcc5ff6966a58a0caf31993",
  "source": {
    "blob": "ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 204,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbcc5ff6966a58a0caf3199324a16e38fc24e0490ff468528fc134723ff15c87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c3565c9-cf02-7003-916d-d2b5c3a4d27f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem muq_smooth (κ q : ℕ) : ContDiff ℝ ⊤ (muq κ q) := by
  have hfun : muq κ q = fun τ : ℝ => (1 / (2 * Real.pi))
        * (Complex.digamma (((absc κ : ℝ) : ℂ) + Complex.I * (τ : ℂ) / 2)).re
      + (1 / (2 * Real.pi)) * Real.log (q / Real.pi) := by
    funext τ; rw [muq_eq]; congr 3; push_cast; ring
  rw [hfun]
  have hc : ContDiff ℝ ⊤ (fun τ : ℝ => (((absc κ : ℝ) : ℂ) + Complex.I * (τ : ℂ) / 2 : ℂ)) := by
    have h1 : ContDiff ℝ ⊤ (fun τ : ℝ => (τ : ℂ)) := Complex.ofRealCLM.contDiff
    have h2 : ContDiff ℝ ⊤ (fun τ : ℝ => Complex.I * (τ : ℂ)) := contDiff_const.mul h1
    have h3 : ContDiff ℝ ⊤ (fun τ : ℝ => Complex.I * (τ : ℂ) / 2) := by
      simpa [div_eq_mul_inv] using h2.mul contDiff_const
    exact contDiff_const.add h3
  refine contDiff_iff_contDiffAt.mpr fun τ => ?_
  have hz : (0 : ℝ) < ((((absc κ : ℝ) : ℂ) + Complex.I * (τ : ℂ) / 2 : ℂ)).re := by
    simp; exact absc_pos κ
  have h4' : AnalyticAt ℝ Complex.digamma (((absc κ : ℝ) : ℂ) + Complex.I * (τ : ℂ) / 2) :=
    AnalyticAt.restrictScalars (analyticAt_digamma' hz)
  have h4 : ContDiffAt ℝ ⊤ Complex.digamma (((absc κ : ℝ) : ℂ) + Complex.I * (τ : ℂ) / 2) :=
    h4'.contDiffAt
  have h5 : ContDiffAt ℝ ⊤
      (fun τ : ℝ => Complex.digamma (((absc κ : ℝ) : ℂ) + Complex.I * (τ : ℂ) / 2)) τ :=
    h4.comp τ hc.contDiffAt
  have h6 : ContDiffAt ℝ ⊤
      (fun τ : ℝ => (Complex.digamma (((absc κ : ℝ) : ℂ) + Complex.I * (τ : ℂ) / 2)).re) τ :=
    (Complex.reCLM.contDiff.contDiffAt).comp τ h5
  have h7 := (contDiffAt_const (c := (1 / (2 * Real.pi) : ℝ))).mul h6
  exact h7.add contDiffAt_const

/-! ### μ_χ′ ≪ 1/|τ| (mirror of MuFields.mu_deriv_bound at abscissa a ≥ 1/4) -/

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
