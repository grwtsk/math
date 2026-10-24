# sourceFourier_autocorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:304ad1fb-f538-b0cf-8d1f-29c3ae0eee35",
  "kind": "theorem",
  "lexical_name": "sourceFourier_autocorrelation",
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
  "slug": "sourcefourier-autocorrelation--9b3bfc7458a3faf25dab9603",
  "source": {
    "blob": "e60b58ec32f081f6839e794783f586d990365ff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 159,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b3bfc7458a3faf25dab960342ad50fcca12c92bd791d94a6a76b44d839b30c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:304ad1fb-f538-b0cf-8d1f-29c3ae0eee35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_autocorrelation {f : ℝ → ℝ} (hf : Integrable f) (ξ : ℝ) :
    sourceFourier (fun u ↦ ∫ x : ℝ, f x * f (x - u)) ξ =
      (Complex.normSq (sourceFourier f ξ) : ℂ) := by
  have heq : (fun u : ℝ ↦ ((∫ x : ℝ, f x * f (x - u) : ℝ) : ℂ)) =
      (fun x ↦ (f x : ℂ)) ⋆[ContinuousLinearMap.mul ℂ ℂ]
        (fun x ↦ (f (-x) : ℂ)) := by
    funext u
    calc
      _ = ∫ x : ℝ, ((f x * f (x - u) : ℝ) : ℂ) := integral_ofReal.symm
      _ = _ := by
        rw [convolution]
        apply integral_congr_ae
        exact Filter.Eventually.of_forall fun x ↦ by simp [neg_sub]
  rw [BridgeFourier.sourceFourier_eq_fourier, heq]
  have hfc : Integrable (fun x ↦ (f x : ℂ)) := Complex.ofRealCLM.integrable_comp hf
  have hgc : Integrable (fun x ↦ (f (-x) : ℂ)) :=
    Complex.ofRealCLM.integrable_comp hf.comp_neg
  rw [Real.fourier_mul_convolution_eq hfc hgc,
    SourcePlancherel.fourier_reflected_real, Complex.mul_conj,
    ← BridgeFourier.sourceFourier_eq_fourier]

/-- The complete real autocorrelation Fourier formula for the separate family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e60b58ec32f081f6839e794783f586d990365ff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
