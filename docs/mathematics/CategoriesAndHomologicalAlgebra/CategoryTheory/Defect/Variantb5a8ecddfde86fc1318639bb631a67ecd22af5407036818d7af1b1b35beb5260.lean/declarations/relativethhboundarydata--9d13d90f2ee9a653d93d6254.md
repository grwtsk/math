# RelativeTHHBoundaryData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:785588d4299c4e74b4470dda123ce624d5d217b45f43b6e33e8e9c2b8f40d59d",
  "kind": "structure",
  "lexical_name": "RelativeTHHBoundaryData",
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
  "slug": "relativethhboundarydata--9d13d90f2ee9a653d93d6254",
  "source": {
    "blob": "6558d49e0368501b19dbcd6f379d69ad7606a565",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defect/Variantb5a8ecddfde86fc1318639bb631a67ecd22af5407036818d7af1b1b35beb5260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d13d90f2ee9a653d93d6254f512c29e8332f881d5c65936c370c935650ad778",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Defect/Variantb5a8ecddfde86fc1318639bb631a67ecd22af5407036818d7af1b1b35beb5260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:785588d4299c4e74b4470dda123ce624d5d217b45f43b6e33e8e9c2b8f40d59d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RelativeTHHBoundaryData
    {F : DAF.Fabric.Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : DAF.Fabric.LocalPatch F x)
    (T : DAF.Cyclotomic.RelativeTHHTheory) where
  interpret : DAF.Fabric.Presentation → T.Algebra
  algebraMap :
    interpret (F.cellPresentation x) ⟶
      interpret patch.boundary.replacement

/-- Relative-THH defect of a patch carrying a typed arithmetic update. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Defect/Variantb5a8ecddfde86fc1318639bb631a67ecd22af5407036818d7af1b1b35beb5260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defect/Variantb5a8ecddfde86fc1318639bb631a67ecd22af5407036818d7af1b1b35beb5260.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6558d49e0368501b19dbcd6f379d69ad7606a565` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
