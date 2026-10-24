# mem_quotientNeighborhoods_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8aaf998fec920645c7010dc1f127ab30499baab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cb843a0-31d2-62c3-7f1e-615c3a6289ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9520546e-ee59-a9f3-c7e2-9922e528675a",
  "kind": "theorem",
  "lexical_name": "mem_quotientNeighborhoods_iff",
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
  "slug": "mem-quotientneighborhoods-iff--be41201ef04d465ddbccc249",
  "source": {
    "blob": "d8aaf998fec920645c7010dc1f127ab30499baab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be41201ef04d465ddbccc249637824bded7f45d98e750f41e1aec3ad226777d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9520546e-ee59-a9f3-c7e2-9922e528675a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_quotientNeighborhoods_iff
    (intrinsic : Setoid State)
    (state : State)
    (neighborhood : Set (IntrinsicQuotient intrinsic)) :
    neighborhood ∈ quotientNeighborhoods intrinsic state ↔
      ∃ openSet,
        IsOpen (quotientMap intrinsic ⁻¹' openSet) ∧
        quotientMap intrinsic state ∈ openSet ∧
        openSet ⊆ neighborhood :=
  Iff.rfl

end Mathematics.Operational
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8aaf998fec920645c7010dc1f127ab30499baab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
