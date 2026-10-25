# CommandContextInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41a0716b38d2f228d5273a60e58ddd8bead642e9056c131a0aa76a0bc101cb99",
  "kind": "structure",
  "lexical_name": "CommandContextInfo",
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
  "slug": "commandcontextinfo--9b7e63737d7a19f95191869b",
  "source": {
    "blob": "35343b74dbcab1185aef1938da5126db41323555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf7f820091296415afd4cb45e1d38dae621244b354da3de02822c1e56ee8f230d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b7e63737d7a19f95191869b27e678a269600d724a20969e5cc21ec7bbdf31d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf7f820091296415afd4cb45e1d38dae621244b354da3de02822c1e56ee8f230d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41a0716b38d2f228d5273a60e58ddd8bead642e9056c131a0aa76a0bc101cb99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommandContextInfo where
  env           : Environment
  /--
  Final environment at the end of `elabCommand`; empty for nested contexts. This environment can be
  used to access information about the fully-elaborated current declaration such as declaration
  ranges. It may not be a strict superset of `env` in case of backtracking, so `env` should be
  preferred to access information about the elaboration context at the time this context object was
  created.
  -/
  cmdEnv?       : Option Environment := none
  fileMap       : FileMap
  mctx          : MetavarContext := {}
  options       : Options        := {}
  currNamespace : Name           := Name.anonymous
  openDecls     : List OpenDecl  := []
  ngen          : NameGenerator -- We must save the name generator to implement `ContextInfo.runMetaM` and making we not create `MVarId`s used in `mctx`.

/--
Context from the root of the `InfoTree` up to this node.
Note that the term information collected during elaboration may contain metavariables, and their
assignments are stored at `mctx`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf7f820091296415afd4cb45e1d38dae621244b354da3de02822c1e56ee8f230d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf7f820091296415afd4cb45e1d38dae621244b354da3de02822c1e56ee8f230d.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35343b74dbcab1185aef1938da5126db41323555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
