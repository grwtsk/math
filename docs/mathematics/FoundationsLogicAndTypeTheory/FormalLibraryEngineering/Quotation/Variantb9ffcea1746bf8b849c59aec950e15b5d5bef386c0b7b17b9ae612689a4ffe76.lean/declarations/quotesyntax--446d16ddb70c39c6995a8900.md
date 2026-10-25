# quoteSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7449766c1f071ac053f606407d9ef2cb3c973965d08f7666243db5792127be49",
  "kind": "def",
  "lexical_name": "quoteSyntax",
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
  "slug": "quotesyntax--446d16ddb70c39c6995a8900",
  "source": {
    "blob": "8213946421eefb8d9285f496a3c5b4e57958e223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:446d16ddb70c39c6995a89002bf45c2f740007f6432ba713ea483952000cb44b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7449766c1f071ac053f606407d9ef2cb3c973965d08f7666243db5792127be49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def quoteSyntax : Syntax → TermElabM Term
  | Syntax.ident _ rawVal val preresolved => do
    if !hygiene.get (← getOptions) then
      return ← `(Syntax.ident info $(quote rawVal) $(quote val) $(quote preresolved))
    -- Add global scopes at compilation time (now), add macro scope at runtime (in the quotation).
    -- See the paper for details.
    let consts ← resolveGlobalName val
    -- extension of the paper algorithm: also store unique section variable names as top-level scopes
    -- so they can be captured and used inside the section, but not outside
    let sectionVars := resolveSectionVariable (← read).sectionVars val
    -- extension of the paper algorithm: resolve namespaces as well
    let namespaces ← resolveNamespaceCore (allowEmpty := true) val
    let preresolved := (consts ++ sectionVars).map (fun (n, projs) => Preresolved.decl n projs) ++
      namespaces.map .namespace ++
      preresolved
    let val := quote val
    -- `scp` is bound in stxQuot.expand
    `(Syntax.ident info $(quote rawVal) (addMacroScope quotCtx $val scp) $(quote preresolved))
  -- if antiquotation, insert contents as-is, else recurse
  | stx@(Syntax.node _ k _) => do
    if let some (k, _) := stx.antiquotKind? then
      if let some name := getAntiquotKindSpec? stx then
        tryAddSyntaxNodeKindInfo name k
    if isAntiquots stx && !isEscapedAntiquot (getCanonicalAntiquot stx) then
      let ks := antiquotKinds stx
      `(@TSyntax.raw $(quote <| ks.map (·.1)) $(getAntiquotTerm (getCanonicalAntiquot stx)))
    else if isTokenAntiquot stx && !isEscapedAntiquot stx then
      match stx[0] with
      | Syntax.atom _ val => `(Syntax.atom (SourceInfo.fromRef $(getAntiquotTerm stx) (canonical := true)) $(quote val))
      | _                 => throwErrorAt stx "expected token"
    else if isAntiquotSuffixSplice stx && !isEscapedAntiquot (getCanonicalAntiquot (getAntiquotSuffixSpliceInner stx)) then
      -- splices must occur in a `many` node
      throwErrorAt stx "unexpected antiquotation splice"
    else if isAntiquotSplice stx && !isEscapedAntiquot stx then
      throwErrorAt stx "unexpected antiquotation splice"
    else
      -- if escaped antiquotation, decrement by one escape level
      let stx := unescapeAntiquot stx
      let mut args := ArrayStxBuilder.empty
      let appendName := if (← getEnv).contains ``Array.append then ``Array.append else ``Array.appendCore
      for arg in stx.getArgs do
        if k == nullKind && isAntiquotSuffixSplice arg && !isEscapedAntiquot (getCanonicalAntiquot (getAntiquotSuffixSpliceInner arg)) then
          let antiquot := getAntiquotSuffixSpliceInner arg
          let ks := antiquotKinds antiquot |>.map (·.1)
          let val := getAntiquotTerm (getCanonicalAntiquot antiquot)
          args := args.append (appendName := appendName) <| ←
            match antiquotSuffixSplice? arg with
            | `optional => `(match Option.map (@TSyntax.raw $(quote ks)) $val:term with
              | some x => Array.empty.push x
              | none   => Array.empty)
            | `many     => `(@TSyntaxArray.raw $(quote ks) $val)
            | `sepBy    =>
              let sep := quote <| getSepFromSplice arg
              `(@TSepArray.elemsAndSeps $(quote ks) $sep $val)
            | k         => throwErrorAt arg "invalid antiquotation suffix splice kind `{k}`"
        else if k == nullKind && isAntiquotSplice arg && !isEscapedAntiquot arg then
          let k := antiquotSpliceKind? arg
          let (arg, bindLets) ← floatOutAntiquotTerms arg |>.run pure
          let inner ← (getAntiquotSpliceContents arg).mapM quoteSyntax
          let ids ← getAntiquotationIds arg
          if ids.isEmpty then
            throwErrorAt stx "antiquotation splice must contain at least one antiquotation"
          let arr ← match k with
            | `optional => `(match $[$ids:ident],* with
                | $[some $ids:ident],* => $(quote inner)
                | $[_%$ids],*          => Array.empty)
            | _ =>
              let arr ← ids[*...(ids.size - 1)].foldrM (fun id arr => `(Array.zip $id:ident $arr)) ids.back!
              `(Array.map (fun $(← mkTuple ids) => $(inner[0]!)) $arr)
          let arr ← if k == `sepBy then
            `(mkSepArray $arr $(getSepStxFromSplice arg))
          else
            pure arr
          let arr ← bindLets arr
          args := args.append (appendName := appendName) arr
        else do
          let arg ← quoteSyntax arg
          args := args.push arg
      args.mkNode k
  | Syntax.atom _ val =>
    `(Syntax.atom info $(quote val))
  | Syntax.missing => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8213946421eefb8d9285f496a3c5b4e57958e223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
