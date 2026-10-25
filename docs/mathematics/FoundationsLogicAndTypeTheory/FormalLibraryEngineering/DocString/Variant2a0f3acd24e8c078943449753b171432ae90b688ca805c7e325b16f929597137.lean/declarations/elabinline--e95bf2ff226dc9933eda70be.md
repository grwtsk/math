# elabInline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d8eaffe5e2086870241c8754c410bb9b4f6ddc59053338b0c19991f26991d37",
  "kind": "def",
  "lexical_name": "elabInline",
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
  "slug": "elabinline--e95bf2ff226dc9933eda70be",
  "source": {
    "blob": "014689ae16d0f21928edb8900d54e926c7b9471b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1579,
    "line": 1495,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e95bf2ff226dc9933eda70becac31b028454be7e306e9d91f8a5020d6e031999",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d8eaffe5e2086870241c8754c410bb9b4f6ddc59053338b0c19991f26991d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1495–1579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def elabInline (stx : TSyntax `inline) : DocM (Inline ElabInline) :=
  withRef stx <|
  withInfoContext (mkInfo := pure <| .ofDocInfo {elaborator := decl_name%, stx := stx}) do
  match stx with
  | `(inline|$s:str) =>
    return .text s.getString
  | `(inline|_[$inl*]) =>
    return .emph (← inl.mapM elabInline)
  | `(inline|*[$inl*]) =>
    return .bold (← inl.mapM elabInline)
  | `(inline|link[$inl*]($url)) =>
    return .link (← inl.mapM elabInline) url.getString
  | `(inline|link[$inl*][$name]) =>
    return .other (delayLink name) (← inl.mapM elabInline)
  | `(inline|image($alt)($url)) =>
    -- TODO forward ref to URL
    return .image alt.getString url.getString
  | `(inline|image($alt)[$name]) =>
    return .other (delayImage alt.getString name) #[]
  | `(inline|footnote($ref)) =>
    return .other (delayFootnote ref) #[]
  | `(inline|line!$s) =>
    return .linebreak s.getString
  | `(inline|code($s)) =>
    if doc.verso.suggestions.get (← getOptions) then
      if let some ⟨b, e⟩ := stx.raw.getRange? then
        let suggesters ← codeSuggestions
        let mut suggestions := #[]
        for suggest in suggesters do
          try suggestions := suggestions ++ (← withEnableInfoTree false <| suggest s)
          catch | _ => pure ()
        unless suggestions.isEmpty do
          let text ← getFileMap
          let str := String.Pos.Raw.extract text.source b e
          let ss : Array (String × Option String × Option String) ←
            suggestions.mapM fun {role, args, moreInfo} => do
              pure {
                fst :=
                  "{" ++ (← suggestionName role).toString ++
                  (args.map (" " ++ ·)).getD "" ++ "}" ++ str,
                snd.fst := none
                snd.snd := moreInfo.map withSpace
              }
          let ss := ss.qsort (fun x y => x.1 < y.1)
          let litName ← suggestionName `Lean.Doc.lit
          let litSuggestion :=
            ( "{" ++ litName.toString ++ "}" ++ str,
              some "Use the `lit` role:\n",
              some "\nto mark the code as literal text and disable suggestions" )
          let ss := ss.push litSuggestion
          let hint ← mkSuggestion stx m!"Insert a role to document it:" ss
          logWarning m!"Code element could be more specific.{hint}"
    return .code s.getString
  | `(inline|\math code($s)) =>
    return .math .inline s.getString
  | `(inline|\displaymath code($s)) =>
    return .math .display s.getString
  | `(inline|role{$name $args*}[$inl*]) =>
    let expanders ← roleExpandersFor name
    for (exName, ex) in expanders do
      try
        let res ← ex inl args <&> (·.1)
        pushInfoLeaf <| .ofDocElabInfo {
          elaborator := exName,
          stx := name,
          name := exName,
          kind := .role
        }
        return res
      catch
        | e@(.internal id _) =>
          if id == unsupportedSyntaxExceptionId then
            continue
          else throw e
        | e => throw e
    throwUnknownDocElem (docRoleExt.getState (← getEnv)) (← builtinDocRoles.get) name "role"
  | other =>
    throwErrorAt other "Unsupported syntax {other}"
where
  withSpace (s : String) : String :=
    if s.startsWith " " then s else " " ++ s

/--
Elaborates the syntax of an block-level document element to an actual block-level document element.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean#L1495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `014689ae16d0f21928edb8900d54e926c7b9471b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
