# actual_dilationTest_edge_scaled_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6005e6ee-7915-1204-bb7d-9cd5905aa8ce",
  "kind": "theorem",
  "lexical_name": "actual_dilationTest_edge_scaled_eq",
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
  "slug": "actual-dilationtest-edge-scaled-eq--9e3ce3bad4252947554e10bc",
  "source": {
    "blob": "76f2250d1b272571b6c612cc8a75d33bd4077780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant50df86bf22f3330a8f2935a41c3e7dc8c5dadcd5c7a01e940335c107ef2f76de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e3ce3bad4252947554e10bcf1f8347cccb1f48b64a911fa12fb71273b869109",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant50df86bf22f3330a8f2935a41c3e7dc8c5dadcd5c7a01e940335c107ef2f76de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6005e6ee-7915-1204-bb7d-9cd5905aa8ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_dilationTest_edge_scaled_eq {A u : ℝ} (hA : 0 < A)
    (hu : 0 ≤ u) (huA : u ≤ 2 * A) :
    (A ^ 4 * Real.sqrt A) * dilationTest explicitSecondDerivative A (A - u) =
      actualEdgePolynomial A u := by
  rw [actual_dilationTest_edge_eq hA hu huA]
  have hp : A ^ 4 * Real.sqrt A ≠ 0 := by positivity
  field_simp

/-- The actual edge polynomial has a uniform envelope in the entire overlap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant50df86bf22f3330a8f2935a41c3e7dc8c5dadcd5c7a01e940335c107ef2f76de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant50df86bf22f3330a8f2935a41c3e7dc8c5dadcd5c7a01e940335c107ef2f76de.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76f2250d1b272571b6c612cc8a75d33bd4077780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
