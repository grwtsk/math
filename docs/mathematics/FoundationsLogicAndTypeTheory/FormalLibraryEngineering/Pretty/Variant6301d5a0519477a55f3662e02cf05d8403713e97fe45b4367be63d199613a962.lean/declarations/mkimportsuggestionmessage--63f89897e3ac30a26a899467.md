# mkImportSuggestionMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8009433ca4b9805bc2b0a2f4da8289bd0382044ccc3a3f51380b00c472265d7d",
  "kind": "def",
  "lexical_name": "mkImportSuggestionMessage",
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
  "slug": "mkimportsuggestionmessage--63f89897e3ac30a26a899467",
  "source": {
    "blob": "df54fdcc122f7e059adaf9cbb095a25050d3da6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 422,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63f89897e3ac30a26a89946794d3061604fa151e08c1cf54b9216c3b40dd7402",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8009433ca4b9805bc2b0a2f4da8289bd0382044ccc3a3f51380b00c472265d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkImportSuggestionMessage (ref : Syntax) (newImps : Array Import)
    (sourceImps : Array (ImportRef × Whitespace)) (formatAs := Import.FormatBehavior.grouped)
    (toCodeActionTitle? : Option (String → String) := some fun _ => "Modify imports")
    (includeErrorsAsComment := true) :
    CoreM (Option (MessageData × Import.FormatErrors)) := do
  let (msg, errs) :=
    Import.prettyWithSourceWhitespace newImps sourceImps formatAs includeErrorsAsComment
  let stxRef := mkNullNode (sourceImps.map (·.1.stx.raw))
  let sourceSubstr : Substring.Raw := {
    str := (← getFileMap).source
    startPos := stxRef.getLeadingPos?.getD (stxRef.getPos?.get!)
    -- Ensure we include any annotation after the last import
    stopPos := stxRef.getTrailingTailPos?.get! }
  let (sourceSubstr, str) :=
    -- We want two newlines in front of the suggestion to separate it from `module`.
    -- Either chop these off the source if we can, or add them to our new string.
    -- Chopping off allows us to avoid unsightly whitespace at the top of the suggestion.
    let str := msg.pretty (width := Std.Format.getWidth <|← getOptions)
    if let some sourceSubstr := sourceSubstr.dropPrefix? "\n\n".toRawSubstring then
      (sourceSubstr, str)
    else
      (sourceSubstr, s!"\n\n{str}")
  if sourceSubstr.toString == str then
    return none
  else
    -- TODO: trivial case of no imports suggested
    -- Need `.ofRange` here to insist on overwriting annotations on the last import
    let msg ← Meta.Hint.mkSuggestionsMessage #[{
        suggestion := str
        span? := Syntax.ofRange ⟨sourceSubstr.startPos, sourceSubstr.stopPos⟩
        -- The diff view often gets confused by imports that are shown in the error comment.
        diffGranularity := if errs.isEmpty || !includeErrorsAsComment then .word else .none
        toCodeActionTitle? }]
      ref none (forceList := false)
    return (msg, errs)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df54fdcc122f7e059adaf9cbb095a25050d3da6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
