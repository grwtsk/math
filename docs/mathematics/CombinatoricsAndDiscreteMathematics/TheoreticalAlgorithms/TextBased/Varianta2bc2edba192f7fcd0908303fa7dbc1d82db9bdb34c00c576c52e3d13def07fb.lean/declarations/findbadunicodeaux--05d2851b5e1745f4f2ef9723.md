# findBadUnicodeAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d69a2688ed364d006baa925862ef2e67eb15cb9a0de4a611a7f4c341e956b1c",
  "kind": "def",
  "lexical_name": "findBadUnicodeAux",
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
  "slug": "findbadunicodeaux--05d2851b5e1745f4f2ef9723",
  "source": {
    "blob": "c1377f1cb945abaea478a46bb415c58b677d01fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 352,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05d2851b5e1745f4f2ef9723ccabd469c6cd5bf8d1f6412c1bcf022092ee718b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d69a2688ed364d006baa925862ef2e67eb15cb9a0de4a611a7f4c341e956b1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findBadUnicodeAux (s : String) (pos : s.Pos) (c : Char)
    (err : Array StyleError := #[]) : Array StyleError :=
  if h : pos < s.endPos then
    let posₙ := pos.next (show pos ≠ s.endPos from String.Pos.ne_of_lt h)
    match posₙ.get? with
    | none =>
      -- `c` is the last character of the string
      if ! isAllowedCharacter c then
        -- bad: character not allowed. Add StyleError.
        (err.push (.unwantedUnicode c))
      else
        err
    | some cₙ =>
      have : posₙ.remainingBytes < pos.remainingBytes :=
          (pos.lt_iff_remainingBytes_lt posₙ).mp pos.lt_next
      if ! isAllowedCharacter c then
        -- bad: character not allowed.
        findBadUnicodeAux s posₙ cₙ (err.push (.unwantedUnicode c))
      else if cₙ == UnicodeVariant.emoji && !(emojis.contains c) && !(unrestricted.contains c) then
        -- bad: unwanted emoji variant selector.
        let errₙ := err.push (.unicodeVariant (String.ofList [c, cₙ]) none)
        findBadUnicodeAux s posₙ cₙ errₙ
      else if
        cₙ == UnicodeVariant.text && !(nonEmojis.contains c) && !(unrestricted.contains c)
      then
        -- bad: unwanted text variant selector.
        let errₙ := err.push (.unicodeVariant (String.ofList [c, cₙ]) none)
        findBadUnicodeAux s posₙ cₙ errₙ
      else if cₙ != UnicodeVariant.emoji && emojis.contains c then
        -- bad: missing emoji variant selector.
        let errₙ := err.push (.unicodeVariant c.toString UnicodeVariant.emoji)
        findBadUnicodeAux s posₙ cₙ errₙ
      else if cₙ != UnicodeVariant.text && nonEmojis.contains c then
        -- bad: missing text variant selector.
        let errₙ := err.push (.unicodeVariant c.toString UnicodeVariant.text)
        findBadUnicodeAux s posₙ cₙ errₙ
      else
        -- okay. Continue recursion.
        findBadUnicodeAux s posₙ cₙ err
  else
    err
termination_by pos.remainingBytes

/-- Creates `StyleError`s for bad usage of unicode characters. -/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1377f1cb945abaea478a46bb415c58b677d01fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
