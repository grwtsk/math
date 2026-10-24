# truncLE'ToRestrictionNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbd51d406b9a003f215e55b227945fabf7bde3b809f5e5f63cb79804e6bc8f36",
  "kind": "def",
  "lexical_name": "truncLE'ToRestrictionNatTrans",
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
  "slug": "truncle-torestrictionnattrans--1306164ef22600ce937f8467",
  "source": {
    "blob": "a40534ddb6eb1c3f6127ed17f0cbe0accc275eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1306164ef22600ce937f8467965aadb5addb008e071344b2aa8c71faf0d982ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbd51d406b9a003f215e55b227945fabf7bde3b809f5e5f63cb79804e6bc8f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def truncLE'ToRestrictionNatTrans :
    e.truncLE'Functor C ⟶ e.restrictionFunctor C where
  app K := K.truncLE'ToRestriction e

/-- Given an embedding `e : Embedding c c'` of complex shapes which satisfy `e.IsTruncLE`,
this is the (canonical) truncation functor
`HomologicalComplex C c' ⥤ HomologicalComplex C c'`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a40534ddb6eb1c3f6127ed17f0cbe0accc275eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
