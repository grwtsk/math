# ppHardLineUnlessUngrouped.formatter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f980677808cf8928b2fc84ead045859751262612bc5265e740e5a2cd7530656",
  "kind": "def",
  "lexical_name": "ppHardLineUnlessUngrouped.formatter",
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
  "slug": "pphardlineunlessungrouped-formatter--c77d665bed6c81606f134258",
  "source": {
    "blob": "72bf2743519f83381e89c6da00ab9f287d0f24fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 312,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf8000ef154681f5a76c5e97fa35f3cf0fde1dc34806b136446ef96a9dd2a5379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c77d665bed6c81606f134258fb8051bd55e34698581238853600048e48af49d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf8000ef154681f5a76c5e97fa35f3cf0fde1dc34806b136446ef96a9dd2a5379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f980677808cf8928b2fc84ead045859751262612bc5265e740e5a2cd7530656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[combinator_formatter ppHardLineUnlessUngrouped, expose] def ppHardLineUnlessUngrouped.formatter : Formatter := do
  if (← get).isUngrouped then
    Formatter.pushLine
  else
    ppLine.formatter

end

namespace Parser

-- now synthesize parenthesizers
attribute [run_builtin_parser_attribute_hooks]
  ppHardSpace ppSpace ppLine ppGroup ppRealGroup ppRealFill ppIndent ppDedent
  ppAllowUngrouped ppDedentIfGrouped ppHardLineUnlessUngrouped

-- workaround: we want `ppSpace` below to refer to the built-in parser alias, not the def above that
-- would require `meta` access
end Parser

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf8000ef154681f5a76c5e97fa35f3cf0fde1dc34806b136446ef96a9dd2a5379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf8000ef154681f5a76c5e97fa35f3cf0fde1dc34806b136446ef96a9dd2a5379.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72bf2743519f83381e89c6da00ab9f287d0f24fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
