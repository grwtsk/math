# GrwKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25cdc32e655b20b84fd1c5637fc7ec03eb202ca60eb6bcd1e491c14ecd4fb69f",
  "kind": "structure",
  "lexical_name": "GrwKey",
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
  "slug": "grwkey--241a541b3c68bffbd0f3d89f",
  "source": {
    "blob": "cce4506a662515d32779db5f6e07114be994c861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:241a541b3c68bffbd0f3d89ffca755650f4cc641faf9aa9c422957262888cad3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25cdc32e655b20b84fd1c5637fc7ec03eb202ca60eb6bcd1e491c14ecd4fb69f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GrwKey where
  /-- The number of side goals created. -/
  numGoals : Nat
  /-- The name length of the used lemma. -/
  nameLength : Nat
  /-- The length of the new subexpression. -/
  replacementSize : Nat
  /-- The nae of the used lemma. -/
  name : String
  -- TODO: in this implementation, we conclude that two rewrites are the same if they
  -- rewrite into the same expression. But there can be two rewrites that have
  -- different side conditions!
  /-- The new subexpression. -/
  replacement : AbstractMVarsResult
deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce4506a662515d32779db5f6e07114be994c861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
