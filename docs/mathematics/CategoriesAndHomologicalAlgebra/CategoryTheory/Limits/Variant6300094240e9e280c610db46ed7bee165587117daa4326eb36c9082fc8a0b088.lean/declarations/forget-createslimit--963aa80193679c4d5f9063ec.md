# Forget₂.createsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b1602dfefbea9e32a4e20b8fff28e07b2fe579783b16a4948b3bc425b25603f",
  "kind": "instance",
  "lexical_name": "Forget₂.createsLimit",
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
  "slug": "forget-createslimit--963aa80193679c4d5f9063ec",
  "source": {
    "blob": "5b50cb5d76573358d73710f23a83465435a2a30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:963aa80193679c4d5f9063ecc3f86cb78a6a5908a0753a7dc1c103daaa7c8c05",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b1602dfefbea9e32a4e20b8fff28e07b2fe579783b16a4948b3bc425b25603f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance Forget₂.createsLimit :
    CreatesLimit F (forget₂ Grp.{u} MonCat.{u}) :=
  -- Porting note: need to add `forget₂ GrpCat MonCat` reflects isomorphism
  letI : (forget₂ Grp.{u} MonCat.{u}).ReflectsIsomorphisms :=
    CategoryTheory.reflectsIsomorphisms_forget₂ _ _
  createsLimitOfReflectsIso (K := F) (F := (forget₂ Grp.{u} MonCat.{u}))
    fun c' t =>
      have : Small.{u} (Functor.sections ((F ⋙ forget₂ Grp MonCat) ⋙ forget MonCat)) := by
        have : HasLimit (F ⋙ forget₂ Grp MonCat) := ⟨_, t⟩
        apply Concrete.small_sections_of_hasLimit (F ⋙ forget₂ Grp MonCat)
      have : Small.{u} (Functor.sections (F ⋙ forget Grp)) := inferInstanceAs <| Small.{u}
        (Functor.sections ((F ⋙ forget₂ Grp MonCat) ⋙ forget MonCat))
      { liftedCone :=
          { pt := Grp.of (Types.Small.limitCone (F ⋙ forget Grp)).pt
            π :=
              { app j := ofHom <| MonCat.limitπMonoidHom (F ⋙ forget₂ Grp MonCat) j
                naturality i j h:= hom_ext <| congr_arg MonCat.Hom.hom <|
                  (MonCat.HasLimits.limitCone
                        (F ⋙ forget₂ Grp MonCat.{u})).π.naturality h } }
        validLift := by apply IsLimit.uniqueUpToIso (MonCat.HasLimits.limitConeIsLimit.{v, u} _) t
        makesLimit :=
         IsLimit.ofFaithful (forget₂ Grp MonCat.{u}) (MonCat.HasLimits.limitConeIsLimit _)
          (fun _ => _) fun _ => rfl }

/-- A choice of limit cone for a functor into `Grp`.
(Generally, you'll just want to use `limit F`.)
-/
@[to_additive "A choice of limit cone for a functor into `Grp`.
  (Generally, you'll just want to use `limit F`.)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b50cb5d76573358d73710f23a83465435a2a30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
