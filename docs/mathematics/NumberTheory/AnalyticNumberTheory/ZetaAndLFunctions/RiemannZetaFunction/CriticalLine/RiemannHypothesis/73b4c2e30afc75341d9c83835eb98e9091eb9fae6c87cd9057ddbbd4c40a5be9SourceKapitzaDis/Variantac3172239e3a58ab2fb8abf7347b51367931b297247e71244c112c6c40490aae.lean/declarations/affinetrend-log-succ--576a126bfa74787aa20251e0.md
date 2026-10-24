# affineTrend_log_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ea1d72e-619d-d5fd-45e0-d1a568ff3e2e",
  "kind": "theorem",
  "lexical_name": "affineTrend_log_succ",
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
  "slug": "affinetrend-log-succ--576a126bfa74787aa20251e0",
  "source": {
    "blob": "38d1f6d31462d7a84bbe4616af20abce5d598d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variantac3172239e3a58ab2fb8abf7347b51367931b297247e71244c112c6c40490aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:576a126bfa74787aa20251e06c55018aef0e82a97ea27d5e4b8648fe3edea10c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variantac3172239e3a58ab2fb8abf7347b51367931b297247e71244c112c6c40490aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ea1d72e-619d-d5fd-45e0-d1a568ff3e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineTrend_log_succ (A : ℝ) (n : ℕ) :
    affineTrend A (Real.log (n + 1 : ℕ)) = affineTrend A (Real.log n) -
      endpointSlope A * (Real.log (n + 1 : ℕ) - Real.log n) := by
  unfold affineTrend
  ring

/-- Exact recurrence after affine subtraction, preserving slope and real arithmetic scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variantac3172239e3a58ab2fb8abf7347b51367931b297247e71244c112c6c40490aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variantac3172239e3a58ab2fb8abf7347b51367931b297247e71244c112c6c40490aae.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38d1f6d31462d7a84bbe4616af20abce5d598d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
