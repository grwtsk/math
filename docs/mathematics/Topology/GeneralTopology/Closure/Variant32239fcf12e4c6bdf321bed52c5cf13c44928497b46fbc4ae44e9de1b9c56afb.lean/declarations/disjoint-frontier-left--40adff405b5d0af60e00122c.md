# Disjoint.frontier_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef7f25aa-fbb0-1fe5-a18c-1c4298ca563d",
  "kind": "theorem",
  "lexical_name": "Disjoint.frontier_left",
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
  "slug": "disjoint-frontier-left--40adff405b5d0af60e00122c",
  "source": {
    "blob": "9413d437e9dc14530c2c9239806f8502cb5cf020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 498,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant32239fcf12e4c6bdf321bed52c5cf13c44928497b46fbc4ae44e9de1b9c56afb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40adff405b5d0af60e00122c98acd6e68073282660e8f39c380c93909819e2e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant32239fcf12e4c6bdf321bed52c5cf13c44928497b46fbc4ae44e9de1b9c56afb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef7f25aa-fbb0-1fe5-a18c-1c4298ca563d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Disjoint.frontier_left (ht : IsOpen t) (hd : Disjoint s t) : Disjoint (frontier s) t :=
  subset_compl_iff_disjoint_right.1 <|
    frontier_subset_closure.trans <| closure_minimal (disjoint_left.1 hd) <| isClosed_compl_iff.2 ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant32239fcf12e4c6bdf321bed52c5cf13c44928497b46fbc4ae44e9de1b9c56afb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant32239fcf12e4c6bdf321bed52c5cf13c44928497b46fbc4ae44e9de1b9c56afb.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9413d437e9dc14530c2c9239806f8502cb5cf020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
