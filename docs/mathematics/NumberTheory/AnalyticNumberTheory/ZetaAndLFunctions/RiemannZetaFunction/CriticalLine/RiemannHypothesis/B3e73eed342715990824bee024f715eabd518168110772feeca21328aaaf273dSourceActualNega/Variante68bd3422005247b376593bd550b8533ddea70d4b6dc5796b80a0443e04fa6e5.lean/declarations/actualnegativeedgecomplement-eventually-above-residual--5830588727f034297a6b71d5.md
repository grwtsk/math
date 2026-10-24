# actualNegativeEdgeComplement_eventually_above_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b72bbaf-0479-30e5-21f3-e6cd2247bba4",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeComplement_eventually_above_residual",
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
  "slug": "actualnegativeedgecomplement-eventually-above-residual--5830588727f034297a6b71d5",
  "source": {
    "blob": "34fd9ba0776dc8c06e2d7e8a7780c50ea8d378c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 219,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B3e73eed342715990824bee024f715eabd518168110772feeca21328aaaf273dSourceActualNega/Variante68bd3422005247b376593bd550b8533ddea70d4b6dc5796b80a0443e04fa6e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5830588727f034297a6b71d57d229ecd3f49950d723b036e2ce0d1797f4804f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B3e73eed342715990824bee024f715eabd518168110772feeca21328aaaf273dSourceActualNega/Variante68bd3422005247b376593bd550b8533ddea70d4b6dc5796b80a0443e04fa6e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b72bbaf-0479-30e5-21f3-e6cd2247bba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeComplement_eventually_above_residual :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A + actualNegativeEdgeConstant * Real.exp A / A ^ 9 ≤
        actualNegativeEdgeComplement A := by
  obtain ⟨R, hR, he⟩ := actualNegativeEdgeMangoldtBlock_eventually_negative
  refine ⟨R, hR, ?_⟩
  intro A hA
  have h := actualResidual_eq_negativeEdge_add_complement (hR.trans hA)
  have heA := he A hA
  rw [neg_mul, neg_div] at heA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeMangoldt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B3e73eed342715990824bee024f715eabd518168110772feeca21328aaaf273dSourceActualNega/Variante68bd3422005247b376593bd550b8533ddea70d4b6dc5796b80a0443e04fa6e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B3e73eed342715990824bee024f715eabd518168110772feeca21328aaaf273dSourceActualNega/Variante68bd3422005247b376593bd550b8533ddea70d4b6dc5796b80a0443e04fa6e5.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34fd9ba0776dc8c06e2d7e8a7780c50ea8d378c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
