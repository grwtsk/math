# archimedeanValue_lower_of_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a49fd7a-f2e2-dcf7-aab7-853b8d80d017",
  "kind": "lemma",
  "lexical_name": "archimedeanValue_lower_of_mass",
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
  "slug": "archimedeanvalue-lower-of-mass--9fcece7cf7ef9e6f6d861e0e",
  "source": {
    "blob": "5870acb7418744ea9916a462b97c1ce479afaee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCorrectionEstimate/Variante57f1aab57843726c120681970ad2abeda7b428e31ab4e6a62203c0f4f0bdc1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fcece7cf7ef9e6f6d861e0e5b378d87310556f77a52b0f1b63562bcf347c230",
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

Occurrence: `result:1a49fd7a-f2e2-dcf7-aab7-853b8d80d017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma archimedeanValue_lower_of_mass (A : ℝ) (hA : 1 ≤ A)
    (hmass : (∫ ξ, Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) = 2 * Real.pi) :
    archimedeanMultiplier 0 ≤ archimedeanValue explicitSecondDerivative A := by
  have h := integral_mono
    ((actual_fourier_square_integrable A hA).const_mul (archimedeanMultiplier 0))
    (AdmissionSource.archimedean_integrability A hA)
    (fun ξ ↦ mul_le_mul_of_nonneg_right (source_multiplier_lower ξ) (Complex.normSq_nonneg _))
  rw [integral_const_mul, hmass] at h
  unfold archimedeanValue
  exact (le_div_iff₀ (by positivity)).mpr h

/-- The decaying exponential correlation term is bounded below by `-4`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCorrectionEstimate/Variante57f1aab57843726c120681970ad2abeda7b428e31ab4e6a62203c0f4f0bdc1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCorrectionEstimate/Variante57f1aab57843726c120681970ad2abeda7b428e31ab4e6a62203c0f4f0bdc1e.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5870acb7418744ea9916a462b97c1ce479afaee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
