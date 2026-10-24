# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62d8145c0c1147aa6c1ddfd33d497bdcf51a2c0a633704ef329f598a05e23d92",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0f9c1ff84ef61147ee1f3760",
  "source": {
    "blob": "d984fdfbd8d114e02833706ddaeb2b8921702907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f9c1ff84ef61147ee1f37601cb6707940046051a58c7eeea307bcfba72acc9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62d8145c0c1147aa6c1ddfd33d497bdcf51a2c0a633704ef329f598a05e23d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MorphismProperty.IsStableUnderFilteredColimits.{v', u'}
    (monomorphisms (Type u)) where
  isStableUnderColimitsOfShape J _ _ := ⟨fun F₁ F₂ c₁ c₂ hc₁ hc₂ f hf φ hφ ↦ by
    simp only [functorCategory, monomorphisms.iff, mono_iff_injective] at hf ⊢
    replace hφ (j : J) := congr_hom (hφ j)
    simp only [Functor.const_obj_obj, comp_apply] at hφ
    intro x₁ y₁ h
    obtain ⟨j, x₁, y₁, rfl, rfl⟩ : ∃ (j : J) (x₁' y₁' : F₁.obj j),
        x₁ = c₁.ι.app j x₁' ∧ y₁ = c₁.ι.app j y₁' := by
      obtain ⟨j, x₁, rfl⟩ := Types.jointly_surjective_of_isColimit hc₁ x₁
      obtain ⟨l, y₁, rfl⟩ := Types.jointly_surjective_of_isColimit hc₁ y₁
      exact ⟨_,  _, _, congr_hom (c₁.w (IsFiltered.leftToMax j l)).symm _,
        congr_hom (c₁.w (IsFiltered.rightToMax j l)).symm _⟩
    simp only [Functor.const_obj_obj, hφ] at h
    obtain ⟨k, α, hk⟩ := (Types.FilteredColimit.isColimit_eq_iff' hc₂ _ _).1 h
    simp only [← NatTrans.naturality_apply] at hk
    rw [← c₁.w α, comp_apply, comp_apply, hf _ hk]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d984fdfbd8d114e02833706ddaeb2b8921702907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
