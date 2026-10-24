# analyticOrderNatAt_completedRiemannZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35d3785a-a062-6754-e1a2-ae8114db7906",
  "kind": "lemma",
  "lexical_name": "analyticOrderNatAt_completedRiemannZeta",
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
  "slug": "analyticordernatat-completedriemannzeta--ae6bb8c5ecc91143bd32d46e",
  "source": {
    "blob": "79632caec2d1fc2d864c1126dfd2e6fa896ce117",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae6bb8c5ecc91143bd32d46ef307d92fc29cfcc5a1ccd2a11933eb697a7c0327",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35d3785a-a062-6754-e1a2-ae8114db7906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticOrderNatAt_completedRiemannZeta {ρ : ℂ} (h : 0 < ρ.re) (h1 : ρ ≠ 1) :
    analyticOrderNatAt completedRiemannZeta ρ = zeroMult ρ := by
  have h0 : ρ ≠ 0 := fun h' => by simp [h'] at h
  have hev : riemannZeta =ᶠ[𝓝 ρ] (completedRiemannZeta * fun s => (Gammaℝ s)⁻¹) := by
    filter_upwards [isOpen_compl_singleton.mem_nhds h0] with s hs
    rw [Pi.mul_apply, riemannZeta_def_of_ne_zero hs, div_eq_mul_inv]
  have hΛ := analyticAt_completedRiemannZeta h0 h1
  have hGinv : AnalyticAt ℂ (fun s => (Gammaℝ s)⁻¹) ρ := differentiable_Gammaℝ_inv.analyticAt ρ
  have hG0 : analyticOrderAt (fun s => (Gammaℝ s)⁻¹) ρ = 0 :=
    hGinv.analyticOrderAt_eq_zero.mpr (inv_ne_zero (Gammaℝ_ne_zero_of_re_pos h))
  unfold zeroMult analyticOrderNatAt
  rw [analyticOrderAt_congr hev, analyticOrderAt_mul hΛ hGinv, hG0, add_zero]

/-! ## The count -/

/-- **N(T₁,T₂) as a contour integral.** For 0 < T₁ ≤ T₂ with no nontrivial zero of ordinate T₁ or
T₂:  (1/2πi)∮_{∂([−1,2]×[T₁,T₂])} Λ'/Λ = Ncount T₁ T₂. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79632caec2d1fc2d864c1126dfd2e6fa896ce117` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
