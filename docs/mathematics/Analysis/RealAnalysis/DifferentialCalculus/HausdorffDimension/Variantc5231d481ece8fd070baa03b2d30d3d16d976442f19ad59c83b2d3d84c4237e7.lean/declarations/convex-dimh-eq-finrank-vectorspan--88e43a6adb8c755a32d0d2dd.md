# Convex.dimH_eq_finrank_vectorSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef6dbf3a-f476-3894-56f9-7763d1e22e8d",
  "kind": "theorem",
  "lexical_name": "Convex.dimH_eq_finrank_vectorSpan",
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
  "slug": "convex-dimh-eq-finrank-vectorspan--88e43a6adb8c755a32d0d2dd",
  "source": {
    "blob": "722a8626b2272a9b5221703899750e6333813295",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 486,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88e43a6adb8c755a32d0d2dd6c1d81eef9b22eb9e27c2766bc6a46c73eea076a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef6dbf3a-f476-3894-56f9-7763d1e22e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.dimH_eq_finrank_vectorSpan {s : Set E} (hcvx : Convex ℝ s) (hne : s.Nonempty) :
    dimH s = finrank ℝ (vectorSpan ℝ s) := by
  have := hne.to_subtype
  let φ := AffineIsometryEquiv.constVSub ℝ
    (⟨hne.some, subset_affineSpan ℝ s hne.some_mem⟩ : affineSpan ℝ s)
  have hs_eq : s = (↑) '' ((↑) ⁻¹' s : Set (affineSpan ℝ s)) :=
    (image_preimage_eq_of_subset <| (subset_affineSpan ℝ s).trans Subtype.range_coe.superset).symm
  rw [hs_eq, isometry_subtype_coe.dimH_image, ← φ.isometry.dimH_image,
      Real.dimH_of_nonempty_interior, direction_affineSpan ℝ s, ← hs_eq]
  simp_rw [← AffineIsometryEquiv.coe_toHomeomorph, ← φ.toHomeomorph.image_interior, image_nonempty]
  simpa [intrinsicInterior] using (intrinsicInterior_nonempty hcvx).mpr hne

variable (E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `722a8626b2272a9b5221703899750e6333813295` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
