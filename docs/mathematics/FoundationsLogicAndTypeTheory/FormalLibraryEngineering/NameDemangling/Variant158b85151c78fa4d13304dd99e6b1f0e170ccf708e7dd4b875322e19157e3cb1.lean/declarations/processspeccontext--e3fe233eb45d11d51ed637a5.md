# processSpecContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:658cf933f910a74a548af8a1a94cba2c3853b9905e4491b55d4234726fd51150",
  "kind": "def",
  "lexical_name": "processSpecContext",
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
  "slug": "processspeccontext--e3fe233eb45d11d51ed637a5",
  "source": {
    "blob": "9219df010e50197717971c85deb838d4746ff82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3fe233eb45d11d51ed637a50bd3f520436c32ee7f14fa205085aca0d1bbcf18",
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

Occurrence: `declaration:658cf933f910a74a548af8a1a94cba2c3853b9905e4491b55d4234726fd51150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processSpecContext (comps : Array NamePart) : SpecEntry := Id.run do
  let mut begin_ := 0
  if comps.size >= 3 && comps[0]? == some (NamePart.str "_private") then
    for i in [1:comps.size] do
      if comps[i]? == some (NamePart.num 0) && i + 1 < comps.size then
        begin_ := i + 1
        break
  let mut parts : Array NamePart := #[]
  let mut flags : Array String := #[]
  for i in [begin_:comps.size] do
    let c := comps[i]!
    match matchSuffix c with
    | some flag =>
      if !flags.contains flag then
        flags := flags.push flag
    | none =>
      if isSpecIndex c then pure ()
      else parts := parts.push c
  { name := formatNameParts parts, flags }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9219df010e50197717971c85deb838d4746ff82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
