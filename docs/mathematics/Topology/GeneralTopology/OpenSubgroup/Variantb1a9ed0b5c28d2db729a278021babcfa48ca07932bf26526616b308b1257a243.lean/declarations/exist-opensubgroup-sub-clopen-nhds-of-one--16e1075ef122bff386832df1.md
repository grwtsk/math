# exist_openSubgroup_sub_clopen_nhds_of_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b37dab4d-bcc9-eede-5bce-ab4616c1553d",
  "kind": "theorem",
  "lexical_name": "exist_openSubgroup_sub_clopen_nhds_of_one",
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
  "slug": "exist-opensubgroup-sub-clopen-nhds-of-one--16e1075ef122bff386832df1",
  "source": {
    "blob": "50595f09d50a3d32037ed65853a87615d4e61f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 544,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16e1075ef122bff386832df1c26b5a6599787d7ffd804dedca49f241b0daabb8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b37dab4d-bcc9-eede-5bce-ab4616c1553d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exist_openSubgroup_sub_clopen_nhds_of_one {G : Type*} [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] {W : Set G} (WClopen : IsClopen W) (einW : 1 ∈ W) :
    ∃ H : OpenSubgroup G, (H : Set G) ⊆ W := by
  rcases exists_mulInvClosureNhd WClopen with ⟨V, hV⟩
  let S : Subgroup G := {
    carrier := ⋃ n , V ^ (n + 1)
    mul_mem' := fun ha hb ↦ by
      rcases mem_iUnion.mp ha with ⟨k, hk⟩
      rcases mem_iUnion.mp hb with ⟨l, hl⟩
      apply mem_iUnion.mpr
      use k + 1 + l
      rw [add_assoc, pow_add]
      exact Set.mul_mem_mul hk hl
    one_mem' := by
      apply mem_iUnion.mpr
      use 0
      simp [mem_of_mem_nhds hV.nhds]
    inv_mem' := fun ha ↦ by
      rcases mem_iUnion.mp ha with ⟨k, hk⟩
      apply mem_iUnion.mpr
      use k
      rw [← hV.inv]
      simpa only [inv_pow, Set.mem_inv, inv_inv] using hk }
  have : IsOpen (⋃ n , V ^ (n + 1)) := by
    refine isOpen_iUnion (fun n ↦ ?_)
    rw [pow_succ]
    exact hV.isOpen.mul_left
  use ⟨S, this⟩
  have mulVpow (n : ℕ) : W * V ^ (n + 1) ⊆ W := by
    induction n with
    | zero => simp [hV.mul]
    | succ n ih =>
      rw [pow_succ, ← mul_assoc]
      exact (Set.mul_subset_mul_right ih).trans hV.mul
  have (n : ℕ) : V ^ (n + 1) ⊆ W * V ^ (n + 1) := by
    intro x xin
    rw [Set.mem_mul]
    use 1, einW, x, xin
    rw [one_mul]
  apply iUnion_subset fun i _ a ↦ mulVpow i (this i a)

@[deprecated (since := "2025-05-22")]
alias exist_openSubgroup_sub_clopen_nhd_of_one := exist_openSubgroup_sub_clopen_nhds_of_one

@[deprecated (since := "2025-05-22")]
alias _root_.IsTopologicalAddGroup.exist_openAddSubgroup_sub_clopen_nhd_of_zero :=
  IsTopologicalAddGroup.exist_openAddSubgroup_sub_clopen_nhds_of_zero

end IsTopologicalGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50595f09d50a3d32037ed65853a87615d4e61f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
