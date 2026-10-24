# perfectlyNormalSpace_iff_forall_isClosed_preimage_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a6ffd4c-0e52-44cb-660e-954a7d0eb5b4",
  "kind": "theorem",
  "lexical_name": "perfectlyNormalSpace_iff_forall_isClosed_preimage_zero",
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
  "slug": "perfectlynormalspace-iff-forall-isclosed-preimage-zero--622c3f360c6cd75056e0e826",
  "source": {
    "blob": "23249b31b4c45a9ec8a780bdab577a9858b9256c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/PerfectlyNormal/Variant3aad20833d302f33eba070300a8ddd4da144a92abcbba57b714385f79abd1d6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:622c3f360c6cd75056e0e82632e1101beb85b970e6a98d800ed87a4a2560d25f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerfectlyNormal/Variant3aad20833d302f33eba070300a8ddd4da144a92abcbba57b714385f79abd1d6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a6ffd4c-0e52-44cb-660e-954a7d0eb5b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfectlyNormalSpace_iff_forall_isClosed_preimage_zero :
    PerfectlyNormalSpace X ↔ ∀ s, IsClosed s → ∃ f : C(X, ℝ), s = f ⁻¹' {0} ∧
      ∀ x, f x ∈ Icc (0 : ℝ) 1 where
  mp h s hs := by
    -- write `s` as the intersection of a sequence of open sets `U n`
    obtain ⟨U, ho, hu⟩ := isGδ_iff_eq_iInter_nat.1 hs.isGδ
    have (n : ℕ) : Disjoint s (U n)ᶜ := by
      apply LE.le.disjoint_compl_right
      grw [hu, iInter_subset]
    -- for each `n`, construct a continuous function `f n` that separates `s` from `(U n)ᶜ`
    choose f hfs hfu hfr using fun n =>
      exists_continuous_zero_one_of_isClosed hs (ho n).isClosed_compl (this n)
    have hsb (x : X) (n : ℕ) : ‖(f n) x * (1 / 2 / 2 ^ n)‖ ≤ 1 / 2 / 2 ^ n := by
      simp [abs_of_nonneg (hfr n x).1, (hfr n x).2]
    have hsx (x : X) : Summable fun n => f n x * (1 / 2 / 2 ^ n) :=
      (summable_geometric_two' 1).of_norm_bounded fun n => hsb x n
    -- consider the infinite sum of `f n x * (1 / 2 / 2 ^ n)`, which is uniformly convergent and
    -- thus continuous because it is dominated by a geometric series
    let h : C(X, ℝ) :=
      { toFun x := ∑' n, f n x * (1 / 2 / 2 ^ n)
        continuous_toFun :=
          continuous_tsum (fun n => by fun_prop) (summable_geometric_two' 1) fun n x => hsb x n }
    refine ⟨h, ?_, fun x => ⟨?_, ?_⟩⟩
    · ext x
      refine ⟨fun hp => ?_, fun hp => ?_⟩
      · suffices ∀ n, f n x = 0 from by simp [h, this]
        exact fun n => hfs n hp
      · contrapose h
        simp only [preimage, notMem_ofPred_iff, ContinuousMap.coe_mk, mem_singleton_iff]
        apply ne_of_gt
        obtain ⟨i, hi⟩ := mem_iUnion.1 <| compl_iInter _ ▸ mem_compl (hu ▸ h)
        calc
        _ < 1 / 2 / 2 ^ i := by positivity
        _ = f i x * (1 / 2 / 2 ^ i) := by simp [hfu i hi]
        _ ≤ _ := (hsx x).le_tsum i fun j hj => by positivity [(hfr j x).1]
    · exact tsum_nonneg fun n => by simp [(hfr n x).1]
    · calc
      _ = ∑' n, f n x * (1 / 2 / 2 ^ n) := by simp [h]
      _ ≤ ∑' n, 1 / 2 / 2 ^ n :=
        (hsx x).tsum_le_tsum (fun n => by simp [(hfr n x).2]) (summable_geometric_two' 1)
      _ = _ := tsum_geometric_two' 1
  mpr h :=
    { normal s t hs ht hst := by
        -- pick `f, g` such that `s = f ⁻¹' {0}` and `t = g ⁻¹' {0}`, and then the function
        -- `f / (f  + g)` separates `s` and `t`.
        obtain ⟨f, hf, hfr⟩ := h s hs
        obtain ⟨g, hg, hgr⟩ := h t ht
        have hsn : SeparatedNhds {(0 : ℝ)} {1} :=
          SeparatedNhds.of_finite (finite_singleton _) (finite_singleton _)
          (disjoint_singleton.2 zero_ne_one)
        have hfg (x : X) : f x + g x ≠ 0 := by
          simp_all only [preimage, mem_singleton_iff]
          by_cases! hfx : f x = 0
          · simpa [hfx] using hst.notMem_of_mem_left hfx
          · positivity [(hgr x).1, (hfr x).1]
        have hp : s = (fun a => f a / (f a + g a)) ⁻¹' {0} := by simp_all [preimage]
        have : t = (fun a => f a / (f a + g a)) ⁻¹' {1} := by simp_all [preimage, div_eq_one_iff_eq]
        rw [hp, this]
        exact hsn.preimage (f.continuous.div₀ (f.continuous.add g.continuous) hfg)
      closed_gdelta s hs := by
        by_cases! hse : s = ∅
        · simp_all
        -- pick `f` such that `s = f ⁻¹' {0} = ⋂ n, f ⁻¹' (Iio (1 / (n + 1)))`
        obtain ⟨f, hf, hfr⟩ := h s hs
        refine isGδ_iff_eq_iInter_nat.2 ⟨fun n => f ⁻¹' (Iio (1 / (n + 1))),
          fun n => ?_, ?_⟩
        · exact f.continuous.isOpen_preimage _ isOpen_Iio
        · simp only [hf, ← preimage_iInter,
            ← preimage_range_inter (s := ⋂ (n : ℕ), Iio (1 / (n + 1) : ℝ)), inter_iInter]
          congr
          rw [eq_comm, eq_singleton_iff_unique_mem]
          refine ⟨mem_iInter_of_mem fun n => ?_, fun x h => ?_⟩
          · exact ⟨(hf ▸ hse : (f ⁻¹' {0}).Nonempty), show 0 < (1 / (n + 1) : ℝ) by positivity⟩
          · apply le_antisymm
            · simp only [mem_iInter, mem_inter_iff, mem_Iio] at h
              exact ge_of_tendsto' tendsto_one_div_add_atTop_nhds_zero_nat (fun n => (h n).2.le)
            · rcases (mem_iInter.1 h 0).1 with ⟨x, rfl⟩
              exact (hfr x).1 }

@[deprecated (since := "2026-06-03")]
alias Topology.IsEmbedding.perfectlyNormalSpace := Topology.IsInducing.perfectlyNormalSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerfectlyNormal/Variant3aad20833d302f33eba070300a8ddd4da144a92abcbba57b714385f79abd1d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerfectlyNormal/Variant3aad20833d302f33eba070300a8ddd4da144a92abcbba57b714385f79abd1d6c.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23249b31b4c45a9ec8a780bdab577a9858b9256c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
