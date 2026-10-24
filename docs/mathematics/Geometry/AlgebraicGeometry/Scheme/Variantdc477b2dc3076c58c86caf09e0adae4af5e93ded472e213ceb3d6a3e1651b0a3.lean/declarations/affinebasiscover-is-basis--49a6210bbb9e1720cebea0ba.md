# affineBasisCover_is_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f40e7f6-79dc-0761-23ef-ee6ca2a9b68f",
  "kind": "theorem",
  "lexical_name": "affineBasisCover_is_basis",
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
  "slug": "affinebasiscover-is-basis--49a6210bbb9e1720cebea0ba",
  "source": {
    "blob": "83eaa0289eaf8fd200ee135abb4e3faa358d9a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 270,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49a6210bbb9e1720cebea0ba511c08f4a00a5705476541df1c201864345d9bd4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f40e7f6-79dc-0761-23ef-ee6ca2a9b68f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineBasisCover_is_basis (X : Scheme) :
    TopologicalSpace.IsTopologicalBasis
      {x : Set X |
        ∃ a : X.affineBasisCover.J, x = Set.range (X.affineBasisCover.map a).1.base} := by
  apply TopologicalSpace.isTopologicalBasis_of_open_of_nhds
  · rintro _ ⟨a, rfl⟩
    exact IsOpenImmersion.open_range (X.affineBasisCover.map a)
  · rintro a U haU hU
    rcases X.affineCover.Covers a with ⟨x, e⟩
    let U' := (X.affineCover.map (X.affineCover.f a)).1.base ⁻¹' U
    have hxU' : x ∈ U' := by rw [← e] at haU; exact haU
    rcases PrimeSpectrum.isBasis_basic_opens.exists_subset_of_mem_open hxU'
        ((X.affineCover.map (X.affineCover.f a)).1.base.continuous_toFun.isOpen_preimage _
          hU) with
      ⟨_, ⟨_, ⟨s, rfl⟩, rfl⟩, hxV, hVU⟩
    refine' ⟨_, ⟨⟨_, s⟩, rfl⟩, _, _⟩ <;> erw [affineBasisCover_map_range]
    · exact ⟨x, hxV, e⟩
    · rw [Set.image_subset_iff]; exact hVU
#align algebraic_geometry.Scheme.affine_basis_cover_is_basis AlgebraicGeometry.Scheme.affineBasisCover_is_basis

/-- Every open cover of a quasi-compact scheme can be refined into a finite subcover.
-/
@[simps! obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83eaa0289eaf8fd200ee135abb4e3faa358d9a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
