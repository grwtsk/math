# ofRealLI_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:460154b0-03a0-35d5-167e-45b1b72bb6b2",
  "kind": "theorem",
  "lexical_name": "ofRealLI_apply",
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
  "slug": "ofrealli-apply--24de0a55f8dbd86f427e27ab",
  "source": {
    "blob": "6d238c7aa6d8bd711e3b27b9b3d07ac93c2852a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1180,
    "line": 1177,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24de0a55f8dbd86f427e27abcc3963e6f7c001ff214156a26c0f24dd2f4a6892",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:460154b0-03a0-35d5-167e-45b1b72bb6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1177–1180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofRealLI_apply : (ofRealLI : ℝ → K) = ofReal :=
  rfl

/-- The `ℝ → K` coercion, as a continuous linear map -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean#L1177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d238c7aa6d8bd711e3b27b9b3d07ac93c2852a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
