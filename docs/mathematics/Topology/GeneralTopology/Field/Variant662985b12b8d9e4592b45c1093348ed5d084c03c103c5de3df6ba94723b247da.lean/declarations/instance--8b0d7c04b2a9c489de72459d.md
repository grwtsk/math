# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff4cfc6fc8890c0cae2cb673fe50bc73c4425176b91f76ef8d9b0cbdf7c1c03b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8b0d7c04b2a9c489de72459d",
  "source": {
    "blob": "a25f551574790032b7b27f17943536e680b87c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b0d7c04b2a9c489de72459d6a94b79f4a9f2f7e68428854664310fa3cecdaf5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff4cfc6fc8890c0cae2cb673fe50bc73c4425176b91f76ef8d9b0cbdf7c1c03b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) {K} [DivisionRing K] [TopologicalSpace K]
    [IsTopologicalRing K] [CompactSpace K] [T2Space K] : Finite K := by
  suffices DiscreteTopology K by
    exact finite_of_compact_of_discrete
  rw [discreteTopology_iff_isOpen_singleton_zero]
  exact GroupWithZero.isOpen_singleton_zero

variable (K)

/-- A topological division ring is a division ring with a topology where all operations are
    continuous, including inversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a25f551574790032b7b27f17943536e680b87c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
