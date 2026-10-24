# LowerHemicontinuous.exists_continuous_selection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:107bc848-4f98-72a1-8c9c-e169bac23414",
  "kind": "theorem",
  "lexical_name": "LowerHemicontinuous.exists_continuous_selection",
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
  "slug": "lowerhemicontinuous-exists-continuous-selection--126a673d25781c10c19e976c",
  "source": {
    "blob": "2c501780b484f8bb7f7f33bed382a8a4895d89ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:126a673d25781c10c19e976cbdb65d2e92926283ab0abd8bb32a9b92f49260be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:107bc848-4f98-72a1-8c9c-e169bac23414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LowerHemicontinuous.exists_continuous_selection (hf : LowerHemicontinuous f)
    (hf_nonempty : ∀ x, (f x).Nonempty) (hf_convex : ∀ x, Convex ℝ (f x))
    (hf_isClosed : ∀ x, IsClosed (f x)) : ∃ g : α → β, Continuous g ∧ ∀ x, g x ∈ f x := by
  obtain ⟨V, hV_anti, hV_open, hV_conv, hV_add, hV_closure⟩ := by
    simpa only [forall_and] using exists_nhds_hasAntitoneBasis_absConvex_open_add_closure_subset ℝ β
  -- Produce a sequence of continuous approximations to a selection
  obtain ⟨g, hg_cont, hg_mem⟩ :=
    hf.hasOpenCGraph_of_add_hasOpenCGraph (.const <| hV_open 0)
      |>.hasOpenLowerSections.exists_continuous_selection
      (fun x ↦ (hf_nonempty x).add ⟨0, mem_of_mem_nhds (hV_anti.mem 0)⟩)
      (fun x ↦ (hf_convex x).add (hV_conv 0).2)
  obtain ⟨h, hh_cont, hh_mem, hh_mem_ball⟩ : ∃ h : ℕ → α → β, (∀ n, Continuous (h n)) ∧
      (∀ n x, h n x ∈ f x + (V n)) ∧
      (∀ n x, h (n + 1) x ∈ {h n x} + V n) := by
    let P (n : ℕ) (h : α → β) := Continuous h ∧ ∀ x, h x ∈ f x + (V n)
    choose! F hF using fun n hn (hn_prop : P n hn) =>
      hf.exists_continuous_selection_refine hf_convex hn_prop.1
        (hV_open (n + 1)) (hV_conv (n + 1)).2 (hV_open n) (hV_conv n).2
        (mem_of_mem_nhds (hV_anti.mem (n + 1))) (hV_conv n).1.neg_eq.symm hn_prop.2
    use Nat.rec g F
    rw [← forall_and, ← forall_and]
    intro n
    induction n with
    | zero => exact ⟨by fun_prop, hg_mem, (hF 0 g ⟨hg_cont, hg_mem⟩).2.2⟩
    | succ n ih => simp [ih, P, hF, -singleton_add]
  -- Prove the sequence is uniformly cauchy. The (necessarily continuous) limit is a selection
  have hUnif : UniformCauchySeqOn h Filter.atTop univ := by
    intro U hU
    obtain ⟨n, -, hn⟩ := hV_anti.toHasBasis.uniformity_of_nhds_zero.mem_iff.mp hU
    have key : ∀ m k j x, k + 1 ≤ j → h (j + m) x - h j x ∈ V k := fun m ↦ by
      induction m with
      | zero =>
        intro k j x _; simpa using mem_of_mem_nhds (hV_anti.mem k)
      | succ m ih =>
        intro k j x hj
        obtain ⟨_, rfl, v, hv, hv'⟩ := hh_mem_ball j x
        have h1 : h (j + 1) x - h j x ∈ V (k + 1) := by
          simpa [← hv'] using hV_anti.antitone hj hv
        have h2 : h (j + 1 + m) x - h (j + 1) x ∈ V (k + 1) := ih (k + 1) (j + 1) x (by lia)
        convert (hV_add k) (Set.add_mem_add h1 h2) using 1
        abel_nf
    filter_upwards [(Filter.eventually_ge_atTop (n + 1)).prod_mk
        (Filter.eventually_ge_atTop (n + 1))] with ⟨i, j⟩ ⟨hi, hj⟩ x _
    apply hn
    obtain h_le | h_le := le_total i j <;> obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h_le
    · exact key m n i x hi
    · simpa using (hV_conv n).1.neg_mem_iff.mpr (key m n j x hj)
  choose H hH using fun x ↦ cauchySeq_tendsto_of_complete (hUnif.cauchySeq (mem_univ x))
  refine ⟨H, ?_, fun x ↦ ?_⟩
  · simpa using (hUnif.tendstoUniformlyOn_of_tendsto fun x _ ↦ hH x).continuousOn
      (.of_forall fun n ↦ (hh_cont n).continuousOn)
  rw [← (hf_isClosed x).iInter_closure_add_right_eq hV_anti.toHasBasis]
  refine Set.mem_iInter₂.mpr fun n _ ↦ mem_closure_of_tendsto (hH x) ?_
  filter_upwards [Filter.eventually_ge_atTop n] with m hm
  exact Set.add_subset_add_left (hV_anti.antitone hm) (hh_mem m x)

end michael

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c501780b484f8bb7f7f33bed382a8a4895d89ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
