# precomposeShiftNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02a86b1764e09441092d394ef171d63c28d2f19f7e5b526a320972ed91c91365",
  "kind": "def",
  "lexical_name": "precomposeShiftNatTrans",
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
  "slug": "precomposeshiftnattrans--96e0f748d82a710e5b1d9bee",
  "source": {
    "blob": "5a2cedaee376c6034d2eaec2a22868b278041d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variant5b3c24cc5c853f9695822acc7b9a796fb6345c176e3bafda3395bfe1014279a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96e0f748d82a710e5b1d9bee0fd459c6cd1928cdf5a3ce67660f97f0c07b7d5c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variant5b3c24cc5c853f9695822acc7b9a796fb6345c176e3bafda3395bfe1014279a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02a86b1764e09441092d394ef171d63c28d2f19f7e5b526a320972ed91c91365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def precomposeShiftNatTrans :
    shiftFunctor C a ⋙ F ⟶ L ⋙ shiftFunctor H a ⋙ RF :=
  whiskerLeft (shiftFunctor C a) α ≫ (associator _ _ _).inv ≫
    whiskerRight (L.commShiftIso a).hom _ ≫ (associator _ _ _).hom

/-- The natural transformation `F ⋙ shiftFunctor D a ⟶ L ⋙ RF ⋙ shiftFunctor D a`
deduced from `α : F ⟶ L ⋙ RF` when `L` commutes with the shift. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variant5b3c24cc5c853f9695822acc7b9a796fb6345c176e3bafda3395bfe1014279a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variant5b3c24cc5c853f9695822acc7b9a796fb6345c176e3bafda3395bfe1014279a3.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2cedaee376c6034d2eaec2a22868b278041d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
