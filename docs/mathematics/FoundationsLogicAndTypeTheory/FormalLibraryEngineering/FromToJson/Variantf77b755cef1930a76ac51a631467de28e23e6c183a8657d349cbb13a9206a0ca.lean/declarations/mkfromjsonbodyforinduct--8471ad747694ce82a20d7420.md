# mkFromJsonBodyForInduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfabaf390a4664dda39024e7067cbed8798a85aec51d7a7a393c2c6f05114ad8",
  "kind": "def",
  "lexical_name": "mkFromJsonBodyForInduct",
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
  "slug": "mkfromjsonbodyforinduct--8471ad747694ce82a20d7420",
  "source": {
    "blob": "9e1f6e6d0ddddc9e050cd6d5c7f28b75c5881d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8471ad747694ce82a20d74202139c6d74f84c477f1b4e97f6a4c6306db919674",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfabaf390a4664dda39024e7067cbed8798a85aec51d7a7a393c2c6f05114ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFromJsonBodyForInduct (ctx : Context) (indName : Name) : TermElabM Term := do
  let indVal ← getConstInfoInduct indName
  let (ctors, alts) := (← mkAlts indVal).unzip
  `(match Json.getTag? json with
    | some tag => match tag with
      $[| $(ctors.map Syntax.mkStrLit) => $(alts)]*
      | _ => Except.error "no inductive constructor matched"
    | none => Except.error "no inductive tag found")
where
  mkAlts (indVal : InductiveVal) : TermElabM (Array (String × Term)) := do
  let mut alts := #[]
  for ctorName in indVal.ctors do
    let ctorInfo ← getConstInfoCtor ctorName
    let ctorStr := ctorName.eraseMacroScopes.getString!
    let alt ← do forallTelescopeReducing ctorInfo.type fun xs _ => do
        let mut binders   := #[]
        let mut userNames := #[]
        for i in *...ctorInfo.numFields do
          let x := xs[indVal.numParams + i]!
          let localDecl ← x.fvarId!.getDecl
          if !localDecl.userName.hasMacroScopes then
            userNames := userNames.push localDecl.userName
          let a := mkIdent (← mkFreshUserName `a)
          binders := binders.push (a, localDecl.type)
        let fromJsonFuncId := mkIdent ctx.auxFunNames[0]!
        -- Return syntax to parse `id`, either via `FromJson` or recursively
        -- if `id`'s type is the type we're deriving for.
        let mkFromJson (idx : Nat) (type : Expr) : TermElabM (TSyntax ``doExpr) :=
          if type.isAppOf indVal.name then `(Lean.Parser.Term.doExpr| $fromJsonFuncId:ident jsons[$(quote idx)]!)
          else `(Lean.Parser.Term.doExpr| fromJson? jsons[$(quote idx)]!)
        let identNames := binders.map Prod.fst
        let fromJsons ← binders.mapIdxM fun idx (_, type) => mkFromJson idx type
        let userNamesOpt ← if binders.size == userNames.size then
          ``(some #[$[$(userNames.map quote)],*])
        else
          ``(none)
        let stx ←
          if ctorInfo.numFields == 0 then
            `(return $(mkIdent ctorName):ident $identNames*)
          else
            `((Json.parseCtorFields json $(quote ctorStr) $(quote ctorInfo.numFields) $(quote userNamesOpt)).bind
              (fun jsons => do
                $[let $identNames:ident ← $fromJsons:doExpr]*
                return $(mkIdent ctorName):ident $identNames*))
        pure ((ctorStr, stx), ctorInfo.numFields)
      alts := alts.push alt
  -- the smaller cases, especially the ones without fields are likely faster
  let alts' := alts.qsort (fun (_, x) (_, y) => x < y)
  return alts'.map Prod.fst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e1f6e6d0ddddc9e050cd6d5c7f28b75c5881d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
