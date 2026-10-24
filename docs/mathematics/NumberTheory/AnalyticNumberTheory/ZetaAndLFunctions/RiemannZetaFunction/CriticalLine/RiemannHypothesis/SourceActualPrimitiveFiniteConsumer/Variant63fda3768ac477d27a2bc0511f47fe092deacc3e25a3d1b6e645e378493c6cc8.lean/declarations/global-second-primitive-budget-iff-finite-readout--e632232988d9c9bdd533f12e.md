# global_second_primitive_budget_iff_finite_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29c6eded-9b5c-db8c-db0c-4d16c2fd385e",
  "kind": "theorem",
  "lexical_name": "global_second_primitive_budget_iff_finite_readout",
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
  "slug": "global-second-primitive-budget-iff-finite-readout--e632232988d9c9bdd533f12e",
  "source": {
    "blob": "7d381f074dfbb77878f50b20f90f04d6b2b9b0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimitiveFiniteConsumer/Variant63fda3768ac477d27a2bc0511f47fe092deacc3e25a3d1b6e645e378493c6cc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e632232988d9c9bdd533f12e1d11166c9dc4bdb3cb5d7e0f420679144f62af59",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimitiveFiniteConsumer/Variant63fda3768ac477d27a2bc0511f47fe092deacc3e25a3d1b6e645e378493c6cc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29c6eded-9b5c-db8c-db0c-4d16c2fd385e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem global_second_primitive_budget_iff_finite_readout :
    (∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, Real.log 2 ≤ t →
      |∫ s in Real.log 2..t,
        criticalPrimitive s - criticalPrimitive (Real.log 2)| ≤ M * (t - Real.log 2)) ↔
    (∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, Real.log 2 ≤ t →
      |actualFiniteSecondReadout t| ≤ M * (t - Real.log 2)) := by
  constructor
  · rintro ⟨M, hM, h⟩
    refine ⟨M, hM, ?_⟩
    intro t ht
    rw [← actual_nested_primitive_eq_finite_readout t ht]
    exact h t ht
  · rintro ⟨M, hM, h⟩
    refine ⟨M, hM, ?_⟩
    intro t ht
    rw [actual_nested_primitive_eq_finite_readout t ht]
    exact h t ht

end FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimitiveFiniteConsumer/Variant63fda3768ac477d27a2bc0511f47fe092deacc3e25a3d1b6e645e378493c6cc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimitiveFiniteConsumer/Variant63fda3768ac477d27a2bc0511f47fe092deacc3e25a3d1b6e645e378493c6cc8.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d381f074dfbb77878f50b20f90f04d6b2b9b0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
