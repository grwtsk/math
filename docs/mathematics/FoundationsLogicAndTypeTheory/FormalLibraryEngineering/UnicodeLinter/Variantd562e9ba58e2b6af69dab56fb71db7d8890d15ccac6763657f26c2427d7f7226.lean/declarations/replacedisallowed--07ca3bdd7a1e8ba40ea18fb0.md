# replaceDisallowed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34f365b24bd7cb2abff3cdf97eb99887a826bc65cdad4441c1f1a5dcf1537a15",
  "kind": "def",
  "lexical_name": "replaceDisallowed",
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
  "slug": "replacedisallowed--07ca3bdd7a1e8ba40ea18fb0",
  "source": {
    "blob": "42f36c8ddad63c04e6dffa84db9e1f9987dada75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Variantd562e9ba58e2b6af69dab56fb71db7d8890d15ccac6763657f26c2427d7f7226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07ca3bdd7a1e8ba40ea18fb0b48f6425883664038b4fc416760e611ad798cf78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Variantd562e9ba58e2b6af69dab56fb71db7d8890d15ccac6763657f26c2427d7f7226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34f365b24bd7cb2abff3cdf97eb99887a826bc65cdad4441c1f1a5dcf1537a15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def replaceDisallowed : Char → Option String
| '\u0009' => "  "    -- "TAB" => "2 spaces"
| '\u000B' => "\n"    -- "LINE TABULATION" => "Line Feed"
| '\u000C' => "\n"    -- "FORM FEED" => "Line Feed"
| '\u000D' => "\n"    -- "CARRIAGE RETURN" => "Line Feed"
| '\u001F' => ""      -- "INFORMATION SEPARATOR ONE" => "nothing"
| '\u00A0' => " "     -- "NO-BREAK SPACE" => "1 space"
| '\u1680' => " "     -- "OGHAM SPACE MARK" => "1 space"
| '\u2000' => "  "    -- "EN QUAD" => "2 spaces"
| '\u2001' => "    "  -- "EM QUAD" => "4 spaces"
| '\u2002' => " "     -- "EN SPACE" => "1 space"
| '\u2003' => " "     -- "EM SPACE" => "1 space"
| '\u2004' => " "     -- "THREE-PER-EM SPACE" => "1 space"
| '\u2005' => " "     -- "FOUR-PER-EM SPACE" => "1 space"
| '\u2006' => " "     -- "SIX-PER-EM SPACE" => "1 space"
| '\u2007' => " "     -- "FIGURE SPACE" => "1 space"
| '\u2008' => " "     -- "PUNCTUATION SPACE" => "1 space"
| '\u2009' => " "     -- "THIN SPACE" => "1 space"
| '\u200A' => " "     -- "HAIR SPACE" => "1 space"
| '\u200B' => ""      -- "ZERO WIDTH SPACE" => "nothing"
| '\u200C' => ""      -- "ZERO WIDTH NON-JOINER" => "nothing"
| '\u200D' => ""      -- "ZERO WIDTH JOINER" => "nothing"
| '\u200E' => ""      -- "LEFT-TO-RIGHT MARK" => "nothing"
| '\u200F' => ""      -- "RIGHT-TO-LEFT MARK" => "nothing"
| '\u2028' => " "     -- "LINE SEPARATOR" => "1 space"
| '\u2029' => " "     -- "PARAGRAPH SEPARATOR" => "1 space"
| '\u202A' => ""      -- "LEFT-TO-RIGHT EMBEDDING" => "nothing"
| '\u202B' => ""      -- "RIGHT-TO-LEFT EMBEDDING" => "nothing"
| '\u202C' => ""      -- "POP DIRECTIONAL FORMATTING" => "nothing"
| '\u202D' => ""      -- "LEFT-TO-RIGHT OVERRIDE" => "nothing"
| '\u202E' => ""      -- "RIGHT-TO-LEFT OVERRIDE" => "nothing"
| '\u202F' => " "     -- "NARROW NO-BREAK SPACE" => "1 space"
| '\u205F' => " "     -- "MEDIUM MATHEMATICAL SPACE" => "1 space"
| '\u2060' => ""      -- "WORD JOINER" => "nothing"
| '\u2062' => ""      -- "INVISIBLE TIMES" => "nothing"
| '\u2063' => ""      -- "INVISIBLE SEPARATOR" => "nothing"
| '\u2064' => ""      -- "INVISIBLE PLUS" => "nothing"
| '\u2066' => ""      -- "LEFT-TO-RIGHT ISOLATE" => "nothing"
| '\u2067' => ""      -- "RIGHT-TO-LEFT ISOLATE" => "nothing"
| '\u2068' => ""      -- "FIRST STRONG ISOLATE" => "nothing"
| '\u2069' => ""      -- "POP DIRECTIONAL ISOLATE" => "nothing"
| '\u206A' => ""      -- "INHIBIT SYMMETRIC SWAPPING" => "nothing"
| '\u206B' => ""      -- "ACTIVATE SYMMETRIC SWAPPING" => "nothing"
| '\u206C' => ""      -- "INHIBIT ARABIC FORM SHAPING" => "nothing"
| '\u206D' => ""      -- "ACTIVATE ARABIC FORM SHAPING" => "nothing"
| '\u206E' => ""      -- "NATIONAL DIGIT SHAPES" => "nothing"
| '\u206F' => ""      -- "NOMINAL DIGIT SHAPES" => "nothing"
| '\u3000' => "  "    -- "IDEOGRAPHIC SPACE" =>  "2 spaces"
| _ => none

end Mathlib.Linter.TextBased.UnicodeLinter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Variantd562e9ba58e2b6af69dab56fb71db7d8890d15ccac6763657f26c2427d7f7226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Variantd562e9ba58e2b6af69dab56fb71db7d8890d15ccac6763657f26c2427d7f7226.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42f36c8ddad63c04e6dffa84db9e1f9987dada75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
