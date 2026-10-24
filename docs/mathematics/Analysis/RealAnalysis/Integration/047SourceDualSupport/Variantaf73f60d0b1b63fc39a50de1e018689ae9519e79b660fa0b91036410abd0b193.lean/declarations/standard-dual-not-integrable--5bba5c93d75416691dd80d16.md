# standard_dual_not_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fa60e5ee92aa8ce790236b0645800e37574fe08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10a8e3c7-ef3e-42d6-b9c7-360b90e626bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c08a797-20fc-84bf-3b57-28134c22a136",
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
  "slug": "standard-dual-not-integrable--5bba5c93d75416691dd80d16",
  "source": {
    "blob": "5fa60e5ee92aa8ce790236b0645800e37574fe08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variantaf73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bba5c93d75416691dd80d16f7ec2aa516a22617469963623ee74cd7bee8ec3e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variantaf73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c08a797-20fc-84bf-3b57-28134c22a136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–48.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variantaf73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variantaf73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa60e5ee92aa8ce790236b0645800e37574fe08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
