# Sites.pullbackCopullbackAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43650c36e2c6b052ea37c78fcb434669da8ed430461a04a1b96a1599fe8a7da9",
  "kind": "def",
  "lexical_name": "Sites.pullbackCopullbackAdjunction",
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
  "slug": "sites-pullbackcopullbackadjunction--f57c00664e034497c2581c21",
  "source": {
    "blob": "c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 320,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f57c00664e034497c2581c211e1cc7dc64fc42f5ae243163899168f34bc44aa3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43650c36e2c6b052ea37c78fcb434669da8ed430461a04a1b96a1599fe8a7da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Sites.pullbackCopullbackAdjunction {G : C ⥤ D} (Hp : CoverPreserving J K G)
    (Hl : CoverLifting J K G) (Hc : CompatiblePreserving K G) :
    Sites.pullback A Hc Hp ⊣ Sites.copullback A Hl where
  homEquiv X Y :=
    { toFun := fun f => ⟨(Ran.adjunction A G.op).homEquiv X.val Y.val f.val⟩
      invFun := fun f => ⟨((Ran.adjunction A G.op).homEquiv X.val Y.val).symm f.val⟩
      left_inv := fun f => by
        ext1
        dsimp
        rw [Equiv.symm_apply_apply]
      right_inv := fun f => by
        ext1
        dsimp
        rw [Equiv.apply_symm_apply] }
  unit :=
    { app := fun X => ⟨(Ran.adjunction A G.op).unit.app X.val⟩
      naturality := fun _ _ f =>
        Sheaf.Hom.ext _ _ <| (Ran.adjunction A G.op).unit.naturality f.val }
  counit :=
    { app := fun X => ⟨(Ran.adjunction A G.op).counit.app X.val⟩
      naturality := fun _ _ f =>
        Sheaf.Hom.ext _ _ <| (Ran.adjunction A G.op).counit.naturality f.val }
  homEquiv_unit := by
    -- porting note: next line was `ext1`
    refine Sheaf.Hom.ext _ _ ?_
    apply (Ran.adjunction A G.op).homEquiv_unit
  homEquiv_counit := by
    -- porting note: next line was `ext1`
    refine Sheaf.Hom.ext _ _ ?_
    apply (Ran.adjunction A G.op).homEquiv_counit
#align category_theory.sites.pullback_copullback_adjunction CategoryTheory.Sites.pullbackCopullbackAdjunction

namespace Sites

variable
  [ConcreteCategory.{max v u} A]
  [PreservesLimits (forget A)]
  [ReflectsIsomorphisms (forget A)]
  [∀ (X : C), PreservesColimitsOfShape (J.Cover X)ᵒᵖ (forget A)]
  [∀ (X : C), HasColimitsOfShape (J.Cover X)ᵒᵖ A]
  [∀ (X : D), PreservesColimitsOfShape (K.Cover X)ᵒᵖ (forget A)]
  [∀ (X : D), HasColimitsOfShape (K.Cover X)ᵒᵖ A]

/-- The natural isomorphism exhibiting compatibility between pullback and sheafification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
