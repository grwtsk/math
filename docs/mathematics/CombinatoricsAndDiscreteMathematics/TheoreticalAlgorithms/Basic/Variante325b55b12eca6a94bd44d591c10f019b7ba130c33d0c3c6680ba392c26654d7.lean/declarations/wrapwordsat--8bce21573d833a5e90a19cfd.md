# wrapWordsAt?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e199a11bd818d194d8343b65d654380d22d34f15bfc68ef79f27f2caf16daae5",
  "kind": "def",
  "lexical_name": "wrapWordsAt?",
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
  "slug": "wrapwordsat--8bce21573d833a5e90a19cfd",
  "source": {
    "blob": "2b1e2541862ca82038a889c8cd41b3ea2e137489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bce21573d833a5e90a19cfddab1c50d9e95631f5339adde886971ba57721eb5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e199a11bd818d194d8343b65d654380d22d34f15bfc68ef79f27f2caf16daae5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    def wrapWordsAt? (s : String) (maxWidth : Nat) : Option String := Id.run do
      if maxWidth = 0 then
        return none
      let wordWrappedLines : List String := s.splitOn "\n" |>.map fun s => Id.run do
        let words                : Array String := s.splitOn.toArray
        let mut currentLineWidth : Nat          := 0
        let mut result           : Array String := #[]
        for i in [:words.size] do
          let w := words[i]!
          -- `w = ""`: we will never insert a newline on a space. this has the effect
          -- of inserting the newline only after a bunch of trailing whitespace, which we remove later.
          -- similarly, `currentLineWidth + w.length ≤ maxWidth` does not count the space after `w` so that
          -- we do not insert a newline before a word that fits except for a trailing space.
          if w = "" ∨ currentLineWidth + w.length ≤ maxWidth then
            -- `+ 1` because we count the space after `w` to accurately keep track of spaces.
            currentLineWidth := currentLineWidth + w.length + 1
            result := result.push w
            continue
          -- if `w` is the first proper word, this will insert a `\n` before the text, which we remove later.
          -- `w.wrapAt! maxWidth` ensures that our new line is not already too large.
          let wordOnNewLine := "\n" ++ wrapAt! w maxWidth
          result := result.push wordOnNewLine
          let wrappedLines : Array String := wordOnNewLine.splitOn "\n" |>.toArray
          currentLineWidth := wrappedLines[wrappedLines.size - 1]!.length + 1
        return " ".intercalate result.toList
      let trimmed : List String :=
        wordWrappedLines.map trimTrailingSpaces |>.map fun line => Id.run do
          if line = "" then
            return ""
          if String.Pos.Raw.get! line 0 ≠ '\n' then
            return line
          return line.drop 1 |>.copy
      return "\n".intercalate trimmed

    /--
    Inserts newlines `\n` into `s` after every `maxWidth` characters before words
    that would otherwise be broken apart by the newline. The result will contain
    no line longer than `maxWidth` characters and no words except those already
    longer than `maxWidth` characters will be broken up in the middle.
    Removes trailing whitespace before each inserted newline. Retains newlines `\n` in `s`.
    Panics if `maxWidth = 0`.
    -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1e2541862ca82038a889c8cd41b3ea2e137489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
