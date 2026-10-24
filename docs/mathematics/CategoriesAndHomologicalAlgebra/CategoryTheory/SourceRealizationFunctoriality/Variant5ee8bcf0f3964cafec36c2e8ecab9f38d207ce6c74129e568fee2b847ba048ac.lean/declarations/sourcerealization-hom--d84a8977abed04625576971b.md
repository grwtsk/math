# SourceRealization.Hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04364d4d1a3378a9df31493b5486ac52a5dec2180fb3869ecd1e7562dbfcd37c",
  "kind": "structure",
  "lexical_name": "SourceRealization.Hom",
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
  "slug": "sourcerealization-hom--d84a8977abed04625576971b",
  "source": {
    "blob": "5a368753210d4611ed48d79991cc5cb2b03fd1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 22,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d84a8977abed04625576971bb4421a43061a9f6c2a775d57d12cf50bfab60110",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04364d4d1a3378a9df31493b5486ac52a5dec2180fb3869ecd1e7562dbfcd37c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SourceRealization.Hom
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (A B : SourceRealization F P) where
  presentationMap :
    ∀ {n : Nat} (x : F.Cell n),
      DAF.Fabric.Presentation.Hom
        (F.cellPresentation x)
        (F.cellPresentation x)
  algebraMap : A.algebra ⟶ B.algebra
  cellArithmeticMap :
    ∀ {n : Nat} (x : F.Cell n),
      A.cellCorrespondence x ⟶ B.cellCorrespondence x

namespace SourceRealization.Hom

/-- Identity change of one selected source realization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a368753210d4611ed48d79991cc5cb2b03fd1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
