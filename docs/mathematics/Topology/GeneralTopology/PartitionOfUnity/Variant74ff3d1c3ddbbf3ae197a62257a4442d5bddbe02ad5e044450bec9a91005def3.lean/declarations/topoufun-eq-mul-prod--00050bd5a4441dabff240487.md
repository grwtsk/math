# toPOUFun_eq_mul_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13ade557-6fcd-80db-a759-40fd7e6e8c81",
  "kind": "theorem",
  "lexical_name": "toPOUFun_eq_mul_prod",
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
  "slug": "topoufun-eq-mul-prod--00050bd5a4441dabff240487",
  "source": {
    "blob": "a2331e8bd597103cfe054e13d05202419fe43f85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 395,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00050bd5a4441dabff2404870dfd9cb122c78f57713210055519e68015a7bc4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13ade557-6fcd-80db-a759-40fd7e6e8c81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPOUFun_eq_mul_prod (i : ι) (x : X) (t : Finset ι)
    (ht : ∀ j, WellOrderingRel j i → f j x ≠ 0 → j ∈ t) :
    f.toPOUFun i x = f i x * ∏ j in t.filter fun j => WellOrderingRel j i, (1 - f j x) := by
  refine' congr_arg _ (finprod_cond_eq_prod_of_cond_iff _ fun {j} hj => _)
  rw [Ne.def, sub_eq_self] at hj
  rw [Finset.mem_filter, Iff.comm, and_iff_right_iff_imp]
  exact flip (ht j) hj
#align bump_covering.to_pou_fun_eq_mul_prod BumpCovering.toPOUFun_eq_mul_prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2331e8bd597103cfe054e13d05202419fe43f85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
