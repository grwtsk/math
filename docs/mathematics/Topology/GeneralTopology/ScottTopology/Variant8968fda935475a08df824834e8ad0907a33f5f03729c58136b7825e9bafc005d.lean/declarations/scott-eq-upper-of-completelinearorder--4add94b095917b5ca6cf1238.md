# scott_eq_upper_of_completeLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e70ba6638b52955640391a74b81ec8d17a97e53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7915ace6-5d5d-8d27-6aaf-404c2ab5e595",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1168c366-cdf8-33d2-e6f1-b2e840d8a232",
  "kind": "lemma",
  "lexical_name": "scott_eq_upper_of_completeLinearOrder",
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
  "slug": "scott-eq-upper-of-completelinearorder--4add94b095917b5ca6cf1238",
  "source": {
    "blob": "0e70ba6638b52955640391a74b81ec8d17a97e53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 352,
    "path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4add94b095917b5ca6cf1238952f5b2302f32f8920715eb340896501918ad6d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1168c366-cdf8-33d2-e6f1-b2e840d8a232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma scott_eq_upper_of_completeLinearOrder : scott α univ = upper α := by
  letI := upper α
  ext U
  rw [@Topology.IsUpper.isTopologicalSpace_basis _ _ (upper α)
    ({ topology_eq_upperTopology := rfl }) U]
  letI := scott α univ
  rw [@isOpen_iff_Iic_compl_or_univ _ _ (scott α univ) ({ topology_eq_scott := rfl }) U]

/- The upper topology on a complete linear order is the Scott topology -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e70ba6638b52955640391a74b81ec8d17a97e53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
