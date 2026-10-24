# EffectiveEpiFamily_descStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2eb12eea88ced4f68a3668ab6722e894aa092697a8c18c88d12808dae64e2415",
  "kind": "def",
  "lexical_name": "EffectiveEpiFamily_descStruct",
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
  "slug": "effectiveepifamily-descstruct--cd9b7a43f019340f6b580787",
  "source": {
    "blob": "82d299e2123de55049075ce472bd145a0a8e7334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 456,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd9b7a43f019340f6b58078735cb9c015ef5db7fb8145e4b2c85aa1ec48dc3a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2eb12eea88ced4f68a3668ab6722e894aa092697a8c18c88d12808dae64e2415`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EffectiveEpiFamily_descStruct {B : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [HasCoproduct X] [EffectiveEpiFamily X π] : EffectiveEpiStruct (Sigma.desc π) where
  desc e h := EffectiveEpiFamily.desc X π (fun a ↦ Sigma.ι X a ≫ e) (fun a₁ a₂ g₁ g₂ hg ↦ by
    simp only [← Category.assoc]
    apply h (g₁ ≫ Sigma.ι X a₁) (g₂ ≫ Sigma.ι X a₂)
    simpa only [Category.assoc, colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app])
  fac e h := by
    ext a
    simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app,
      EffectiveEpiFamily.fac]
  uniq e _ m hm := by
    have := EffectiveEpiFamily.uniq X π (fun a ↦ Sigma.ι X a ≫ e) ?_ m
    · apply this
      intro a
      rw [← hm]
      simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app]
    · intro Z a₁ a₂ g₁ g₂ hg
      rw [← hm]
      simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app]
      rw [← Category.assoc, hg, Category.assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d299e2123de55049075ce472bd145a0a8e7334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
