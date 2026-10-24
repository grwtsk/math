# _root_.BoundedVariationOn.ae_differentiableAt_of_mem_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f104d6db86e4506db5334ea53dff4a8dce0bb352",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90f37c0e-909a-e1d1-2764-293941d2d58f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:641f1bb3-0a58-d45e-7e1c-0c4d040ee0b9",
  "kind": "theorem",
  "lexical_name": "_root_.BoundedVariationOn.ae_differentiableAt_of_mem_uIcc",
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
  "slug": "root-boundedvariationon-ae-differentiableat-of-mem-uicc--55097c426fb0fa22b0b0d9d0",
  "source": {
    "blob": "f104d6db86e4506db5334ea53dff4a8dce0bb352",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55097c426fb0fa22b0b0d9d0748078c103e2293b673622a1aa88027e5f926af6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:641f1bb3-0a58-d45e-7e1c-0c4d040ee0b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.BoundedVariationOn.ae_differentiableAt_of_mem_uIcc {f : ℝ → V} {a b : ℝ}
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f104d6db86e4506db5334ea53dff4a8dce0bb352` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
