# abs_im_integral_logDeriv_horizontal_le_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a34d7db2-5dac-8d15-b832-04482d31b397",
  "kind": "theorem",
  "lexical_name": "abs_im_integral_logDeriv_horizontal_le_pi",
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
  "slug": "abs-im-integral-logderiv-horizontal-le-pi--a77cfa7b9f02f41ce736bfec",
  "source": {
    "blob": "efccbb8d147887a4dd95cc2adb71b3070b76ed9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a77cfa7b9f02f41ce736bfec08832a54fc5537b78db15b9df9b5d98bb9c2e9ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a34d7db2-5dac-8d15-b832-04482d31b397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_im_integral_logDeriv_horizontal_le_pi {f : ℂ → ℂ} {T a b : ℝ} (hab : a ≤ b)
    (hf : ∀ σ ∈ Icc a b, AnalyticAt ℂ f (σ + T * I))
    (hre : ∀ σ ∈ Icc a b, 0 < (f (σ + T * I)).re) :
    |(∫ σ in a..b, logDeriv f (σ + T * I)).im| ≤ Real.pi := by
  set g : ℝ → ℂ := fun σ => f (σ + T * I) with hg
  set g' : ℝ → ℂ := fun σ => deriv f (σ + T * I) with hg'
  have hderiv : ∀ σ ∈ Icc a b, HasDerivAt g (g' σ) σ := fun σ hσ => by
    have := ((hf σ hσ).differentiableAt.hasDerivAt).comp σ (hasDerivAt_horizontal T σ)
    exact this.congr_deriv (mul_one _)
  have hcont : ContinuousOn g' (Icc a b) := by
    intro σ hσ
    have hd : ContinuousAt (deriv f) (σ + T * I) := (hf σ hσ).deriv.continuousAt
    have hp : ContinuousAt (fun σ : ℝ => (σ : ℂ) + T * I) σ := by fun_prop
    exact (hd.comp (f := fun σ : ℝ => (σ : ℂ) + T * I) hp).continuousWithinAt
  have key := abs_im_integral_logDeriv_le_pi hab hderiv hcont hre
  have e : (fun σ => g' σ / g σ) = fun σ : ℝ => logDeriv f (σ + T * I) := by
    funext σ
    simp only [hg, hg', logDeriv_apply]
  rw [e] at key
  exact key

/-! ### (B) one partial-fraction term -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efccbb8d147887a4dd95cc2adb71b3070b76ed9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
