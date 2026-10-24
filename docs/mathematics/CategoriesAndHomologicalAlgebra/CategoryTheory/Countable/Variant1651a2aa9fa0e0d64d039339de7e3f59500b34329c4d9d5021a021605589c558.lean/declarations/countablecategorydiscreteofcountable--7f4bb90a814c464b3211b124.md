# countableCategoryDiscreteOfCountable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca18a925fc34468d1b52674e6a1a8c9aa9195f01e973f04503405a242bb049aa",
  "kind": "instance",
  "lexical_name": "countableCategoryDiscreteOfCountable",
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
  "slug": "countablecategorydiscreteofcountable--7f4bb90a814c464b3211b124",
  "source": {
    "blob": "3208a69b31545c5a832708fcf62b384bdf3b74ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f4bb90a814c464b3211b1244c1f2157ed377a47a85b50c43583df4395a53108",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca18a925fc34468d1b52674e6a1a8c9aa9195f01e973f04503405a242bb049aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance countableCategoryDiscreteOfCountable (J : Type*) [Countable J] :
    CountableCategory (Discrete J) where

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3208a69b31545c5a832708fcf62b384bdf3b74ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
