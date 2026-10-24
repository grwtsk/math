# squareRemovedPairedWork_eq_primitive_with_drift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a02e4526-508f-44b5-7095-adbb723141a6",
  "kind": "theorem",
  "lexical_name": "squareRemovedPairedWork_eq_primitive_with_drift",
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
  "slug": "squareremovedpairedwork-eq-primitive-with-drift--2a0aa7b750e6eac95b1f96d7",
  "source": {
    "blob": "d52978771cc1c650ee9fb9de54d7fb27749e36f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 147,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant33982d15780f37da24e4022b07421f263b781de1d94b1b7a3511beffd0d32220.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a0aa7b750e6eac95b1f96d7fe898ac094b123a1f9e9b496119809b9d6ce5871",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant33982d15780f37da24e4022b07421f263b781de1d94b1b7a3511beffd0d32220.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a02e4526-508f-44b5-7095-adbb723141a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareRemovedPairedWork_eq_primitive_with_drift {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedPairedWork A =
      (negativeTimeMean A + negativeErrorMean A - primitivePrimeCombination A) -
        diagonalMainCoefficient A * A + pairedSquareMainCorrection A -
          (negativeTimeMean A - criticalContinuousMoment A) := by
  rw [squareRemovedPairedWork_eq_first_main_correction hA, pairedTailTest_prime_sum_eq,
    ← firstPrimeMoment_eq_criticalPrimeSum,
    ← primitivePrimeCombination_eq_firstPrimeMoment (show 0 < A by linarith)]
  have hs := negativeSurvival_prime_sum_sub_mean hA
  linarith

/-- Exact mu cancellation leaves the independent zero mode coupled to all prime lag channels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant33982d15780f37da24e4022b07421f263b781de1d94b1b7a3511beffd0d32220.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant33982d15780f37da24e4022b07421f263b781de1d94b1b7a3511beffd0d32220.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d52978771cc1c650ee9fb9de54d7fb27749e36f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
