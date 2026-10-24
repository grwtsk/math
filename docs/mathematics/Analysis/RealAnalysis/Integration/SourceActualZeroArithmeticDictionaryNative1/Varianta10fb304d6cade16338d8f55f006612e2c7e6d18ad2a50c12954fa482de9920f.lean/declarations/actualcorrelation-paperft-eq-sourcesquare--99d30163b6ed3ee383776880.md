# actualCorrelation_paperFT_eq_sourceSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:863cad44-8c83-4f63-29ea-01e6d2d5bb10",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_paperFT_eq_sourceSquare",
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
  "slug": "actualcorrelation-paperft-eq-sourcesquare--99d30163b6ed3ee383776880",
  "source": {
    "blob": "83c4a29e307c49da2271c85651cf7639affc9f31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionaryNative1/Varianta10fb304d6cade16338d8f55f006612e2c7e6d18ad2a50c12954fa482de9920f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99d30163b6ed3ee38377688086a7402a98608edba9c4d785519728e2af448747",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionaryNative1/Varianta10fb304d6cade16338d8f55f006612e2c7e6d18ad2a50c12954fa482de9920f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:863cad44-8c83-4f63-29ea-01e6d2d5bb10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_paperFT_eq_sourceSquare (A t : ℝ) (hA : 1 ≤ A) :
    paperFT (fun u => (sourceCorrelation explicitSecondDerivative A u : ℂ)) (t : ℂ) =
      (Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) t) : ℂ) := by
  change sourceFourier (sourceCorrelation explicitSecondDerivative A) t = _
  rw [sourceFourier_eq_fourier, fourier_correlation A hA,
    standardFourier_eq_sourceFourier]
  congr 2
  field_simp

/-- The actual centered Mellin transform is the literal angular Fourier transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionaryNative1/Varianta10fb304d6cade16338d8f55f006612e2c7e6d18ad2a50c12954fa482de9920f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionaryNative1/Varianta10fb304d6cade16338d8f55f006612e2c7e6d18ad2a50c12954fa482de9920f.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c4a29e307c49da2271c85651cf7639affc9f31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
