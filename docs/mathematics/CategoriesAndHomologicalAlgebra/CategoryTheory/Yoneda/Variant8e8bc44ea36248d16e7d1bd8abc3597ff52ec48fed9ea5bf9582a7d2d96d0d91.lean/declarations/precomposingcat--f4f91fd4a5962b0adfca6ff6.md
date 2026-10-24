# precomposingCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5854eadebcf2dd8b258fda4e1c399808758fb2b80efd7d2a4b6623df09fc5c4",
  "kind": "def",
  "lexical_name": "precomposingCat",
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
  "slug": "precomposingcat--f4f91fd4a5962b0adfca6ff6",
  "source": {
    "blob": "771a1f527272db0b41522f4cee03aff1db6c4934",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 32,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4f91fd4a5962b0adfca6ff60051b3833fc1b992b8ead3c475777f5f86499631",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5854eadebcf2dd8b258fda4e1c399808758fb2b80efd7d2a4b6623df09fc5c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def precomposingCat (a b c : B) :
    (a ⟶ b) ⥤ (Cat.of (b ⟶ c) ⟶ Cat.of (a ⟶ c)) where
  obj f := (precomp c f).toCatHom
  map η := NatTrans.toCatHom₂ ((precomposing a b c).map η)

/-- Version of `Bicategory.postcomposing` viewed in the bicategory `Cat`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771a1f527272db0b41522f4cee03aff1db6c4934` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
