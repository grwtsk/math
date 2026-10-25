# ExactRelationProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2384db4d9b29ac117056aa16216b1638a7b08f8faeeea2e36f394fa08180e365",
  "kind": "structure",
  "lexical_name": "ExactRelationProfile",
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
  "slug": "exactrelationprofile--2736bc9d2a2fbd2393251b39",
  "source": {
    "blob": "d8facb2e4d80404b871e54f8d55c73abd405f805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2736bc9d2a2fbd2393251b390a2aac31b85ac0aff55719ebc0a66c6b3054a749",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2384db4d9b29ac117056aa16216b1638a7b08f8faeeea2e36f394fa08180e365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactRelationProfile where
  profileId : StableId
  Related : GlobalDeclarationId → GlobalDeclarationId → Prop
  reflexive : ∀ declaration, Related declaration declaration
  symmetric :
    ∀ {left right}, Related left right → Related right left
  transitive :
    ∀ {left middle right},
      Related left middle →
      Related middle right →
      Related left right
  profileDigest : Digest

/--
Exact alignment carries a sealed kernel certificate for the profile's actual
endpoint-indexed proposition.  A tag or digest cannot manufacture it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8facb2e4d80404b871e54f8d55c73abd405f805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
