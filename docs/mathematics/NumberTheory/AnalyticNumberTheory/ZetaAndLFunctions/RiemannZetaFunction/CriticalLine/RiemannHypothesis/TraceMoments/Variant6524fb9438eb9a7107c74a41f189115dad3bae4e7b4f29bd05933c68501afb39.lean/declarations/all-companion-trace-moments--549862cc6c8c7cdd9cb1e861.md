# all_companion_trace_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe86dd2c-3b21-a16d-d622-68b595d33208",
  "kind": "theorem",
  "lexical_name": "all_companion_trace_moments",
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
  "slug": "all-companion-trace-moments--549862cc6c8c7cdd9cb1e861",
  "source": {
    "blob": "1d9ac1eb174bb8134750d0cbbdc10b854d31e4ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 178,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceMoments/Variant6524fb9438eb9a7107c74a41f189115dad3bae4e7b4f29bd05933c68501afb39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:549862cc6c8c7cdd9cb1e86120d74d634dcec1c2cbfd4e3c918814f828b2d40b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceMoments/Variant6524fb9438eb9a7107c74a41f189115dad3bae4e7b4f29bd05933c68501afb39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe86dd2c-3b21-a16d-d622-68b595d33208`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_companion_trace_moments (k : Fin 11) :
    Matrix.trace (traceCompanion ^ (k : ℕ)) = recordedPowerTrace k := by
  fin_cases k <;>
    simp only [power2_eq, power3_eq, power4_eq, power5_eq, power6_eq,
      power7_eq, power8_eq, power9_eq, power10_eq] <;>
    norm_num [recordedPowerTrace, traceCompanion, Matrix.trace, Matrix.diag,
      pow_zero, pow_one, Fin.sum_univ_succ,
      power2_eq, power2, power3_eq, power3, power4_eq, power4, power5_eq, power5,
      power6_eq, power6, power7_eq, power7, power8_eq, power8, power9_eq, power9,
      power10_eq, power10]

end
end GRWTSK.RiemannHypothesis.Conversation.TraceMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceMoments/Variant6524fb9438eb9a7107c74a41f189115dad3bae4e7b4f29bd05933c68501afb39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceMoments/Variant6524fb9438eb9a7107c74a41f189115dad3bae4e7b4f29bd05933c68501afb39.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d9ac1eb174bb8134750d0cbbdc10b854d31e4ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
