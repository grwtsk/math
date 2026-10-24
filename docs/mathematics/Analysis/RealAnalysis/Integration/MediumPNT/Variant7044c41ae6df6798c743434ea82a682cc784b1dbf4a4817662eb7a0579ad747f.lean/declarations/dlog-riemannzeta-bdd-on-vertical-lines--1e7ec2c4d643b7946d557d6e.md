# dlog_riemannZeta_bdd_on_vertical_lines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1025,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee0448f8-9842-c9fe-9282-3443eccd5c1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d01a3ad-5ec9-51e0-a5e1-73f52e6a6c21",
  "kind": "theorem",
  "lexical_name": "dlog_riemannZeta_bdd_on_vertical_lines",
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
  "slug": "dlog-riemannzeta-bdd-on-vertical-lines--1e7ec2c4d643b7946d557d6e",
  "source": {
    "blob": "7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1047,
    "line": 1025,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e7ec2c4d643b7946d557d6e8cf6bf58058cc74bd5d31091672a2857d4f79161",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d01a3ad-5ec9-51e0-a5e1-73f52e6a6c21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1025–1047.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dlog_riemannZeta_bdd_on_vertical_lines {σ₀ : ℝ} (σ₀_gt : 1 < σ₀) :
    ∃ c > 0, ∀(t : ℝ), ‖ζ' (σ₀ + t * I) / ζ (σ₀ + t * I)‖ ≤ c := by
  refine ⟨1 + ‖(ζ' σ₀ / ζ σ₀)‖, (by positivity), fun t ↦ ?_⟩
  have := dlog_riemannZeta_bdd_on_vertical_lines_explicit σ₀_gt t
  rw [neg_div, norm_neg] at this
  exact le_trans this (lt_one_add _).le

@[blueprint
  (title := "SmoothedChebyshevPull1-aux-integrable")
  (statement := /--
  The integrand $$\zeta'(s)/\zeta(s)\mathcal{M}(\widetilde{1_{\epsilon}})(s)X^{s}$$
  is integrable on the contour $\sigma_0 + t i$ for $t \in \R$ and $\sigma_0 > 1$.
  -/)
  (proof := /--
  The $\zeta'(s)/\zeta(s)$ term is bounded, as is $X^s$, and the smoothing function
  $\mathcal{M}(\widetilde{1_{\epsilon}})(s)$
  decays like $1/|s|^2$ by Theorem \ref{MellinOfSmooth1b}.
  Actually, we already know that
  $\mathcal{M}(\widetilde{1_{\epsilon}})(s)$
  is integrable from Theorem \ref{SmoothedChebyshevDirichlet_aux_integrable},
  so we should just need to bound the rest.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean#L1025).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
