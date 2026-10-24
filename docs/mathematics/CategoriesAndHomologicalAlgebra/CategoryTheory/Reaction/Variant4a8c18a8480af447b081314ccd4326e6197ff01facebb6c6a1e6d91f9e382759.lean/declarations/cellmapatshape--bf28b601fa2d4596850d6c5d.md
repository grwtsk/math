# cellMapAtShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c57e8b32e05f8131e390fc888a109cdf381100429c7e5b24b7f321296fdfad8",
  "kind": "def",
  "lexical_name": "cellMapAtShape",
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
  "slug": "cellmapatshape--bf28b601fa2d4596850d6c5d",
  "source": {
    "blob": "72a49015902fa61f877fa16544b3f85eb6bb2020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reaction/Variant4a8c18a8480af447b081314ccd4326e6197ff01facebb6c6a1e6d91f9e382759.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf28b601fa2d4596850d6c5d87377bd518aa5d258bec797f0a2bcb035bd0fb31",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reaction/Variant4a8c18a8480af447b081314ccd4326e6197ff01facebb6c6a1e6d91f9e382759.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c57e8b32e05f8131e390fc888a109cdf381100429c7e5b24b7f321296fdfad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cellMapAtShape {F G : Fabric} (η : Reaction F G)
    {n : Nat} (x : F.Cell n) :
    Presentation.Hom
      (F.cellPresentation x)
      (G.cellPresentation (η.shapeMap.app _ x)) :=
  (η.cellMap x).castTarget
    (congrArg (G.presentation n) (η.mapCell_eq x))

/-- The identity reaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reaction/Variant4a8c18a8480af447b081314ccd4326e6197ff01facebb6c6a1e6d91f9e382759.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reaction/Variant4a8c18a8480af447b081314ccd4326e6197ff01facebb6c6a1e6d91f9e382759.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a49015902fa61f877fa16544b3f85eb6bb2020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
