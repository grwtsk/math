# curveIntegral_coefficientOneForm_homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:068dded4-8f0d-1ffe-c998-8b999f607524",
  "kind": "theorem",
  "lexical_name": "curveIntegral_coefficientOneForm_homotopy",
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
  "slug": "curveintegral-coefficientoneform-homotopy--cc81332ce34b2ab3d6ac08be",
  "source": {
    "blob": "337de377d6adb83a773417e974244acbd4cd74f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 65,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc81332ce34b2ab3d6ac08be78956751bd8cd1effe3d56e502b275c0030187a1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:068dded4-8f0d-1ffe-c998-8b999f607524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curveIntegral_coefficientOneForm_homotopy
    {a b c d : ℂ} {γ₁ : Path a b} {γ₂ : Path c d}
    {t : Set ℂ} {f : ℂ → ℂ}
    (φ : (γ₁ : C(I, ℂ)).Homotopy γ₂)
    (hφt : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ (x, y) ∈ t)
    (hd : DifferentiableOn ℂ f t)
    (hfc : ContinuousOn f (closure t))
    (hφsmooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ Set.IccExtend zero_le_one (φ.extend xy.1) xy.2)
      (Icc 0 1)) :
    curveIntegral (coefficientOneForm f) γ₁ +
        curveIntegral (coefficientOneForm f) (φ.evalAt 1) =
    curveIntegral (coefficientOneForm f) γ₂ +
        curveIntegral (coefficientOneForm f) (φ.evalAt 0) := by
  let D : ℂ → ℂ →L[ℝ] ℂ →L[ℂ] ℂ := fun z ↦
    (ContinuousLinearMap.toSpanSingleton ℂ
      ((1 : ℂ →L[ℂ] ℂ).smulRight (derivWithin f t z))).restrictScalars ℝ
  apply φ.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt
    (dω := D) hφt
  · intro z hz
    simpa [coefficientOneForm, D] using
      ((ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1).hasFDerivAt
        |>.comp_hasDerivWithinAt z (hd z hz).hasDerivWithinAt
        |>.hasFDerivWithinAt |>.restrictScalars ℝ)
  · exact (ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1).continuous.comp_continuousOn hfc
  · intro z hz u hu v hv
    simp [D]
    ring
  · exact hφsmooth

/-- Punctured-neighborhood coefficient of a simple pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337de377d6adb83a773417e974244acbd4cd74f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
