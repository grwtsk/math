# forgetCreatesColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4721feea494225405b519f5d6de756d14e95a4ee74d883890673646215cf9aac",
  "kind": "instance",
  "lexical_name": "forgetCreatesColimit",
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
  "slug": "forgetcreatescolimit--9e7206f7c13df684e370594b",
  "source": {
    "blob": "8b002b83f180d6d7a2cda941746d7da8db92ba09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e7206f7c13df684e370594b97964b6cf57cc6fb104fb54dc89505ea3e575e33",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4721feea494225405b519f5d6de756d14e95a4ee74d883890673646215cf9aac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance forgetCreatesColimit (D : J ⥤ Algebra T)
    [PreservesColimit (D ⋙ forget T) (T : C ⥤ C)]
    [PreservesColimit ((D ⋙ forget T) ⋙ ↑T) (T : C ⥤ C)] : CreatesColimit D (forget T) :=
  createsColimitOfReflectsIso fun c t =>
    { liftedCocone :=
        { pt := coconePoint c t
          ι :=
            { app := fun j =>
                { f := c.ι.app j
                  h := commuting _ _ _ }
              naturality := fun A B f => by
                ext1
                dsimp
                erw [comp_id, c.w] } }
      validLift := Cocones.ext (Iso.refl _)
      makesColimit := liftedCoconeIsColimit _ _ }
#align category_theory.monad.forget_creates_colimit CategoryTheory.Monad.forgetCreatesColimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b002b83f180d6d7a2cda941746d7da8db92ba09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
