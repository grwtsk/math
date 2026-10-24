# actualOneConvolution_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:538a9a76-166b-8267-c75b-5220fffbcdc4",
  "kind": "theorem",
  "lexical_name": "actualOneConvolution_return",
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
  "slug": "actualoneconvolution-return--b3ea0dff7ae5da6c0d9edf92",
  "source": {
    "blob": "eaa7bbf9a28c30bc3750dbab6c31448d059b76ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 235,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variant9fd68f91ca63fe39e1ecfd13cf7bfb8cc9c1b62d5c3881dc449e223ca7dc982a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3ea0dff7ae5da6c0d9edf9293f042a009d95f4afa6f4a7039cff717bfb13d79",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variant9fd68f91ca63fe39e1ecfd13cf7bfb8cc9c1b62d5c3881dc449e223ca7dc982a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:538a9a76-166b-8267-c75b-5220fffbcdc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualOneConvolution_return {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in Real.log 7..2 * A,
      actualMangoldtErrorConvolution 1 t * actualDampedXiReturnDensity A t) =
        -actualMangoldtErrorConvolution 1 (Real.log 7) *
            actualOneConvolutionReturnTest A (Real.log 7) -
          ∫ t in Real.log 7..2 * A,
            actualCenteredMangoldtLogError t * actualOneConvolutionReturnTest A t := by
  simpa only [one_mul] using convolution_abel (lam := 1) hA _
    (oneTest_contDiff (by linarith))
    (fun t => by simpa only [one_mul] using
      actualOneConvolutionReturnTest_hasDerivAt (by linarith) t) (oneTest_upper_zero hA)


/-- The returned original convolution density is genuinely finite L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variant9fd68f91ca63fe39e1ecfd13cf7bfb8cc9c1b62d5c3881dc449e223ca7dc982a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variant9fd68f91ca63fe39e1ecfd13cf7bfb8cc9c1b62d5c3881dc449e223ca7dc982a.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaa7bbf9a28c30bc3750dbab6c31448d059b76ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
