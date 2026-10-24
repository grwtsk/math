# literal_primitive_row_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0f28614-9373-ceca-8937-8cd3b7a3cb2c",
  "kind": "theorem",
  "lexical_name": "literal_primitive_row_variation",
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
  "slug": "literal-primitive-row-variation--e908adffe396dfe7cc8aecae",
  "source": {
    "blob": "784969da19bd0858ed4a46d4c18371e1724f722d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variante40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e908adffe396dfe7cc8aecaea7afdd790033a8c098ee3313f8f8907f2942d2b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variante40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0f28614-9373-ceca-8937-8cd3b7a3cb2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_primitive_row_variation {x : ℝ} (hx : 0 ≤ x) :
    variation (primitiveRow x) = absolutePrimitiveMass x := by
  unfold variation primitiveRow absolutePrimitiveMass
  rw [Finset.sum_coe_sort (Finset.Icc 2 ⌊x⌋₊) (fun n : ℕ ↦ |(ArithmeticFunction.vonMangoldt n -
    1) * primitiveWeight x n|)]
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hn2, hnhi⟩ := Finset.mem_Icc.mp hn
  have hnx := (show (n : ℝ) ≤ (⌊x⌋₊ : ℝ) by exact_mod_cast hnhi).trans (Nat.floor_le hx)
  rw [abs_mul, abs_of_nonneg (visible_primitive_weight_nonnegative (by omega) hnx)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variante40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variante40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `784969da19bd0858ed4a46d4c18371e1724f722d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
