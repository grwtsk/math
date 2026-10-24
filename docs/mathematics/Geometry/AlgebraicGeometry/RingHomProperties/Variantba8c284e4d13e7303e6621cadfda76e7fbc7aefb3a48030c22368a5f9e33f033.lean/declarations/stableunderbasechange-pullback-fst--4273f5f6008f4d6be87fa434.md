# StableUnderBaseChange.Γ_pullback_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2c96969-65ef-260c-76eb-e1f1eefb83bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:360d78d4-50b3-5b08-2d1e-cbbf2cfe1953",
  "kind": "theorem",
  "lexical_name": "StableUnderBaseChange.Γ_pullback_fst",
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
  "slug": "stableunderbasechange-pullback-fst--4273f5f6008f4d6be87fa434",
  "source": {
    "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 141,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4273f5f6008f4d6be87fa43435653b5bfc1a0a4c2ad158da30107cf348d6f2af",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:360d78d4-50b3-5b08-2d1e-cbbf2cfe1953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StableUnderBaseChange.Γ_pullback_fst (hP : StableUnderBaseChange @P) (hP' : RespectsIso @P)
    {X Y S : Scheme} [IsAffine X] [IsAffine Y] [IsAffine S] (f : X ⟶ S) (g : Y ⟶ S)
    (H : P (Scheme.Γ.map g.op)) : P (Scheme.Γ.map (pullback.fst : pullback f g ⟶ _).op) := by
  -- Porting note : change `rw` to `erw`
  erw [← PreservesPullback.iso_inv_fst AffineScheme.forgetToScheme (AffineScheme.ofHom f)
      (AffineScheme.ofHom g)]
  rw [op_comp, Functor.map_comp, hP'.cancel_right_isIso, AffineScheme.forgetToScheme_map]
  have :=
    _root_.congr_arg Quiver.Hom.unop
      (PreservesPullback.iso_hom_fst AffineScheme.Γ.rightOp (AffineScheme.ofHom f)
        (AffineScheme.ofHom g))
  simp only [Quiver.Hom.unop_op, Functor.rightOp_map, unop_comp] at this
  delta AffineScheme.Γ at this
  simp only [Quiver.Hom.unop_op, Functor.comp_map, AffineScheme.forgetToScheme_map,
    Functor.op_map] at this
  rw [← this, hP'.cancel_right_isIso,
    ←pushoutIsoUnopPullback_inl_hom (Quiver.Hom.unop _) (Quiver.Hom.unop _),
    hP'.cancel_right_isIso]
  exact hP.pushout_inl _ hP' _ _ H
#align ring_hom.stable_under_base_change.Γ_pullback_fst RingHom.StableUnderBaseChange.Γ_pullback_fst

end RingHom

namespace AlgebraicGeometry

/-- For `P` a property of ring homomorphisms, `sourceAffineLocally P` holds for `f : X ⟶ Y`
whenever `P` holds for the restriction of `f` on every affine open subset of `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
