# IsPointwiseRightKanExtension.isUniversal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf9e29ab9c5baa5d3f4f0f41df63d32956d562405530abd95eb3fd4e5fc972c0",
  "kind": "def",
  "lexical_name": "IsPointwiseRightKanExtension.isUniversal",
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
  "slug": "ispointwiserightkanextension-isuniversal--e637845fa91f058c0a73fb38",
  "source": {
    "blob": "12c6638bcdfe280e9c2b77d83820694ee7369392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 312,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variante40b5cd46086b9c6263a7198d8ead829e0188d9d376c5ef64707c8e5573ad9e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e637845fa91f058c0a73fb388a292f0fabfbcc0ed3c0a1eaf94da438e3518e9c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variante40b5cd46086b9c6263a7198d8ead829e0188d9d376c5ef64707c8e5573ad9e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf9e29ab9c5baa5d3f4f0f41df63d32956d562405530abd95eb3fd4e5fc972c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsPointwiseRightKanExtension.isUniversal : E.IsUniversal :=
  IsTerminal.ofUniqueHom h.homTo (fun _ _ => h.hom_ext)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variante40b5cd46086b9c6263a7198d8ead829e0188d9d376c5ef64707c8e5573ad9e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variante40b5cd46086b9c6263a7198d8ead829e0188d9d376c5ef64707c8e5573ad9e0.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12c6638bcdfe280e9c2b77d83820694ee7369392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
