# KConfigDecl.get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18e6abc4fe4e7432bd81aa743440dcda83a5eea1842cb95d86257c4765423207",
  "kind": "def",
  "lexical_name": "KConfigDecl.get",
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
  "slug": "kconfigdecl-get--1741e08a27e97eb4c053c62d",
  "source": {
    "blob": "bc6f9f742bc416f2c79954909f7d8bfaa361986a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant8ecd68360778aebb46340c1169c7307489cca771607f3f9f6212f4c062b37ebf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1741e08a27e97eb4c053c62d5b87976362707cd6297fe772352e819f8e1c7183",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant8ecd68360778aebb46340c1169c7307489cca771607f3f9f6212f4c062b37ebf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18e6abc4fe4e7432bd81aa743440dcda83a5eea1842cb95d86257c4765423207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def KConfigDecl.get
  [Monad m] [MonadError m] [MonadLake m] (self : KConfigDecl kind)
: m (ConfigTarget kind) := do
  let some pkg ← findPackageByKey? self.pkg
    | error s!"package of target '{self.pkg}/{self.name}' not found in workspace"
  let config := cast (by rw [self.kind_eq, pkg.keyName_eq]) self.config
  return ConfigTarget.mk pkg self.name config

/-! ## Package Facets & Targets -/

/-- Fetch the build job of the specified package target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant8ecd68360778aebb46340c1169c7307489cca771607f3f9f6212f4c062b37ebf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant8ecd68360778aebb46340c1169c7307489cca771607f3f9f6212f4c062b37ebf.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc6f9f742bc416f2c79954909f7d8bfaa361986a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
