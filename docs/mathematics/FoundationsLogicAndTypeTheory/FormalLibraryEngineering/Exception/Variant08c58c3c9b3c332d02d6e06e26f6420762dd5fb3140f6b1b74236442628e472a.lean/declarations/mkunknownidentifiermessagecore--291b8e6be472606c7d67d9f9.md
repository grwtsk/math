# mkUnknownIdentifierMessageCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1fd77712546b6393c568cd9e455c4e5c8639b32085961c799c8c7377ba903af",
  "kind": "def",
  "lexical_name": "mkUnknownIdentifierMessageCore",
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
  "slug": "mkunknownidentifiermessagecore--291b8e6be472606c7d67d9f9",
  "source": {
    "blob": "7a78d393f80bd594d73341b7c89852067b15927e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:291b8e6be472606c7d67d9f9201038ce4d3b5270ba8602526271b93592e3946e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1fd77712546b6393c568cd9e455c4e5c8639b32085961c799c8c7377ba903af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUnknownIdentifierMessageCore [Monad m] [MonadEnv m] [MonadError m] (msg : MessageData)
    (declHint := Name.anonymous) : m MessageData := do
  let mut msg := msg
  let env ← getEnv
  if !declHint.isAnonymous && env.isExporting && (env.setExporting false).contains declHint then
    let c := .withContext {
      env := env.setExporting false, opts := {}, mctx := {}, lctx := {} } <| .ofConstName declHint
    msg := match env.getModuleIdxFor? declHint with
      | none     =>
        msg ++ .note m!"A private declaration `{c}` (from the current module) exists but would need to be public to access here."
      | some idx =>
        let mod := env.header.moduleNames[idx]!
        if isPrivateName declHint then
          msg ++ .note m!"A private declaration `{c}` (from `{mod}`) exists but would need to be public to access here."
        else
          msg ++ .note m!"A public declaration `{c}` exists but is imported privately; consider adding `public import {mod}`."
  return msg

/--
Creates a `MessageData` that is tagged with `unknownIdentifierMessageTag`.
This tag is used by the 'import unknown identifier' code action to detect messages that should
prompt the code action.
The end position of the range of an unknown identifier message should always point at the end of the
unknown identifier.

If `declHint` is specified, a corresponding hint is added to the message in case the name refers to
a private declaration that is not accessible in the current context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a78d393f80bd594d73341b7c89852067b15927e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
