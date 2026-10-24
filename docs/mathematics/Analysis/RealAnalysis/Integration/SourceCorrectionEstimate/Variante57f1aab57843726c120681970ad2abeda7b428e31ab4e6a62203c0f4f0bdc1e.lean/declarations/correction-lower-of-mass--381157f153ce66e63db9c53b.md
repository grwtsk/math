# correction_lower_of_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66341800-4c88-1a9a-32cb-a1aeb2924ac5",
  "kind": "lemma",
  "lexical_name": "correction_lower_of_mass",
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
  "slug": "correction-lower-of-mass--381157f153ce66e63db9c53b",
  "source": {
    "blob": "5870acb7418744ea9916a462b97c1ce479afaee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCorrectionEstimate/Variante57f1aab57843726c120681970ad2abeda7b428e31ab4e6a62203c0f4f0bdc1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:381157f153ce66e63db9c53b06a88a8c99955610b9d058e57d67a9ad347d01dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCorrectionEstimate/Variante57f1aab57843726c120681970ad2abeda7b428e31ab4e6a62203c0f4f0bdc1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66341800-4c88-1a9a-32cb-a1aeb2924ac5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma correction_lower_of_mass (A : ℝ) (hA : 1 ≤ A)
    (hmass : (∫ ξ, Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) = 2 * Real.pi) :
    archimedeanMultiplier 0 - 6 * Real.sqrt 2 ≤ analyticCorrection explicitSecondDerivative A := by
  have harch := archimedeanValue_lower_of_mass A hA hmass
  have hfirst := first_correction_lower A hA
  have hsecond := second_correction_lower A hA
  have hprime := (abs_le.mp (EstimateCorrelation.actual_prime_two_boundary_abs_le A hA)).1
  unfold analyticCorrection
  linarith

/-- Exact source Plancherel normalization discharges the Fourier-mass hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCorrectionEstimate/Variante57f1aab57843726c120681970ad2abeda7b428e31ab4e6a62203c0f4f0bdc1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCorrectionEstimate/Variante57f1aab57843726c120681970ad2abeda7b428e31ab4e6a62203c0f4f0bdc1e.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5870acb7418744ea9916a462b97c1ce479afaee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
