# finiteToInfiniteCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51c54600148a32455d52666dc9ad0b732bf319ae88ab1e6ed2b3d314ca7f75ed",
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
  "slug": "finitetoinfinitecompatibility--1eaeb351d3a83551e44268f9",
  "source": {
    "blob": "5f89632e3d4a6e6a93a76d97b766e5556ee49dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierCompatibilityNotMapIndexed/Variantcbc77d9889f73885ba2179754687df69c987000f7a1ddb7c0ce071cc2f584498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1eaeb351d3a83551e44268f9ff96e1775d064206444907736b192ff816a57167",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierCompatibilityNotMapIndexed/Variantcbc77d9889f73885ba2179754687df69c987000f7a1ddb7c0ce071cc2f584498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51c54600148a32455d52666dc9ad0b732bf319ae88ab1e6ed2b3d314ca7f75ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–24.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierCompatibilityNotMapIndexed/Variantcbc77d9889f73885ba2179754687df69c987000f7a1ddb7c0ce071cc2f584498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierCompatibilityNotMapIndexed/Variantcbc77d9889f73885ba2179754687df69c987000f7a1ddb7c0ce071cc2f584498.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f89632e3d4a6e6a93a76d97b766e5556ee49dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
