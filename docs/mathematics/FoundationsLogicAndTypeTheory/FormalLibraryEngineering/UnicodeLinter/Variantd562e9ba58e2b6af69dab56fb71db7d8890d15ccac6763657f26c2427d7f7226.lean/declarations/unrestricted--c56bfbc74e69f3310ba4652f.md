# unrestricted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0c074368e54523864d7918c688bd369e8b670bb4d596b8159171384775ef266",
  "kind": "def",
  "lexical_name": "unrestricted",
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
  "slug": "unrestricted--c56bfbc74e69f3310ba4652f",
  "source": {
    "blob": "42f36c8ddad63c04e6dffa84db9e1f9987dada75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Variantd562e9ba58e2b6af69dab56fb71db7d8890d15ccac6763657f26c2427d7f7226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c56bfbc74e69f3310ba4652f742c08e89b4303e8343f02050bba28afa4d9cedc",
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

Occurrence: `declaration:b0c074368e54523864d7918c688bd369e8b670bb4d596b8159171384775ef266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def unrestricted : Array Char := #[
  '⚠' -- ⚠️, ⚠. Lake output uses '⚠' and does not include the text selector.
]

/-- If `false`, the character is not allowed in Mathlib.

Implemented using an allowlist consisting of:
- certain ASCII characters
- certain emojis (`emojis`)
- certain non-emoji variants of emojifiable characters (`nonEmojis`)
- certain characters with no selector restrictions (`unrestricted`)
- characters with abbreviations in the VSCode extension (`withVSCodeAbbrev`)
- "the rest" (`othersInMathlib`)

Note: if `true`, a character might still not be allowed depending on context
(e.g. misplaced variant selectors).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Variantd562e9ba58e2b6af69dab56fb71db7d8890d15ccac6763657f26c2427d7f7226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Variantd562e9ba58e2b6af69dab56fb71db7d8890d15ccac6763657f26c2427d7f7226.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42f36c8ddad63c04e6dffa84db9e1f9987dada75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
