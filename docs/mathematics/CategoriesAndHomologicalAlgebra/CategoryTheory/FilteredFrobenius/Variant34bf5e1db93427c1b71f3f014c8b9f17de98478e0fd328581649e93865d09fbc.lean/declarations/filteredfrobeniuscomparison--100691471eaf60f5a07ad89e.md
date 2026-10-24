# FilteredFrobeniusComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fc4964b0272fe7696a7776317985af3b65e345576308ecb746f6b2ecac6dd30",
  "kind": "structure",
  "lexical_name": "FilteredFrobeniusComparison",
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
  "slug": "filteredfrobeniuscomparison--100691471eaf60f5a07ad89e",
  "source": {
    "blob": "067b07836ffb0d682cf1215111855e62818cdcfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:100691471eaf60f5a07ad89eaa7cebcac46225cb150da72c13e8327a22711e24",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fc4964b0272fe7696a7776317985af3b65e345576308ecb746f6b2ecac6dd30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FilteredFrobeniusComparison
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (A B : SourceRealization F P) where
  frobeniusDatum : FrobeniusDatum P
  nygaardDatum : NygaardDatum P

  algebraMap : A.algebra ⟶ B.algebra
  filtrationShift : Int

  frobenius_natural :
    ∀ q : SimplexCategory,
      P.value.map (algebraMap.app (Opposite.op q)).op ≫
          frobeniusDatum.frobenius.app
            (Opposite.op (A.algebra.obj (Opposite.op q))) =
        frobeniusDatum.frobenius.app
            (Opposite.op (B.algebra.obj (Opposite.op q))) ≫
          frobeniusDatum.twist.map
            (P.value.map (algebraMap.app (Opposite.op q)).op)

  nygaardMap :
    ∀ r : Int,
      B.algebra.rightOp ⋙ nygaardDatum.level r ⟶
        A.algebra.rightOp ⋙
          nygaardDatum.level (r + filtrationShift)

  nygaard_to_value :
    ∀ (r : Int) (q : SimplexCategory),
      (nygaardMap r).app q ≫
          (nygaardDatum.inclusion (r + filtrationShift)).app
            (Opposite.op (A.algebra.obj (Opposite.op q))) =
        (nygaardDatum.inclusion r).app
            (Opposite.op (B.algebra.obj (Opposite.op q))) ≫
          P.value.map (algebraMap.app (Opposite.op q)).op

namespace FilteredFrobeniusComparison

variable
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {A B : SourceRealization F P}

/-- The underlying contravariant map of cosimplicial prismatic values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `067b07836ffb0d682cf1215111855e62818cdcfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
