# abs_im_integral_logDeriv_vertical_le_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0b2d6e9-a30a-f38f-a2af-e512320d2201",
  "kind": "theorem",
  "lexical_name": "abs_im_integral_logDeriv_vertical_le_pi",
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
  "slug": "abs-im-integral-logderiv-vertical-le-pi--6a04e5ae71ffc70d5ef04df3",
  "source": {
    "blob": "efccbb8d147887a4dd95cc2adb71b3070b76ed9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a04e5ae71ffc70d5ef04df39ded5dca200db26cc4f66bd8fe5255d2476c75e2",
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

Occurrence: `result:b0b2d6e9-a30a-f38f-a2af-e512320d2201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_im_integral_logDeriv_vertical_le_pi {f : ℂ → ℂ} {σ T₁ T₂ : ℝ} (h12 : T₁ ≤ T₂)
    (hf : ∀ t ∈ Icc T₁ T₂, AnalyticAt ℂ f (σ + t * I))
    (hre : ∀ t ∈ Icc T₁ T₂, 0 < (f (σ + t * I)).re) :
    |(∫ t in T₁..T₂, logDeriv f (σ + t * I) * I).im| ≤ Real.pi := by
  set g : ℝ → ℂ := fun t => f (σ + t * I) with hg
  set g' : ℝ → ℂ := fun t => deriv f (σ + t * I) * I with hg'
  have hderiv : ∀ t ∈ Icc T₁ T₂, HasDerivAt g (g' t) t := fun t ht =>
    ((hf t ht).differentiableAt.hasDerivAt).comp t (hasDerivAt_vertical σ t)
  have hcont : ContinuousOn g' (Icc T₁ T₂) := by
    intro t ht
    have hd : ContinuousAt (deriv f) (σ + t * I) := (hf t ht).deriv.continuousAt
    have hp : ContinuousAt (fun t : ℝ => (σ : ℂ) + t * I) t := by fun_prop
    exact ((hd.comp (f := fun t : ℝ => (σ : ℂ) + t * I) hp).mul continuousAt_const).continuousWithinAt
  have key := abs_im_integral_logDeriv_le_pi h12 hderiv hcont hre
  have e : (fun t => g' t / g t) = fun t : ℝ => logDeriv f (σ + t * I) * I := by
    funext t
    simp only [hg, hg', logDeriv_apply]
    ring
  rw [e] at key
  exact key

/-- **(A), horizontal segment**: f analytic with Re f > 0 along [a,b] + iT ⇒ |Im ∫ f′/f(σ+iT) dσ| ≤ π. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efccbb8d147887a4dd95cc2adb71b3070b76ed9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
