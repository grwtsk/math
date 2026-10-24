# BinaryCofan.isColimitCompLeftIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3be7fb061e0009ffdc3169e7bd349b4197431dd281bce5f214311af08f01202",
  "kind": "def",
  "lexical_name": "BinaryCofan.isColimitCompLeftIso",
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
  "slug": "binarycofan-iscolimitcompleftiso--b70c1eb88837d02206308b51",
  "source": {
    "blob": "83b74b9661833a18affbb9b7d69ae3b7f309f548",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 500,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b70c1eb88837d02206308b51364be35e380b5b0c933dda6a23b5967bc6d55b9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3be7fb061e0009ffdc3169e7bd349b4197431dd281bce5f214311af08f01202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def BinaryCofan.isColimitCompLeftIso {X Y X' : C} (c : BinaryCofan X Y) (f : X' ⟶ X)
    [IsIso f] (h : IsColimit c) : IsColimit (BinaryCofan.mk (f ≫ c.inl) c.inr) := by
  fapply BinaryCofan.isColimitMk
  · exact fun s => h.desc (BinaryCofan.mk (inv f ≫ s.inl) s.inr)
  · intro s
    -- Porting note: simp timed out here too
    simp only [IsColimit.fac,BinaryCofan.ι_app_left,eq_self_iff_true,
      Category.assoc,BinaryCofan.mk_inl,IsIso.hom_inv_id_assoc]
  · intro s
    -- Porting note: simp timed out here too
    simp only [IsColimit.fac,BinaryCofan.ι_app_right,eq_self_iff_true,BinaryCofan.mk_inr]
  · intro s m e₁ e₂
    apply BinaryCofan.IsColimit.hom_ext h
    · rw [← cancel_epi f]
    -- Porting note: simp timed out here too
      simpa only [IsColimit.fac,BinaryCofan.ι_app_left,eq_self_iff_true,
      Category.assoc,BinaryCofan.mk_inl,IsIso.hom_inv_id_assoc] using e₁
    -- Porting note: simp timed out here too
    · simpa only [IsColimit.fac,BinaryCofan.ι_app_right,eq_self_iff_true,BinaryCofan.mk_inr]
#align category_theory.limits.binary_cofan.is_colimit_comp_left_iso CategoryTheory.Limits.BinaryCofan.isColimitCompLeftIso

/-- If `Y' ≅ Y`, then `X ⨿ Y` also is the coproduct of `X` and `Y'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b74b9661833a18affbb9b7d69ae3b7f309f548` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
