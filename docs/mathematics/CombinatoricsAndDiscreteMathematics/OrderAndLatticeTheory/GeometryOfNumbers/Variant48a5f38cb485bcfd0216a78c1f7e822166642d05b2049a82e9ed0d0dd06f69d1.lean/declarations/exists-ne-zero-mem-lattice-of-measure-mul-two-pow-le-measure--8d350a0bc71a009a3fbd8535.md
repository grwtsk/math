# exists_ne_zero_mem_lattice_of_measure_mul_two_pow_le_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1a4241a3d8ffd6729b50537933ba6a2d45e7cc7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70d67ccc-fc9b-e2cc-4a61-98f0a26c81ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bfa337c-cbb6-6b2d-3b5f-3db45816d0d6",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_mem_lattice_of_measure_mul_two_pow_le_measure",
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
  "slug": "exists-ne-zero-mem-lattice-of-measure-mul-two-pow-le-measure--8d350a0bc71a009a3fbd8535",
  "source": {
    "blob": "e1a4241a3d8ffd6729b50537933ba6a2d45e7cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d350a0bc71a009a3fbd853555663c979eb9a30b4f9fe604999b266cd0b72986",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bfa337c-cbb6-6b2d-3b5f-3db45816d0d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_mem_lattice_of_measure_mul_two_pow_le_measure [NormedAddCommGroup E]
    [NormedSpace ℝ E] [BorelSpace E] [FiniteDimensional ℝ E] [Nontrivial E] [IsAddHaarMeasure μ]
    {L : AddSubgroup E} [Countable L] [DiscreteTopology L] (fund : IsAddFundamentalDomain L F μ)
    (h_symm : ∀ x ∈ s, -x ∈ s) (h_conv : Convex ℝ s) (h_cpt : IsCompact s)
    (h : μ F * 2 ^ finrank ℝ E ≤ μ s) :
    ∃ x ≠ 0, ((x : L) : E) ∈ s := by
  have h_mes : μ s ≠ 0 := by
    intro hμ
    suffices μ F = 0 from fund.measure_ne_zero (NeZero.ne μ) this
    rw [hμ, le_zero_iff, mul_eq_zero] at h
    exact h.resolve_right <| pow_ne_zero _ two_ne_zero
  have h_nemp : s.Nonempty := nonempty_of_measure_ne_zero h_mes
  let u : ℕ → ℝ≥0 := (exists_seq_strictAnti_tendsto 0).choose
  let K : ConvexBody E := ⟨s, h_conv, h_cpt, h_nemp⟩
  let S : ℕ → ConvexBody E := fun n => (1 + u n) • K
  let Z : ℕ → Set E := fun n => (S n) ∩ (L \ {0})
  -- The convex bodies `S n` have volume strictly larger than `μ s` and thus we can apply
  -- `exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure` to them and obtain that
  -- `S n` contains a nonzero point of `L`. Since the intersection of the `S n` is equal to `s`,
  -- it follows that `s` contains a nonzero point of `L`.
  have h_zero : 0 ∈ K := K.zero_mem_of_symmetric h_symm
  suffices Set.Nonempty (⋂ n, Z n) by
    erw [← Set.iInter_inter, K.iInter_smul_eq_self h_zero] at this
    · obtain ⟨x, hx⟩ := this
      exact ⟨⟨x, by aesop⟩, by aesop⟩
    · exact (exists_seq_strictAnti_tendsto (0 : ℝ≥0)).choose_spec.2.2
  have h_clos : IsClosed ((L : Set E) \ {0}) := by
    rsuffices ⟨U, hU⟩ : ∃ U : Set E, IsOpen U ∧  U ∩ L = {0}
    · rw [sdiff_eq_sdiff_iff_inf_eq_inf (z := U).mpr (by simp [Set.inter_comm .. ▸ hU.2, zero_mem])]
      exact AddSubgroup.isClosed_of_discrete.sdiff hU.1
    exact isOpen_inter_eq_singleton_of_mem_discrete (zero_mem L)
  refine IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed Z (fun n => ?_)
    (fun n => ?_) ((S 0).isCompact.inter_right h_clos) (fun n => (S n).isClosed.inter h_clos)
  · refine Set.inter_subset_inter_left _ (SetLike.coe_subset_coe.mpr ?_)
    refine ConvexBody.smul_le_of_le K h_zero ?_
    rw [add_le_add_iff_left]
    exact le_of_lt <| (exists_seq_strictAnti_tendsto (0 : ℝ≥0)).choose_spec.1 (Nat.lt.base n)
  · suffices μ F * 2 ^ finrank ℝ E < μ (S n : Set E) by
      have h_symm' : ∀ x ∈ S n, -x ∈ S n := by
        rintro _ ⟨y, hy, rfl⟩
        exact ⟨-y, h_symm _ hy, by simp⟩
      obtain ⟨x, hx_nz, hx_mem⟩ := exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure
        fund h_symm' (S n).convex this
      exact ⟨x, hx_mem, by aesop⟩
    refine lt_of_le_of_lt h ?_
    rw [ConvexBody.coe_smul', NNReal.smul_def, addHaar_smul_of_nonneg _ (NNReal.coe_nonneg _)]
    rw [show μ s < _ ↔ 1 * μ s < _ by rw [one_mul]]
    refine (mul_lt_mul_right h_mes (ne_of_lt h_cpt.measure_lt_top)).mpr ?_
    rw [ofReal_pow (NNReal.coe_nonneg _)]
    refine one_lt_pow₀ ?_ (ne_of_gt finrank_pos)
    simp [u, K, S, Z, (exists_seq_strictAnti_tendsto (0 : ℝ≥0)).choose_spec.2.1 n]

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1a4241a3d8ffd6729b50537933ba6a2d45e7cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
