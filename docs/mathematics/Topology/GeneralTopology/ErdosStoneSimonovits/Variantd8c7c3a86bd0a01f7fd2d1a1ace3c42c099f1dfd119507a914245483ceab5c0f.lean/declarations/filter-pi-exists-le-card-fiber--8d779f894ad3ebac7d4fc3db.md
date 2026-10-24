# filter.pi.exists_le_card_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31dd0ab0-3d4e-ff3a-36af-6a708175b2e2",
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
  "slug": "filter-pi-exists-le-card-fiber--8d779f894ad3ebac7d4fc3db",
  "source": {
    "blob": "d4efa3a7530675c9f7dfa48abd4c17d4d45e8950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d779f894ad3ebac7d4fc3db15436e9dcbae09d40e9b1a61c81ffdab6cfc3438",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31dd0ab0-3d4e-ff3a-36af-6a708175b2e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–203.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4efa3a7530675c9f7dfa48abd4c17d4d45e8950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
