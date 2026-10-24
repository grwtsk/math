# isSheaf_iff_isSheaf_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4899f97d-105a-2eb2-5cb2-1c7d6b951be3",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isSheaf_comp",
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
  "slug": "issheaf-iff-issheaf-comp--94adc41f25a4402769f9eac8",
  "source": {
    "blob": "10c8473198a943eb309de741cf97cabdb6386f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94adc41f25a4402769f9eac8024045d1523fc8b422926051dc40b92d9c2f2da4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4899f97d-105a-2eb2-5cb2-1c7d6b951be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem isSheaf_iff_isSheaf_comp : Presheaf.IsSheaf F ↔ Presheaf.IsSheaf (F ⋙ G) := by
  rw [Presheaf.isSheaf_iff_isSheafEqualizerProducts,
    Presheaf.isSheaf_iff_isSheafEqualizerProducts]
  constructor
  · intro S ι U
    -- We have that the sheaf condition fork for `F` is a limit fork,
    obtain ⟨t₁⟩ := S U
    -- and since `G` preserves limits, the image under `G` of this fork is a limit fork too.
    letI := preservesSmallestLimitsOfPreservesLimits G
    have t₂ := @PreservesLimit.preserves _ _ _ _ _ _ _ G _ _ t₁
    -- As we established above, that image is just the sheaf condition fork
    -- for `F ⋙ G` postcomposed with some natural isomorphism,
    have t₃ := IsLimit.ofIsoLimit t₂ (mapConeFork G F U)
    -- and as postcomposing by a natural isomorphism preserves limit cones,
    have t₄ := IsLimit.postcomposeInvEquiv _ _ t₃
    -- we have our desired conclusion.
    exact ⟨t₄⟩
  · intro S ι U
    refine' ⟨_⟩
    -- Let `f` be the universal morphism from `F.obj U` to the equalizer
    -- of the sheaf condition fork, whatever it is.
    -- Our goal is to show that this is an isomorphism.
    let f := equalizer.lift _ (w F U)
    -- If we can do that,
    suffices IsIso (G.map f) by
      skip
      -- we have that `f` itself is an isomorphism, since `G` reflects isomorphisms
      haveI : IsIso f := isIso_of_reflects_iso f G
      -- TODO package this up as a result elsewhere:
      apply IsLimit.ofIsoLimit (limit.isLimit _)
      apply Iso.symm
      fapply Cones.ext
      exact asIso f
      rintro ⟨_ | _⟩ <;>
        · simp
    · -- Returning to the task of showing that `G.map f` is an isomorphism,
      -- we note that `G.map f` is almost but not quite (see below) a morphism
      -- from the sheaf condition cone for `F ⋙ G` to the
      -- image under `G` of the equalizer cone for the sheaf condition diagram.
      let c := fork (F ⋙ G) U
      obtain ⟨hc⟩ := S U
      let d := G.mapCone (equalizer.fork (leftRes.{v} F U) (rightRes F U))
      letI := preservesSmallestLimitsOfPreservesLimits G
      have hd : IsLimit d := PreservesLimit.preserves (limit.isLimit _)
      -- Since both of these are limit cones
      -- (`c` by our hypothesis `S`, and `d` because `G` preserves limits),
      -- we hope to be able to conclude that `f` is an isomorphism.
      -- We say "not quite" above because `c` and `d` don't quite have the same shape:
      -- we need to postcompose by the natural isomorphism `diagramCompPreservesLimits`
      -- introduced above.
      let d' := (Cones.postcompose (diagramCompPreservesLimits G F U).hom).obj d
      have hd' : IsLimit d' :=
        (IsLimit.postcomposeHomEquiv (diagramCompPreservesLimits G F U : _) d).symm hd
      -- Now everything works: we verify that `f` really is a morphism between these cones:
      let f' : c ⟶ d' := Fork.mkHom (G.map f) (by
        dsimp only [diagramCompPreservesLimits, res]
        dsimp only [Fork.ι]
        -- Porting note : `ext` can't see `limit.hom_ext` applies here:
        -- See https://github.com/leanprover-community/mathlib4/issues/5229
        refine limit.hom_ext fun j => ?_
        dsimp
        simp only [Category.assoc, ← Functor.map_comp_assoc, equalizer.lift_ι,
          map_lift_piComparison_assoc]
        dsimp [res])
      -- conclude that it is an isomorphism,
      -- just because it's a morphism between two limit cones.
      haveI : IsIso f' := IsLimit.hom_isIso hc hd' f'
      -- A cone morphism is an isomorphism exactly if the morphism between the cone points is,
      -- so we're done!
      exact IsIso.of_iso ((Cones.forget _).mapIso (asIso f'))
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_sheaf_iff_is_sheaf_comp TopCat.Presheaf.isSheaf_iff_isSheaf_comp

/-!
As an example, we now have everything we need to check the sheaf condition
for a presheaf of commutative rings, merely by checking the sheaf condition
for the underlying sheaf of types.
```lean
example (X : TopCat) (F : Presheaf CommRingCat X)
    (h : Presheaf.IsSheaf (F ⋙ (forget CommRingCat))) :
    F.IsSheaf :=
(isSheaf_iff_isSheaf_comp (forget CommRingCat) F).mpr h
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c8473198a943eb309de741cf97cabdb6386f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
