# vectorMeasure_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70786d9d-e2c7-c193-9aa4-8cc36bc7e1bf",
  "kind": "lemma",
  "lexical_name": "vectorMeasure_singleton",
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
  "slug": "vectormeasure-singleton--bf5b578a344aa2806386995a",
  "source": {
    "blob": "5c218867d84e1e39755a96ccd6d0642c52bc5181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 139,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf5b578a344aa2806386995a1d3dfdc089c8982aa9d4c72d469109a0ad5a2b93",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70786d9d-e2c7-c193-9aa4-8cc36bc7e1bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma vectorMeasure_singleton (hf : BoundedVariationOn f univ) :
    hf.vectorMeasure {a} = f.rightLim a - f.leftLim a := by
  by_cases ha : IsBot a
  · have h : ∃ x, IsBot x := ⟨a, ha⟩
    have heqa : h.choose = a := subsingleton_isBot _ h.choose_spec ha
    have A : hf.exists_vectorMeasure_le_measureAux.choose {a} = 0 := by
      rw [← botSet_eq_singleton_of_isBot ha]
      exact hf.exists_vectorMeasure_le_measureAux.choose_spec.2.1
    simp only [vectorMeasure, h, ↓reduceDIte, add_apply, A, zero_add]
    rw [VectorMeasure.dirac_apply_of_mem (MeasurableSet.singleton a)]
    · simpa only [heqa, sub_right_inj] using (leftLim_eq_of_isBot ha).symm
    · simp [heqa]
  obtain ⟨b, hb⟩ : ∃ b, b < a := by simpa only [IsBot, not_forall, not_le] using ha
  obtain ⟨u, u_mono, u_lt_a, u_lim⟩ :
      ∃ u : ℕ → α, StrictMono u ∧ (∀ n : ℕ, u n ∈ Ioo b a) ∧ Tendsto u atTop (𝓝 a) :=
    exists_seq_strictMono_tendsto' hb
  replace u_lt_a n : u n < a := (u_lt_a n).2
  have A : {a} = ⋂ n, Ioc (u n) a := by
    refine Subset.antisymm (fun x hx => by simp [mem_singleton_iff.1 hx, u_lt_a]) fun x hx => ?_
    replace hx : ∀ (i : ℕ), u i < x ∧ x ≤ a := by simpa using hx
    have : a ≤ x := le_of_tendsto' u_lim fun n => (hx n).1.le
    simp [le_antisymm this (hx 0).2]
  have L1 : Tendsto (fun n ↦ hf.vectorMeasure (Ioc (u n) a)) atTop (𝓝 (hf.vectorMeasure {a})) := by
    rw [A]
    apply VectorMeasure.tendsto_vectorMeasure_iInter_atTop_nat ?_ (fun n ↦ measurableSet_Ioc)
    exact fun m n hmn ↦ Ioc_subset_Ioc_left (u_mono.monotone hmn)
  have L2 : Tendsto (fun n ↦ hf.vectorMeasure (Ioc (u n) a)) atTop
      (𝓝 (f.rightLim a - f.leftLim a)) := by
    simp_rw [hf.vectorMeasure_Ioc (u_lt_a _).le]
    apply tendsto_const_nhds.sub
    have : Tendsto u atTop (𝓝[<] a) := tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
      u_lim (Eventually.of_forall u_lt_a)
    convert! (hf.rightLim.tendsto_leftLim a).comp this using 2
    have : (𝓝[<] a).NeBot := by
      rw [← mem_closure_iff_nhdsWithin_neBot, closure_Iio' ⟨b, hb⟩]
      exact self_mem_Iic
    exact (leftLim_rightLim (hf.tendsto_leftLim _)).symm
  exact tendsto_nhds_unique L1 L2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c218867d84e1e39755a96ccd6d0642c52bc5181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
