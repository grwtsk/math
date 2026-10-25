# parseTZifV2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09865e2913fcc0dc46d9c658d4d328de162de742028c23212ee4268f51c89d87",
  "kind": "def",
  "lexical_name": "parseTZifV2",
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
  "slug": "parsetzifv2--f929a00319286c1ded0f1c8f",
  "source": {
    "blob": "020c9bf7f879b10520dbc334978dc03f5cc766b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 310,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TzIf/Variantb5266b677beb3bcdad836da6a07edb28e80e54953d47f4f72458cd4770ea6332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f929a00319286c1ded0f1c8f948293b869c86a39366b6cfbbb0b6b154f969529",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TzIf/Variantb5266b677beb3bcdad836da6a07edb28e80e54953d47f4f72458cd4770ea6332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09865e2913fcc0dc46d9c658d4d328de162de742028c23212ee4268f51c89d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseTZifV2 : Parser (Option TZifV2) := optional do
  let header ← parseHeader

  let transitionTimes ← parseTransitionTimes pi64 header.timecnt
  let transitionIndices ← parseTransitionIndices header.timecnt
  let localTimeTypes ← parseLocalTimeTypes header.typecnt
  let abbreviations ← parseAbbreviations localTimeTypes header.charcnt
  let leapSeconds ← parseLeapSeconds pi64 header.leapcnt
  let stdWallIndicators ← parseIndicators header.isstdcnt
  let utLocalIndicators ← parseIndicators header.isutcnt

  return {
      header
      transitionTimes
      transitionIndices
      localTimeTypes
      abbreviations
      leapSeconds
      stdWallIndicators
      utLocalIndicators
      footer := ← parseFooter
  }

/--
Parses a TZif file, which may be in either version 1 or version 2 format.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TzIf/Variantb5266b677beb3bcdad836da6a07edb28e80e54953d47f4f72458cd4770ea6332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TzIf/Variantb5266b677beb3bcdad836da6a07edb28e80e54953d47f4f72458cd4770ea6332.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `020c9bf7f879b10520dbc334978dc03f5cc766b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
