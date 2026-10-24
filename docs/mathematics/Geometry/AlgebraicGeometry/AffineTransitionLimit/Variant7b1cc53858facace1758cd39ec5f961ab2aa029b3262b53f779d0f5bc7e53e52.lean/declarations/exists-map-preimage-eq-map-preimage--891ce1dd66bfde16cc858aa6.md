# exists_map_preimage_eq_map_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:853df57d-1e82-d745-8e4e-80a13474ae08",
  "kind": "lemma",
  "lexical_name": "exists_map_preimage_eq_map_preimage",
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
  "slug": "exists-map-preimage-eq-map-preimage--891ce1dd66bfde16cc858aa6",
  "source": {
    "blob": "3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 300,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891ce1dd66bfde16cc858aa6f525c6e7f576eda7ca0fe6f337c977c61465a4a2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:853df57d-1e82-d745-8e4e-80a13474ae08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_map_preimage_eq_map_preimage
    [IsCofiltered I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)]
    {i : I} {U V : (D.obj i).Opens} (hU : IsCompact (U : Set (D.obj i)))
    (hV : IsCompact (V : Set (D.obj i))) (H : c.π.app i ⁻¹ᵁ U = c.π.app i ⁻¹ᵁ V) :
    ∃ (j : I) (fji : j ⟶ i), D.map fji ⁻¹ᵁ U = D.map fji ⁻¹ᵁ V := by
  obtain ⟨j₁, fj₁i, e₁⟩ := exists_map_preimage_le_map_preimage D c hc hU H.le
  obtain ⟨j₂, fj₂i, e₂⟩ := exists_map_preimage_le_map_preimage D c hc hV H.ge
  obtain ⟨k, fkj₁, fkj₂, e⟩ := IsCofiltered.cospan fj₁i fj₂i
  refine ⟨k, fkj₁ ≫ fj₁i, le_antisymm ?_ ?_⟩
  · simpa only [Scheme.Hom.comp_preimage, Functor.map_comp] using Scheme.Hom.preimage_mono _ e₁
  · rw [e]
    simpa only [Scheme.Hom.comp_preimage, Functor.map_comp] using Scheme.Hom.preimage_mono _ e₂

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
open Scheme.Opens in
include hc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
