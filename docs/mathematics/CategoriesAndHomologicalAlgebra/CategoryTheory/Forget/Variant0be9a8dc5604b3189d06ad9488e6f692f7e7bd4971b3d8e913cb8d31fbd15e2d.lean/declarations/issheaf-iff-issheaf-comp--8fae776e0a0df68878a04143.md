# isSheaf_iff_isSheaf_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6e52b0cd5eac929436817660f73cbc97009e04b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e618985a-9f10-94f9-d942-cdabea18546b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf5e203e-8d56-cc70-d67e-6c7a6e5e73ca",
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
  "slug": "issheaf-iff-issheaf-comp--8fae776e0a0df68878a04143",
  "source": {
    "blob": "e6e52b0cd5eac929436817660f73cbc97009e04b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fae776e0a0df68878a041430d80a3b74f1007b62609f35283eea7d820cf569f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf5e203e-8d56-cc70-d67e-6c7a6e5e73ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–243.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6e52b0cd5eac929436817660f73cbc97009e04b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
