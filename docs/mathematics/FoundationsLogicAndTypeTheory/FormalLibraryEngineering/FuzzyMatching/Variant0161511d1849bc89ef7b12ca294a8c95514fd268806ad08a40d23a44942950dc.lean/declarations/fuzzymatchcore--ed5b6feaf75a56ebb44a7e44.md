# fuzzyMatchCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d744ed3886ed37fa76166b48507a49d500516789cb0fab69672ee6650b20bccf",
  "kind": "def",
  "lexical_name": "fuzzyMatchCore",
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
  "slug": "fuzzymatchcore--ed5b6feaf75a56ebb44a7e44",
  "source": {
    "blob": "3227c14d58d907195bccb2f10c7adb80fb99a634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant0161511d1849bc89ef7b12ca294a8c95514fd268806ad08a40d23a44942950dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed5b6feaf75a56ebb44a7e4436d0eb2c6faf56b8a5b897032f2573d271fc3c29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant0161511d1849bc89ef7b12ca294a8c95514fd268806ad08a40d23a44942950dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d744ed3886ed37fa76166b48507a49d500516789cb0fab69672ee6650b20bccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def fuzzyMatchCore (pattern word : String) (patternRoles wordRoles : Array CharRole) : Option Int := Id.run do
  /- Flattened array where the value at index (i, j, k) represents the best possible score of a fuzzy match
  between the substrings pattern[*...=i] and word[*...j] assuming that pattern[i] misses at word[j] (k = 0, i.e.
  it was matched earlier), or matches at word[j] (k = 1). A value of `.awful` corresponds to a score of -∞, and is used
  where no such match/miss is possible or for unneeded parts of the table. -/
  let mut result : Array Score := Array.replicate (pattern.length * word.length * 2) .awful
  let mut runLengths : Array Int16 := Array.replicate (pattern.length * word.length) 0

  -- penalty for starting a consecutive run at each index
  let mut startPenalties : Array Int16 := Array.replicate word.length 0

  let mut lastSepIdx := 0
  let mut penaltyNs : Int16 := 0
  let mut penaltySkip : Int16 := 0
  for wordIdx in [:word.length] do
    if (wordIdx != 0) && wordRoles[wordIdx]! matches .separator then
      -- reset skip penalty at namespace separator
      penaltySkip := 0
      -- add constant penalty for each namespace to prefer shorter namespace nestings
      penaltyNs := penaltyNs + 1
      lastSepIdx := wordIdx
    penaltySkip := penaltySkip + skipPenalty wordRoles[wordIdx]! (wordIdx == 0)
    startPenalties := startPenalties.set! wordIdx $ penaltySkip + penaltyNs

  -- TODO: the following code is assuming all characters are ASCII
  for patternIdx in [:pattern.length] do
    /- For this dynamic program to be correct, it's only necessary to populate a range of length
   `word.length - pattern.length` at each index (because at the very end, we can only consider fuzzy matches
    of `pattern` with a longer substring of `word`). -/
    for wordIdx in [patternIdx:(word.length-(pattern.length - patternIdx - 1))] do
      let missScore :=
        if wordIdx >= 1 then
          selectBest
            (getMiss result patternIdx (wordIdx - 1))
            (getMatch result patternIdx (wordIdx - 1))
        else .awful

      let mut matchScore := .awful

      if allowMatch (String.Pos.Raw.get pattern ⟨patternIdx⟩) (String.Pos.Raw.get word ⟨wordIdx⟩) patternRoles[patternIdx]! wordRoles[wordIdx]! then
        if patternIdx >= 1 then
          let runLength := runLengths[getIdx (patternIdx - 1) (wordIdx - 1)]! + 1
          runLengths := runLengths.set! (getIdx patternIdx wordIdx) runLength

          matchScore := selectBest
            (getMiss result (patternIdx - 1) (wordIdx - 1) |>.map (· + matchResult
              patternIdx wordIdx
              patternRoles[patternIdx]! wordRoles[wordIdx]!
              .awful
            - startPenalties[wordIdx]!))
            (getMatch result (patternIdx - 1) (wordIdx - 1) |>.map (· + matchResult
              patternIdx wordIdx
              patternRoles[patternIdx]! wordRoles[wordIdx]!
              (.ofInt16! runLength)
            )) |>.map fun score => if wordIdx >= lastSepIdx then score + 1 else score -- main identifier bonus
        else
          runLengths := runLengths.set! (getIdx patternIdx wordIdx) 1
          matchScore := .ofInt16! <| matchResult
              patternIdx wordIdx
              patternRoles[patternIdx]! wordRoles[wordIdx]!
              .awful
              - startPenalties[wordIdx]!

      result := set result patternIdx wordIdx missScore matchScore

  let best := selectBest (getMiss result (pattern.length - 1) (word.length - 1)) (getMatch result (pattern.length - 1) (word.length - 1))
  return best.toInt?

  where
    @[inline]
    getDoubleIdx (patternIdx wordIdx : Nat) := patternIdx * word.length * 2 + wordIdx * 2

    @[inline]
    getIdx (patternIdx wordIdx : Nat) := patternIdx * word.length + wordIdx

    @[inline]
    getMiss (result : Array Score) (patternIdx wordIdx : Nat) : Score :=
      result[getDoubleIdx patternIdx wordIdx]!

    @[inline]
    getMatch (result : Array Score) (patternIdx wordIdx : Nat) : Score :=
      result[getDoubleIdx patternIdx wordIdx + 1]!

    @[inline]
    set (result : Array Score) (patternIdx wordIdx : Nat) (missValue matchValue : Score) : Array Score :=
      let idx := getDoubleIdx patternIdx wordIdx
      result |>.set! idx missValue |>.set! (idx + 1) matchValue

    /-- Heuristic to penalize skipping characters in the word. -/
    skipPenalty (wordRole : CharRole) (wordStart : Bool) : Int16 := Id.run do
      /- Skipping the beginning of the word. -/
      if wordStart then
        return 3
      /- Skipping the beginning of a segment. -/
      if wordRole matches CharRole.head then
        return 1

      return 0

    /-- Whether characters from the pattern and the word match. -/
    allowMatch (patternChar wordChar : Char) (patternRole wordRole : CharRole) : Bool := Id.run do
      /- Different characters do not match. -/
      if patternChar.toLower != wordChar.toLower then
        return false
      /- The beginning of a segment in the pattern must align with the beginning of a segment in the word. -/
      if patternRole matches CharRole.head && !(wordRole matches CharRole.head) then
        return false

      return true

    /-- Heuristic to rate a match. -/
    matchResult (patternIdx wordIdx : Nat) (patternRole wordRole : CharRole) (consecutive : Score) : Int16 := Id.run do
      let mut score : Int16 := 1
      /- Case-sensitive equality or beginning of a segment in pattern and word. -/
      if (String.Pos.Raw.get pattern ⟨patternIdx⟩) == (String.Pos.Raw.get word ⟨wordIdx⟩) || (patternRole matches CharRole.head && wordRole matches CharRole.head) then
        score := score + 1
      /- Matched end of word with end of pattern -/
      if wordIdx == word.length - 1 && patternIdx == pattern.length - 1 then
        score := score + 2
      /- Matched beginning of the word. -/
      if (wordIdx == 0) then
        score := score + 3
      /- Consecutive character match. -/
      if let some bonus := consecutive.toInt16? then
        /- consecutive run bonus -/
        score := score + bonus
      return score

/-- Match the given pattern with the given word using a fuzzy matching
algorithm. The resulting scores are in the interval `[0, 1]` or `none` if no
match was found. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant0161511d1849bc89ef7b12ca294a8c95514fd268806ad08a40d23a44942950dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant0161511d1849bc89ef7b12ca294a8c95514fd268806ad08a40d23a44942950dc.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3227c14d58d907195bccb2f10c7adb80fb99a634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
