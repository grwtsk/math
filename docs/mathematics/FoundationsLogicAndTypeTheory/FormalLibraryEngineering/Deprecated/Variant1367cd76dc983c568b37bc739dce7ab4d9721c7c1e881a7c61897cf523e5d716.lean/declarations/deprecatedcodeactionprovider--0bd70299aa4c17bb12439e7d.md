# deprecatedCodeActionProvider

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a76082d00212e0899b9fe841a0b20ab70788f5631cabaa0284a81a8ad000c0d",
  "kind": "def",
  "lexical_name": "deprecatedCodeActionProvider",
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
  "slug": "deprecatedcodeactionprovider--0bd70299aa4c17bb12439e7d",
  "source": {
    "blob": "f290f5e490041230ef1d7be4e5e324ca3ed2cb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variant1367cd76dc983c568b37bc739dce7ab4d9721c7c1e881a7c61897cf523e5d716.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bd70299aa4c17bb12439e7d2efcd1225a38dbff15d5fdae0176026d65284c40",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variant1367cd76dc983c568b37bc739dce7ab4d9721c7c1e881a7c61897cf523e5d716.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a76082d00212e0899b9fe841a0b20ab70788f5631cabaa0284a81a8ad000c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deprecatedCodeActionProvider : CodeActionProvider := fun params snap => do
  let mut i := 0
  let doc ← readDoc
  let mut msgs := #[]
  for diag in snap.interactiveDiags do
    if let some #[.deprecated] := diag.tags? then
      if h : _ then
        msgs := msgs.push (snap.cmdState.messages.msgs[i]'h)
    i := i + 1
  if msgs.isEmpty then return #[]
  let start := doc.meta.text.lspPosToUtf8Pos params.range.start
  let stop := doc.meta.text.lspPosToUtf8Pos params.range.end
  for msg in msgs do
    let some endPos := msg.endPos | continue
    let pos := doc.meta.text.ofPosition msg.pos
    let endPos' := doc.meta.text.ofPosition endPos
    unless start ≤ endPos' && pos ≤ stop do continue
    let some (ctx, .node (.ofTermInfo info@{ expr := .const c .., ..}) _) :=
      findInfoTree? identKind ⟨pos, endPos'⟩ none snap.infoTree fun _ i =>
        (i matches .ofTermInfo { elaborator := .anonymous, expr := .const .., ..})
      | continue
    unless machineApplicableDeprecated.isTagged snap.cmdState.env c do continue
    let some c' := Linter.getDeprecatedNewName snap.cmdState.env c | continue
    let eager : CodeAction := {
      title := s!"Replace {c} with {c'}"
      kind? := "quickfix"
      isPreferred? := true
    }
    return #[{
      eager
      lazy? := some do
        let c' ← info.runMetaM ctx (unresolveNameGlobal c')
        let pos := doc.meta.text.leanPosToLspPos msg.pos
        let endPos' := doc.meta.text.leanPosToLspPos endPos
        pure { eager with
          edit? := some <| .ofTextEdit doc.versionedIdentifier {
            range := ⟨pos, endPos'⟩
            newText := toString c'
          }
        }
    }]
  return #[]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variant1367cd76dc983c568b37bc739dce7ab4d9721c7c1e881a7c61897cf523e5d716.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variant1367cd76dc983c568b37bc739dce7ab4d9721c7c1e881a7c61897cf523e5d716.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f290f5e490041230ef1d7be4e5e324ca3ed2cb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
