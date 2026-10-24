# actualCriticalAdjustedColumnPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a69c86b5937abe1ef7efeca951f7e8f14aa487687833b37a09ed72a6bf428c9",
  "kind": "def",
  "lexical_name": "actualCriticalAdjustedColumnPrimitive",
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
  "slug": "actualcriticaladjustedcolumnprimitive--932b37cc8eba4230980f07b4",
  "source": {
    "blob": "96dec076113d24324d29582b1f6d7e9575102eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:932b37cc8eba4230980f07b40dba012b2edcaf5b7fec1aa4a455b82b2382cd1e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a69c86b5937abe1ef7efeca951f7e8f14aa487687833b37a09ed72a6bf428c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCriticalAdjustedColumnPrimitive (A s : ℝ) : ℝ :=
  actualAdjointColumnPrimitive A s +
    2 * actualCenteredHalfZetaMain (vaughanCutoff A) * Real.exp (s / 2)

/-- Its genuine opposite boundary keeps the original time primitive and first twisted jet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96dec076113d24324d29582b1f6d7e9575102eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
