# compAsSmallFunctorEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8efc28901b4dfd46f856012841960bc29e729fae6bc8e27078edeb1878bbb7ef",
  "kind": "def",
  "lexical_name": "compAsSmallFunctorEquivalence",
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
  "slug": "compassmallfunctorequivalence--69ea8285315dd9ca400b2b50",
  "source": {
    "blob": "57765911852f92dbaff209e5c24c855bdbb9e7be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 316,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69ea8285315dd9ca400b2b5007770c2717e13c70beed15e516cd9ced2913e7c9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8efc28901b4dfd46f856012841960bc29e729fae6bc8e27078edeb1878bbb7ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compAsSmallFunctorEquivalence :
    Grothendieck (F ⋙ Cat.asSmallFunctor.{w}) ≌ Grothendieck F where
  functor := compAsSmallFunctorEquivalenceFunctor F
  inverse := compAsSmallFunctorEquivalenceInverse F
  counitIso := Iso.refl _
  unitIso := Iso.refl _

variable {F} in
/-- Mapping a Grothendieck construction along the whiskering of any natural transformation
`α : F ⟶ G` with the functor `asSmallFunctor : Cat ⥤ Cat` is naturally isomorphic to conjugating
`map α` with the equivalence between `Grothendieck (F ⋙ asSmallFunctor)` and `Grothendieck F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57765911852f92dbaff209e5c24c855bdbb9e7be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
