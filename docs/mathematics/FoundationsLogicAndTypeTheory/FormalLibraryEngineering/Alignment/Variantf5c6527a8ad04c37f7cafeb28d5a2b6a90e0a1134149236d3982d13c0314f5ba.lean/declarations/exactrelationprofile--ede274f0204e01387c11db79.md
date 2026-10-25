# ExactRelationProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aebcfd49216ba8672880ec7f6f007e8cd41224c32c943e375948e99d4de1a19a",
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
  "slug": "exactrelationprofile--ede274f0204e01387c11db79",
  "source": {
    "blob": "5f8a45dc3f19e7bf501cca933cf76d7f3db06c21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ede274f0204e01387c11db7948efbddc350d0c6a1ac6ba05c617a0386cc54535",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aebcfd49216ba8672880ec7f6f007e8cd41224c32c943e375948e99d4de1a19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–51.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f8a45dc3f19e7bf501cca933cf76d7f3db06c21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
