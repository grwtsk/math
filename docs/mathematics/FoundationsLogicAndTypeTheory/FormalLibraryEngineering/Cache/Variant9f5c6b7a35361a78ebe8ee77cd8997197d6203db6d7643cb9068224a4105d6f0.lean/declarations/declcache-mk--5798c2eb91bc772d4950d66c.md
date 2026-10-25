# DeclCache.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f0c7653959e6f2433b67aa4f1e1ef7119ebf7d591b4033a78cc6ea5f0e2450a",
  "kind": "def",
  "lexical_name": "DeclCache.mk",
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
  "slug": "declcache-mk--5798c2eb91bc772d4950d66c",
  "source": {
    "blob": "54bb2f100303fb134c5777ff9711e5a567260f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5798c2eb91bc772d4950d66c2c90751ffad1da5b4bdeeae558365533ee460082",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f0c7653959e6f2433b67aa4f1e1ef7119ebf7d591b4033a78cc6ea5f0e2450a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DeclCache.mk (profilingName : String) (empty : α)
    (addDecl : Name → ConstantInfo → α → MetaM α)
    (addLibraryDecl : Name → ConstantInfo → α → MetaM α := addDecl)
    (post : α → MetaM α := fun a => pure a) : IO (DeclCache α) := do
  let cache ← Cache.mk do
    profileitM Exception profilingName (← getOptions) do
      post <|← (← getEnv).constants.map₁.foldM (init := empty) fun a n c =>
        addLibraryDecl n c a
  pure { cache, addDecl }

/--
Access the cache. Calling this function for the first time will initialize the cache
with the function provided in the constructor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54bb2f100303fb134c5777ff9711e5a567260f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
