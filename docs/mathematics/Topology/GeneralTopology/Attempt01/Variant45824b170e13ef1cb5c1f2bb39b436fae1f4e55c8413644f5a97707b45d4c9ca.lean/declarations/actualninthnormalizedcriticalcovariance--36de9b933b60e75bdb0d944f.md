# actualNinthNormalizedCriticalCovariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:750ec9d90e65ed22f30403bfbedd8f498c8ddb67ac4c0c4c65790f951be6f51a",
  "kind": "def",
  "lexical_name": "actualNinthNormalizedCriticalCovariance",
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
  "slug": "actualninthnormalizedcriticalcovariance--36de9b933b60e75bdb0d944f",
  "source": {
    "blob": "b2560f3723d49fed6e0cfaef4f4d7305ba30ba48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant45824b170e13ef1cb5c1f2bb39b436fae1f4e55c8413644f5a97707b45d4c9ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36de9b933b60e75bdb0d944f1d5272c9a14c419559cb3abb385e99e3ef6f92cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant45824b170e13ef1cb5c1f2bb39b436fae1f4e55c8413644f5a97707b45d4c9ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:750ec9d90e65ed22f30403bfbedd8f498c8ddb67ac4c0c4c65790f951be6f51a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualNinthNormalizedCriticalCovariance (A : ℝ) : ℝ :=
  A ^ 9 * Real.exp (-A) * actualCriticalErrorCovariance A

/-- The fixed nonnegative polynomial for both literal source edge jets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant45824b170e13ef1cb5c1f2bb39b436fae1f4e55c8413644f5a97707b45d4c9ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant45824b170e13ef1cb5c1f2bb39b436fae1f4e55c8413644f5a97707b45d4c9ca.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2560f3723d49fed6e0cfaef4f4d7305ba30ba48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
