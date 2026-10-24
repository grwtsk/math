# DivisionRing.finite_of_compactSpace_of_t2Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dd71c11-76b0-23d7-925c-fd75afe2b175",
  "kind": "theorem",
  "lexical_name": "DivisionRing.finite_of_compactSpace_of_t2Space",
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
  "slug": "divisionring-finite-of-compactspace-of-t2space--108208f616f907ff52e08366",
  "source": {
    "blob": "bd4ab79bbe279f73202d08c8d0e0c03b4e6eda9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:108208f616f907ff52e08366f8a50eb70c58d1744b034623848b99bc33490f7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dd71c11-76b0-23d7-925c-fd75afe2b175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DivisionRing.finite_of_compactSpace_of_t2Space {K} [DivisionRing K] [TopologicalSpace K]
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd4ab79bbe279f73202d08c8d0e0c03b4e6eda9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
