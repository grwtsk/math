# selectedResolutionValue_eq_request_of_supported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfd8614d-bb83-5b63-7da9-29d69da0d870",
  "kind": "theorem",
  "lexical_name": "selectedResolutionValue_eq_request_of_supported",
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
  "slug": "selectedresolutionvalue-eq-request-of-supported--f791a40f61ef0fd365a43258",
  "source": {
    "blob": "33f63fe3d7ade55a591cd4bd4912001cb2492d8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant8eefd9d3019f71a9a2014aeb64c1d7e393f2c611024622de09adbbacb2a381fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f791a40f61ef0fd365a43258d4463a8558ccd0c0a62580c17bec1591b9368114",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant8eefd9d3019f71a9a2014aeb64c1d7e393f2c611024622de09adbbacb2a381fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfd8614d-bb83-5b63-7da9-29d69da0d870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selectedResolutionValue_eq_request_of_supported
    (profile : QuantizationProfile)
    (supported :
      profile.request.resolution.value ≤ profile.compilerTarget.wordBits) :
    selectedResolutionValue profile = profile.request.resolution.value := by
  exact Nat.min_eq_left supported

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant8eefd9d3019f71a9a2014aeb64c1d7e393f2c611024622de09adbbacb2a381fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant8eefd9d3019f71a9a2014aeb64c1d7e393f2c611024622de09adbbacb2a381fd.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33f63fe3d7ade55a591cd4bd4912001cb2492d8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
