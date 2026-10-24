# StyleError.errorMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a5c84297935e082660d17f978195e33fbdcd96a16aafe18a040d10db1c9aac7",
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
  "slug": "styleerror-errormessage--c2d6405bb440d582959f4cfc",
  "source": {
    "blob": "69f5c02b190bbcf1d3275900c6a37403c0b12275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2d6405bb440d582959f4cfc6e7931b94d542ab61a38415b1f923d8bfa76aafa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a5c84297935e082660d17f978195e33fbdcd96a16aafe18a040d10db1c9aac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–124.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f5c02b190bbcf1d3275900c6a37403c0b12275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
