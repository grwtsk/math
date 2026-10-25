# docStringLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23f6d94d64e3eb551e8b43fa12a7c1570050f4e4aefacef0b36bd946cd65fd2f",
  "kind": "def",
  "lexical_name": "docStringLinter",
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
  "slug": "docstringlinter--df94a4bcc9fb9d6af41502f9",
  "source": {
    "blob": "efaeafdc4f720b92f1fbab48706ef9177e568281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant8450ab80a485ca78bb80ef3fa1c91877d764705202d2de2e18021eace646c26b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df94a4bcc9fb9d6af41502f996e48500ceddec98d166274bbb22da210c1fc660",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant8450ab80a485ca78bb80ef3fa1c91877d764705202d2de2e18021eace646c26b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23f6d94d64e3eb551e8b43fa12a7c1570050f4e4aefacef0b36bd946cd65fd2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def docStringLinter : Linter where run := withSetOptionIn fun stx ↦ do
  unless Linter.getLinterValue linter.style.docString (← getOptions) do
    return
  if (← get).messages.hasErrors then
    return
  let fm ← getFileMap
  for declMods in getDeclModifiers stx do
    -- `docStx` extracts the `Lean.Parser.Command.docComment` node from the declaration modifiers.
    -- In particular, this ignores parsing `#adaptation_note`s.
    let docStx := declMods[0][0]

    let some pos := docStx.getPos? | continue
    let currIndent := fm.toPosition pos |>.column

    if docStx.isMissing then continue -- this is probably superfluous, thanks to `some pos` above.
    -- `docString` contains e.g. trailing spaces before the `-/`, but does not contain
    -- any leading whitespace before the actual string starts.
    let docString ← try getDocStringText ⟨docStx⟩ catch _ => continue
    -- `startSubstring` is the whitespace between `/--` and the actual doc-string text.
    let startSubstring := match docStx with
      | .node _ _ #[(.atom si ..), _] => si.getTrailing?.getD default
      | _ => default
    -- We replace all line-breaks followed by `currIndent` spaces with a single space.
    let start := deindentString currIndent startSubstring.toString
    if !#["\n", " "].contains start then
      let startRange := {start := startSubstring.startPos, stop := startSubstring.stopPos}
      Linter.logLint linter.style.docString (.ofRange startRange)
        s!"error: doc-strings should start with a single space or newline"

    let deIndentedDocString := deindentString currIndent docString

    let docTrim := deIndentedDocString.trimRight
    let tail := docTrim.length
    -- `endRange` creates an 0-wide range `n` characters from the end of `docStx`
    let endRange (n : Nat) : Syntax := .ofRange
      {start := docStx.getTailPos?.get! - ⟨n⟩, stop := docStx.getTailPos?.get! - ⟨n⟩}
    if docTrim.takeRight 1 == "," then
      Linter.logLint linter.style.docString (endRange (docString.length - tail + 3))
        s!"error: doc-strings should not end with a comma"
    if tail + 1 != deIndentedDocString.length then
      Linter.logLint linter.style.docString (endRange 3)
        s!"error: doc-strings should end with a single space or newline"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant8450ab80a485ca78bb80ef3fa1c91877d764705202d2de2e18021eace646c26b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant8450ab80a485ca78bb80ef3fa1c91877d764705202d2de2e18021eace646c26b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efaeafdc4f720b92f1fbab48706ef9177e568281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
