# PreservesInitial.ofIsoComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdd070562f727d9b0f381367826da83fa761db7ba44770968706cb217d60cd90",
  "kind": "def",
  "lexical_name": "PreservesInitial.ofIsoComparison",
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
  "slug": "preservesinitial-ofisocomparison--457cb15b73539f43677ef665",
  "source": {
    "blob": "d43c171c11c031811093136ddd28bd7c90e97303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantb7ab3e4e2e666873f7ab0472d8a73bf9a92e27e9df124086c8dc24493371d51b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:457cb15b73539f43677ef6657caaf1f205c61db27e2134efd13cebd82ea1bfb3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantb7ab3e4e2e666873f7ab0472d8a73bf9a92e27e9df124086c8dc24493371d51b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdd070562f727d9b0f381367826da83fa761db7ba44770968706cb217d60cd90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PreservesInitial.ofIsoComparison [i : IsIso (initialComparison G)] :
    PreservesColimit (Functor.empty C) G := by
  apply preservesColimitOfPreservesColimitCocone initialIsInitial
  apply (isColimitMapCoconeEmptyCoconeEquiv _ _).symm _
  exact @IsColimit.ofPointIso _ _ _ _ _ _ _ (colimit.isColimit (Functor.empty.{0} D)) i
#align category_theory.limits.preserves_initial.of_iso_comparison CategoryTheory.Limits.PreservesInitial.ofIsoComparison

/-- If there is any isomorphism `⊥ ⟶ G.obj ⊥`, then `G` preserves initial objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantb7ab3e4e2e666873f7ab0472d8a73bf9a92e27e9df124086c8dc24493371d51b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantb7ab3e4e2e666873f7ab0472d8a73bf9a92e27e9df124086c8dc24493371d51b.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d43c171c11c031811093136ddd28bd7c90e97303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
