# PrismaticAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b520531cc7cdc8a11fd6394a36e9ab08035188d33fb5af26e413fe11ca925f6",
  "kind": "structure",
  "lexical_name": "PrismaticAuthority",
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
  "slug": "prismaticauthority--53498bc7d65955cc1876b34f",
  "source": {
    "blob": "5ee3ebf89180e044ce5d69a0efbc71eb83be311c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant6afb65300c6964d5241ef7b5cd0aefd2ef3ce40589e9c83ce79d8d2c24d357d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53498bc7d65955cc1876b34f278a8ce9abe8741cb9fcec37e061e6765c04e8c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant6afb65300c6964d5241ef7b5cd0aefd2ef3ce40589e9c83ce79d8d2c24d357d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b520531cc7cdc8a11fd6394a36e9ab08035188d33fb5af26e413fe11ca925f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrismaticAuthority
    (Prism : Type u) (FormalScheme : Type v) (ArithmeticComplex : Type v) where
  prism : Prism
  formalScheme : FormalScheme
  arithmeticComplex : ArithmeticComplex
  prismaticSiteEvidence : EvidenceId
  comparisonEvidence : List EvidenceId
  evidenceKind : Authority.EvidenceKind := .reviewedImportedTheorem
  importedTheoremBoundary :
    evidenceKind = .reviewedImportedTheorem

/-- A certified finite model and its supplied quasi-isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant6afb65300c6964d5241ef7b5cd0aefd2ef3ce40589e9c83ce79d8d2c24d357d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant6afb65300c6964d5241ef7b5cd0aefd2ef3ce40589e9c83ce79d8d2c24d357d9.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ee3ebf89180e044ce5d69a0efbc71eb83be311c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
