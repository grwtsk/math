# inner_frequency_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95a52222-b191-aa4d-8680-e934b6ffeb5e",
  "kind": "theorem",
  "lexical_name": "inner_frequency_integral",
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
  "slug": "inner-frequency-integral--23afb08722bff856e94d3284",
  "source": {
    "blob": "fc6cc2364ebcbbe17592a4aa32f90de128c3a53b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23afb08722bff856e94d328494d5ba0996d7be86fdd2e184befa917dae391f82",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95a52222-b191-aa4d-8680-e934b6ffeb5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_frequency_integral {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ ξ : ℝ, jointIntegrand A (ξ,t)) =
      (2*Real.pi) * (2*ArchimedeanKernel.kernel t *
        (1-sourceCorrelation explicitSecondDerivative A t)) := by
  have he : (fun ξ => jointIntegrand A (ξ,t)) = fun ξ =>
      (2*ArchimedeanKernel.kernel t)*
        (sourceFourierSquare A ξ - Real.cos (ξ*t)*sourceFourierSquare A ξ) := by
    funext ξ
    unfold jointIntegrand compensatedKernel
    ring
  have hc : (∫ ξ : ℝ, Real.cos (ξ*t)*sourceFourierSquare A ξ) =
      (2*Real.pi)*sourceCorrelation explicitSecondDerivative A t := by
    rw [source_correlation_fourier hA]
    field_simp
    simp only [mul_comm]
  rw [he, integral_const_mul, integral_sub (sourceFourierSquare_integrable hA)
    (source_cosine_product_integrable hA t), sourceFourierSquare_integral hA, hc]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc6cc2364ebcbbe17592a4aa32f90de128c3a53b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
