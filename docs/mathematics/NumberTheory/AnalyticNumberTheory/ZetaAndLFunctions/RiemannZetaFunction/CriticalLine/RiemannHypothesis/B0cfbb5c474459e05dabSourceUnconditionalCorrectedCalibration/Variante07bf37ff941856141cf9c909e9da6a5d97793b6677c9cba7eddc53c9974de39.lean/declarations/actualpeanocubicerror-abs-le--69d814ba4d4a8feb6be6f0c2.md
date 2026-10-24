# actualPeanoCubicError_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:909d895e-c6f3-12f3-11bf-6106bd2355ee",
  "kind": "theorem",
  "lexical_name": "actualPeanoCubicError_abs_le",
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
  "slug": "actualpeanocubicerror-abs-le--69d814ba4d4a8feb6be6f0c2",
  "source": {
    "blob": "a1ba3422b355c9de55172308fae4a1ac083f4fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B0cfbb5c474459e05dabSourceUnconditionalCorrectedCalibration/Variante07bf37ff941856141cf9c909e9da6a5d97793b6677c9cba7eddc53c9974de39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d814ba4d4a8feb6be6f0c25feede1e77312b475c3d594eade9b94c2bda3d9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B0cfbb5c474459e05dabSourceUnconditionalCorrectedCalibration/Variante07bf37ff941856141cf9c909e9da6a5d97793b6677c9cba7eddc53c9974de39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:909d895e-c6f3-12f3-11bf-6106bd2355ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeanoCubicError_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |actualPeanoCubicError A| ≤ 640 * 67 / A ^ 3 := by
  apply actualPeanoCubicError_abs_le_of_actual_row_bound A (by linarith)
  intro d _
  exact actualPeanoCubicRemainder_abs_le A (Real.log (d : ℝ)) hA

/-- Exact complete Omega differs from the full signed corrected pairing by its actual error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B0cfbb5c474459e05dabSourceUnconditionalCorrectedCalibration/Variante07bf37ff941856141cf9c909e9da6a5d97793b6677c9cba7eddc53c9974de39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B0cfbb5c474459e05dabSourceUnconditionalCorrectedCalibration/Variante07bf37ff941856141cf9c909e9da6a5d97793b6677c9cba7eddc53c9974de39.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1ba3422b355c9de55172308fae4a1ac083f4fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
