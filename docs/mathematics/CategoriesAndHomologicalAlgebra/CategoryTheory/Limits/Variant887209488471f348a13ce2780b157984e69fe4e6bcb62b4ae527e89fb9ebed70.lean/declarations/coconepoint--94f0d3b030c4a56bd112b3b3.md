# coconePoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29f2a2c4662e3e546b0c41fa41858763779a0bcf09dbe7b6e21ed09ccb1a5c67",
  "kind": "def",
  "lexical_name": "coconePoint",
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
  "slug": "coconepoint--94f0d3b030c4a56bd112b3b3",
  "source": {
    "blob": "8b002b83f180d6d7a2cda941746d7da8db92ba09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94f0d3b030c4a56bd112b3b3fc61c17ace7e8c6e74bd3b279b3f4c6c28593cc3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29f2a2c4662e3e546b0c41fa41858763779a0bcf09dbe7b6e21ed09ccb1a5c67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coconePoint : Algebra T where
  A := c.pt
  a := lambda c t
  unit := by
    apply t.hom_ext
    intro j
    rw [show c.ι.app j ≫ T.η.app c.pt ≫ _ = T.η.app (D.obj j).A ≫ _ ≫ _ from
        T.η.naturality_assoc _ _,
      commuting, Algebra.unit_assoc (D.obj j)]
    dsimp; simp
  -- See library note [dsimp, simp]
  assoc := by
    refine' (isColimitOfPreserves _ (isColimitOfPreserves _ t)).hom_ext fun j => _
    rw [Functor.mapCocone_ι_app, Functor.mapCocone_ι_app,
      show (T : C ⥤ C).map ((T : C ⥤ C).map _) ≫ _ ≫ _ = _ from T.μ.naturality_assoc _ _, ←
      Functor.map_comp_assoc, commuting, Functor.map_comp, Category.assoc, commuting]
    apply (D.obj j).assoc_assoc _
#align category_theory.monad.forget_creates_colimits.cocone_point CategoryTheory.Monad.ForgetCreatesColimits.coconePoint

/-- (Impl) Construct the lifted cocone in `Algebra T` which will be colimiting. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b002b83f180d6d7a2cda941746d7da8db92ba09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
