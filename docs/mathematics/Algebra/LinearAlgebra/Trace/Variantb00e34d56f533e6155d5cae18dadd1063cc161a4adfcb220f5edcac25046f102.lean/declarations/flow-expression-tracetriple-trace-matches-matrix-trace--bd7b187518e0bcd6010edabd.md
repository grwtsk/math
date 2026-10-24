# Flow.Expression.traceTriple_trace_matches_matrix_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19ea12f7-65be-edf0-d951-5f761d068db3",
  "kind": "theorem",
  "lexical_name": "Flow.Expression.traceTriple_trace_matches_matrix_trace",
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
  "slug": "flow-expression-tracetriple-trace-matches-matrix-trace--bd7b187518e0bcd6010edabd",
  "source": {
    "blob": "45908c839d031d8bbfd5ece1602bc65b034f5681",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd7b187518e0bcd6010edabd537e2bfb7dd290e8f123f5316dc40ee9cf4fd6d1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ea12f7-65be-edf0-d951-5f761d068db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Flow.Expression.traceTriple_trace_matches_matrix_trace
    (t : Flow.Expression α) :
    (Flow.Expression.traceTriple t).trace.trace =
      Flow.IntMatrix.trace
        (Flow.Expression.traceTriple t).matrix := by
  change (Flow.Expression.nodeCount t : Int) =
    Flow.IntMatrix.trace (Flow.Expression.mobiusMatrix t)
  exact (Flow.Expression.mobius_trace_eq_nodeCount t).symm

/-- Trace of the zeta component of a Möbius inversion package. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45908c839d031d8bbfd5ece1602bc65b034f5681` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
