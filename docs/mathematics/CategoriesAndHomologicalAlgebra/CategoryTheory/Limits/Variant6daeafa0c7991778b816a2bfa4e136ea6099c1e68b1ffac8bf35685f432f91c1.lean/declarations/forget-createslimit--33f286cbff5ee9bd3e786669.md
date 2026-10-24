# Forget₂.createsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f19b4c6b9ca880c86e5c4fb5767d26758783e9d29a4e1c17af94354122c7e53e",
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
  "slug": "forget-createslimit--33f286cbff5ee9bd3e786669",
  "source": {
    "blob": "6eea41ba0294d30b1d45b8bdb67a627bb203e942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6daeafa0c7991778b816a2bfa4e136ea6099c1e68b1ffac8bf35685f432f91c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33f286cbff5ee9bd3e78666968e2b1cabd989087e7fcf7f5e0a4bbefd5144f51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6daeafa0c7991778b816a2bfa4e136ea6099c1e68b1ffac8bf35685f432f91c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f19b4c6b9ca880c86e5c4fb5767d26758783e9d29a4e1c17af94354122c7e53e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance Forget₂.createsLimit :
    CreatesLimit F (forget₂ CommGrp Grp.{u}) :=
  createsLimitOfReflectsIso (fun c hc => by
    have : HasLimit _ := ⟨_, hc⟩
    have : Small.{u} (F ⋙ forget CommGrp).sections :=
      Concrete.small_sections_of_hasLimit (F ⋙ forget₂ CommGrp Grp)
    have : Small.{u} ((F ⋙ forget₂ CommGrp Grp ⋙ forget₂ Grp MonCat) ⋙
      forget MonCat).sections := this
    have : Small.{u} ((F ⋙ forget₂ CommGrp Grp) ⋙ forget Grp).sections := this
    exact
      { liftedCone :=
          { pt := CommGrp.of (Types.Small.limitCone.{v, u} (F ⋙ forget CommGrp)).pt
            π :=
              { app j := ofHom <| MonCat.limitπMonoidHom
                  (F ⋙ forget₂ CommGrp Grp.{u} ⋙ forget₂ Grp MonCat.{u}) j
                naturality i j h := hom_ext <| congr_arg MonCat.Hom.hom <|
                  (MonCat.HasLimits.limitCone _).π.naturality h } }
        validLift := by apply IsLimit.uniqueUpToIso (Grp.limitConeIsLimit _) hc
        makesLimit :=
          IsLimit.ofFaithful (forget₂ _ Grp.{u} ⋙ forget₂ _ MonCat.{u})
            (by apply MonCat.HasLimits.limitConeIsLimit _) (fun s => _) fun s => rfl })

section

variable [Small.{u} (Functor.sections (F ⋙ forget CommGrp))]

/-- A choice of limit cone for a functor into `CommGrp`.
(Generally, you'll just want to use `limit F`.)
-/
@[to_additive
  "A choice of limit cone for a functor into `AddCommGrp`.
  (Generally, you'll just want to use `limit F`.)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6daeafa0c7991778b816a2bfa4e136ea6099c1e68b1ffac8bf35685f432f91c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6daeafa0c7991778b816a2bfa4e136ea6099c1e68b1ffac8bf35685f432f91c1.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eea41ba0294d30b1d45b8bdb67a627bb203e942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
