# parserOfStackFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e484ce1d03b26cb542a8712c9b92bcd5e347b85d97d75f682078e5191e9a4647",
  "kind": "def",
  "lexical_name": "parserOfStackFn",
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
  "slug": "parserofstackfn--c52ec5e13480d3fff94d1ff7",
  "source": {
    "blob": "8df994b39cd63eb47910c8816869e2a4091eb510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 802,
    "line": 776,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c52ec5e13480d3fff94d1ff721a3b9f504c0105f87e99bd623e4f30d04bf8d9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e484ce1d03b26cb542a8712c9b92bcd5e347b85d97d75f682078e5191e9a4647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 776–802.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parserOfStackFn (offset : Nat) : ParserFn := fun ctx s => Id.run do
  let stack := s.stxStack
  if stack.size < offset + 1 then
    return s.mkUnexpectedError ("failed to determine parser using syntax stack, stack is too small")
  let parserName@(.ident ..) := stack.get! (stack.size - offset - 1)
    | s.mkUnexpectedError ("failed to determine parser using syntax stack, the specified element on the stack is not an identifier")
  let iniSz := s.stackSize
  let s ← match ctx.resolveParserName ⟨parserName⟩ (unsetExporting := true) with
    | [.category cat] =>
      categoryParserFn cat ctx s
    | [.parser parserName _] =>
      adaptUncacheableContextFn (fun ctx =>
        -- static quotations such as `(e) do not use the interpreter unless the above option is set,
        -- so for consistency neither should dynamic quotations using this function
        { ctx with options := ctx.options.set `interpreter.prefer_native (!internal.parseQuotWithCurrentStage.get ctx.options) })
        (evalParserConst parserName) ctx s
    | [.alias alias] =>
      match alias with
      | .const p => p.fn ctx s
      | _ =>
        return s.mkUnexpectedError s!"parser alias {parserName}, must not take parameters"
    | _::_::_ => return s.mkUnexpectedError s!"ambiguous parser name {parserName}"
    | [] => return s.mkUnexpectedError s!"unknown parser {parserName}"
  if !s.hasError && s.stackSize != iniSz + 1 then
    return s.mkUnexpectedError "expected parser to return exactly one syntax object"
  s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean#L776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df994b39cd63eb47910c8816869e2a4091eb510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
