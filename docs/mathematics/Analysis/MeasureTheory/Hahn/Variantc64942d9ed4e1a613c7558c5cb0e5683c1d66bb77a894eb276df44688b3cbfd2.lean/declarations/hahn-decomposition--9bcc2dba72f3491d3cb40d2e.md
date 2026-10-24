# hahn_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8243d171-e85b-f806-b1e5-81a4765a4e92",
  "kind": "theorem",
  "lexical_name": "hahn_decomposition",
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
  "slug": "hahn-decomposition--9bcc2dba72f3491d3cb40d2e",
  "source": {
    "blob": "5542c9fa12b7a209ab8751286c651518664f9331",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 42,
    "path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variantc64942d9ed4e1a613c7558c5cb0e5683c1d66bb77a894eb276df44688b3cbfd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bcc2dba72f3491d3cb40d2e208c583fd1423abae99c23019ba4bf3340908a19",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Hahn/Variantc64942d9ed4e1a613c7558c5cb0e5683c1d66bb77a894eb276df44688b3cbfd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8243d171-e85b-f806-b1e5-81a4765a4e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hahn_decomposition (μ ν : Measure α) [IsFiniteMeasure μ] [IsFiniteMeasure ν] :
    ∃ s, MeasurableSet s ∧ (∀ t, MeasurableSet t → t ⊆ s → ν t ≤ μ t) ∧
      ∀ t, MeasurableSet t → t ⊆ sᶜ → μ t ≤ ν t := by
  let d : Set α → ℝ := fun s => ((μ s).toNNReal : ℝ) - (ν s).toNNReal
  let c : Set ℝ := d '' { s | MeasurableSet s }
  let γ : ℝ := sSup c
  have hμ : ∀ s, μ s ≠ ∞ := measure_ne_top μ
  have hν : ∀ s, ν s ≠ ∞ := measure_ne_top ν
  have to_nnreal_μ : ∀ s, ((μ s).toNNReal : ℝ≥0∞) = μ s := fun s => ENNReal.coe_toNNReal <| hμ _
  have to_nnreal_ν : ∀ s, ((ν s).toNNReal : ℝ≥0∞) = ν s := fun s => ENNReal.coe_toNNReal <| hν _
  have d_split s t (ht : MeasurableSet t) : d s = d (s \ t) + d (s ∩ t) := by
    dsimp only [d]
    rw [← measure_inter_add_diff s ht, ← measure_inter_add_diff s ht,
      ENNReal.toNNReal_add (hμ _) (hμ _), ENNReal.toNNReal_add (hν _) (hν _), NNReal.coe_add,
      NNReal.coe_add]
    simp only [sub_eq_add_neg, neg_add]
    abel
  have d_Union (s : ℕ → Set α) (hm : Monotone s) :
    Tendsto (fun n => d (s n)) atTop (𝓝 (d (⋃ n, s n))) := by
    refine Tendsto.sub ?_ ?_ <;>
      refine NNReal.tendsto_coe.2 <| (ENNReal.tendsto_toNNReal ?_).comp <|
        tendsto_measure_iUnion_atTop hm
    · exact hμ _
    · exact hν _
  have d_Inter (s : ℕ → Set α) (hs : ∀ n, MeasurableSet (s n)) (hm : ∀ n m, n ≤ m → s m ⊆ s n) :
        Tendsto (fun n => d (s n)) atTop (𝓝 (d (⋂ n, s n))) := by
    refine Tendsto.sub ?_ ?_ <;>
      refine NNReal.tendsto_coe.2 <| (ENNReal.tendsto_toNNReal <| ?_).comp <|
        tendsto_measure_iInter_atTop (fun n ↦ (hs n).nullMeasurableSet) hm ?_
    exacts [hμ _, ⟨0, hμ _⟩, hν _, ⟨0, hν _⟩]
  have bdd_c : BddAbove c := by
    use (μ univ).toNNReal
    rintro r ⟨s, _hs, rfl⟩
    refine le_trans (sub_le_self _ <| NNReal.coe_nonneg _) ?_
    rw [NNReal.coe_le_coe, ← ENNReal.coe_le_coe, to_nnreal_μ, to_nnreal_μ]
    exact measure_mono (subset_univ _)
  have c_nonempty : c.Nonempty := Nonempty.image _ ⟨_, MeasurableSet.empty⟩
  have d_le_γ : ∀ s, MeasurableSet s → d s ≤ γ := fun s hs => le_csSup bdd_c ⟨s, hs, rfl⟩
  have (n : ℕ) : ∃ s : Set α, MeasurableSet s ∧ γ - (1 / 2) ^ n < d s := by
    have : γ - (1 / 2) ^ n < γ := sub_lt_self γ (pow_pos (half_pos zero_lt_one) n)
    rcases exists_lt_of_lt_csSup c_nonempty this with ⟨r, ⟨s, hs, rfl⟩, hlt⟩
    exact ⟨s, hs, hlt⟩
  rcases Classical.axiom_of_choice this with ⟨e, he⟩
  change ℕ → Set α at e
  have he₁ : ∀ n, MeasurableSet (e n) := fun n => (he n).1
  have he₂ : ∀ n, γ - (1 / 2) ^ n < d (e n) := fun n => (he n).2
  let f : ℕ → ℕ → Set α := fun n m => (Finset.Ico n (m + 1)).inf e
  have hf n m : MeasurableSet (f n m) := by
    simp only [f, Finset.inf_eq_iInf]
    exact MeasurableSet.biInter (to_countable _) fun i _ => he₁ _
  have f_subset_f {a b c d} (hab : a ≤ b) (hcd : c ≤ d) : f a d ⊆ f b c := by
    simp_rw [f, Finset.inf_eq_iInf]
    exact biInter_subset_biInter_left (Finset.Ico_subset_Ico hab <| Nat.succ_le_succ hcd)
  have f_succ n m (hnm : n ≤ m) : f n (m + 1) = f n m ∩ e (m + 1) := by
    have : n ≤ m + 1 := le_of_lt (Nat.succ_le_succ hnm)
    simp_rw [f, ← Finset.insert_Ico_right_eq_Ico_add_one this, Finset.inf_insert,
      Set.inter_comm]
    rfl
  have le_d_f n m (h : m ≤ n) : γ - 2 * (1 / 2) ^ m + (1 / 2) ^ n ≤ d (f m n) := by
    refine Nat.le_induction ?_ ?_ n h
    · have := he₂ m
      simp_rw [f, Nat.Ico_succ_singleton, Finset.inf_singleton]
      linarith
    · intro n (hmn : m ≤ n) ih
      have : γ + (γ - 2 * (1 / 2) ^ m + (1 / 2) ^ (n + 1)) ≤ γ + d (f m (n + 1)) := by
        calc
          γ + (γ - 2 * (1 / 2) ^ m + (1 / 2) ^ (n + 1)) =
              γ + (γ - 2 * (1 / 2) ^ m + ((1 / 2) ^ n - (1 / 2) ^ (n + 1))) := by
            rw [pow_succ, mul_one_div, _root_.sub_half]
          _ = γ - (1 / 2) ^ (n + 1) + (γ - 2 * (1 / 2) ^ m + (1 / 2) ^ n) := by
            simp only [sub_eq_add_neg]; abel
          _ ≤ d (e (n + 1)) + d (f m n) := add_le_add (le_of_lt <| he₂ _) ih
          _ ≤ d (e (n + 1)) + d (f m n \ e (n + 1)) + d (f m (n + 1)) := by
            rw [f_succ _ _ hmn, d_split (f m n) (e (n + 1)) (he₁ _), add_assoc]
          _ = d (e (n + 1) ∪ f m n) + d (f m (n + 1)) := by
            rw [d_split (e (n + 1) ∪ f m n) (e (n + 1)), union_diff_left, union_inter_cancel_left]
            · abel
            · exact he₁ _
          _ ≤ γ + d (f m (n + 1)) := add_le_add_right (d_le_γ _ <| (he₁ _).union (hf _ _)) _
      exact (add_le_add_iff_left γ).1 this
  let s := ⋃ m, ⋂ n, f m n
  have γ_le_d_s : γ ≤ d s := by
    have hγ : Tendsto (fun m : ℕ => γ - 2 * (1 / 2) ^ m) atTop (𝓝 γ) := by
      suffices Tendsto (fun m : ℕ => γ - 2 * (1 / 2) ^ m) atTop (𝓝 (γ - 2 * 0)) by
        simpa only [mul_zero, tsub_zero]
      exact
        tendsto_const_nhds.sub <|
          tendsto_const_nhds.mul <|
            tendsto_pow_atTop_nhds_zero_of_lt_one (le_of_lt <| half_pos <| zero_lt_one)
              (half_lt_self zero_lt_one)
    have hd : Tendsto (fun m => d (⋂ n, f m n)) atTop (𝓝 (d (⋃ m, ⋂ n, f m n))) := by
      refine d_Union _ ?_
      exact fun n m hnm =>
        subset_iInter fun i => Subset.trans (iInter_subset (f n) i) <| f_subset_f hnm <| le_rfl
    refine le_of_tendsto_of_tendsto' hγ hd fun m => ?_
    have : Tendsto (fun n => d (f m n)) atTop (𝓝 (d (⋂ n, f m n))) := by
      refine d_Inter _ ?_ ?_
      · intro n
        exact hf _ _
      · intro n m hnm
        exact f_subset_f le_rfl hnm
    refine ge_of_tendsto this (eventually_atTop.2 ⟨m, fun n hmn => ?_⟩)
    change γ - 2 * (1 / 2) ^ m ≤ d (f m n)
    refine le_trans ?_ (le_d_f _ _ hmn)
    exact le_add_of_le_of_nonneg le_rfl (pow_nonneg (le_of_lt <| half_pos <| zero_lt_one) _)
  have hs : MeasurableSet s := MeasurableSet.iUnion fun n => MeasurableSet.iInter fun m => hf _ _
  refine ⟨s, hs, ?_, ?_⟩
  · intro t ht hts
    have : 0 ≤ d t :=
      (add_le_add_iff_left γ).1 <|
        calc
          γ + 0 ≤ d s := by rw [add_zero]; exact γ_le_d_s
          _ = d (s \ t) + d t := by rw [d_split s _ ht, inter_eq_self_of_subset_right hts]
          _ ≤ γ + d t := add_le_add (d_le_γ _ (hs.diff ht)) le_rfl

    rw [← to_nnreal_μ, ← to_nnreal_ν, ENNReal.coe_le_coe, ← NNReal.coe_le_coe]
    simpa only [d, le_sub_iff_add_le, zero_add] using this
  · intro t ht hts
    have : d t ≤ 0 :=
      (add_le_add_iff_left γ).1 <|
        calc
          γ + d t ≤ d s + d t := by gcongr
          _ = d (s ∪ t) := by
            rw [d_split (s ∪ t) _ ht, union_diff_right, union_inter_cancel_right,
              (subset_compl_iff_disjoint_left.1 hts).sdiff_eq_left]
          _ ≤ γ + 0 := by rw [add_zero]; exact d_le_γ _ (hs.union ht)

    rw [← to_nnreal_μ, ← to_nnreal_ν, ENNReal.coe_le_coe, ← NNReal.coe_le_coe]
    simpa only [d, sub_le_iff_le_add, zero_add] using this

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Hahn/Variantc64942d9ed4e1a613c7558c5cb0e5683c1d66bb77a894eb276df44688b3cbfd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Hahn/Variantc64942d9ed4e1a613c7558c5cb0e5683c1d66bb77a894eb276df44688b3cbfd2.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5542c9fa12b7a209ab8751286c651518664f9331` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
