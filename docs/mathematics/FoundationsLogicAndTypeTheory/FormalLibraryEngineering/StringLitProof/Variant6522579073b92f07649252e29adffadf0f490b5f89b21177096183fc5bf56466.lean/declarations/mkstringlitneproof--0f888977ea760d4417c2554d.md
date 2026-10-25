# mkStringLitNeProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80a7ce26041701d7766c779d230eae3e271e484e565c78ce1970b5d44e6889fb",
  "kind": "def",
  "lexical_name": "mkStringLitNeProof",
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
  "slug": "mkstringlitneproof--0f888977ea760d4417c2554d",
  "source": {
    "blob": "9182f07d28213b3597efc6b5c1ac00aaf1f57577",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringLitProof/Variant6522579073b92f07649252e29adffadf0f490b5f89b21177096183fc5bf56466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f888977ea760d4417c2554da08d992f5fb3892790776752ace1a0768cc03f25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringLitProof/Variant6522579073b92f07649252e29adffadf0f490b5f89b21177096183fc5bf56466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80a7ce26041701d7766c779d230eae3e271e484e565c78ce1970b5d44e6889fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkStringLitNeProof (s₁ s₂ : String) : MetaM Expr := do
  let l₁ := s₁.toList
  let l₂ := s₂.toList
  let l₁Expr := toExpr l₁
  let l₂Expr := toExpr l₂
  let charConst := mkConst ``Char
  let listCharTy := mkApp (mkConst ``List [.zero]) charConst
  -- Find the first differing character index
  let minLen := min l₁.length l₂.length
  let diffIdx := Id.run do
    for i in [:minLen] do
      if l₁[i]! ≠ l₂[i]! then return i
    return minLen
  -- Build the list inequality proof, dispatching on whether it's a character
  -- difference or a prefix/length difference
  let listEq := mkApp3 (mkConst ``Eq [.succ .zero]) listCharTy l₁Expr l₂Expr
  let listNeProof ←
    if diffIdx < minLen then
      -- Both lists have a character at diffIdx: project to Nat via get!Internal + toNat,
      -- then use Nat.ne_of_beq_eq_false rfl (avoids Decidable instances entirely)
      let inhabCharExpr := mkConst ``Char.instInhabited
      let natConst := mkConst ``Nat
      let iExpr := toExpr diffIdx
      -- f = fun l => (List.get!Internal l i).toNat
      let projFn := mkLambda `l .default listCharTy
        (mkApp (mkConst ``Char.toNat)
          (mkApp4 (mkConst ``List.get!Internal [.zero]) charConst inhabCharExpr (mkBVar 0) iExpr))
      let mkGetToNat (lExpr : Expr) : Expr :=
        mkApp (mkConst ``Char.toNat)
          (mkApp4 (mkConst ``List.get!Internal [.zero]) charConst inhabCharExpr lExpr iExpr)
      let projL1 := mkGetToNat l₁Expr
      let projL2 := mkGetToNat l₂Expr
      let projEq := mkApp3 (mkConst ``Eq [.succ .zero]) natConst projL1 projL2
      let congrArgFn := mkApp5 (mkConst ``congrArg [.succ .zero, .succ .zero])
        listCharTy natConst l₁Expr l₂Expr projFn
      -- Nat.ne_of_beq_eq_false rfl : n₁ ≠ n₂  (kernel evaluates Nat.beq on two literals)
      let projNeProof := mkApp3 (mkConst ``Nat.ne_of_beq_eq_false)
        projL1 projL2 (← mkEqRefl (mkConst ``false))
      pure <| mkApp4 (mkConst ``mt) listEq projEq congrArgFn projNeProof
    else
      -- One list is a prefix of the other: use drop + cons_ne_nil
      let nExpr := toExpr minLen
      let dropFn := mkLambda `l .default listCharTy
        (mkApp3 (mkConst ``List.drop [.zero]) charConst nExpr (mkBVar 0))
      let dropL1 := mkApp3 (mkConst ``List.drop [.zero]) charConst nExpr l₁Expr
      let dropL2 := mkApp3 (mkConst ``List.drop [.zero]) charConst nExpr l₂Expr
      let dropEq := mkApp3 (mkConst ``Eq [.succ .zero]) listCharTy dropL1 dropL2
      let congrArgFn := mkApp5 (mkConst ``congrArg [.succ .zero, .succ .zero])
        listCharTy listCharTy l₁Expr l₂Expr dropFn
      -- The longer list's drop has a head element; the shorter list's drop is []
      let (hdChar, tlList) :=
        if l₁.length ≤ l₂.length then
          let dropped := l₂.drop minLen
          (dropped.head!, dropped.tail!)
        else
          let dropped := l₁.drop minLen
          (dropped.head!, dropped.tail!)
      let hdExpr := toExpr hdChar
      let tlExpr := toExpr tlList
      -- cons_ne_nil hd tl : hd :: tl ≠ []
      let consNeNil := mkApp3 (mkConst ``List.cons_ne_nil [.zero]) charConst hdExpr tlExpr
      let dropNeProof :=
        if l₁.length ≤ l₂.length then
          -- l₁ is shorter: drop l₁ = [], drop l₂ = hd :: tl, need [] ≠ hd :: tl
          mkApp4 (mkConst ``Ne.symm [.succ .zero]) listCharTy
            (mkApp3 (mkConst ``List.cons [.zero]) charConst hdExpr tlExpr)
            (mkApp (mkConst ``List.nil [.zero]) charConst)
            consNeNil
        else
          -- l₂ is shorter: drop l₁ = hd :: tl, drop l₂ = [], need hd :: tl ≠ []
          consNeNil
      pure <| mkApp4 (mkConst ``mt) listEq dropEq congrArgFn dropNeProof
  -- strNeProof : String.ofList l₁ ≠ String.ofList l₂   via   mt ofList_injective listNeProof
  let strType := mkConst ``String
  let strEq := mkApp3 (mkConst ``Eq [.succ .zero]) strType
    (mkApp (mkConst ``String.ofList) l₁Expr) (mkApp (mkConst ``String.ofList) l₂Expr)
  return mkApp4 (mkConst ``mt) strEq listEq
    (mkApp2 (mkConst ``String.ofList_injective) l₁Expr l₂Expr) listNeProof

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringLitProof/Variant6522579073b92f07649252e29adffadf0f490b5f89b21177096183fc5bf56466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringLitProof/Variant6522579073b92f07649252e29adffadf0f490b5f89b21177096183fc5bf56466.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9182f07d28213b3597efc6b5c1ac00aaf1f57577` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
