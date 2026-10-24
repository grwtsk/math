# actual_correlation_iterated_fourth_abs_le_sixty_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef986bb5-77e8-abaf-1904-f27099e3e790",
  "kind": "theorem",
  "lexical_name": "actual_correlation_iterated_fourth_abs_le_sixty_seven",
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
  "slug": "actual-correlation-iterated-fourth-abs-le-sixty-seven--309e57bc3cf0b2674a3d3b4e",
  "source": {
    "blob": "7f9e2a0e428aa0cdd8d341907a0a37c99391c36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/58b3d35eb3a5ff094aadActualFourthCorrelationCalibration/Variant70741c63f7cd03e43cf5dd09bfefac973cf2388c8c5166620f993dbdcee62b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:309e57bc3cf0b2674a3d3b4e7093bf1a82ab024eac53ceafaec8dd60f5b5d7aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/58b3d35eb3a5ff094aadActualFourthCorrelationCalibration/Variant70741c63f7cd03e43cf5dd09bfefac973cf2388c8c5166620f993dbdcee62b7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef986bb5-77e8-abaf-1904-f27099e3e790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_iterated_fourth_abs_le_sixty_seven
    (A t : ℝ) (hA : 91 ≤ A) :
    |iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) t| ≤ 67 / A ^ 4 := by
  rw [actual_correlation_iterated_fourth_eq A (by linarith) t]
  exact actualSecondProfileCorrelation_abs_le_sixty_seven A t hA

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/58b3d35eb3a5ff094aadActualFourthCorrelationCalibration/Variant70741c63f7cd03e43cf5dd09bfefac973cf2388c8c5166620f993dbdcee62b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/58b3d35eb3a5ff094aadActualFourthCorrelationCalibration/Variant70741c63f7cd03e43cf5dd09bfefac973cf2388c8c5166620f993dbdcee62b7f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9e2a0e428aa0cdd8d341907a0a37c99391c36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
