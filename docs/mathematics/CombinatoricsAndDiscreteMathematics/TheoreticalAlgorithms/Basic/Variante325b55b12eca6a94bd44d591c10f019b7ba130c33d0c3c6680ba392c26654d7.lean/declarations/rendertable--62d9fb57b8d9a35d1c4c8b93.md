# renderTable?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25589d788146f44d29873208d08828b03d6a8fd9768af02a48d9f602a6cf0fd8",
  "kind": "def",
  "lexical_name": "renderTable?",
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
  "slug": "rendertable--62d9fb57b8d9a35d1c4c8b93",
  "source": {
    "blob": "2b1e2541862ca82038a889c8cd41b3ea2e137489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62d9fb57b8d9a35d1c4c8b9386f5006c78d36a95a5f2f022215a22b6152a1f4a",
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

Occurrence: `declaration:25589d788146f44d29873208d08828b03d6a8fd9768af02a48d9f602a6cf0fd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    def renderTable? (rows : Array (String × String)) (maxWidth : Nat) (margin : Nat := 2)
      : Option String := Id.run do
      if rows.isEmpty then
        return ""
      let rightColumnWidth := rows.map (·.2.length) |>.getMax? (· < ·) |>.get!
      let minRightColumnWidth := Nat.min rightColumnWidth <| Nat.max ((maxWidth-margin)/2) 1
      if maxWidth - margin - minRightColumnWidth < 1 then
        return none
      let rows : Array (List String × String) := rows.map fun (left, right) =>
        (maxWidth - margin - minRightColumnWidth |> String.wrapWordsAt! left |>.splitOn "\n", right)
      let leftColumnWidth :=
        rows.flatMap (·.1.map (·.length) |>.toArray)
          |>.getMax? (· < ·)
          |>.get!
      let leftColumnWidth := leftColumnWidth + margin
      let rows : Array (List String × List String) := rows.map fun (left, right) =>
        (left, maxWidth - leftColumnWidth |> String.wrapWordsAt! right |>.splitOn "\n")
      let rows : Array (String × String) := rows.flatMap fun (left, right) =>
        let (left, right) : List String × List String := List.matchLength left right ""
        left.zip right |>.toArray
      let rows : Array String := rows.map fun (left, right) =>
        if right = "" then
          left
        else
          let padding := "".pushn ' ' (leftColumnWidth - left.length)
          left ++ padding ++ right
      return "\n".intercalate rows.toList

    /--
    Renders `rows` as a table with a maximum row width of `maxWidth` and a margin of `margin`
    between the columns. Wraps words according to `String.wrapWordsAt?` to ensure that no
    rendered row of the table is longer than `maxWidth`.
    Panics if `(maxWidth-margin)/2` < 1, i.e. if there is not enough space for
    text in both columns.
    -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1e2541862ca82038a889c8cd41b3ea2e137489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
