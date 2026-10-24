# exact_complete_complex_input_class_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08669cfe-d676-bb6e-2350-3afa5d8ef205",
  "kind": "theorem",
  "lexical_name": "exact_complete_complex_input_class_budget",
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
  "slug": "exact-complete-complex-input-class-budget--afc575cf4533609e8f16af36",
  "source": {
    "blob": "38e5bd7bb792728a55a71115302c180cf264b074",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afc575cf4533609e8f16af36883451b9d8dc2999fe007e9b1cd0e805c0ac8a0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08669cfe-d676-bb6e-2350-3afa5d8ef205`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_complete_complex_input_class_budget {A a Z B : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    (∀ J : ℝ → ℂ, (∀ x : ℝ, 0 < x → ‖J x‖ ≤ x ^ a) → ‖complexTransformAt A J Z‖ ≤ B) ↔
      Z ^ a * normPrice A (a + 3 / 16) ≤ B := by
  constructor
  · intro h
    have hm := h (fun x ↦ (inputAt A a Z x : ℂ)) (fun x hx ↦ by
      simpa only [Complex.norm_real, Real.norm_eq_abs] using
        matching_input_retains_class_at_every_scale hZ A a x hx)
    rw [embedded_matching_input_attains_complete_complex_price hA hZ] at hm
    exact hm
  · intro h J hJ
    exact (complete_complex_magnitude_triangle hA hZ J hJ).trans h

end
end GRWTSK.RiemannHypothesis.Conversation.ActualComplexTransformBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38e5bd7bb792728a55a71115302c180cf264b074` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
