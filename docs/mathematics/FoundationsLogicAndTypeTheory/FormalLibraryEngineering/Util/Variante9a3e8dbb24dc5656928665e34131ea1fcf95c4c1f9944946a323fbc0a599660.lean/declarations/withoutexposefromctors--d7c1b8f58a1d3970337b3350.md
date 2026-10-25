# withoutExposeFromCtors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28e0d1bce84472fae362c2c61d06d86d11a8907c266d0b038033c6233b94ea67",
  "kind": "def",
  "lexical_name": "withoutExposeFromCtors",
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
  "slug": "withoutexposefromctors--d7c1b8f58a1d3970337b3350",
  "source": {
    "blob": "3d3bf9c598925d39c445338133bcc04e5c072e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante9a3e8dbb24dc5656928665e34131ea1fcf95c4c1f9944946a323fbc0a599660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7c1b8f58a1d3970337b3350e7b900800f854f2ab70c5aa0f6fe172309239739",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante9a3e8dbb24dc5656928665e34131ea1fcf95c4c1f9944946a323fbc0a599660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28e0d1bce84472fae362c2c61d06d86d11a8907c266d0b038033c6233b94ea67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withoutExposeFromCtors (typeName : Name) (cont : CommandElabM α) : CommandElabM α := do
  -- TODO: some duplication with `mkContext` but it is in `TermElabM`; should it be?
  let indVal ← getConstInfoInduct typeName
  let mut typeInfos := #[]
  for typeName in indVal.all do
    typeInfos := typeInfos.push (← getConstInfoInduct typeName)
  if typeInfos.any (·.ctors.any isPrivateName) then
    if !isPrivateName typeName then
      -- The topmost scope should be the one from the `deriving` command itself
      if (← getScope).attrs.any (· matches `(Parser.Term.attrInstance| expose)) then
        throwError "cannot use `deriving ... @[expose]` with `{.ofConstName typeName}` as it has one or more private constructors"
    withScope (fun sc => { sc with
        attrs := sc.attrs.filter (!· matches `(Parser.Term.attrInstance| expose)) }) cont
  else cont

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante9a3e8dbb24dc5656928665e34131ea1fcf95c4c1f9944946a323fbc0a599660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante9a3e8dbb24dc5656928665e34131ea1fcf95c4c1f9944946a323fbc0a599660.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d3bf9c598925d39c445338133bcc04e5c072e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
