# elabBasicStringCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10475a66fb2aa5246952d01c84c1e1de52e81489d8ec81bbbe126817478a586a",
  "kind": "def",
  "lexical_name": "elabBasicStringCore",
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
  "slug": "elabbasicstringcore--7d5a32873977b6cb8f9a5418",
  "source": {
    "blob": "d2daf27bfd9d4d50be0ba4c1296da95a3432da45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d5a32873977b6cb8f9a5418f36571583981bb39e072344e9bf8baae45c3de1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10475a66fb2aa5246952d01c84c1e1de52e81489d8ec81bbbe126817478a586a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def elabBasicStringCore (lit : String) (i : String.Pos.Raw := 0) (out := "") : CoreM String := do
  if h : i.atEnd lit then
    return out
  else
    let curr := i.get' lit h
    let i := i.next' lit h
    if curr == '\\' then
      if h : i.atEnd lit then
        return out
      else
        let curr := i.get' lit h
        let elabUnicodeEscape escape :=
          let val := decodeHexDigits escape
          if h : val.isValidChar then
            let ch := Char.ofNatAux val h
            elabBasicStringCore lit escape.stopPos (out.push ch)
          else
            throwError "invalid unicode escape `{escape}`"
        let next := i.next' lit h
        match curr with
        | 'b'  => elabBasicStringCore lit next (out.push '\x08')
        | 't'  => elabBasicStringCore lit next (out.push '\t')
        | 'n'  => elabBasicStringCore lit next (out.push '\n')
        | 'f'  => elabBasicStringCore lit next (out.push '\x0C')
        | 'r'  => elabBasicStringCore lit next (out.push '\r')
        | '\"' => elabBasicStringCore lit next (out.push '"')
        | '\\' => elabBasicStringCore lit next (out.push '\\')
        | 'u'  => elabUnicodeEscape (Substring.Raw.mk lit next lit.rawEndPos |>.take 4)
        | 'U'  => elabUnicodeEscape (Substring.Raw.mk lit next lit.rawEndPos |>.take 8)
        | _ =>
          let i := Substring.Raw.mk lit i lit.rawEndPos |>.trimLeft |>.startPos
          elabBasicStringCore lit i out
    else
      elabBasicStringCore lit i (out.push curr)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2daf27bfd9d4d50be0ba4c1296da95a3432da45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
