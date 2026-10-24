# createsLimitOfReflectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe5bb7ac1122adfb57c5004960154beca29771d13ab03abb840c160edc393a84",
  "kind": "def",
  "lexical_name": "createsLimitOfReflectsIso",
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
  "slug": "createslimitofreflectsiso--d817ce0caeebb7a8899530ba",
  "source": {
    "blob": "fdc34b33fc9de2b977fe4a6e0340624ae643bafb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 262,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d817ce0caeebb7a8899530baff51691772489bc389866339d182c0bc87f7c357",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe5bb7ac1122adfb57c5004960154beca29771d13ab03abb840c160edc393a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsLimitOfReflectsIso {K : J ⥤ C} {F : C ⥤ D} [ReflectsIsomorphisms F]
    (h : ∀ c t, LiftsToLimit K F c t) : CreatesLimit K F
    where
  lifts c t := (h c t).toLiftableCone
  toReflectsLimit :=
    { reflects := fun {d} hd => by
        let d' : Cone K := (h (F.mapCone d) hd).toLiftableCone.liftedCone
        let i : F.mapCone d' ≅ F.mapCone d :=
          (h (F.mapCone d) hd).toLiftableCone.validLift
        let hd' : IsLimit d' := (h (F.mapCone d) hd).makesLimit
        let f : d ⟶ d' := hd'.liftConeMorphism d
        have : (Cones.functoriality K F).map f = i.inv :=
          (hd.ofIsoLimit i.symm).uniq_cone_morphism
        haveI : IsIso ((Cones.functoriality K F).map f) := by
          rw [this]
          infer_instance
        haveI : IsIso f := isIso_of_reflects_iso f (Cones.functoriality K F)
        exact IsLimit.ofIsoLimit hd' (asIso f).symm }
#align category_theory.creates_limit_of_reflects_iso CategoryTheory.createsLimitOfReflectsIso

-- Notice however that even if the isomorphism is `Iso.refl _`,
-- this construction will insert additional identity morphisms in the cone maps,
-- so the constructed limits may not be ideal, definitionally.
/--
When `F` is fully faithful, to show that `F` creates the limit for `K` it suffices to exhibit a lift
of a limit cone for `K ⋙ F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc34b33fc9de2b977fe4a6e0340624ae643bafb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
