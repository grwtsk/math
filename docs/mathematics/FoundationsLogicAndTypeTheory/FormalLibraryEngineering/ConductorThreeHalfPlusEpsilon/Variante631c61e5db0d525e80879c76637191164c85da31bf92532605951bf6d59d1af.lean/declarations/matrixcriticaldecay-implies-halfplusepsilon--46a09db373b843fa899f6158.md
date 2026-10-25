# matrixCriticalDecay_implies_halfPlusEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9db95d50-4ba4-46fa-5cf0-6c9788d915cf",
  "kind": "theorem",
  "lexical_name": "matrixCriticalDecay_implies_halfPlusEpsilon",
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
  "slug": "matrixcriticaldecay-implies-halfplusepsilon--46a09db373b843fa899f6158",
  "source": {
    "blob": "1467b976b9f95f44a7bd4467bb4d758fb57fc567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variante631c61e5db0d525e80879c76637191164c85da31bf92532605951bf6d59d1af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46a09db373b843fa899f6158aa3269d68d71a53cd52ca5a11254205aa9f1e8e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variante631c61e5db0d525e80879c76637191164c85da31bf92532605951bf6d59d1af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9db95d50-4ba4-46fa-5cf0-6c9788d915cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrixCriticalDecay_implies_halfPlusEpsilon
    {counts : Surface.Core.AnalyticPrimeWalk.ResidueSixCounts} :
    MatrixCriticalDecay counts → MatrixHalfPlusEpsilonDecay counts := by
  rintro ⟨C₀, hC₀, hCritical⟩ epsilon hepsilon
  refine ⟨C₀ * (4 / epsilon ^ 2), by positivity, ?_⟩
  filter_upwards [hCritical,
    eventually_atTop.2 ⟨1, fun K hK ↦ hK⟩] with K hmain hK
  calc
    ‖indexedDiscrepancyOperator counts K‖ ≤
        C₀ * conductorThreeCriticalRate K := hmain
    _ ≤ C₀ * ((4 / epsilon ^ 2) *
        (((K + 2 : ℕ) : ℝ) ^ (-1 / 2 + epsilon))) :=
      mul_le_mul_of_nonneg_left
        (criticalRate_le_halfPlusEpsilonRate hepsilon hK) hC₀
    _ = (C₀ * (4 / epsilon ^ 2)) *
        (((K + 2 : ℕ) : ℝ) ^ (-1 / 2 + epsilon)) := by ring

end

end Surface.Core.ConductorThreeHalfPlusEpsilon
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variante631c61e5db0d525e80879c76637191164c85da31bf92532605951bf6d59d1af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variante631c61e5db0d525e80879c76637191164c85da31bf92532605951bf6d59d1af.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1467b976b9f95f44a7bd4467bb4d758fb57fc567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
