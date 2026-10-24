# every_positive_tolerance_has_uniform_actual_entrance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce949142-5972-6ef0-4de6-266cc440261c",
  "kind": "theorem",
  "lexical_name": "every_positive_tolerance_has_uniform_actual_entrance",
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
  "slug": "every-positive-tolerance-has-uniform-actual-entrance--e50d62e4bb172a7779e6f89d",
  "source": {
    "blob": "85a025f8a9883cafacbcbf69da80ff5ea9ff4991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTailDecay/Variant1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e50d62e4bb172a7779e6f89dbb844283c563692e1f1a5ab1d0e0aaa16a52f353",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTailDecay/Variant1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce949142-5972-6ef0-4de6-266cc440261c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem every_positive_tolerance_has_uniform_actual_entrance {epsilon : ℝ}
    (he : 0 < epsilon) :
    ∃ N0 : ℕ, 3 ≤ N0 ∧ ∀ N : ℕ, N0 ≤ N → 0 ≤ tailPrice N ∧ tailPrice N < epsilon := by
  have h := actual_native_ledger_tail_tends_to_zero.eventually (eventually_lt_nhds he)
  obtain ⟨N0, hN0⟩ := eventually_atTop.1 h
  refine ⟨max N0 3, le_max_right _ _, ?_⟩
  intro N hN
  have hn3 : 3 ≤ N := (le_max_right _ _).trans hN
  have hn0 : N0 ≤ N := (le_max_left _ _).trans hN
  exact ⟨actual_tail_price_nonnegative hn3, hN0 N hn0⟩

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCrossingTailDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTailDecay/Variant1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTailDecay/Variant1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a025f8a9883cafacbcbf69da80ff5ea9ff4991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
