# compAsSmallFunctorEquivalenceFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cc2d0ff1f1a440f470d5fdec74c20143f9982c4d14cc373781c718a99db479f",
  "kind": "def",
  "lexical_name": "compAsSmallFunctorEquivalenceFunctor",
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
  "slug": "compassmallfunctorequivalencefunctor--50ed932006451f3aedcd0d09",
  "source": {
    "blob": "f4e8b142a009b0a72fe84c665016cfe80081421d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 325,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantfeb072f628d0b4679cf1336fa33846a7d05ac2b980dbf2388d70e25e3f79eef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50ed932006451f3aedcd0d09654e3581d5202cc7968e236808fb27d02febfa31",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantfeb072f628d0b4679cf1336fa33846a7d05ac2b980dbf2388d70e25e3f79eef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cc2d0ff1f1a440f470d5fdec74c20143f9982c4d14cc373781c718a99db479f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compAsSmallFunctorEquivalenceFunctor :
    Grothendieck (F ⋙ Cat.asSmallFunctor.{w}) ⥤ Grothendieck F where
  obj X := ⟨X.base, AsSmall.down.obj X.fiber⟩
  map f := ⟨f.base, AsSmall.down.map f.fiber⟩
  map_id _ := by apply Grothendieck.ext <;> simp
  map_comp _ _ := by apply Grothendieck.ext <;> simp [down_comp]

set_option backward.isDefEq.respectTransparency false in
/-- Taking the Grothendieck construction on `F ⋙ asSmallFunctor`, where
`asSmallFunctor : Cat ⥤ Cat` is the functor which turns each category into a small category of a
(potentially) larger universe, is equivalent to the Grothendieck construction on `F` itself. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantfeb072f628d0b4679cf1336fa33846a7d05ac2b980dbf2388d70e25e3f79eef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantfeb072f628d0b4679cf1336fa33846a7d05ac2b980dbf2388d70e25e3f79eef2.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e8b142a009b0a72fe84c665016cfe80081421d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
