# ProfileRefines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17c5b11f8bbda18bfe3e7cd3066b00c0a5bbefbaff359a7843e6310aecf50e42",
  "kind": "structure",
  "lexical_name": "ProfileRefines",
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
  "slug": "profilerefines--2593f33dd4f22e4d12af69e3",
  "source": {
    "blob": "610ef4b35b9d77255aad81f439d6b6b6e4c5c91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorem/Varianta878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2593f33dd4f22e4d12af69e3033e58e44f2cb521905829447efaa9d1db96594a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorem/Varianta878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17c5b11f8bbda18bfe3e7cd3066b00c0a5bbefbaff359a7843e6310aecf50e42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProfileRefines
    {Input : Type uInput} {Witness : Type uWitness}
    (refined broader : IntervalProfile Input Witness) where
  adapterArtifact : ArtifactRef .normalizationAdapter
  proofArtifact : ArtifactRef .theoremProof
  comparisonScope : ArtifactRef .assumptionSet
  comparisonScopeExact : comparisonScope = broader.assumptionSet
  domainCoverage :
    ∀ input, broader.domain input → refined.domain input
  admissiblePreserved :
    ∀ input witness,
      broader.domain input →
      refined.admissible input witness →
        broader.admissible input witness

namespace ProfileRefines

/--
Transport an interval claim only through the supplied, proof-carrying profile
adapter.  Keeping this operation on `ProfileRefines` makes use of the adapter
visible in downstream corollaries instead of silently projecting a stronger
domain hypothesis by hand.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorem/Varianta878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorem/Varianta878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `610ef4b35b9d77255aad81f439d6b6b6e4c5c91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
