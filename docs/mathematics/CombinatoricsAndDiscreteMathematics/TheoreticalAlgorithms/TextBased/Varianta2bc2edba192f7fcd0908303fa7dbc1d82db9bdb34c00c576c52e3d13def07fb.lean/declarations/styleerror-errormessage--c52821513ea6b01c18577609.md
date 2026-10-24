# StyleError.errorMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceda5f1c665cd03dee426d790e6f35ca3329759d44dca159de2a5334cdc76e4f",
  "kind": "def",
  "lexical_name": "StyleError.errorMessage",
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
  "slug": "styleerror-errormessage--c52821513ea6b01c18577609",
  "source": {
    "blob": "c1377f1cb945abaea478a46bb415c58b677d01fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c52821513ea6b01c18577609ef354b5f13722df3ff9e249864404af7919da8d7",
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

Occurrence: `declaration:ceda5f1c665cd03dee426d790e6f35ca3329759d44dca159de2a5334cdc76e4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StyleError.errorMessage (err : StyleError) : String := match err with
  | StyleError.adaptationNote =>
    "Found the string \"Adaptation note:\", please use the #adaptation_note command instead"
  | windowsLineEnding => "This file contains windows line endings (\\r\\n): please use Unix line\
    endings (\\n) instead"
  | trailingWhitespace => "This line ends with some whitespace: please remove this"
  | semicolon => "This line contains a space before a semicolon"
  | StyleError.unwantedUnicode c => s!"This line contains a unicode character that is not on the \
    allowlist '{c}' ({c.printCodepointHex}). \
    For adding new symbols see `Mathlib.Linter.TextBased.UnicodeLinter.othersInMathlib`."
  | StyleError.unicodeVariant s selector =>
    let variantText := if selector == UnicodeVariant.emoji then
      "emoji"
    else if selector == UnicodeVariant.text then
      "text"
    else
      "default"
    let oldHex := s.printCodepointHex
    match s.toList, selector with
    | c₀ :: [], some sel =>
      let newC : String := String.ofList [c₀, sel]
      let newHex := s.printCodepointHex
      s!"Missing unicode variant selector: \"{s}\" ({oldHex}). \
        Please use the {variantText} variant: \"{newC}\" ({newHex})!"
    | c₀ :: _ :: [], some sel =>
      -- by assumption, the second character is a variant selector
      let newC : String := String.ofList [c₀, sel]
      let newHex := s.printCodepointHex
      s!"Wrong unicode variant selector: \"{s}\" ({oldHex}). \
        Please use the {variantText} variant: \"{newC}\" ({newHex})!"
    | _, _ =>
      s!"Unexpected unicode variant selector: \"{s}\" ({oldHex}). \
        Consider deleting it."

/-- The error code for a given style error. Keep this in sync with `parse?_errorContext` below! -/
-- FUTURE: we're matching the old codes in `lint-style.py` for compatibility;
-- in principle, we could also print something more readable.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1377f1cb945abaea478a46bb415c58b677d01fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
