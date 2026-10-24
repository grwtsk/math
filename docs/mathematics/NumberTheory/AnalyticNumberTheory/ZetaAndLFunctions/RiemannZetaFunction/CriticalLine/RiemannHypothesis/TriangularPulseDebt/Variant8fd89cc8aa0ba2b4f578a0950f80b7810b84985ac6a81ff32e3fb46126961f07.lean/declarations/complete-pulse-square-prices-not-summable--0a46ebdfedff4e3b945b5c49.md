# complete_pulse_square_prices_not_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e53bfe70-7a36-05ab-7bcf-0bba8c1d1d24",
  "kind": "theorem",
  "lexical_name": "complete_pulse_square_prices_not_summable",
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
  "slug": "complete-pulse-square-prices-not-summable--0a46ebdfedff4e3b945b5c49",
  "source": {
    "blob": "2b0dcefb40faac6de8ee36761c470caf8c1d96dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularPulseDebt/Variant8fd89cc8aa0ba2b4f578a0950f80b7810b84985ac6a81ff32e3fb46126961f07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a46ebdfedff4e3b945b5c490f7cc9ed69aba09df998150a06b859db80b266f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularPulseDebt/Variant8fd89cc8aa0ba2b4f578a0950f80b7810b84985ac6a81ff32e3fb46126961f07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e53bfe70-7a36-05ab-7bcf-0bba8c1d1d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pulse_square_prices_not_summable (M : ℕ → ℕ) (hM : ∀ j, 2 ≤ M j)
    {a : ℝ} (ha : 0 < a) :
    ¬ Summable (fun j ↦ (debt (M j) a) ^ 2 / width (M j)) := by
  have hc : 0 < a ^ 2 / 768 := by positivity
  intro hs
  have he := hs.tendsto_atTop_zero.eventually_lt_const hc
  obtain ⟨j, hj⟩ := he.exists
  exact (not_lt_of_ge (complete_pulse_square_price (hM j) ha.le)) hj

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularPulseDebt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularPulseDebt/Variant8fd89cc8aa0ba2b4f578a0950f80b7810b84985ac6a81ff32e3fb46126961f07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularPulseDebt/Variant8fd89cc8aa0ba2b4f578a0950f80b7810b84985ac6a81ff32e3fb46126961f07.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b0dcefb40faac6de8ee36761c470caf8c1d96dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
