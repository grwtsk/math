# versoSyntaxToString'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ba546bd928799fe86b2f3fbab67abd045c842a8071c7b70a3389e2a9a96db9d",
  "kind": "def",
  "lexical_name": "versoSyntaxToString'",
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
  "slug": "versosyntaxtostring--2c16904ead4bf7b7fa1e3bd1",
  "source": {
    "blob": "7abde18a3e2e85555616cb7668c9610f144e45e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variant88827bec578ff3f400672b8b5ffaec66d3bbff311b5775a8cc44580759da1b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c16904ead4bf7b7fa1e3bd17f2a5e3de0f8af65c3653666456e4fabe8b37e2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variant88827bec578ff3f400672b8b5ffaec66d3bbff311b5775a8cc44580759da1b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ba546bd928799fe86b2f3fbab67abd045c842a8071c7b70a3389e2a9a96db9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def versoSyntaxToString' (stx : Syntax) : ReaderT Nat (StateM String) Unit := do
  if stx.getKind == nullKind then
    stx.getArgs.forM versoSyntaxToString'
  else
    match stx with
    | `(arg_val|$s:str) => out <| atomString s
    | `(arg_val|$n:num) => out <| atomString n
    | `(arg_val|$x:ident) => out <| identString x
    | `(doc_arg|($x := $v)) | `(doc_arg|$x:ident := $v) =>
      out "("
      out <| identString x
      out " := "
      versoSyntaxToString' v
      out ")"
    | `(doc_arg|+%$tk$x:ident) | `(doc_arg|-%$tk$x:ident) =>
      out <| atomString tk
      out <| identString x
    | `(doc_arg|$x:arg_val) => versoSyntaxToString' x
    | `(inline|$s:str) => out s.getString
    | `(inline|_[%$tk1 $inl* ]%$tk2) | `(inline|*[%$tk1 $inl* ]%$tk2) =>
      out <| atomString tk1
      inl.forM versoSyntaxToString'
      out <| atomString tk2
    | `(inline|link[%$tk1 $inl* ]%$tk2 $tgt) =>
      out <| atomString tk1
      inl.forM versoSyntaxToString'
      out <| atomString tk2
      versoSyntaxToString' tgt
    | `(inline|image(%$tk1 $alt )%$tk2 $tgt) =>
      out <| atomString tk1
      out <| (Syntax.decodeStrLit (atomString alt)).getD ""
      out <| atomString tk2
      versoSyntaxToString' tgt
    | `(inline|role{$name $args*}[$inls*]) =>
      out "{"
      out <| identString name
      for arg in args do
        out " "
        versoSyntaxToString' arg
      out "}["
      inls.forM versoSyntaxToString'
      out "]"
    | `(inline|code(%$tk1$s)%$tk2) =>
      out <| atomString tk1
      out <| (Syntax.decodeStrLit (atomString s)).getD ""
      out <| atomString tk2
    | `(inline|footnote(%$tk1 $ref )%$tk2) =>
      out <| atomString tk1
      out <| (Syntax.decodeStrLit (atomString ref)).getD ""
      out <| atomString tk2
    | `(inline|line! $s) =>
      out <| (Syntax.decodeStrLit (atomString s)).getD ""
    | `(inline|\math%$tk1 code(%$tk2 $s )%$tk3)
    | `(inline|\displaymath%$tk1 code(%$tk2 $s )%$tk3) =>
      out <| atomString tk1
      out <| atomString tk2
      out <| (Syntax.decodeStrLit (atomString s)).getD ""
      out <| atomString tk3
    | `(link_target|[%$tk1 $ref ]%$tk2) =>
      out <| atomString tk1
      out <| (Syntax.decodeStrLit (atomString ref)).getD ""
      out <| atomString tk2
    | `(link_target|(%$tk1 $url )%$tk2) =>
      out <| atomString tk1
      out <| (Syntax.decodeStrLit (atomString url)).getD ""
      out <| atomString tk2
    | `(block|header($n){$inl*}) =>
      out <| "#".pushn '#' n.getNat ++ " "
      inl.forM versoSyntaxToString'
      endBlock
    | `(block|para[$inl*]) =>
      startBlock
      inl.forM versoSyntaxToString'
      endBlock
    | `(block|ul{$items*}) =>
      startBlock
      items.forM fun
        | `(list_item|* $blks*) => do
          out "* "
          withReader (· + 2) (blks.forM versoSyntaxToString')
          endBlock
        | _ => pure ()
      endBlock
    | `(block|ol($n){$items*}) =>
      startBlock
      let mut n := n.getNat
      for item in items do
        match item with
        | `(list_item|* $blks*) => do
          out s!"{n}. "
          withReader (· + 2) (blks.forM versoSyntaxToString')
          endBlock
          n := n + 1
        | _ => pure ()
      endBlock
    | `(block| > $blks*) =>
      startBlock
      out "> "
      withReader (· + 2) (blks.forM versoSyntaxToString')
      endBlock
    | `(block| ```%$tk1 $name $args* | $s ```%$tk2) =>
      startBlock
      out <| atomString tk1
      out <| identString name
      for arg in args do
        out " "
        versoSyntaxToString' arg
      out "\n"
      let i ← read
      let s := Syntax.decodeStrLit (atomString s) |>.getD ""
        |>.split '\n'
        |>.map (fun (s : String.Slice) => "".pushn ' ' i ++ s)
        |>.toList
        |> "\n".intercalate
      out s
      out <| "".pushn ' ' i
      out <| atomString tk2
      endBlock
    | `(block| :::%$tk1 $name $args* {$blks*}%$tk2) =>
      startBlock
      out <| atomString tk1
      out " "
      out <| identString name
      for arg in args do
        out " "
        versoSyntaxToString' arg
      out "\n"
      blks.forM versoSyntaxToString'
      let i ← read
      out <| "".pushn ' ' i
      out <| atomString tk2
      endBlock
    | `(block|command{ $name $args* }) =>
      startBlock
      out <| "{"
      out <| identString name
      for arg in args do
        out " "
        versoSyntaxToString' arg
      out "}"
      endBlock

    | other => out (toString other)
where
  out (s : String) : ReaderT Nat (StateM String) Unit := modify (· ++ s)
  nl : ReaderT Nat (StateM String) Unit := read >>= fun n => modify (· ++ "\n".pushn ' ' n)
  startBlock : ReaderT Nat (StateM String) Unit := do
    let s ← get
    if s.endsWith "\n" then
      let i ← read
      out ("".pushn ' ' i)
  endBlock : ReaderT Nat (StateM String) Unit := do
    let s ← get
    if s.endsWith "\n\n" then return
    else if s.endsWith "\n" then out "\n"
    else out "\n\n"

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variant88827bec578ff3f400672b8b5ffaec66d3bbff311b5775a8cc44580759da1b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variant88827bec578ff3f400672b8b5ffaec66d3bbff311b5775a8cc44580759da1b2f.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7abde18a3e2e85555616cb7668c9610f144e45e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
