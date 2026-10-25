# collectVersoTokens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b1c1bc99613f92111bd398325c1a19da57bc9a38270ee28d04e3577a68fc894",
  "kind": "def",
  "lexical_name": "collectVersoTokens",
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
  "slug": "collectversotokens--158136af48f7e6db2d9c7283",
  "source": {
    "blob": "dbfe4cbe254b55b50d0905e8465111920d0e579e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 333,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:158136af48f7e6db2d9c7283fdf554f41a8137b91d4a499169b6664e3c09c121",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b1c1bc99613f92111bd398325c1a19da57bc9a38270ee28d04e3577a68fc894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def collectVersoTokens
    (text : FileMap)
    (stx : Syntax) (getTokens : (stx : Syntax) → Array LeanSemanticToken) :
    Array LeanSemanticToken :=
  go stx |>.run #[] |>.2
where
  tok (tk : Syntax) (k : SemanticTokenType) : StateM (Array LeanSemanticToken) Unit :=
    let priority :=
      match k with
      -- String tokens occur as the default highlighting of code element contents. They should be
      -- overridden by anything more specific, like variable names, that occurs in these elements,
      -- so they get a lower priority.
      | .string => 3
      | _ => 5
    modify (·.push { stx := tk, type := k, priority })

  go (stx : Syntax) : StateM (Array LeanSemanticToken) Unit := do
  match stx with
  | `(arg_val| $x:ident )
  | `(arg_val| $x:str )
  | `(arg_val| $x:num ) =>
    tok x .parameter
  | `(named| (%$tk1 $x:ident :=%$tk2 $v:arg_val )%$tk3) =>
    tok tk1 .keyword
    tok x .property
    tok tk2 .keyword
    go v
    tok tk3 .keyword
  | `(named_no_paren| $x:ident :=%$tk $v:arg_val ) =>
    tok x .property
    tok tk .keyword
    go v
  | `(flag_on| +%$tk$x)  | `(flag_off| -%$tk$x) =>
    tok tk .keyword
    tok x .property
  | `(link_target| [%$tk1 $s ]%$tk2) =>
    tok tk1 .keyword
    tok s .property
    tok tk2 .keyword
  | `(link_target| (%$tk1 $s )%$tk2) =>
    tok tk1 .keyword
    tok s .string
    tok tk2 .keyword
  | `(inline|$_:str) | `(inline|line! $_) => pure () -- No tokens for plain text or line breaks
  | `(inline| *[%$tk1 $inls* ]%$tk2) | `(inline|_[%$tk1 $inls* ]%$tk2) =>
    tok tk1 .keyword
    inls.forM go
    tok tk2 .keyword
  | `(inline| link[%$tk1 $inls* ]%$tk2 $ref) =>
    tok tk1 .keyword
    inls.forM go
    tok tk2 .keyword
    go ref
  | `(inline| image(%$tk1 $s )%$tk2 $ref) =>
    tok tk1 .keyword
    tok s .string
    tok tk2 .keyword
    go ref
  | `(inline| footnote(%$tk1 $s )%$tk2) =>
    tok tk1 .keyword
    tok s .property
    tok tk2 .keyword
  | `(inline| code(%$tk1 $s )%$tk2) =>
    tok tk1 .keyword
    tok s .string
    tok tk2 .keyword
  | `(inline| role{%$tk1 $x $args* }%$tk2 [%$tk3 $inls* ]%$tk4) =>
    tok tk1 .keyword
    tok x .function
    args.forM go
    tok tk2 .keyword
    tok tk3 .keyword
    inls.forM go
    tok tk4 .keyword
  | `(inline| \math%$tk1 code(%$tk2 $s )%$tk3)
  | `(inline| \displaymath%$tk1 code(%$tk2 $s )%$tk3) =>
    tok tk1 .keyword
    tok s .string
    tok tk2 .keyword
    tok tk3 .keyword
  | `(list_item| *%$tk $inls*) =>
    tok tk .keyword
    inls.forM go
  | `(desc| :%$tk $inls* => $blks*) =>
    tok tk .keyword
    inls.forM go
    blks.forM go
  | `(block|para[$inl*]) => inl.forM go
  | `(block| ```%$tk1 $x $args* | $s ```%$tk2)=>
    tok tk1 .keyword
    tok x .function
    args.forM go
    for line in splitStr text s do tok line .string
    tok tk2 .keyword
  | `(block| :::%$tk1 $x $args* { $blks* }%$tk2)=>
    tok tk1 .keyword
    tok x .function
    args.forM go
    blks.forM go
    tok tk2 .keyword
  | `(block| command{%$tk1 $x $args*}%$tk2)=>
    tok tk1 .keyword
    tok x .function
    args.forM go
    tok tk2 .keyword
  | `(block| %%%%$tk1 $vals* %%%%$tk2)=>
    tok tk1 .keyword
    modify (· ++ getTokens (mkNullNode vals))
    tok tk2 .keyword
  | `(block| [%$tk1 $s ]:%$tk2 $url) =>
    tok tk1 .keyword
    tok s .property
    tok tk2 .keyword
    tok url .string
  | `(block| [^%$tk1 $s ]:%$tk2 $inls*) =>
    tok tk1 .keyword
    tok s .property
    tok tk2 .keyword
    inls.forM go
  | `(block| header(%$tk $_ ){ $inls* })=>
    tok tk .keyword
    inls.forM go
  | `(block|ul{$items*}) | `(block|ol($_){$items*}) | `(block|dl{$items*}) =>
    items.forM go
  | other =>
    let k := other.getKind
    if k == nullKind || k == ``Lean.Parser.Command.versoCommentBody then
      other.getArgs.forM go

/--
Collects all semantic tokens that can be deduced purely from `Syntax`
without elaboration information.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfe4cbe254b55b50d0905e8465111920d0e579e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
