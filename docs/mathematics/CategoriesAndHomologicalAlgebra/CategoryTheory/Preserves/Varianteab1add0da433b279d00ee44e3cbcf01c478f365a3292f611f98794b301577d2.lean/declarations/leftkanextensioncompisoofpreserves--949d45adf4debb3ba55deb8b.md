# leftKanExtensionCompIsoOfPreserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8c902e13d51b19c7842171197267e0410083f20fed697e6b78300c8a833ba1a",
  "kind": "def",
  "lexical_name": "leftKanExtensionCompIsoOfPreserves",
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
  "slug": "leftkanextensioncompisoofpreserves--949d45adf4debb3ba55deb8b",
  "source": {
    "blob": "6c304ff82ac77168c1211a5364d8cc6affba306f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:949d45adf4debb3ba55deb8be9edd9013a097054d9c93729816241970ce5ddaf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8c902e13d51b19c7842171197267e0410083f20fed697e6b78300c8a833ba1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftKanExtensionCompIsoOfPreserves [PreservesLeftKanExtension G F L]
    [L.HasLeftKanExtension F] :
    L.leftKanExtension F ⋙ G ≅ L.leftKanExtension (F ⋙ G) :=
  leftKanExtensionUnique
    (L.leftKanExtension F ⋙ G)
    (whiskerRight (L.leftKanExtensionUnit F) G ≫ (Functor.associator _ _ _).hom)
    (L.leftKanExtension <| F ⋙ G)
    (L.leftKanExtensionUnit <| F ⋙ G)

section

variable [PreservesLeftKanExtension G F L] [L.HasLeftKanExtension F]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c304ff82ac77168c1211a5364d8cc6affba306f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
