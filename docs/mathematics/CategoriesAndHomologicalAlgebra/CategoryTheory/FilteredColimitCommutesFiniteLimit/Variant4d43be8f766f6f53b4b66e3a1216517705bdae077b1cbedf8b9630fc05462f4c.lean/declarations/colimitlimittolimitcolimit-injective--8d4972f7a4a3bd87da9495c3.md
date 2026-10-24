# colimitLimitToLimitColimit_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b455702-8568-655e-6fac-c6656b0c3a0b",
  "kind": "theorem",
  "lexical_name": "colimitLimitToLimitColimit_injective",
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
  "slug": "colimitlimittolimitcolimit-injective--8d4972f7a4a3bd87da9495c3",
  "source": {
    "blob": "f2c4419a0d4d3ba3dd6b3ee58235dcececb50115",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d4972f7a4a3bd87da9495c35c5a800d19b15dd35e1a1c78fc269f784cfb2a2a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b455702-8568-655e-6fac-c6656b0c3a0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitLimitToLimitColimit_injective :
    Function.Injective (colimitLimitToLimitColimit F) := by
  classical
    cases nonempty_fintype J
    -- Suppose we have two terms `x y` in the colimit (over `K`) of the limits (over `J`),
    -- and that these have the same image under `colimitLimitToLimitColimit F`.
    intro x y h
    -- These elements of the colimit have representatives somewhere:
    obtain ⟨kx, x, rfl⟩ := jointly_surjective'.{v, v} x
    obtain ⟨ky, y, rfl⟩ := jointly_surjective'.{v, v} y
    dsimp at x y
    -- Since the images of `x` and `y` are equal in a limit, they are equal componentwise
    -- (indexed by `j : J`),
    replace h := fun j => congr_arg (limit.π (curry.obj F ⋙ colim) j) h
    -- and they are equations in a filtered colimit,
    -- so for each `j` we have some place `k j` to the right of both `kx` and `ky`
    simp [colimit_eq_iff.{v, v}] at h
    let k j := (h j).choose
    let f : ∀ j, kx ⟶ k j := fun j => (h j).choose_spec.choose
    let g : ∀ j, ky ⟶ k j := fun j => (h j).choose_spec.choose_spec.choose
    -- where the images of the components of the representatives become equal:
    have w :
      ∀ j, F.map ((𝟙 j, f j) :
        (j, kx) ⟶ (j, k j)) (limit.π ((curry.obj (swap K J ⋙ F)).obj kx) j x) =
          F.map ((𝟙 j, g j) : (j, ky) ⟶ (j, k j))
            (limit.π ((curry.obj (swap K J ⋙ F)).obj ky) j y) :=
      fun j => (h j).choose_spec.choose_spec.choose_spec
    -- We now use that `K` is filtered, picking some point to the right of all these
    -- morphisms `f j` and `g j`.
    let O : Finset K := Finset.univ.image k ∪ {kx, ky}
    have kxO : kx ∈ O := Finset.mem_union.mpr (Or.inr (by simp))
    have kyO : ky ∈ O := Finset.mem_union.mpr (Or.inr (by simp))
    have kjO : ∀ j, k j ∈ O := fun j => Finset.mem_union.mpr (Or.inl (by simp))
    let H : Finset (Σ' (X Y : K) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) :=
      (Finset.univ.image fun j : J =>
          ⟨kx, k j, kxO, Finset.mem_union.mpr (Or.inl (by simp)), f j⟩) ∪
        Finset.univ.image fun j : J => ⟨ky, k j, kyO, Finset.mem_union.mpr (Or.inl (by simp)), g j⟩
    obtain ⟨S, T, W⟩ := IsFiltered.sup_exists O H
    have fH : ∀ j, (⟨kx, k j, kxO, kjO j, f j⟩ : Σ' (X Y : K) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H :=
      fun j =>
      Finset.mem_union.mpr
        (Or.inl
          (by
            simp only [true_and_iff, Finset.mem_univ, eq_self_iff_true, exists_prop_of_true,
              Finset.mem_image, heq_iff_eq]
            refine' ⟨j, _⟩
            simp only [heq_iff_eq] ))
    have gH :
      ∀ j, (⟨ky, k j, kyO, kjO j, g j⟩ : Σ' (X Y : K) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H :=
      fun j =>
      Finset.mem_union.mpr
        (Or.inr
          (by
            simp only [true_and_iff, Finset.mem_univ, eq_self_iff_true, exists_prop_of_true,
              Finset.mem_image, heq_iff_eq]
            refine' ⟨j, _⟩
            simp only [heq_iff_eq]))
    -- Our goal is now an equation between equivalence classes of representatives of a colimit,
    -- and so it suffices to show those representative become equal somewhere, in particular at `S`.
    apply colimit_sound'.{v, v} (T kxO) (T kyO)
    -- We can check if two elements of a limit (in `Type`)
    -- are equal by comparing them componentwise.
    ext j
    -- Now it's just a calculation using `W` and `w`.
    simp only [Functor.comp_map, Limit.map_π_apply, curry_obj_map_app, swap_map]
    rw [← W _ _ (fH j)]
    rw [← W _ _ (gH j)]
    -- porting note: this was `simp [w]` in lean 3; this is presumably a confluence issue
    rw [lim_map, lim_map, Limit.map_π_apply', Limit.map_π_apply', Functor.map_comp,
      Functor.map_comp, FunctorToTypes.comp, FunctorToTypes.comp, curry_obj_map_app,
      curry_obj_map_app, curry_obj_map_app, Functor.comp_map, Functor.comp_map,
      Functor.comp_map, swap_map, swap_map, swap_map, w]
#align category_theory.limits.colimit_limit_to_limit_colimit_injective CategoryTheory.Limits.colimitLimitToLimitColimit_injective

end

variable [FinCategory J]

/-- This follows this proof from
* Borceux, Handbook of categorical algebra 1, Theorem 2.13.4
although with different names.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c4419a0d4d3ba3dd6b3ee58235dcececb50115` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
