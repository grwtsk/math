# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EVariationOnBilinearCompLe.Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.BoundedVariationOn.ae_differentiableAt_of_mem_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55df4f1f-2a0e-e10e-cb34-d72cad73b5fa",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EVariationOnBilinearCompLe.Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.BoundedVariationOn.ae_differentiableAt_of_mem_uIcc",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-evariationonbilin--c88c86b20b2daea3bdc39020",
  "source": {
    "blob": "5167835d1e349a14554ea4593a9951e47c04b705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 231,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c88c86b20b2daea3bdc390209466c3e5f06152b7157a4e02614834b2e8c4c141",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55df4f1f-2a0e-e10e-cb34-d72cad73b5fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EVariationOnBilinearCompLe.Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.BoundedVariationOn.ae_differentiableAt_of_mem_uIcc {f : ℝ → V} {a b : ℝ}
    (h : BoundedVariationOn f (uIcc a b)) : ∀ᵐ x, x ∈ uIcc a b → DifferentiableAt ℝ f x := by
  have h₁ : ∀ᵐ x, x ≠ min a b := by simp [ae_iff, measure_singleton]
  have h₂ : ∀ᵐ x, x ≠ max a b := by simp [ae_iff, measure_singleton]
  filter_upwards [h.locallyBoundedVariationOn.ae_differentiableWithinAt_of_mem, h₁, h₂]
    with x hx₁ hx₂ hx₃ hx₄
  rw [uIcc, mem_Icc] at hx₄
  exact (hx₁ hx₄).differentiableAt
    (Icc_mem_nhds (lt_of_le_of_ne hx₄.left hx₂.symm) (lt_of_le_of_ne hx₄.right hx₃))

/-- A real function into a finite-dimensional real vector space with bounded variation on a set
is differentiable almost everywhere in this set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5167835d1e349a14554ea4593a9951e47c04b705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
