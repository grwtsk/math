# coind₁Functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:173ade04a00ba0ba441902ef0c9f2ab63ac643a6a60f18f441e37bd436ed03dc",
  "kind": "abbrev",
  "lexical_name": "coind₁Functor",
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
  "slug": "coind-functor--da7b96a58adf611712cd3bcf",
  "source": {
    "blob": "841f1cafa0c80e0da7db105d77dfcfb7e8fdeab6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da7b96a58adf611712cd3bcf885ec27a2a5e1c9ab00be365a27a63dd8a2d5227",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:173ade04a00ba0ba441902ef0c9f2ab63ac643a6a60f18f441e37bd436ed03dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev coind₁Functor : TopRep k G ⥤ TopRep k G where
  obj := coind₁
  map φ := ofHom <| ContRepresentation.coind₁Map φ.hom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `841f1cafa0c80e0da7db105d77dfcfb7e8fdeab6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
