# shrinkingScalarError_exceeds_any_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46cfcd62-129d-4000-c62a-4575a7c3d369",
  "kind": "theorem",
  "lexical_name": "shrinkingScalarError_exceeds_any_budget",
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
  "slug": "shrinkingscalarerror-exceeds-any-budget--e4f017e9a59fe01bae11a978",
  "source": {
    "blob": "26ca5f84a9f4a1f8d0b9bc557d64d4e138dabc87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4f017e9a59fe01bae11a978f6672903d760636be01daf9bd1b002a4d25124b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46cfcd62-129d-4000-c62a-4575a7c3d369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shrinkingScalarError_exceeds_any_budget (D R : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ R ≤ A ∧ D < signedQuadraticValue (shrinkingScalarError A) A := by
  let A := max 1 (max R (D + 1))
  have hA : 1 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left R (D + 1)).trans (le_max_right _ _)
  have hD : D + 1 ≤ A := (le_max_right R (D + 1)).trans (le_max_right _ _)
  refine ⟨A, hA, hR, ?_⟩
  rw [shrinkingScalarError_on_growing_state hA]
  linarith

end
end FormalResearch.RiemannHypothesis.StateScaledOperatorError
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ca5f84a9f4a1f8d0b9bc557d64d4e138dabc87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
