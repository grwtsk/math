# fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2670bbc530efc549ff4b37f556471f66668a62055e4963fc3efddeee4b28b55",
  "kind": "def",
  "lexical_name": "fintype",
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
  "slug": "fintype--7df673b3b5750d12b7cf96b2",
  "source": {
    "blob": "8df63583ae44b9cfef6e4f2f3cbbc8bfbab1fefa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 411,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant2e1aabe778a8074b8b55e63c0fe21eb71c03f0dd0991fbc3f6239b6477b550ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7df673b3b5750d12b7cf96b2afcd9c66630f47ca135a08c682f23cf1a55c2293",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant2e1aabe778a8074b8b55e63c0fe21eb71c03f0dd0991fbc3f6239b6477b550ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2670bbc530efc549ff4b37f556471f66668a62055e4963fc3efddeee4b28b55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def fintype [CompactSpace M] : Fintype ι :=
  fs.locallyFinite.fintypeOfCompact fun i => (fs i).nonempty_support
#align smooth_bump_covering.fintype SmoothBumpCovering.fintype

variable [T2Space M]

/-- Reinterpret a `SmoothBumpCovering` as a continuous `BumpCovering`. Note that not every
`f : BumpCovering ι M s` with smooth functions `f i` is a `SmoothBumpCovering`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant2e1aabe778a8074b8b55e63c0fe21eb71c03f0dd0991fbc3f6239b6477b550ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant2e1aabe778a8074b8b55e63c0fe21eb71c03f0dd0991fbc3f6239b6477b550ab.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df63583ae44b9cfef6e4f2f3cbbc8bfbab1fefa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
