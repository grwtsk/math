# allOpenMentions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:329d9396dc17bf9677b69e72b9b0754688d6d5177fa53544be1b4a8eb7e0b588",
  "kind": "def",
  "lexical_name": "allOpenMentions",
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
  "slug": "allopenmentions--9e7e82ac5b402dc50b3a834f",
  "source": {
    "blob": "6c3f23c0eb3696ebbaf5a529fec9d7ec72b74d86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OpenMentions/Variant4de66087b8c160a744123b18bad3d61f841cd1caab3151985c54462b98d86d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e7e82ac5b402dc50b3a834f2ac16c1731ad00a522c5c52cd29e49af34873113",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OpenMentions/Variant4de66087b8c160a744123b18bad3d61f841cd1caab3151985c54462b98d86d14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:329d9396dc17bf9677b69e72b9b0754688d6d5177fa53544be1b4a8eb7e0b588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allOpenMentions : List OpenMention := [
  { paperId := "1407.2975v1"
    page := "1"
    matchedText := "conjecture" },
  { paperId := "1407.2975v1"
    page := "2"
    matchedText := "Conjecture" },
  { paperId := "1408.3951v1"
    page := "3"
    matchedText := "Question 1.4" },
  { paperId := "1408.3951v1"
    page := "4"
    matchedText := "Question 1.7" },
  { paperId := "1408.3951v1"
    page := "58"
    matchedText := "conjecture" },
  { paperId := "1810.13309v3"
    page := "57"
    matchedText := "conjectured" },
  { paperId := "1810.13309v3"
    page := "57"
    matchedText := "conjecture" },
  { paperId := "1810.13309v3"
    page := "59"
    matchedText := "conjecture" },
  { paperId := "1909.02324v3"
    page := "3"
    matchedText := "Problem\n3.53" },
  { paperId := "1909.02324v3"
    page := "37"
    matchedText := "Problem 7.1" },
  { paperId := "1909.02324v3"
    page := "37"
    matchedText := "Problem 7.1" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Problem 7.1" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Problem 7.2" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Problem 7.1" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Problem 7.2" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Question 7.3" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Question 7.4" },
  { paperId := "2004.08934v3"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2004.08934v3"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2004.08934v3"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2004.08934v3"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2004.08934v3"
    page := "72"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "1"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "6"
    matchedText := "conjectured" },
  { paperId := "2005.11530v2"
    page := "7"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "7"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "89"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "90"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "1"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "3"
    matchedText := "Question 1" },
  { paperId := "2012.11811v4"
    page := "3"
    matchedText := "Question 2" },
  { paperId := "2012.11811v4"
    page := "23"
    matchedText := "Question\n7.4" },
  { paperId := "2012.11811v4"
    page := "25"
    matchedText := "conjecture" },
  { paperId := "2211.10505v1"
    page := "50"
    matchedText := "Question 1" },
  { paperId := "2211.10505v1"
    page := "51"
    matchedText := "Question 2" },
  { paperId := "2211.10505v1"
    page := "52"
    matchedText := "conjecture" },
  { paperId := "2408.15968v2"
    page := "110"
    matchedText := "conjecture" },
  { paperId := "2410.12632v1"
    page := "2"
    matchedText := "conjectured" },
  { paperId := "2410.12632v1"
    page := "33"
    matchedText := "conjecture" }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OpenMentions/Variant4de66087b8c160a744123b18bad3d61f841cd1caab3151985c54462b98d86d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OpenMentions/Variant4de66087b8c160a744123b18bad3d61f841cd1caab3151985c54462b98d86d14.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3f23c0eb3696ebbaf5a529fec9d7ec72b74d86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
