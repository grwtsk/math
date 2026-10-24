# createsColimitOfReflectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f4352066d8b8608059690567d65b9ec8f7c1b1046ffb32e21302794b72acb16",
  "kind": "def",
  "lexical_name": "createsColimitOfReflectsIso",
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
  "slug": "createscolimitofreflectsiso--f7da0384b101fb400e97b694",
  "source": {
    "blob": "e503cb042d9f123a4d9b3c25a498ded56950c18b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 389,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7da0384b101fb400e97b69462cd2d8c28af92878ef72c17fe23458b7854ebbf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f4352066d8b8608059690567d65b9ec8f7c1b1046ffb32e21302794b72acb16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsColimitOfReflectsIso {K : J ⥤ C} {F : C ⥤ D} [F.ReflectsIsomorphisms]
    (h : ∀ c t, LiftsToColimit K F c t) : CreatesColimit K F where
  lifts c t := (h c t).toLiftableCocone
  toReflectsColimit :=
    { reflects := fun {d} hd => ⟨by
        let d' : Cocone K := (h (F.mapCocone d) hd).toLiftableCocone.liftedCocone
        let i : F.mapCocone d' ≅ F.mapCocone d :=
          (h (F.mapCocone d) hd).toLiftableCocone.validLift
        let hd' : IsColimit d' := (h (F.mapCocone d) hd).makesColimit
        let f : d' ⟶ d := hd'.descCoconeMorphism d
        have : (Cocone.functoriality K F).map f = i.hom :=
          (hd.ofIsoColimit i.symm).uniq_cocone_morphism
        haveI : IsIso ((Cocone.functoriality K F).map f) := by
          rw [this]
          infer_instance
        haveI := isIso_of_reflects_iso f (Cocone.functoriality K F)
        exact IsColimit.ofIsoColimit hd' (asIso f)⟩ }

/-- If `F` reflects isomorphisms and we can lift a single colimit cocone to a colimit cocone, then
`F` creates limits. Note that unlike `createsColimitOfReflectsIso`, to apply this result it is
necessary to know that `K ⋙ F` actually has a colimit. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e503cb042d9f123a4d9b3c25a498ded56950c18b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
