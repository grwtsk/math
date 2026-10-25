# diffExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4c95ea4a2c1d4eef8eef2c0d7300e448218699cd767838f5674bfeb1b01027a",
  "kind": "def",
  "lexical_name": "diffExtension",
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
  "slug": "diffextension--4d0c85a6dc3a2a09de505860",
  "source": {
    "blob": "62aa12e7d23650229d7740616039b4c661be6c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variant906dd7c0a078c2a8104f83da9eb44491130f9a326f7e9b892938b1425f8a03c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d0c85a6dc3a2a09de505860ad306eea7ade9427864b201259008e0e9e03fc44",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variant906dd7c0a078c2a8104f83da9eb44491130f9a326f7e9b892938b1425f8a03c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4c95ea4a2c1d4eef8eef2c0d7300e448218699cd767838f5674bfeb1b01027a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diffExtension (old new : Environment)
    (ext : PersistentEnvExtension EnvExtensionEntry EnvExtensionEntry EnvExtensionState) :
    CoreM (Option MessageData) := unsafe do
  let mut asyncMode := ext.toEnvExtension.asyncMode
  if asyncMode matches .async then
    -- allow for diffing async extensions by bumping mode to sync
    asyncMode := .sync
  let oldSt := ext.toEnvExtension.getState (asyncMode := asyncMode) old
  let newSt := ext.toEnvExtension.getState (asyncMode := asyncMode) new
  if ptrAddrUnsafe oldSt == ptrAddrUnsafe newSt then return none
  let oldEntries := ext.exportEntriesFn oldSt.state
  let newEntries := ext.exportEntriesFn newSt.state
  pure m!"-- {ext.name} extension: {(newEntries.size - oldEntries.size : Int)} new entries"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variant906dd7c0a078c2a8104f83da9eb44491130f9a326f7e9b892938b1425f8a03c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variant906dd7c0a078c2a8104f83da9eb44491130f9a326f7e9b892938b1425f8a03c5.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62aa12e7d23650229d7740616039b4c661be6c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
