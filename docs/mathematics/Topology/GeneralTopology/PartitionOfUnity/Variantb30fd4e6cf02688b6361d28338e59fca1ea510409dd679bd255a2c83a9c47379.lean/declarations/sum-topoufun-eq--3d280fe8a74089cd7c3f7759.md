# sum_toPOUFun_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6478a5dbdcf985154971ed17fcde575a9536db1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 520,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af2edacf-1b3b-cf7e-5143-9f89cf0dd5bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4df8d9a4-24e6-57ac-2184-de2bfd8ad16a",
  "kind": "theorem",
  "lexical_name": "sum_toPOUFun_eq",
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
  "slug": "sum-topoufun-eq--3d280fe8a74089cd7c3f7759",
  "source": {
    "blob": "d6478a5dbdcf985154971ed17fcde575a9536db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 520,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d280fe8a74089cd7c3f7759137537df387ecc28e1f6b99b754d5f66900a3988",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4df8d9a4-24e6-57ac-2184-de2bfd8ad16a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_toPOUFun_eq (x : X) : ∑ᶠ i, f.toPOUFun i x = 1 - ∏ᶠ i, (1 - f i x) := by
  set s := (f.point_finite x).toFinset
  have hs : (s : Set ι) = { i | f i x ≠ 0 } := Finite.coe_toFinset _
  have A : (support fun i => toPOUFun f i x) ⊆ s := by
    rw [hs]
    exact fun i hi => f.support_toPOUFun_subset i hi
  have B : (mulSupport fun i => 1 - f i x) ⊆ s := by
    rw [hs, mulSupport_one_sub]
    exact fun i => id
  classical
  let : LinearOrder ι := linearOrderOfSTO WellOrderingRel
  rw [finsum_eq_sum_of_support_subset _ A, finprod_eq_prod_of_mulSupport_subset _ B,
    Finset.prod_one_sub_ordered, sub_sub_cancel]
  refine Finset.sum_congr rfl fun i _ => ?_
  convert! f.toPOUFun_eq_mul_prod _ _ _ fun j _ hj => _
  rwa [Finite.mem_toFinset]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6478a5dbdcf985154971ed17fcde575a9536db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
