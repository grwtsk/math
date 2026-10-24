# actual_original_archimedean_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50147130-14f7-16ad-db3e-3f604033f934",
  "kind": "theorem",
  "lexical_name": "actual_original_archimedean_integrable",
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
  "slug": "actual-original-archimedean-integrable--fe2d96210278eda4ae4f0141",
  "source": {
    "blob": "860651a0af0f145a634723f5d16807b544516f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionaryNative1/Variant100416849a81889c55d5d82700cfe5288210b95a8f315ada4d3d7e99340bd632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe2d96210278eda4ae4f0141549bdc43365a5ac6f45028c4586a5344c5f90268",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionaryNative1/Variant100416849a81889c55d5d82700cfe5288210b95a8f315ada4d3d7e99340bd632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50147130-14f7-16ad-db3e-3f604033f934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_original_archimedean_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (archimedeanIntegrand explicitSecondDerivative A) := by
  have h := actualGammaBracket_integrable A hA
  have heq : (fun t : ℝ =>
      paperFT (fun u => (sourceCorrelation explicitSecondDerivative A u : ℂ)) (t : ℂ) *
        ((EF.gammaBracket t : ℝ) : ℂ)) =
      (fun t : ℝ => (archimedeanIntegrand explicitSecondDerivative A t : ℂ)) := by
    funext t
    rw [actualCorrelation_paperFT_eq_sourceSquare A t hA]
    unfold archimedeanIntegrand archimedeanMultiplier EF.gammaBracket
    push_cast
    congr 2
    ring
  rw [heq] at h
  exact h.re

/-- The full initial gamma line is exactly half the original real archimedean value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionaryNative1/Variant100416849a81889c55d5d82700cfe5288210b95a8f315ada4d3d7e99340bd632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionaryNative1/Variant100416849a81889c55d5d82700cfe5288210b95a8f315ada4d3d7e99340bd632.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860651a0af0f145a634723f5d16807b544516f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
