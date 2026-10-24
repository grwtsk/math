# critical_signed_tail_iff_critical_prime_error_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99ffd198-d1d4-a38a-b63f-da7d846418be",
  "kind": "theorem",
  "lexical_name": "critical_signed_tail_iff_critical_prime_error_tail",
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
  "slug": "critical-signed-tail-iff-critical-prime-error-tail--48b3c102a80c0cd1efa6bed4",
  "source": {
    "blob": "45348fe9b2d6106809e2d7eb0e595f9bfaedc762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 196,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48b3c102a80c0cd1efa6bed40078b6017006adcde6ff915cc73eac6a6b9b3689",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99ffd198-d1d4-a38a-b63f-da7d846418be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_signed_tail_iff_critical_prime_error_tail :
    CriticalSignedChebyshevTailLowerBound ↔ CriticalPrimeErrorTailUpperBound := by
  constructor
  · rintro ⟨C, hC, R, hR, h⟩
    refine ⟨C + Real.sqrt 2, by positivity, R, hR, ?_⟩
    intro A hRA
    have he := (abs_le.mp (critical_boundary_abs_le A (hR.trans hRA))).2
    have hi := h A hRA
    rw [criticalPrimeError_eq_chebyshev_integral A (hR.trans hRA)]
    unfold criticalSignedChebyshevIntegral at hi
    linarith
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + Real.sqrt 2, by positivity, R, hR, ?_⟩
    intro A hRA
    have he := (abs_le.mp (critical_boundary_abs_le A (hR.trans hRA))).1
    have hd := h A hRA
    rw [criticalPrimeError_eq_chebyshev_integral A (hR.trans hRA)] at hd
    unfold criticalSignedChebyshevIntegral
    linarith

/-- The source-specific signed primitive is equivalent to the existing canonical tail target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45348fe9b2d6106809e2d7eb0e595f9bfaedc762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
