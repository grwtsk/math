# Convex.image_sub_le_mul_sub_of_deriv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe34dfb80ba0802446fafe28400db8cb8f175452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 355,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90cb5f99c0e0d1b136daaf35df850d201742bcdb0be140c734c7fcfd4b67e782.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08895862-7419-4d4a-d8d1-96d641f3b85f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17a84c1f-b7b5-07c6-8d2f-c0e1183df385",
  "kind": "theorem",
  "lexical_name": "Convex.image_sub_le_mul_sub_of_deriv_le",
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
  "slug": "convex-image-sub-le-mul-sub-of-deriv-le--bd0208a2d751ce1ba2d23353",
  "source": {
    "blob": "fe34dfb80ba0802446fafe28400db8cb8f175452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 355,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant90cb5f99c0e0d1b136daaf35df850d201742bcdb0be140c734c7fcfd4b67e782.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd0208a2d751ce1ba2d23353e91ea97811f739a13e2101766f7ebfaa14992725",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant90cb5f99c0e0d1b136daaf35df850d201742bcdb0be140c734c7fcfd4b67e782.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17a84c1f-b7b5-07c6-8d2f-c0e1183df385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.image_sub_le_mul_sub_of_deriv_le {D : Set ℝ} (hD : Convex ℝ D) {f : ℝ → ℝ}
    (hf : ContinuousOn f D) (hf' : DifferentiableOn ℝ f (interior D)) {C}
    (le_hf' : ∀ x ∈ interior D, deriv f x ≤ C) (x : ℝ) (hx : x ∈ D) (y : ℝ) (hy : y ∈ D)
    (hxy : x ≤ y) : f y - f x ≤ C * (y - x) := by
  have hf'_ge : ∀ x ∈ interior D, -C ≤ deriv (fun y => -f y) x := fun x hx => by
    rw [deriv.fun_neg, neg_le_neg_iff]
    exact le_hf' x hx
  linarith [hD.mul_sub_le_image_sub_of_le_deriv hf.fun_neg hf'.neg hf'_ge x hx y hy hxy]

/-- Let `f : ℝ → ℝ` be a differentiable function. If `f' ≤ C`, then `f` grows at most as fast
as `C * x`, i.e., `f y - f x ≤ C * (y - x)` whenever `x ≤ y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant90cb5f99c0e0d1b136daaf35df850d201742bcdb0be140c734c7fcfd4b67e782.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant90cb5f99c0e0d1b136daaf35df850d201742bcdb0be140c734c7fcfd4b67e782.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe34dfb80ba0802446fafe28400db8cb8f175452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
