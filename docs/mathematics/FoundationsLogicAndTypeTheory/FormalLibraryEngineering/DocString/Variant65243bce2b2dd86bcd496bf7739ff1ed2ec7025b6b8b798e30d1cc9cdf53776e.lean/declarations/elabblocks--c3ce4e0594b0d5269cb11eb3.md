# elabBlocks'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:622a668c51084e313e145c8a2f13b0bfeb006a9fa053cf3b1a430b76d52cfeb3",
  "kind": "def",
  "lexical_name": "elabBlocks'",
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
  "slug": "elabblocks--c3ce4e0594b0d5269cb11eb3",
  "source": {
    "blob": "e6af04853ba13c2d50a909dfaed37219dc95f7eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1744,
    "line": 1709,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3ce4e0594b0d5269cb11eb33ed897fba6862372b04f736365c2fb4ff03d232d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:622a668c51084e313e145c8a2f13b0bfeb006a9fa053cf3b1a430b76d52cfeb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1709–1744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def elabBlocks' (level : Nat) :
    StateT (TSyntaxArray `block) DocM (Array (Block ElabInline ElabBlock) × Array (Part ElabInline ElabBlock Empty)) := do
  let mut pre := #[]
  let mut sub := #[]
  repeat
    if let some (x, xs) := takeFirst? (← getThe (TSyntaxArray `block)) then
      if let `(block|header($n){$name*}) := x then
        let n := n.getNat
        if n < level then return (pre, sub)
        else if n = level then
          set xs
          let (content, subParts) ← elabBlocks' (level + 1)
          let title ←
            liftM <| withInfoContext (mkInfo := pure <| .ofDocInfo {elaborator := `no_elab, stx := x}) <|
              name.mapM elabInline
          let mdTitle ← MarkdownM.run' (ToMarkdown.toMarkdown (Inline.concat title))
          sub := sub.push {
            title,
            titleString := mdTitle
            metadata := none
            content, subParts
          }
        else
          logErrorAt x m!"Expected a header no deeper than `{"".pushn '#' <| level + 1}`"
          set xs
      else
        set xs
        try
          pre := pre.push (← elabBlock x)
        catch
          | e =>
            logErrorAt e.getRef e.toMessageData
    else
      break
  return (pre, sub)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean#L1709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6af04853ba13c2d50a909dfaed37219dc95f7eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
