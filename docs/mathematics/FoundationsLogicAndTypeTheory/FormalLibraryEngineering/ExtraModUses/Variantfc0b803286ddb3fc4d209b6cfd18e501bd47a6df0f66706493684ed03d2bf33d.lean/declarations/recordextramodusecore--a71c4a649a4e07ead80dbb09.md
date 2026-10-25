# recordExtraModUseCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaf5351c4df5e8e4bc33dbbaba609e51b29dcb3f8feb48153ee6ba691d573519",
  "kind": "def",
  "lexical_name": "recordExtraModUseCore",
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
  "slug": "recordextramodusecore--a71c4a649a4e07ead80dbb09",
  "source": {
    "blob": "34069cafc5045084e03030f1c0103aab6d3fe2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a71c4a649a4e07ead80dbb0927c082e4e5b318d80df1ea9d9b43dfac29fe827a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaf5351c4df5e8e4bc33dbbaba609e51b29dcb3f8feb48153ee6ba691d573519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recordExtraModUseCore (mod : Name) (isMeta : Bool) (hint : Name := .anonymous) : m Unit := do
  let entry := { module := mod, isExported := (← getEnv).isExporting, isMeta }
  if !(extraModUses.getState (asyncMode := .local) (← getEnv)).contains entry then
    trace[extraModUses] "recording {if entry.isExported then "public" else "private"} \
      {if isMeta then "meta" else "regular"} extra mod use {mod}\
      {if hint.isAnonymous then m!"" else m!" of {hint}"}"
    modifyEnv (extraModUses.addEntry · entry)

/--
Records an additional import dependency for the current module, using `Environment.isExporting` as
the visibility level.

NOTE: Directly recording a module name does not trigger including indirect dependencies recorded via
`recordIndirectModUse`, prefer `recordExtraModUseFromDecl` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34069cafc5045084e03030f1c0103aab6d3fe2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
