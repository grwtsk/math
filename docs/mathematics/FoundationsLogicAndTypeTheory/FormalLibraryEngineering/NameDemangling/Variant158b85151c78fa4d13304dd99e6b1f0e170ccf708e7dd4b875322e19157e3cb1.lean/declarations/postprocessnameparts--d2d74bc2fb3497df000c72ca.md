# postprocessNameParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe1b1e35f13a8c6e1105d776a4c87ab3776205f4fe2b01aabdc0d22fadc856ab",
  "kind": "def",
  "lexical_name": "postprocessNameParts",
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
  "slug": "postprocessnameparts--d2d74bc2fb3497df000c72ca",
  "source": {
    "blob": "9219df010e50197717971c85deb838d4746ff82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2d74bc2fb3497df000c72ca2215f5288b8140d1dc7089c4fd30083104b58d92",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe1b1e35f13a8c6e1105d776a4c87ab3776205f4fe2b01aabdc0d22fadc856ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postprocessNameParts (components : Array NamePart) : String := Id.run do
  if components.isEmpty then return ""

  let (privStart, isPrivate) := stripPrivate components 0 components.size
  let mut parts := components.extract privStart components.size

  -- Collect suffix flags from the end first, before stripping hygienic suffixes,
  -- since _boxed etc. may appear after _@ sections.
  let mut flags : Array String := #[]
  let mut cont := true
  while cont && !parts.isEmpty do
    let last := parts.back!
    match matchSuffix last with
    | some flag =>
      flags := flags.push flag
      parts := parts.pop
    | none =>
      match last with
      | NamePart.num _ =>
        if parts.size >= 2 then
          match matchSuffix parts[parts.size - 2]! with
          | some flag =>
            flags := flags.push flag
            parts := parts.pop.pop
          | none => cont := false
        else cont := false
      | _ => cont := false

  if isPrivate then
    flags := flags.push "private"

  -- Strip hygienic suffixes (_@ onward)
  for i in [:parts.size] do
    match parts[i]! with
    | NamePart.str s =>
      if s.startsWith "_@" then
        parts := parts.extract 0 i
        break
    | _ => pure ()

  -- Handle specialization contexts (_at_ ... _spec N)
  let mut specEntries : Array SpecEntry := #[]
  let mut firstAt : Option Nat := none
  for i in [:parts.size] do
    if parts[i]! == NamePart.str "_at_" then
      firstAt := some i
      break

  if let some fa := firstAt then
    let base := parts.extract 0 fa
    let rest := parts.extract fa parts.size

    let mut entries : Array (Array NamePart) := #[]
    let mut currentCtx : Option (Array NamePart) := none
    let mut remaining : Array NamePart := #[]
    let mut skipNext := false

    for i in [:rest.size] do
      if skipNext then
        skipNext := false
        continue
      let p := rest[i]!
      if p == NamePart.str "_at_" then
        if let some ctx := currentCtx then
          entries := entries.push ctx
        currentCtx := some #[]
      else if p == NamePart.str "_spec" then
        if let some ctx := currentCtx then
          entries := entries.push ctx
          currentCtx := none
        skipNext := true
      else if match p with | NamePart.str s => s.startsWith "_spec" | _ => false then
        if let some ctx := currentCtx then
          entries := entries.push ctx
          currentCtx := none
      else
        match currentCtx with
        | some ctx => currentCtx := some (ctx.push p)
        | none => remaining := remaining.push p

    if let some ctx := currentCtx then
      if !ctx.isEmpty then
        entries := entries.push ctx

    for entry in entries do
      let se := processSpecContext entry
      if !se.name.isEmpty || !se.flags.isEmpty then
        specEntries := specEntries.push se

    parts := base ++ remaining

  let name := if parts.isEmpty then "?" else formatNameParts parts
  let mut result := name

  if !flags.isEmpty then
    result := result ++ " [" ++ String.intercalate ", " flags.toList ++ "]"

  for entry in specEntries do
    let ctxStr := if entry.name.isEmpty then "?" else entry.name
    if !entry.flags.isEmpty then
      result := result ++ " spec at " ++ ctxStr ++ "["
        ++ String.intercalate ", " entry.flags.toList ++ "]"
    else
      result := result ++ " spec at " ++ ctxStr

  return result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9219df010e50197717971c85deb838d4746ff82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
