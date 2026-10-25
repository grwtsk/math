# addConstInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c41b77bd820a81909e8de2acf31505c912d9cc2aad74ac29b875029ca245180",
  "kind": "def",
  "lexical_name": "addConstInfo",
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
  "slug": "addconstinfo--fa49acc622c28ac729b35212",
  "source": {
    "blob": "2655bd1b73160d1ad2ff4c1e86d0b00514e4cb8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 241,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1d546ba774806ee4bad503730cf8189199eaaf2590704cb225215901a472ef84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa49acc622c28ac729b3521203e5fd69196ccdfc2aded3d6735ecd73511105e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1d546ba774806ee4bad503730cf8189199eaaf2590704cb225215901a472ef84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c41b77bd820a81909e8de2acf31505c912d9cc2aad74ac29b875029ca245180`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addConstInfo [MonadEnv m] [MonadError m]
    (stx : Syntax) (n : Name) (expectedType? : Option Expr := none) : m Unit := do
  pushInfoLeaf <| .ofTermInfo {
    elaborator := .anonymous
    lctx := .empty
    expr := (← mkConstWithLevelParams n)
    stx
    expectedType?
  }

/-- This does the same job as `realizeGlobalConstNoOverload`; resolving an identifier
syntax to a unique fully resolved name or throwing if there are ambiguities.
But also adds this resolved name to the infotree. This means that when you hover
over a name in the source file you will see the fully resolved name in the hover info.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1d546ba774806ee4bad503730cf8189199eaaf2590704cb225215901a472ef84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1d546ba774806ee4bad503730cf8189199eaaf2590704cb225215901a472ef84.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2655bd1b73160d1ad2ff4c1e86d0b00514e4cb8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
