# analyticAt_digamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "893f83b41d3989ec7d7ab68ec0f82819158a6bcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7d60654-8f82-b065-aef2-b271617ad6ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74445268-20e7-1717-8dde-1dbc0fbc1385",
  "kind": "lemma",
  "lexical_name": "analyticAt_digamma",
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
  "slug": "analyticat-digamma--e7da1b6b69c73e77be8a045a",
  "source": {
    "blob": "893f83b41d3989ec7d7ab68ec0f82819158a6bcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 76,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7da1b6b69c73e77be8a045a09bdadafd6e0f3a2b5262e171e2204063a9459ac",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74445268-20e7-1717-8dde-1dbc0fbc1385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma analyticAt_digamma {z : ℂ} (hz : 0 < z.re) :
    AnalyticAt ℂ Complex.digamma z := by
  have hU : IsOpen {w : ℂ | 0 < w.re} := isOpen_lt continuous_const Complex.continuous_re
  have hGamD : DifferentiableOn ℂ Complex.Gamma {w : ℂ | 0 < w.re} := fun w hw =>
    (Complex.differentiableAt_Gamma w (gamma_ne_neg_nat hw)).differentiableWithinAt
  have hGamA := hGamD.analyticOnNhd hU
  have h1 : AnalyticAt ℂ (deriv Complex.Gamma) z := (hGamA z hz).deriv
  have h2 : AnalyticAt ℂ Complex.Gamma z := hGamA z hz
  have h3 : Complex.Gamma z ≠ 0 := Complex.Gamma_ne_zero (gamma_ne_neg_nat hz)
  have h4 := h1.div h2 h3
  exact h4.congr (by
    filter_upwards with w
    rw [Complex.digamma_def, logDeriv_apply]
    rfl)

-- The set_option below is Mathlib's own workaround for instance-path defeq on
-- IsScalarTower ℝ ℂ ℂ (cf. Analysis/CStarAlgebra/ContinuousFunctionalCalculus/
-- RealImaginaryPart.lean, "fails to find IsScalarTower ℝ ℂ A").
set_option backward.isDefEq.respectTransparency false in
/-- [eq:mufacts], "μ is smooth": μ ∈ C^∞(ℝ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `893f83b41d3989ec7d7ab68ec0f82819158a6bcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
