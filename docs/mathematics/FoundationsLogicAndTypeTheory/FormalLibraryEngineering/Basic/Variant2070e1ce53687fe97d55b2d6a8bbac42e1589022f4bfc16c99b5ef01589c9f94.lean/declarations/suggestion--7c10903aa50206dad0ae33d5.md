# Suggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0578772cb56b49280822654a962b1ba31df003f177824f0b2ba66ee60ca5c3fd",
  "kind": "structure",
  "lexical_name": "Suggestion",
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
  "slug": "suggestion--7c10903aa50206dad0ae33d5",
  "source": {
    "blob": "3e18afc9357aa3c4b8984eff5bfb18e439717a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c10903aa50206dad0ae33d5f55ad1ec431f632ca695c7ebd12261cf991c0407",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0578772cb56b49280822654a962b1ba31df003f177824f0b2ba66ee60ca5c3fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Suggestion where
  name : Name
  /--
  The score of the suggestion, as a probability that this suggestion should be used.
  -/
  score : Float
  /--
  Optional flag associated with the suggestion, e.g. "←" or "=",
  if the premise selection algorithm is aware of the tactic consuming the results,
  and wants to suggest modifiers for this suggestion.
  E.g. this supports calling `simp` in the reverse direction,
  or telling `grind` or `aesop` to use the theorem in a particular way.
  -/
  flag : Option String := none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e18afc9357aa3c4b8984eff5bfb18e439717a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
