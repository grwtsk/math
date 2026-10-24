# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4244c043a28c8d7971d8726b15d412a2bab13d5663a11cb36833b3d5244fbadb",
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
  "slug": "instance--88db46dadd8c35ab3a42bba5",
  "source": {
    "blob": "1e7875a013767b81c7033db8a202723471ef5de5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 434,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant64acc0aae4ffa3db53873497b5dfaf2c69690d3b94149b39c944d95aa97f3f32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88db46dadd8c35ab3a42bba57a6ef3da9b1a217cf45f87e75ac4814816045b75",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant64acc0aae4ffa3db53873497b5dfaf2c69690d3b94149b39c944d95aa97f3f32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4244c043a28c8d7971d8726b15d412a2bab13d5663a11cb36833b3d5244fbadb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance : CreatesLimit F (forget₂ CommRingCat.{u} RingCat.{u}) :=
  /-
    A terse solution here would be
    ```
    createsLimitOfFullyFaithfulOfIso (CommRingCat.of (limit (F ⋙ forget _))) (Iso.refl _)
    ```
    but it seems this would introduce additional identity morphisms in `limit.π`.
    -/
    -- Porting note: need to add these instances manually
    have : (forget₂ CommRingCat.{u} RingCat.{u}).ReflectsIsomorphisms :=
      CategoryTheory.reflectsIsomorphisms_forget₂ _ _
    have : Small.{u} (Functor.sections ((F ⋙ forget₂ CommRingCat RingCat) ⋙ forget RingCat)) :=
      inferInstanceAs <| Small.{u} (Functor.sections (F ⋙ forget _))
    let F' := F ⋙ forget₂ CommRingCat.{u} RingCat.{u} ⋙ forget₂ RingCat.{u} SemiRingCat.{u}
    have : Small.{u} (Functor.sections (F' ⋙ forget _)) :=
      inferInstanceAs <| Small.{u} (F ⋙ forget _).sections
    let c : Cone F :=
    { pt := CommRingCat.of (Types.Small.limitCone (F ⋙ forget _)).pt
      π :=
        { app := fun x => ofHom <| SemiRingCat.limitπRingHom.{v, u} F' x
          naturality :=
            fun _ _ f => hom_ext <| RingHom.coe_inj
              ((Types.Small.limitCone (F ⋙ forget _)).π.naturality f) } }
    createsLimitOfReflectsIso fun _ t =>
    { liftedCone := c
      validLift := IsLimit.uniqueUpToIso (RingCat.limitConeIsLimit.{v, u} _) t
      makesLimit :=
        IsLimit.ofFaithful (forget₂ _ RingCat.{u})
          (RingCat.limitConeIsLimit.{v, u} (F ⋙ forget₂ CommRingCat.{u} RingCat.{u}))
          (fun s : Cone F => CommRingCat.ofHom <|
              (RingCat.limitConeIsLimit.{v, u}
                (F ⋙ forget₂ CommRingCat.{u} RingCat.{u})).lift
                ((forget₂ _ RingCat.{u}).mapCone s) |>.hom) fun _ => rfl }

/-- A choice of limit cone for a functor into `CommRingCat`.
(Generally, you'll just want to use `limit F`.)
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant64acc0aae4ffa3db53873497b5dfaf2c69690d3b94149b39c944d95aa97f3f32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant64acc0aae4ffa3db53873497b5dfaf2c69690d3b94149b39c944d95aa97f3f32.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e7875a013767b81c7033db8a202723471ef5de5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
