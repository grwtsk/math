# actual_dilationTest_edge_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b38f0a98-3eb4-07dc-515d-6431f5bc882d",
  "kind": "theorem",
  "lexical_name": "actual_dilationTest_edge_eq",
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
  "slug": "actual-dilationtest-edge-eq--fd62d2b7f1099a40f5a89091",
  "source": {
    "blob": "d4e8ae10516eed1fc7b0554ac1bd1351a222c2af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant4aa46806420b3d1af2bee8c2406fc926fbfd214c99a7147e023513b74151fa4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd62d2b7f1099a40f5a890914b4271af54c54d2ff9561afe827fe172c3a00559",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant4aa46806420b3d1af2bee8c2406fc926fbfd214c99a7147e023513b74151fa4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b38f0a98-3eb4-07dc-515d-6431f5bc882d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_dilationTest_edge_eq {A u : ℝ} (hA : 0 < A)
    (hu : 0 ≤ u) (huA : u ≤ 2 * A) :
    dilationTest explicitSecondDerivative A (A - u) =
      actualEdgePolynomial A u / (A ^ 4 * Real.sqrt A) := by
  have hm : A - u ∈ Icc (-A) A := ⟨by linarith, by linarith⟩
  rw [dilationTest, explicitSecondDerivative,
    scaledBump_eq_indicator A hA]
  simp only [indicator_of_mem hm, secondInterior, bumpInterior, actualEdgePolynomial]
  field_simp [ne_of_gt hA, ne_of_gt (Real.sqrt_pos.2 hA)]
  ring

/-- Multiplication exposes the true signed polynomial without changing the test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant4aa46806420b3d1af2bee8c2406fc926fbfd214c99a7147e023513b74151fa4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant4aa46806420b3d1af2bee8c2406fc926fbfd214c99a7147e023513b74151fa4f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e8ae10516eed1fc7b0554ac1bd1351a222c2af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
