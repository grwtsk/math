# BinaryCofan.isColimitCompLeftIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0099096c59ee53b50971cc0cb02c51825deb51e92138367836fcf69c36fdb537",
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
  "slug": "binarycofan-iscolimitcompleftiso--9c244a7ab8280cd136d7b4b1",
  "source": {
    "blob": "85a03d97b06acd4b187782cd2ef5193c4c5e88aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 492,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c244a7ab8280cd136d7b4b1deed7c74b7e7a9f9dbbfb7c190e37737188c57e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0099096c59ee53b50971cc0cb02c51825deb51e92138367836fcf69c36fdb537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–513.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a03d97b06acd4b187782cd2ef5193c4c5e88aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
