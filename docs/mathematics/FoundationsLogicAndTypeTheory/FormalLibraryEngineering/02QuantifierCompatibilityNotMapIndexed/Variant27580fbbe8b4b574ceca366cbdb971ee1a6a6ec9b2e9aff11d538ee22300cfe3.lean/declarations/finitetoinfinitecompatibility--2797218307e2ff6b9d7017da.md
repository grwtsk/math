# finiteToInfiniteCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df6f5d23e4ffd79bdaa6c5688119c5293238ecb32f0e4d7109a73c9f68617e11",
  "kind": "def",
  "lexical_name": "finiteToInfiniteCompatibility",
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
  "slug": "finitetoinfinitecompatibility--2797218307e2ff6b9d7017da",
  "source": {
    "blob": "4e247c9f60d7a39d6540fec66429e83ef21adf1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierCompatibilityNotMapIndexed/Variant27580fbbe8b4b574ceca366cbdb971ee1a6a6ec9b2e9aff11d538ee22300cfe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2797218307e2ff6b9d7017da38667039c88720e58a3474122772e09464b4da8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierCompatibilityNotMapIndexed/Variant27580fbbe8b4b574ceca366cbdb971ee1a6a6ec9b2e9aff11d538ee22300cfe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df6f5d23e4ffd79bdaa6c5688119c5293238ecb32f0e4d7109a73c9f68617e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteToInfiniteCompatibility :
    QuantifierUnspecifiedCompatibility Bool Nat
      neutralQuantifierProfile neutralQuantifierProfile :=
  .fullySpecified (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])
    (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])

/-!
Even the carrier-equivalence branch is not indexed by the `Translation.mapObject`
function.  A non-bijective constant map can coexist with an unrelated identity
equivalence in the current public types.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierCompatibilityNotMapIndexed/Variant27580fbbe8b4b574ceca366cbdb971ee1a6a6ec9b2e9aff11d538ee22300cfe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierCompatibilityNotMapIndexed/Variant27580fbbe8b4b574ceca366cbdb971ee1a6a6ec9b2e9aff11d538ee22300cfe3.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e247c9f60d7a39d6540fec66429e83ef21adf1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
