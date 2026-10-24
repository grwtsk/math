# metricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd9c828a7162cc5ead60ca5f41d2b48ecd2a073e8c38788bde882ea3ed034f2b",
  "kind": "def",
  "lexical_name": "metricSpace",
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
  "slug": "metricspace--bc04fd8f163525b5a7d52ca4",
  "source": {
    "blob": "44c5d988f5a1019f59a0fed5fbd348c5bef91c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 893,
    "line": 812,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc04fd8f163525b5a7d52ca43975b6c1dc4babf0d7e78c0768c14efcacd7ae5e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd9c828a7162cc5ead60ca5f41d2b48ecd2a073e8c38788bde882ea3ed034f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 812–893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def metricSpace : MetricSpace (∀ i, F i) where
  dist_self x := by simp [dist_eq_tsum]
  dist_comm x y := by simp [dist_eq_tsum, dist_comm]
  dist_triangle x y z :=
    have I : ∀ i, min ((1 / 2) ^ encode i : ℝ) (dist (x i) (z i)) ≤
        min ((1 / 2) ^ encode i : ℝ) (dist (x i) (y i)) +
          min ((1 / 2) ^ encode i : ℝ) (dist (y i) (z i)) := fun i =>
      calc
        min ((1 / 2) ^ encode i : ℝ) (dist (x i) (z i)) ≤
            min ((1 / 2) ^ encode i : ℝ) (dist (x i) (y i) + dist (y i) (z i)) :=
          min_le_min le_rfl (dist_triangle _ _ _)
        _ = min ((1 / 2) ^ encode i : ℝ) (min ((1 / 2) ^ encode i : ℝ) (dist (x i) (y i)) +
              min ((1 / 2) ^ encode i : ℝ) (dist (y i) (z i))) := by
          convert congr_arg ((↑) : ℝ≥0 → ℝ)
            (min_add_distrib ((1 / 2 : ℝ≥0) ^ encode i) (nndist (x i) (y i))
              (nndist (y i) (z i)))
        _ ≤ min ((1 / 2) ^ encode i : ℝ) (dist (x i) (y i)) +
              min ((1 / 2) ^ encode i : ℝ) (dist (y i) (z i)) :=
          min_le_right _ _
    calc dist x z ≤ ∑' i, (min ((1 / 2) ^ encode i : ℝ) (dist (x i) (y i)) +
          min ((1 / 2) ^ encode i : ℝ) (dist (y i) (z i))) :=
        (dist_summable x z).tsum_le_tsum I ((dist_summable x y).add (dist_summable y z))
      _ = dist x y + dist y z := (dist_summable x y).tsum_add (dist_summable y z)
  eq_of_dist_eq_zero hxy := by
    ext1 n
    rw [← dist_le_zero, ← hxy]
    apply dist_le_dist_pi_of_dist_lt
    rw [hxy]
    simp
  toUniformSpace := Pi.uniformSpace _
  uniformity_dist := by
    simp only [Pi.uniformity, comap_iInf, gt_iff_lt, preimage_setOf_eq, comap_principal,
      PseudoMetricSpace.uniformity_dist]
    apply le_antisymm
    · simp only [le_iInf_iff, le_principal_iff]
      intro ε εpos
      classical
      obtain ⟨K, hK⟩ :
        ∃ K : Finset ι, (∑' i : { j // j ∉ K }, (1 / 2 : ℝ) ^ encode (i : ι)) < ε / 2 :=
        ((tendsto_order.1 (tendsto_tsum_compl_atTop_zero fun i : ι => (1 / 2 : ℝ) ^ encode i)).2 _
            (half_pos εpos)).exists
      obtain ⟨δ, δpos, hδ⟩ : ∃ δ : ℝ, 0 < δ ∧ (K.card : ℝ) * δ < ε / 2 :=
        exists_pos_mul_lt (half_pos εpos) _
      apply @mem_iInf_of_iInter _ _ _ _ _ K.finite_toSet fun i =>
          { p : (∀ i : ι, F i) × ∀ i : ι, F i | dist (p.fst i) (p.snd i) < δ }
      · rintro ⟨i, hi⟩
        refine mem_iInf_of_mem δ (mem_iInf_of_mem δpos ?_)
        simp only [Prod.forall, imp_self, mem_principal, Subset.rfl]
      · rintro ⟨x, y⟩ hxy
        simp only [mem_iInter, mem_setOf_eq, SetCoe.forall, Finset.mem_range, Finset.mem_coe] at hxy
        calc
          dist x y = ∑' i : ι, min ((1 / 2) ^ encode i : ℝ) (dist (x i) (y i)) := rfl
          _ = (∑ i ∈ K, min ((1 / 2) ^ encode i : ℝ) (dist (x i) (y i))) +
                ∑' i : ↑(K : Set ι)ᶜ, min ((1 / 2) ^ encode (i : ι) : ℝ) (dist (x i) (y i)) :=
            (Summable.sum_add_tsum_compl (dist_summable _ _)).symm
          _ ≤ (∑ i ∈ K, dist (x i) (y i)) +
                ∑' i : ↑(K : Set ι)ᶜ, ((1 / 2) ^ encode (i : ι) : ℝ) := by
            gcongr
            · apply min_le_right
            · apply Summable.subtype (dist_summable x y) (↑K : Set ι)ᶜ
            · apply Summable.subtype summable_geometric_two_encode (↑K : Set ι)ᶜ
            · apply min_le_left
          _ < (∑ _i ∈ K, δ) + ε / 2 := by
            apply add_lt_add_of_le_of_lt _ hK
            refine Finset.sum_le_sum fun i hi => (hxy i ?_).le
            simpa using hi
          _ ≤ ε / 2 + ε / 2 := by
            gcongr
            simpa using hδ.le
          _ = ε := add_halves _
    · simp only [le_iInf_iff, le_principal_iff]
      intro i ε εpos
      refine mem_iInf_of_mem (min ((1 / 2) ^ encode i : ℝ) ε) ?_
      have : 0 < min ((1 / 2) ^ encode i : ℝ) ε := lt_min (by simp) εpos
      refine mem_iInf_of_mem this ?_
      simp only [and_imp, Prod.forall, setOf_subset_setOf, lt_min_iff, mem_principal]
      intro x y hn hε
      calc
        dist (x i) (y i) ≤ dist x y := dist_le_dist_pi_of_dist_lt hn
        _ < ε := hε

end PiCountable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean#L812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c5d988f5a1019f59a0fed5fbd348c5bef91c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
