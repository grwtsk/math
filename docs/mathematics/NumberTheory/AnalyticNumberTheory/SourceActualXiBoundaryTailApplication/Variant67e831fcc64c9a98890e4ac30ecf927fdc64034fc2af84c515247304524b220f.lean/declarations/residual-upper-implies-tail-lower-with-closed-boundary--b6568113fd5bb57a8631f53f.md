# residual_upper_implies_tail_lower_with_closed_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e21747d-102b-c315-c00d-d7e0e5a9f594",
  "kind": "theorem",
  "lexical_name": "residual_upper_implies_tail_lower_with_closed_boundary",
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
  "slug": "residual-upper-implies-tail-lower-with-closed-boundary--b6568113fd5bb57a8631f53f",
  "source": {
    "blob": "35b4c78f1f230191873a640d915a6d329e80dd27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiBoundaryTailApplication/Variant67e831fcc64c9a98890e4ac30ecf927fdc64034fc2af84c515247304524b220f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6568113fd5bb57a8631f53f3ea269d984764159bc02f8578cfc84b46f094850",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualXiBoundaryTailApplication/Variant67e831fcc64c9a98890e4ac30ecf927fdc64034fc2af84c515247304524b220f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e21747d-102b-c315-c00d-d7e0e5a9f594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_implies_tail_lower_with_closed_boundary (A B : ℝ)
    (hA : 40 ≤ A) (hr : mertensResidual A ≤ B) :
    -(B + 2 + gammaTraceBudget + wholeHeadBudget) ≤ completeXiTail A := by
  apply residual_upper_implies_complete_tail_lower A B wholeHeadBudget gammaTraceBudget hA hr
  · simpa only [completeXiHead_eq_actualWholeXiHead] using actualWholeXiHead_upper A hA
  · exact actual_gamma_trace_upper A (by linarith)

/-- No head or gamma premise remains; the actual all-real signed arithmetic premise does. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualXiBoundaryTailApplication/Variant67e831fcc64c9a98890e4ac30ecf927fdc64034fc2af84c515247304524b220f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiBoundaryTailApplication/Variant67e831fcc64c9a98890e4ac30ecf927fdc64034fc2af84c515247304524b220f.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35b4c78f1f230191873a640d915a6d329e80dd27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
