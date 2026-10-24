# dilationTest_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e476d9d-7956-2219-4352-b0dbf51a2b69",
  "kind": "theorem",
  "lexical_name": "dilationTest_integral",
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
  "slug": "dilationtest-integral--49782528d482f628a2315be0",
  "source": {
    "blob": "904896cdc2e76c18bd27cdb99bd5c18c8ba00a84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant9ebcc0fd34108694d9c01ecfe74d3dde7459b5447830b225626abff486b52474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49782528d482f628a2315be04e7520c81b6d541876759aeb0cf40ccbb8728044",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant9ebcc0fd34108694d9c01ecfe74d3dde7459b5447830b225626abff486b52474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e476d9d-7956-2219-4352-b0dbf51a2b69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilationTest_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, dilationTest explicitSecondDerivative A x) =
      -(256 / 315) * A / (4 * Real.sqrt A) := by
  unfold dilationTest
  rw [integral_sub (explicitSecondDerivative_integrable A)
    ((scaledBump_integrable A (by linarith)).div_const 4), integral_div,
    explicitSecondDerivative_integral_zero A hA, scaledBump_integral A hA]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant9ebcc0fd34108694d9c01ecfe74d3dde7459b5447830b225626abff486b52474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant9ebcc0fd34108694d9c01ecfe74d3dde7459b5447830b225626abff486b52474.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `904896cdc2e76c18bd27cdb99bd5c18c8ba00a84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
