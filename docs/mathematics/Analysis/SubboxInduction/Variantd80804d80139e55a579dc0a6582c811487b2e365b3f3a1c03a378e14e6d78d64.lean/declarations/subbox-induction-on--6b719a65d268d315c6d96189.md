# subbox_induction_on'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6975bdb4-fe05-4a3b-d385-854647a7b4a3",
  "kind": "theorem",
  "lexical_name": "subbox_induction_on'",
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
  "slug": "subbox-induction-on--6b719a65d268d315c6d96189",
  "source": {
    "blob": "15dc35a78b1125e32a3b1a70de19b79d51bf75ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 130,
    "path": "GRWTSK/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b719a65d268d315c6d961891d2f3f07ec3d0b0f1a413f7b20e4f921985b5487",
  "verification": {
    "reference": "docs/verification/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6975bdb4-fe05-4a3b-d385-854647a7b4a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subbox_induction_on' {p : Box ι → Prop} (I : Box ι)
    (H_ind : ∀ J ≤ I, (∀ s, p (splitCenterBox J s)) → p J)
    (H_nhds : ∀ z ∈ Box.Icc I, ∃ U ∈ 𝓝[Box.Icc I] z, ∀ J ≤ I, ∀ (m : ℕ), z ∈ Box.Icc J →
      Box.Icc J ⊆ U → (∀ i, J.upper i - J.lower i = (I.upper i - I.lower i) / 2 ^ m) → p J) :
    p I := by
  by_contra hpI
  -- First we use `H_ind` to construct a decreasing sequence of boxes such that `∀ m, ¬p (J m)`.
  replace H_ind := fun J hJ ↦ not_imp_not.2 (H_ind J hJ)
  simp only [exists_imp, not_forall] at H_ind
  choose! s hs using H_ind
  set J : ℕ → Box ι := fun m ↦ (fun J ↦ splitCenterBox J (s J))^[m] I
  have J_succ : ∀ m, J (m + 1) = splitCenterBox (J m) (s <| J m) :=
    fun m ↦ iterate_succ_apply' _ _ _
  -- Now we prove some properties of `J`
  have hJmono : Antitone J :=
    antitone_nat_of_succ_le fun n ↦ by simpa [J_succ] using splitCenterBox_le _ _
  have hJle : ∀ m, J m ≤ I := fun m ↦ hJmono (zero_le m)
  have hJp : ∀ m, ¬p (J m) :=
    fun m ↦ Nat.recOn m hpI fun m ↦ by simpa only [J_succ] using hs (J m) (hJle m)
  have hJsub : ∀ m i, (J m).upper i - (J m).lower i = (I.upper i - I.lower i) / 2 ^ m := by
    intro m i
    induction' m with m ihm
    · simp [Nat.zero_eq]
    simp only [pow_succ', J_succ, upper_sub_lower_splitCenterBox, ihm, div_div]
  have h0 : J 0 = I := rfl
  clear_value J
  clear hpI hs J_succ s
  -- Let `z` be the unique common point of all `(J m).Icc`. Then `H_nhds` proves `p (J m)` for
  -- sufficiently large `m`. This contradicts `hJp`.
  set z : ι → ℝ := ⨆ m, (J m).lower
  have hzJ : ∀ m, z ∈ Box.Icc (J m) :=
    mem_iInter.1 (ciSup_mem_Inter_Icc_of_antitone_Icc
      ((@Box.Icc ι).monotone.comp_antitone hJmono) fun m ↦ (J m).lower_le_upper)
  have hJl_mem : ∀ m, (J m).lower ∈ Box.Icc I := fun m ↦ le_iff_Icc.1 (hJle m) (J m).lower_mem_Icc
  have hJu_mem : ∀ m, (J m).upper ∈ Box.Icc I := fun m ↦ le_iff_Icc.1 (hJle m) (J m).upper_mem_Icc
  have hJlz : Tendsto (fun m ↦ (J m).lower) atTop (𝓝 z) :=
    tendsto_atTop_ciSup (antitone_lower.comp hJmono) ⟨I.upper, fun x ⟨m, hm⟩ ↦ hm ▸ (hJl_mem m).2⟩
  have hJuz : Tendsto (fun m ↦ (J m).upper) atTop (𝓝 z) := by
    suffices Tendsto (fun m ↦ (J m).upper - (J m).lower) atTop (𝓝 0) by simpa using hJlz.add this
    refine' tendsto_pi_nhds.2 fun i ↦ _
    simpa [hJsub] using
      tendsto_const_nhds.div_atTop (tendsto_pow_atTop_atTop_of_one_lt _root_.one_lt_two)
  replace hJlz : Tendsto (fun m ↦ (J m).lower) atTop (𝓝[Icc I.lower I.upper] z)
  · exact
      tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ hJlz (eventually_of_forall hJl_mem)
  replace hJuz : Tendsto (fun m ↦ (J m).upper) atTop (𝓝[Icc I.lower I.upper] z)
  · exact
      tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ hJuz (eventually_of_forall hJu_mem)
  rcases H_nhds z (h0 ▸ hzJ 0) with ⟨U, hUz, hU⟩
  rcases(tendsto_lift'.1 (hJlz.Icc hJuz) U hUz).exists with ⟨m, hUm⟩
  exact hJp m (hU (J m) (hJle m) m (hzJ m) hUm (hJsub m))
#align box_integral.box.subbox_induction_on' BoxIntegral.Box.subbox_induction_on'

end Box

end BoxIntegral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15dc35a78b1125e32a3b1a70de19b79d51bf75ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
