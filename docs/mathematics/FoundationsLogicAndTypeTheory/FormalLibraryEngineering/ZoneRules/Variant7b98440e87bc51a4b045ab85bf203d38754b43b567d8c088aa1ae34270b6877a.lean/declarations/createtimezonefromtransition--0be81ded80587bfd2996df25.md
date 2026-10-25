# createTimeZoneFromTransition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1e6b28b92f8681e6fad144a81acd3b2e9d1203be538aa2006be6a93313b7c61",
  "kind": "def",
  "lexical_name": "createTimeZoneFromTransition",
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
  "slug": "createtimezonefromtransition--0be81ded80587bfd2996df25",
  "source": {
    "blob": "b9857193f0ab234591af258ab7061d6929b73eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variant7b98440e87bc51a4b045ab85bf203d38754b43b567d8c088aa1ae34270b6877a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0be81ded80587bfd2996df25fd581fe98d3980121d82945da4c9cdd83c77c124",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variant7b98440e87bc51a4b045ab85bf203d38754b43b567d8c088aa1ae34270b6877a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1e6b28b92f8681e6fad144a81acd3b2e9d1203be538aa2006be6a93313b7c61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createTimeZoneFromTransition (transition : Transition) : TimeZone :=
  let name := transition.localTimeType.identifier
  let offset := transition.localTimeType.gmtOffset
  let abbreviation := transition.localTimeType.abbreviation
  TimeZone.mk offset name abbreviation transition.localTimeType.isDst

/--
Finds the index of the transition in effect at a given timestamp in `Array Transition`.
Returns the index of the most recent transition that started at or before the timestamp,
or `none` if the timestamp precedes all transitions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variant7b98440e87bc51a4b045ab85bf203d38754b43b567d8c088aa1ae34270b6877a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variant7b98440e87bc51a4b045ab85bf203d38754b43b567d8c088aa1ae34270b6877a.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9857193f0ab234591af258ab7061d6929b73eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
