# colimitLimitToLimitColimit_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53b2001d-cde5-ad18-00d0-e147f62da542",
  "kind": "theorem",
  "lexical_name": "colimitLimitToLimitColimit_surjective",
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
  "slug": "colimitlimittolimitcolimit-surjective--0b123ec3b5cdb20259d2a045",
  "source": {
    "blob": "a8bb1622c853c52dfc3240a13e8efc7c20df4790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b123ec3b5cdb20259d2a045604e3a87404fe3ea82ede109f585aa0f7209a1d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53b2001d-cde5-ad18-00d0-e147f62da542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitLimitToLimitColimit_surjective :
    Function.Surjective (colimitLimitToLimitColimit F) := by
  classical
    -- We begin with some element `x` in the limit (over J) over the colimits (over K),
    intro x
    -- This consists of some coherent family of elements in the various colimits,
    -- and so our first task is to pick representatives of these elements.
    have z := fun j => jointly_surjective' (limit.π (curry.obj F ⋙ Limits.colim) j x)
    -- `k : J ⟶ K` records where the representative of the
    -- element in the `j`-th element of `x` lives
    let k : J → K := fun j => (z j).choose
    -- `y j : F.obj (j, k j)` is the representative
    let y : ∀ j, F.obj (j, k j) := fun j => (z j).choose_spec.choose
    -- and we record that these representatives, when mapped back into the relevant colimits,
    -- are actually the components of `x`.
    have e : ∀ j,
        colimit.ι ((curry.obj F).obj j) (k j) (y j) = limit.π (curry.obj F ⋙ Limits.colim) j x :=
      fun j => (z j).choose_spec.choose_spec
    clear_value k y
    -- A little tidying up of things we no longer need.
    clear z
    -- As a first step, we use that `K` is filtered to pick some point `k' : K` above all the `k j`
    let k' : K := IsFiltered.sup (Finset.univ.image k) ∅
    -- and name the morphisms as `g j : k j ⟶ k'`.
    have g : ∀ j, k j ⟶ k' := fun j => IsFiltered.toSup (Finset.univ.image k) ∅ (by simp)
    clear_value k'
    -- Recalling that the components of `x`, which are indexed by `j : J`, are "coherent",
    -- in other words preserved by morphisms in the `J` direction,
    -- we see that for any morphism `f : j ⟶ j'` in `J`,
    -- the images of `y j` and `y j'`, when mapped to `F.obj (j', k')` respectively by
    -- `(f, g j)` and `(𝟙 j', g j')`, both represent the same element in the colimit.
    have w :
      ∀ {j j' : J} (f : j ⟶ j'),
        colimit.ι ((curry.obj F).obj j') k' (F.map (𝟙 j' ×ₘ g j') (y j')) =
          colimit.ι ((curry.obj F).obj j') k' (F.map (f ×ₘ g j) (y j)) := by
      intro j j' f
      nth_rw 2 [← Bifunctor.diagonal']
      simp only [← curry_obj_obj_map, ← curry_obj_obj_obj, comp_apply, colimit.w_apply]
      rw [e, ← limit.w_apply _ f, ← e]
      simp [← comp_apply, -types_comp_apply]
    -- Because `K` is filtered, we can restate this as saying that
    -- for each such `f`, there is some place to the right of `k'`
    -- where these images of `y j` and `y j'` become equal.
    simp_rw [colimit_eq_iff] at w
    -- We take a moment to restate `w` more conveniently.
    let kf : ∀ {j j'} (_ : j ⟶ j'), K := fun f => (w f).choose
    let gf : ∀ {j j'} (f : j ⟶ j'), k' ⟶ kf f := fun f => (w f).choose_spec.choose
    let hf : ∀ {j j'} (f : j ⟶ j'), k' ⟶ kf f := fun f =>
      (w f).choose_spec.choose_spec.choose
    have wf :
      ∀ {j j'} (f : j ⟶ j'),
        F.map (𝟙 j' ×ₘ (g j' ≫ gf f)) (y j') = F.map (f ×ₘ (g j ≫ hf f)) (y j) :=
      fun {j j'} f => by
      have q :
        ((curry.obj F).obj j').map (gf f) (F.map (𝟙 j' ×ₘ g j') (y j')) =
          ((curry.obj F).obj j').map (hf f) (F.map (f ×ₘ g j) (y j)) :=
        (w f).choose_spec.choose_spec.choose_spec
      convert! q using 1
      · simp [← comp_apply, -types_comp_apply]
      · simp [← comp_apply, -types_comp_apply, ← F.map_comp]
    clear_value kf gf hf
    -- and clean up some things that are no longer needed.
    clear w
    -- We're now ready to use the fact that `K` is filtered a second time,
    -- picking some place to the right of all of
    -- the morphisms `gf f : k' ⟶ kh f` and `hf f : k' ⟶ kf f`.
    -- At this point we're relying on there being only finitely morphisms in `J`.
    let O :=
      (Finset.univ.biUnion fun j => Finset.univ.biUnion fun j' => Finset.univ.image
        (@kf j j')) ∪ {k'}
    have kfO : ∀ {j j'} (f : j ⟶ j'), kf f ∈ O := fun {j} {j'} f =>
      Finset.mem_union.mpr
        (Or.inl
          (Finset.mem_biUnion.mpr ⟨j, Finset.mem_univ j,
            Finset.mem_biUnion.mpr ⟨j', Finset.mem_univ j',
              Finset.mem_image.mpr ⟨f, Finset.mem_univ _, rfl⟩⟩⟩))
    have k'O : k' ∈ O := Finset.mem_union.mpr (Or.inr (Finset.mem_singleton.mpr rfl))
    let H : Finset (Σ' (X Y : K) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) :=
      Finset.univ.biUnion fun j : J =>
        Finset.univ.biUnion fun j' : J =>
          Finset.univ.biUnion fun f : j ⟶ j' =>
            {⟨k', kf f, k'O, kfO f, gf f⟩, ⟨k', kf f, k'O, kfO f, hf f⟩}
    obtain ⟨k'', i', s'⟩ := IsFiltered.sup_exists O H
    -- We then restate this slightly more conveniently, as a family of morphism `i f : kf f ⟶ k''`,
    -- satisfying `gf f ≫ i f = hf f' ≫ i f'`.
    let i : ∀ {j j'} (f : j ⟶ j'), kf f ⟶ k'' := fun {j} {j'} f => i' (kfO f)
    have s : ∀ {j₁ j₂ j₃ j₄} (f : j₁ ⟶ j₂) (f' : j₃ ⟶ j₄), gf f ≫ i f = hf f' ≫ i f' := by
      intro j₁ j₂ j₃ j₄ f f'
      rw [s', s']
      · exact k'O
      · exact Finset.mem_biUnion.mpr ⟨j₃, Finset.mem_univ _,
          Finset.mem_biUnion.mpr ⟨j₄, Finset.mem_univ _,
            Finset.mem_biUnion.mpr ⟨f', Finset.mem_univ _, by
              -- This works by `simp`, but has very high variation in heartbeats.
              rw [Finset.mem_insert, PSigma.mk.injEq, heq_eq_eq, PSigma.mk.injEq, heq_eq_eq,
                PSigma.mk.injEq, heq_eq_eq, PSigma.mk.injEq, heq_eq_eq, eq_self, true_and, eq_self,
                true_and, eq_self, true_and, eq_self, true_and, Finset.mem_singleton, eq_self,
                or_true]
              trivial⟩⟩⟩
      · exact Finset.mem_biUnion.mpr ⟨j₁, Finset.mem_univ _,
          Finset.mem_biUnion.mpr ⟨j₂, Finset.mem_univ _,
            Finset.mem_biUnion.mpr ⟨f, Finset.mem_univ _, by
              -- This works by `simp`, but has very high variation in heartbeats.
              rw [Finset.mem_insert, PSigma.mk.injEq, heq_eq_eq, PSigma.mk.injEq, heq_eq_eq,
                PSigma.mk.injEq, heq_eq_eq, PSigma.mk.injEq, heq_eq_eq, eq_self, true_and, eq_self,
                true_and, eq_self, true_and, eq_self, true_and, Finset.mem_singleton, eq_self,
                true_or]
              trivial⟩⟩⟩
    clear_value i
    clear s' i' H kfO k'O O
    -- We're finally ready to construct the pre-image, and verify it really maps to `x`.
    -- ⊢ ∃ a, colimitLimitToLimitColimit F a = x
    fconstructor
    · -- We construct the pre-image (which, recall is meant to be a point
      -- in the colimit (over `K`) of the limits (over `J`)) via a representative at `k''`.
      apply colimit.ι (curry.obj (swap K J ⋙ F) ⋙ Limits.lim) k'' _
      dsimp
      -- This representative is meant to be an element of a limit,
      -- so we need to construct a family of elements in `F.obj (j, k'')` for varying `j`,
      -- then show that are coherent with respect to morphisms in the `j` direction.
      apply Limit.mk
      swap
      · -- We construct the elements as the images of the `y j`.
        exact fun j => F.map (𝟙 j ×ₘ (g j ≫ gf (𝟙 j) ≫ i (𝟙 j))) (y j)
      · -- After which it's just a calculation, using `s` and `wf`, to see they are coherent.
        dsimp
        intro j j' f
        simp only [← comp_apply, ← Functor.map_comp, prod_comp, id_comp, comp_id]
        calc
          F.map (f ×ₘ (g j ≫ gf (𝟙 j) ≫ i (𝟙 j))) (y j) =
              F.map (f ×ₘ (g j ≫ hf f ≫ i f)) (y j) := by
            rw [s (𝟙 j) f]
          _ =
              F.map (𝟙 j' ×ₘ i f) (F.map (f ×ₘ (g j ≫ hf f)) (y j)) := by
            rw [← comp_apply, ← Functor.map_comp, prod_comp, comp_id, assoc]
          _ =
              F.map (𝟙 j' ×ₘ i f) (F.map (𝟙 j' ×ₘ (g j' ≫ gf f)) (y j')) := by
            rw [← wf f]
          _ = F.map (𝟙 j' ×ₘ (g j' ≫ gf f ≫ i f)) (y j') := by
            rw [← comp_apply, ← Functor.map_comp, prod_comp, id_comp, assoc]
          _ = F.map (𝟙 j' ×ₘ (g j' ≫ gf (𝟙 j') ≫ i (𝟙 j'))) (y j') := by
            rw [s f (𝟙 j'), ← s (𝟙 j') (𝟙 j')]
    -- Finally we check that this maps to `x`.
    · -- We can do this componentwise:
      apply limit_ext
      intro j
      -- and as each component is an equation in a colimit, we can verify it by
      -- pointing out the morphism which carries one representative to the other:
      -- `simp? [← comp_apply, -types_comp_apply]` says:
      simp only [comp_obj, colim_obj, lim_obj, Bifunctor.map_id_comp, id_eq, ← comp_apply, assoc,
        ι_colimitLimitToLimitColimit_π, curry_obj_obj_obj, swap_obj]
      generalize_proofs _ _ _ _ h
      dsimp
      rw [← dsimp% e j, dsimp% Limit.π_mk _ _ h]
      dsimp only [comp_obj, colim_obj, ← curry_obj_obj_obj]
      rw [colimit_eq_iff]
      refine ⟨k'', 𝟙 k'', g j ≫ gf (𝟙 j) ≫ i (𝟙 j), ?_⟩
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8bb1622c853c52dfc3240a13e8efc7c20df4790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
