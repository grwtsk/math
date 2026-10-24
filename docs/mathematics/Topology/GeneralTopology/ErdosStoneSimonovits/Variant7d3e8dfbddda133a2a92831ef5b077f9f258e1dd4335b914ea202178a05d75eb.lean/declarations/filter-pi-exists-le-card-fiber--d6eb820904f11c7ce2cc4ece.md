# filter.pi.exists_le_card_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d382cb2-0a38-3598-9241-db4baeab4608",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d9a9280-0b32-5c0c-2dcc-9bde0d98d231",
  "kind": "theorem",
  "lexical_name": "filter.pi.exists_le_card_fiber",
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
  "slug": "filter-pi-exists-le-card-fiber--d6eb820904f11c7ce2cc4ece",
  "source": {
    "blob": "3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6eb820904f11c7ce2cc4ece4e1d58d2161afedfc331f4ca6790b095ad5c28eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d9a9280-0b32-5c0c-2dcc-9bde0d98d231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter.pi.exists_le_card_fiber (hr_pos : 0 < r) (ht'_pos : 0 < t')
    (ht_lt_t' : t < t') (hδ : G.minDegree ≥ (1 - 1 / r + ε) * n)
    (hN : (t'.choose t ^ r * t + r * t') * (t' - t) ≤ n * (r * t' * ε - t)) :
    ∃ y : K.parts.pi (·.powersetCard t), t ≤ #{ w | filter.pi K w = y } := by
  have : Nonempty (K.parts.pi (·.powersetCard t)) := by
    simp_rw [nonempty_coe_sort, pi_nonempty, powersetCard_nonempty]
    intro p hp
    rw [K.card_mem_parts hp]
    exact ht_lt_t'.le
  apply exists_le_card_fiber_of_mul_le_card
  simp_rw [card_coe]
  calc #(K.parts.pi (·.powersetCard t)) * t
    _ = (∏ x ∈ K.parts, (#x).choose t) * t := by
        simp_rw [Finset.card_pi, card_powersetCard]
    _ = (∏ p ∈ K.parts, t'.choose t) * t :=
        congrArg (· * t) <| prod_congr rfl
          fun p hp ↦ congrArg (Nat.choose · t) <| K.card_mem_parts hp
    _ ≤ t'.choose t ^ r * t := by
        rw [prod_const, K.card_parts.resolve_right ht'_pos.ne']
    _ ≤ #(filter K t) := by
        refine Nat.le_of_mul_le_mul_right ?_ (Nat.sub_pos_of_lt ht_lt_t')
        rw [← @Nat.cast_le ℝ, Nat.cast_mul _ (t' - t), Nat.cast_mul _ (t' - t),
          Nat.cast_sub ht_lt_t'.le]
        exact mul_le_card_filter_mul K hr_pos ht'_pos hδ (mod_cast hN)

end ErdosStone

set_option backward.isDefEq.respectTransparency.types false in
/-- If `G` has a minimal degree of at least `(1 - 1 / r + o(1)) * n`, then `G` contains a
copy of a `completeEquipartiteGraph` in `r + 1` parts each of size `t`.

This is the minimal-degree version of the **Erdős-Stone theorem**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
