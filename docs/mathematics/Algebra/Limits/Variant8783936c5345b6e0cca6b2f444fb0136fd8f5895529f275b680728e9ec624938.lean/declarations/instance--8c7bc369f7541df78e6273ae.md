# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa60a4d10f8b94a82479bbe03eff04ebae8c3477edf86589e536e0dabf644f42",
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
  "slug": "instance--8c7bc369f7541df78e6273ae",
  "source": {
    "blob": "c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 231,
    "path": "GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c7bc369f7541df78e6273ae5bc57840245a7ea033cbe779c8e1e46bc582842b",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa60a4d10f8b94a82479bbe03eff04ebae8c3477edf86589e536e0dabf644f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (F : J ⥤ CommSemiRingCatMax.{v, u}) :
    CreatesLimit F (forget₂ CommSemiRingCatMax.{v, u} SemiRingCatMax.{v, u}) :=
  -- Porting note : `CommSemiRingCat ⥤ Type` reflecting isomorphism is needed to make Lean see that
  -- `CommSemiRingCat ⥤ SemiRingCat` reflects isomorphism. `CommSemiRingCat ⥤ Type` reflecting
  -- isomorphism is added manually since Lean can't see it, but even with this addition Lean can not
  -- see `CommSemiRingCat ⥤ SemiRingCat` reflects isomorphism, so this instance is also added.
  letI : ReflectsIsomorphisms (forget CommSemiRingCatMax.{v, u}) :=
    CommSemiRingCat.forgetReflectIsos.{max v u}
  letI : ReflectsIsomorphisms
    (forget₂ CommSemiRingCatMax.{v, u} SemiRingCatMax.{v, u}) :=
    CategoryTheory.reflectsIsomorphisms_forget₂ CommSemiRingCatMax.{v, u} SemiRingCatMax.{v, u}
  let c : Cone F :=
    { pt := CommSemiRingCat.of (Types.limitCone (F ⋙ forget _)).pt
      π :=
        { app := fun j => CommSemiRingCat.ofHom <| SemiRingCat.limitπRingHom.{v, u} (J := J)
            (F ⋙ forget₂ CommSemiRingCatMax.{v, u} SemiRingCatMax.{v, u}) j
          naturality := (SemiRingCat.HasLimits.limitCone.{v, u}
            (F ⋙ forget₂ CommSemiRingCatMax.{v, u} SemiRingCatMax.{v, u})).π.naturality } }
  createsLimitOfReflectsIso fun c' t =>
    { liftedCone := c
      validLift := IsLimit.uniqueUpToIso (SemiRingCat.HasLimits.limitConeIsLimit.{v, u} _) t
      makesLimit := by
        refine IsLimit.ofFaithful (forget₂ CommSemiRingCatMax.{v, u} SemiRingCatMax.{v, u})
          (SemiRingCat.HasLimits.limitConeIsLimit.{v, u} _)
          (fun s : Cone F => CommSemiRingCat.ofHom
            ⟨⟨⟨_, Subtype.ext <| funext fun j => by exact (s.π.app j).map_one⟩,
            fun x y => Subtype.ext <| funext fun j => by exact (s.π.app j).map_mul x y⟩,
            Subtype.ext <| funext fun j => by exact (s.π.app j).map_zero,
            fun x y => Subtype.ext <| funext fun j => by exact (s.π.app j).map_add x y⟩)
          fun s => rfl }

/-- A choice of limit cone for a functor into `CommSemiRingCat`.
(Generally, you'll just want to use `limit F`.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
