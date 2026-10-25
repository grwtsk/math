# findTactic?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f236b7dda649d23fae8acac3b36a64f81a168691ed13b3da25174977fe8ffe2c",
  "kind": "def",
  "lexical_name": "findTactic?",
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
  "slug": "findtactic--01a46732f12d1c272fbacd4a",
  "source": {
    "blob": "91f4f795bbbcfa90d583aabacfd114820fd9bd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Variant6a4d58de2ecd7df9c2b659b092eae09035ad4aa123b092cf193217e720a243eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01a46732f12d1c272fbacd4a6a8ab34a0a66c4a5182aaa8668e3a7509dd1f1d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Variant6a4d58de2ecd7df9c2b659b092eae09035ad4aa123b092cf193217e720a243eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f236b7dda649d23fae8acac3b36a64f81a168691ed13b3da25174977fe8ffe2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findTactic? (preferred : String.Pos.Raw → Bool) (range : Lean.Syntax.Range)
    (root : Syntax) : Option FindTacticResult := do _ ← visit root; ← go [] root
where
  /-- Returns `none` if we should not visit this syntax at all, and `some false` if we only
  want to visit it in "extended" mode (where we include trailing characters). -/
  visit (stx : Syntax) (prev? : Option String.Pos.Raw := none) : Option Bool := do
    let left ← stx.getPos? true
    guard <| prev?.getD left ≤ range.start
    let .original (endPos := right) (trailing := trailing) .. := stx.getTailInfo | none
    guard <| right.byteIdx + trailing.bsize ≥ range.stop.byteIdx
    return left ≤ range.start && right ≥ range.stop

  /-- Merges the results of two `FindTacticResult`s. This just prefers the second (inner) one,
  unless the inner tactic is a dispreferred tactic sequence and the outer one is preferred.
  This is used to implement whitespace-sensitive selection of tactic sequences. -/
  merge : (r₁ : Option FindTacticResult) → (r₂ : FindTacticResult) → FindTacticResult
  | some r₁@(.tacticSeq (preferred := true) ..), .tacticSeq (preferred := false) .. => r₁
  | _, r₂ => r₂

  /-- Main recursion for `findTactic?`. This takes a `stack` context and a root syntax `stx`,
  and returns the best `FindTacticResult` it can find. It returns `none` (abort) if two or more
  results are found, and `some none` (none yet) if no results are found. -/
  go (stack : Syntax.Stack) (stx : Syntax) (prev? : Option String.Pos.Raw := none) :
      Option (Option FindTacticResult) := do
    if stx.getKind == ``Parser.Tactic.tacticSeq then
      -- TODO: this implementation is a bit too strict about the beginning of tacticSeqs.
      -- We would like to be able to parse
      -- · |
      --   foo
      -- (where `|` is the cursor position) as an insertion into the sequence containing foo
      -- at index 0, but we currently use the start of the tacticSeq, which is the foo token,
      -- as the earliest possible location that will be associated to the sequence.
      let bracket := stx[0].getKind == ``Parser.Tactic.tacticSeqBracketed
      let argIdx := if bracket then 1 else 0
      let (stack, stx) := ((stx[0], argIdx) :: (stx, 0) :: stack, stx[0][argIdx])
      let mainRes := stx[0].getPos?.map fun pos =>
        let i := Id.run do
          for i in *...stx.getNumArgs do
            if let some pos' := stx[2*i].getPos? then
              if range.stop < pos' then
                return i
          (stx.getNumArgs + 1) / 2
        .tacticSeq (bracket || preferred pos) i ((stx, 0) :: stack)
      let mut childRes := none
      for i in (*...stx.getNumArgs).iter.stepSize 2 do
        if let some inner := visit stx[i] then
          let stack := (stx, i) :: stack
          if let some child := (← go stack stx[i]) <|>
            (if inner then some (.tactic ((stx[i], 0) :: stack)) else none)
          then
            if childRes.isSome then failure
            childRes := merge mainRes child
      return childRes <|> mainRes
    else
      let mut childRes := none
      let mut prev? := prev?
      for i in *...stx.getNumArgs do
        if let some _ := visit stx[i] prev? then
          if let some child ← go ((stx, i) :: stack) stx[i] prev? then
            if childRes.isSome then failure
            childRes := child
        prev? := stx[i].getTailPos? true <|> prev?
      return childRes

/--
Returns the info tree corresponding to a syntax, using `kind` and `range` for identification.
(This is not foolproof, but it is a fairly accurate proxy for `Syntax` equality and a lot cheaper
than deep comparison.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Variant6a4d58de2ecd7df9c2b659b092eae09035ad4aa123b092cf193217e720a243eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Variant6a4d58de2ecd7df9c2b659b092eae09035ad4aa123b092cf193217e720a243eb.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f4f795bbbcfa90d583aabacfd114820fd9bd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
