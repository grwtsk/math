# totallyBounded_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:894bc23c-c630-5b8d-5af8-bd46fec0ed9f",
  "kind": "theorem",
  "lexical_name": "totallyBounded_convexHull",
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
  "slug": "totallybounded-convexhull--c1a2ea2e6e15194fe1362972",
  "source": {
    "blob": "193cd52befddcd9c96d39adf15407a8d918638bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a2ea2e6e15194fe1362972239cab354fd2130f2d126cefd03980b27c160a91",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:894bc23c-c630-5b8d-5af8-bd46fec0ed9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totallyBounded_convexHull (hs : TotallyBounded s) :
    TotallyBounded (convexHull ℝ s) := by
  rw [totallyBounded_iff_subset_finite_iUnion_nhds_zero]
  intro U hU
  obtain ⟨W, hW₁, hW₂⟩ := exists_nhds_zero_half hU
  obtain ⟨V, ⟨hV₁, hV₂, hV₃⟩⟩ := (locallyConvexSpace_iff_exists_convex_subset_zero ℝ E).mp lcs W hW₁
  obtain ⟨t, ⟨htf, hts⟩⟩ := (totallyBounded_iff_subset_finite_iUnion_nhds_zero.mp hs) _ hV₁
  obtain ⟨t', ⟨htf', hts'⟩⟩ := (totallyBounded_iff_subset_finite_iUnion_nhds_zero.mp
    (IsCompact.totallyBounded (Finite.isCompact_convexHull htf)) _ hV₁)
  use t', htf'
  simp only [iUnion_vadd_set, vadd_eq_add] at hts hts' ⊢
  calc convexHull ℝ s
    _ ⊆ convexHull ℝ (t + V) := convexHull_mono hts
    _ ⊆ convexHull ℝ t + convexHull ℝ V := convexHull_add_subset
    _ = convexHull ℝ t + V := by rw [hV₂.convexHull_eq]
    _ ⊆ t' + V + V := add_subset_add_right hts'
    _ = t' + (V + V) := by rw [add_assoc]
    _ ⊆ t' + (W + W) := add_subset_add_left (add_subset_add hV₃ hV₃)
    _ ⊆ t' + U := add_subset_add_left (add_subset_iff.mpr hW₂)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `193cd52befddcd9c96d39adf15407a8d918638bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
