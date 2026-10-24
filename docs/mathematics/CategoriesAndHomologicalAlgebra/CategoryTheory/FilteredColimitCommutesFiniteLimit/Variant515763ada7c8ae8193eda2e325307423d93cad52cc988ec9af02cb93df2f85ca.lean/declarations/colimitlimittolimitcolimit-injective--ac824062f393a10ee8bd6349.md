# colimitLimitToLimitColimit_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e7d8f7c12f4fd9dcbe0192c273b8d03f9a567b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:962d036c-0bc0-632d-3702-5f6a7ac428b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aeec5587-db98-534c-1e9b-3241d5a2e3a6",
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
  "slug": "colimitlimittolimitcolimit-injective--ac824062f393a10ee8bd6349",
  "source": {
    "blob": "1e7d8f7c12f4fd9dcbe0192c273b8d03f9a567b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac824062f393a10ee8bd6349b67ee011ae43c087a3c0e5afe543b66e0dee8e1d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeec5587-db98-534c-1e9b-3241d5a2e3a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–162.

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
    obtain ⟨kx, x, rfl⟩ := jointly_surjective' x
    obtain ⟨ky, y, rfl⟩ := jointly_surjective' y
    dsimp at x y
    -- Since the images of `x` and `y` are equal in a limit, they are equal componentwise
    -- (indexed by `j : J`),
    have h (j : J) :
        (colimit.ι ((curry.obj F).obj j) kx)
          ((limit.π ((curry.obj (swap K J ⋙ F)).obj kx) j) x) =
        (colimit.ι ((curry.obj F).obj j) ky)
          ((limit.π ((curry.obj (swap K J ⋙ F)).obj ky) j) y) := by
      simpa using! ConcreteCategory.congr_arg (limit.π (curry.obj F ⋙ colim) j) h
    -- and they are equations in a filtered colimit,
    -- so for each `j` we have some place `k j` to the right of both `kx` and `ky`
    simp only [colimit_eq_iff] at h
    let k j := (h j).choose
    let f : ∀ j, kx ⟶ k j := fun j => (h j).choose_spec.choose
    let g : ∀ j, ky ⟶ k j := fun j => (h j).choose_spec.choose_spec.choose
    -- where the images of the components of the representatives become equal:
    have w :
      ∀ j, F.map (𝟙 j ×ₘ f j) (limit.π ((curry.obj (swap K J ⋙ F)).obj kx) j x) =
          F.map (𝟙 j ×ₘ g j) (limit.π ((curry.obj (swap K J ⋙ F)).obj ky) j y) :=
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
            simp only [true_and, Finset.mem_univ,
              Finset.mem_image]
            refine ⟨j, ?_⟩
            simp only))
    have gH :
      ∀ j, (⟨ky, k j, kyO, kjO j, g j⟩ : Σ' (X Y : K) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H :=
      fun j =>
      Finset.mem_union.mpr
        (Or.inr
          (by
            simp only [true_and, Finset.mem_univ,
              Finset.mem_image]
            refine ⟨j, ?_⟩
            simp only))
    -- Our goal is now an equation between equivalence classes of representatives of a colimit,
    -- and so it suffices to show those representative become equal somewhere, in particular at `S`.
    apply colimit_sound' (T kxO) (T kyO)
    -- We can check if two elements of a limit (in `Type`)
    -- are equal by comparing them componentwise.
    ext j
    -- Now it's just a calculation using `W` and `w`.
    simp only [Functor.comp_map]
    rw [← W _ _ (fH j), ← W _ _ (gH j)]
    simpa [-curry_obj_obj_obj] using! congrArg _ (w j)

end

end

section

variable {J : Type u₁} {K : Type u₂} [SmallCategory J] [Category.{v₂} K] [Small.{v} K]

variable [FinCategory J]

variable (F : J × K ⥤ Type v)

open CategoryTheory.Prod

variable [IsFiltered K]

/-- This follows the proof from `Borceux, Handbook of categorical algebra 1, Theorem 2.13.4`
although with different names.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e7d8f7c12f4fd9dcbe0192c273b8d03f9a567b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
