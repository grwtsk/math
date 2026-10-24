# zero_smul_filter_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c91f35ad-f64d-32fe-5f12-79256c49cd6e",
  "kind": "theorem",
  "lexical_name": "zero_smul_filter_nonpos",
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
  "slug": "zero-smul-filter-nonpos--f0722d906d35ff23425d61e7",
  "source": {
    "blob": "f44f14855a7cceda6219b62385caf571a591ca77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1100,
    "line": 1095,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0722d906d35ff23425d61e74eef6b79fc335ef3c6072a9bfd8a4a0420b819f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c91f35ad-f64d-32fe-5f12-79256c49cd6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1095–1100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_smul_filter_nonpos : (0 : α) • g ≤ 0 := by
  refine fun s hs => mem_smul_filter.2 ?_
  convert @univ_mem _ g
  refine eq_univ_iff_forall.2 fun a => ?_
  rwa [mem_preimage, zero_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean#L1095).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44f14855a7cceda6219b62385caf571a591ca77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
