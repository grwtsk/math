# readableDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90282c637daf5bd2322cb76c20b1326aad29f23f538b1614a7dd0e39198d1ab2",
  "kind": "def",
  "lexical_name": "readableDiff",
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
  "slug": "readablediff--5ec9f7c5ab43a2b716655a17",
  "source": {
    "blob": "8fe0fbebf4a902bb3d591e85c15de04aa87d2df1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ec9f7c5ab43a2b716655a177aed16eca03003a88374f52ddc8fd4a739d0d29d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90282c637daf5bd2322cb76c20b1326aad29f23f538b1614a7dd0e39198d1ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def readableDiff (s s' : String) (granularity : DiffGranularity := .auto) : Array (Diff.Action × String) :=
  match granularity with
  | .none => #[(.insert, s')]
  | .char => charDiff
  | .word => wordDiff
  | .all => maxDiff
  | .auto =>
    let minLength := min s.length s'.length
    -- The coefficients on these values can be tuned:
    let maxCharDiffDistance := minLength / 5
    let maxWordDiffDistance := minLength / 2 + (max s.length s'.length) / 2

    let charDiffRaw := Diff.diff (splitChars s) (splitChars s')
    -- Note: this is just a rough heuristic, since the diff has no notion of substitution
    let approxEditDistance := charDiffRaw.filter (·.1 != .skip) |>.size
    let charArrDiff := joinEdits charDiffRaw

    -- Given that `Diff.diff` returns a minimal diff, any length-≤3 diff can only have edits at the
    -- front and back, or at a single interior point. This will always be fairly readable (and
    -- splitting by a larger unit would likely only be worse)
    if charArrDiff.size ≤ 3 || approxEditDistance ≤ maxCharDiffDistance then
      charArrDiff.map fun (act, cs) => (act, String.ofList cs.toList)
    else if approxEditDistance ≤ maxWordDiffDistance then
      wordDiff
    else
      maxDiff
where
  /-
  Note on whitespace insertion:
  Because we display diffs fully inline, we must trade off between accurately rendering changes to
  whitespace and accurately previewing what will be inserted. We err on the side of the latter.
  Within a "run" of deletions or insertions, we maintain the whitespace from the deleted/inserted
  text and mark it as a deletion/insertion. After an unchanged word or a substitution (i.e., a
  deletion and insertion without an intervening unchanged word), we show a whitespace diff iff the
  old whitespace did not contain a line break (as rendering a deleted newline still visually
  suggests a line break in the new output); otherwise, we use the whitespace from the new version
  but mark it as unchanged, since there was also whitespace here originally too. Within a
  substitution, we omit whitespace entirely. After an insertion, we show the new whitespace and mark
  it as an insertion. After a deletion, we render the old whitespace as a deletion unless it
  contains a newline, for the same reason mentioned previously.
  -/
  wordDiff := Id.run do
    let (words, wss) := splitWords s
    let (words', wss') := splitWords s'
    let diff := Diff.diff words words'
    let mut withWs := #[]
    let mut (wssIdx, wss'Idx) := (0, 0)
    let mut inSubst := false
    for h : diffIdx in *...diff.size do
      let (a₁, s₁) := diff[diffIdx]
      withWs := withWs.push (a₁, s₁)
      if let some (a₂, s₂) := diff[diffIdx + 1]? then
        match a₁, a₂ with
        | .skip, .delete =>
          -- Unchanged word: show whitespace diff unless this is followed by a deleted terminal
          -- substring of the old, in which case show the old whitespace (since there is no new)
          let ws := wss[wssIdx]!
          let wsDiff := if let some ws' := wss'[wss'Idx]? then
            mkWhitespaceDiff ws ws'
          else
            #[(.delete, ws)]
          withWs := withWs ++ wsDiff
          wssIdx := wssIdx + 1
          wss'Idx := wss'Idx + 1
        | .skip, .skip | .skip, .insert =>
          -- Unchanged word: inverse of the above case: new has whitespace here, and old does too so
          -- long as we haven't reached an appended terminal new portion
          let ws' := wss'[wss'Idx]!
          let wsDiff := if let some ws := wss[wssIdx]? then
            mkWhitespaceDiff ws ws'
          else
            #[(.insert, ws')]
          withWs := withWs ++ wsDiff
          wssIdx := wssIdx + 1
          wss'Idx := wss'Idx + 1
        | .insert, .insert =>
          -- Insertion separator: include whitespace, and mark it as inserted
          let ws := wss'[wss'Idx]!
          withWs := withWs.push (.insert, ws)
          wss'Idx := wss'Idx + 1
        | .insert, .skip =>
          -- End of insertion: if this was a substitution, new and old have whitespace here; if it
          -- wasn't, only new has whitespace here
          let ws' := wss'[wss'Idx]!
          let wsDiff := if inSubst then
            mkWhitespaceDiff wss[wssIdx]! ws'
          else
            #[(.insert, ws')]
          withWs := withWs ++ wsDiff
          wss'Idx := wss'Idx + 1
          if inSubst then wssIdx := wssIdx + 1
          inSubst := false
        | .delete, .delete =>
          -- Deletion separator: include and mark as deleted
          let ws := wss[wssIdx]!
          withWs := withWs.push (.delete, ws)
          wssIdx := wssIdx + 1
        | .delete, .skip =>
          -- End of deletion: include the deletion's whitespace as deleted iff it is not a newline
          -- (see earlier note); in principle, we should never have a substitution ending with a
          -- deletion (`diff` should prefer `a̵b̲` to `b̲a̵`), but we handle this in case `diff` changes
          let ws := wss[wssIdx]!
          unless inSubst || ws.contains '\n' do
            withWs := withWs.push (.delete, ws)
            wssIdx := wssIdx + 1
          if inSubst then wss'Idx := wss'Idx + 1
          inSubst := false
        | .insert, .delete | .delete, .insert =>
          -- "Substitution point": don't include any whitespace, since we're switching this word
          inSubst := true
    withWs
      |> joinEdits
      |>.map fun (act, ss) => (act, ss.foldl (· ++ ·) "")

  charDiff :=
    Diff.diff (splitChars s) (splitChars s') |> joinCharDiff

  /-- Given a `Char` diff, produces an equivalent `String` diff, joining actions of the same kind. -/
  joinCharDiff (d : Array (Diff.Action × Char)) :=
    joinEdits d |>.map fun (act, cs) => (act, String.ofList cs.toList)

  maxDiff :=
    #[(.delete, s), (.insert, s')]

  mkWhitespaceDiff (oldWs newWs : String) :=
    if !oldWs.contains '\n' then
      Diff.diff oldWs.toList.toArray newWs.toList.toArray |> joinCharDiff
    else
      #[(.skip, newWs)]

  splitChars (s : String) : Array Char :=
    s.toList.toArray

  splitWords (s : String) : Array String × Array String :=
    splitWordsAux s 0 0 #[] #[]

  splitWordsAux (s : String) (b : String.Pos.Raw) (i : String.Pos.Raw) (r ws : Array String) : Array String × Array String :=
    if h : i.atEnd s then
      (r.push (String.Pos.Raw.extract s b i), ws)
    else
      have := Nat.sub_lt_sub_left (Nat.gt_of_not_le (mt decide_eq_true h)) (String.Pos.Raw.lt_next s _)
      if (i.get s).isWhitespace then
        let skipped := (Substring.Raw.mk s i s.rawEndPos).takeWhile (·.isWhitespace)
        let i' := skipped.stopPos
        splitWordsAux s i' i' (r.push (String.Pos.Raw.extract s b i)) (ws.push (String.Pos.Raw.extract s i i'))
      else
        splitWordsAux s b (i.next s) r ws

  joinEdits {α} (ds : Array (Diff.Action × α)) : Array (Diff.Action × Array α) :=
    ds.foldl (init := #[]) fun acc (act, c) =>
      if h : acc.isEmpty then
        #[(act, #[c])]
      else
        have : acc.size - 1 < acc.size := Nat.sub_one_lt <| mt Array.size_eq_zero_iff.mp <|
          Array.isEmpty_eq_false_iff.mp (Bool.of_not_eq_true h)
        let (act', cs) := acc[acc.size - 1]
        if act == act' then
          acc.set (acc.size - 1) (act, cs.push c)
        else
          acc.push (act, #[c])

/--
Creates message data corresponding to a `HintSuggestions` collection and adds the corresponding info
leaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fe0fbebf4a902bb3d591e85c15de04aa87d2df1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
