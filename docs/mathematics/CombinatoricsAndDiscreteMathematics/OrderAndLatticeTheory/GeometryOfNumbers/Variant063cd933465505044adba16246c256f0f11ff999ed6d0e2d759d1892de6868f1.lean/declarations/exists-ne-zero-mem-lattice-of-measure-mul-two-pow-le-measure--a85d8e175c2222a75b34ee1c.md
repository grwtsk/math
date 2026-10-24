# exists_ne_zero_mem_lattice_of_measure_mul_two_pow_le_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b698282-f597-bbc3-2835-780b88e9d855",
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
  "slug": "exists-ne-zero-mem-lattice-of-measure-mul-two-pow-le-measure--a85d8e175c2222a75b34ee1c",
  "source": {
    "blob": "f05e448b24e3e64c229725c846649b2a90a63ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant063cd933465505044adba16246c256f0f11ff999ed6d0e2d759d1892de6868f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a85d8e175c2222a75b34ee1cb0b8ce078030b6ef6f4d9413d299f24bf81b2c9e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant063cd933465505044adba16246c256f0f11ff999ed6d0e2d759d1892de6868f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b698282-f597-bbc3-2835-780b88e9d855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_mem_lattice_of_measure_mul_two_pow_le_measure [NormedAddCommGroup E]
    [NormedSpace ℝ E] [BorelSpace E] [FiniteDimensional ℝ E] [Nontrivial E] [IsAddHaarMeasure μ]
    {L : AddSubgroup E} [Countable L] [DiscreteTopology L] (fund : IsAddFundamentalDomain L F μ)
    (h_symm : ∀ x ∈ s, -x ∈ s) (h_conv : Convex ℝ s) (h_cpt : IsCompact s)
    (h : μ F * 2 ^ finrank ℝ E ≤ μ s) :
    ∃ x ≠ 0, ((x : L) : E) ∈ s := by
  have h_mes : μ s ≠ 0 := fun hμ ↦ fund.measure_ne_zero (NeZero.ne μ) <| by simpa [hμ] using h
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
    simp_rw [Z, S, ConvexBody.coe_smul', NNReal.smul_def, ← Set.iInter_inter, NNReal.coe_add,
      NNReal.coe_one] at this
    rw [K.iInter_smul_eq_self h_zero] at this
    · obtain ⟨x, hx⟩ := this
      exact ⟨⟨x, by simp_all⟩, by aesop⟩
    · exact (exists_seq_strictAnti_tendsto (0 : ℝ≥0)).choose_spec.2.2
  have h_clos : IsClosed ((L : Set E) \ {0}) := by
    rsuffices ⟨U, hU⟩ : ∃ U : Set E, IsOpen U ∧ U ∩ L = {0}
    · rw [sdiff_eq_sdiff_iff_inf_eq_inf (z := U).mpr (by simp [Set.inter_comm .. ▸ hU.2, zero_mem])]
      exact AddSubgroup.isClosed_of_discreteTopology.sdiff hU.1
    exact isOpen_inter_eq_singleton_of_mem_discrete ⟨inferInstance⟩ (zero_mem L)
  refine IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed Z (fun n => ?_)
    (fun n => ?_) ((S 0).isCompact.inter_right h_clos) (fun n => (S n).isClosed.inter h_clos)
  · refine Set.inter_subset_inter_left _ (SetLike.coe_subset_coe.mpr ?_)
    refine ConvexBody.smul_le_of_le K h_zero ?_
    rw [add_le_add_iff_left]
    exact le_of_lt <| (exists_seq_strictAnti_tendsto (0 : ℝ≥0)).choose_spec.1 (Nat.lt_add_one n)
  · suffices μ F * 2 ^ finrank ℝ E < μ (S n : Set E) by
      have h_symm' : ∀ x ∈ S n, -x ∈ S n := by
        rintro _ ⟨y, hy, rfl⟩
        exact ⟨-y, h_symm _ hy, by simp⟩
      obtain ⟨x, hx_nz, hx_mem⟩ := exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure
        fund h_symm' (S n).convex this
      exact ⟨x, hx_mem, by simp_all⟩
    refine lt_of_le_of_lt h ?_
    rw [ConvexBody.coe_smul', NNReal.smul_def, addHaar_smul_of_nonneg _ (NNReal.coe_nonneg _)]
    rw [show μ s < _ ↔ 1 * μ s < _ by rw [one_mul]]
    dsimp [K]
    gcongr
    · exact h_cpt.measure_ne_top
    rw [ofReal_pow (by positivity)]
    refine one_lt_pow₀ ?_ (ne_of_gt finrank_pos)
    simp [u, (exists_seq_strictAnti_tendsto (0 : ℝ≥0)).choose_spec.2.1 n]

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant063cd933465505044adba16246c256f0f11ff999ed6d0e2d759d1892de6868f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant063cd933465505044adba16246c256f0f11ff999ed6d0e2d759d1892de6868f1.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05e448b24e3e64c229725c846649b2a90a63ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
