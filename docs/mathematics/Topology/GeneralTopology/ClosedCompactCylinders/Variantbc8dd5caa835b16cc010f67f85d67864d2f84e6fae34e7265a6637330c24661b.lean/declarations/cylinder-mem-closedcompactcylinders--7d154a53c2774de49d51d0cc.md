# cylinder_mem_closedCompactCylinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f04cac76-efdd-01e6-76d9-8e6b1fc60f11",
  "kind": "theorem",
  "lexical_name": "cylinder_mem_closedCompactCylinders",
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
  "slug": "cylinder-mem-closedcompactcylinders--7d154a53c2774de49d51d0cc",
  "source": {
    "blob": "f55bfbbec68001dae306c0b45bb7e9022f3a2736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d154a53c2774de49d51d0cc469b3fc4d7c90cc82c3450d0a4a18146949a21bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f04cac76-efdd-01e6-76d9-8e6b1fc60f11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cylinder_mem_closedCompactCylinders (s : Finset ι) (S : Set (Π i : s, X i))
    (hS_closed : IsClosed S) (hS_compact : IsCompact S) :
    cylinder s S ∈ closedCompactCylinders X := by
  rw [mem_closedCompactCylinders]
  exact ⟨s, S, hS_closed, hS_compact, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55bfbbec68001dae306c0b45bb7e9022f3a2736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
