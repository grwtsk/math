# insertEnter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4097faf57cb3842b54436bbd44949b472eab1d017e541331bdb15365d157b308",
  "kind": "def",
  "lexical_name": "insertEnter",
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
  "slug": "insertenter--07ecd5f276f1d0de47d54f6a",
  "source": {
    "blob": "18f28852cef840c810540b1de765d7de33d39a67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07ecd5f276f1d0de47d54f6aacd1033f33040f194905240e3cb2052be0adf7c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4097faf57cb3842b54436bbd44949b472eab1d017e541331bdb15365d157b308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def insertEnter (locations : Array Lean.SubExpr.GoalsLocation) (goalType : Expr)
    (params : SelectInsertParams): MetaM (String × String × Option (String.Pos × String.Pos)) := do
  let some pos := locations[0]? | throwError "You must select something."
  let (fvar, subexprPos) ← match pos with
  | ⟨_, .target subexprPos⟩ => pure (none, subexprPos)
  | ⟨_, .hypType fvar subexprPos⟩ => pure (some fvar, subexprPos)
  | ⟨_, .hypValue fvar subexprPos⟩ => pure (some fvar, subexprPos)
  | _ => throwError "You must select something in the goal or in a local value."
  let mut list := (SubExpr.Pos.toArray subexprPos).toList
    let mut expr := goalType
  let mut retList := []
  -- generate list of commands for `enter`
  while !list.isEmpty do
    let res ← solveLevel expr list
    expr := res.expr
    retList := match res.val? with
      | none => retList
      | some val => val::retList
    list := res.listRest

  -- build `enter [...]` string
  retList := List.reverse retList
  -- prepare `enter` indentation
  let spc := String.replicate (SelectInsertParamsClass.replaceRange params).start.character ' '
  let loc ← match fvar with
  | some fvarId => pure s!"at {← fvarId.getUserName} "
  | none => pure ""
  let mut enterval := s!"conv {loc}=>\n{spc}  enter {retList}"
  if enterval.contains '0' then enterval := "Error: Not a valid conv target"
  if retList.isEmpty then enterval := ""
  return ("Generate conv", enterval, none)

/-- Rpc function for the conv widget. -/
@[server_rpc_method]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18f28852cef840c810540b1de765d7de33d39a67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
