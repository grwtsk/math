# createsColimitOfReflectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bebbc14e92ff02be89041a54bb9af2abd290b180f04f954584ac7fcfb5b039a1",
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
  "slug": "createscolimitofreflectsiso--2b23393592556c403d0d4941",
  "source": {
    "blob": "b88a661d98c0323cf425109885c5725a0a073b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 376,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant785f61b9eab021d0f5953f6eb5030dd98c2aa4133059f67979673bbd13f47a6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b23393592556c403d0d4941669408d418a0165ff4411b0a03725d9616572917",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant785f61b9eab021d0f5953f6eb5030dd98c2aa4133059f67979673bbd13f47a6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bebbc14e92ff02be89041a54bb9af2abd290b180f04f954584ac7fcfb5b039a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsColimitOfReflectsIso {K : J ⥤ C} {F : C ⥤ D} [ReflectsIsomorphisms F]
    (h : ∀ c t, LiftsToColimit K F c t) : CreatesColimit K F
    where
  lifts c t := (h c t).toLiftableCocone
  toReflectsColimit :=
    {
      reflects := fun {d} hd => by
        let d' : Cocone K := (h (F.mapCocone d) hd).toLiftableCocone.liftedCocone
        let i : F.mapCocone d' ≅ F.mapCocone d :=
          (h (F.mapCocone d) hd).toLiftableCocone.validLift
        let hd' : IsColimit d' := (h (F.mapCocone d) hd).makesColimit
        let f : d' ⟶ d := hd'.descCoconeMorphism d
        have : (Cocones.functoriality K F).map f = i.hom :=
          (hd.ofIsoColimit i.symm).uniq_cocone_morphism
        haveI : IsIso ((Cocones.functoriality K F).map f) := by
          rw [this]
          infer_instance
        haveI := isIso_of_reflects_iso f (Cocones.functoriality K F)
        exact IsColimit.ofIsoColimit hd' (asIso f) }
#align category_theory.creates_colimit_of_reflects_iso CategoryTheory.createsColimitOfReflectsIso

-- Notice however that even if the isomorphism is `Iso.refl _`,
-- this construction will insert additional identity morphisms in the cocone maps,
-- so the constructed colimits may not be ideal, definitionally.
/--
When `F` is fully faithful, to show that `F` creates the colimit for `K` it suffices to exhibit a
lift of a colimit cocone for `K ⋙ F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant785f61b9eab021d0f5953f6eb5030dd98c2aa4133059f67979673bbd13f47a6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant785f61b9eab021d0f5953f6eb5030dd98c2aa4133059f67979673bbd13f47a6c.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b88a661d98c0323cf425109885c5725a0a073b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
