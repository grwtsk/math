# standard_dual_not_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62d6819f-a598-9f05-d2c6-b2bbfd96a457",
  "kind": "theorem",
  "lexical_name": "standard_dual_not_integrable",
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
  "slug": "standard-dual-not-integrable--17a7c371dbfe8d428cb6b6f5",
  "source": {
    "blob": "6fb2756278e66b14dded86c693de3fd1d5b90904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variant575cefd6b2fcd26bdcbfa3e1ef1efe55163c890274968c8525f4cef6b3c9ab8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a7c371dbfe8d428cb6b6f5b075e66a261333c735cadb4994986ecc6f014117",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variant575cefd6b2fcd26bdcbfa3e1ef1efe55163c890274968c8525f4cef6b3c9ab8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62d6819f-a598-9f05-d2c6-b2bbfd96a457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem standard_dual_not_integrable (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) :
    ¬ Integrable (signFourierDuality f : ℝ → ℂ) := by
  intro hdual
  have hf1 : Integrable (f : ℝ → ℂ) :=
    (Complex.ofRealCLM.integrable_comp (normalizedTest_integrable A (by linarith))).congr hf.symm
  have hF : ((𝓕 f : ComplexL2) : ℝ → ℂ) =ᵐ[volume] standardSourceTransform A :=
    (fourier_coe_ae f hf1).trans (Eventually.of_forall (fun ξ => Real.fourier_congr_ae hf ξ))
  apply actual_source_spectral_jump A hA
  refine ⟨𝓕 (signFourierDuality f : ℝ → ℂ),
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ (E := ℝ)).continuous₂ hdual, ?_⟩
  have hn : ∀ᵐ ξ : ℝ ∂volume, ξ ≠ 0 := by rw [ae_iff]; simp
  filter_upwards [(fourier_coe_ae (signFourierDuality f) hdual).symm,
    duality_fourier_coe_ae f, hF, hn] with ξ h1 h2 h3 h0
  rw [h1, h2, h3]
  unfold signModulated signSymbol
  rcases lt_or_gt_of_ne h0 with hm | hp
  · simp [hm, Real.sign_of_neg hm]
  · simp [not_lt.mpr hp.le, Real.sign_of_pos hp]

/-- The source-angular orientation has the same physical nonintegrability guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variant575cefd6b2fcd26bdcbfa3e1ef1efe55163c890274968c8525f4cef6b3c9ab8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variant575cefd6b2fcd26bdcbfa3e1ef1efe55163c890274968c8525f4cef6b3c9ab8a.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fb2756278e66b14dded86c693de3fd1d5b90904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
