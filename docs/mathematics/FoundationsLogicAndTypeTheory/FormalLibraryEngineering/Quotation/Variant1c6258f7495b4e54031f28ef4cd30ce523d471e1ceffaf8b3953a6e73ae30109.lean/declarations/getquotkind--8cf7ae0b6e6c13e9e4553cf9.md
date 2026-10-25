# getQuotKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:488bbd9505124b34fae1c3a306f51e06cbdaaf67610ef5413da36bc85b039f22",
  "kind": "def",
  "lexical_name": "getQuotKind",
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
  "slug": "getquotkind--8cf7ae0b6e6c13e9e4553cf9",
  "source": {
    "blob": "f853dd6ab2d659731df0875f0159b3e57c6c13b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cf7ae0b6e6c13e9e4553cf9ae9e35fd2caee2ddcdfc303bda04f55c8ccd9a4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:488bbd9505124b34fae1c3a306f51e06cbdaaf67610ef5413da36bc85b039f22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getQuotKind (stx : Syntax) : TermElabM SyntaxNodeKind := do
  match stx.getKind with
  | ``Parser.Command.quot => addNamedQuotInfo stx `command
  | ``Parser.Term.quot => addNamedQuotInfo stx `term
  | ``Parser.Tactic.quot => addNamedQuotInfo stx `tactic
  | ``Parser.Tactic.quotSeq => addNamedQuotInfo stx `tactic.seq
  | .str kind "quot" => addNamedQuotInfo stx kind
  | ``dynamicQuot =>
    let id := stx[1]
    match (← withoutExporting <| elabParserName id) with
    | .parser n _ => return n
    | .category c => return c
    | .alias _    => return (← Parser.getSyntaxKindOfParserAlias? id.getId.eraseMacroScopes).get!
  | k => throwError "unexpected quotation kind {k}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f853dd6ab2d659731df0875f0159b3e57c6c13b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
