# DefectIndexData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b89c1249799d003b98d0f1afc6d6e40aac08f7d0a38f7a1c2bf24faad650b07",
  "kind": "structure",
  "lexical_name": "DefectIndexData",
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
  "slug": "defectindexdata--e0939df9c1ed2b196b25d7ab",
  "source": {
    "blob": "cd30f5817ecf77000f4beb83322433840ed75a49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 279,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant72cdd22184525b81df74afdec465b55e0e8d41ed6240d2ebbc9cb6924c23e5bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0939df9c1ed2b196b25d7ab969e062f77e12cfdeaca34f7ab58f7a987ff55fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant72cdd22184525b81df74afdec465b55e0e8d41ed6240d2ebbc9cb6924c23e5bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b89c1249799d003b98d0f1afc6d6e40aac08f7d0a38f7a1c2bf24faad650b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DefectIndexData
    (X : BinaryCellComplex) where
  Defect : Type
  defectFintype : Fintype Defect
  defectCell : Defect → X.C2
  index : Defect → ℤ

namespace DefectIndexData

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant72cdd22184525b81df74afdec465b55e0e8d41ed6240d2ebbc9cb6924c23e5bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant72cdd22184525b81df74afdec465b55e0e8d41ed6240d2ebbc9cb6924c23e5bd.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd30f5817ecf77000f4beb83322433840ed75a49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
