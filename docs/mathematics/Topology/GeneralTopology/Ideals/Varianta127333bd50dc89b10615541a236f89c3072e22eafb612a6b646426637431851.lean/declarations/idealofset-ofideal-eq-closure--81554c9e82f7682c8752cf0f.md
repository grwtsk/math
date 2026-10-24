# idealOfSet_ofIdeal_eq_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46f7fd440c87cd19a2b853573e2e5fb4c18a86a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:761959a5-4593-94ff-6e56-f67f844a1a84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a1056c4-c9b1-78ad-cf5a-297f667ea74c",
  "kind": "theorem",
  "lexical_name": "idealOfSet_ofIdeal_eq_closure",
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
  "slug": "idealofset-ofideal-eq-closure--81554c9e82f7682c8752cf0f",
  "source": {
    "blob": "46f7fd440c87cd19a2b853573e2e5fb4c18a86a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81554c9e82f7682c8752cf0fab8c71c587b20f56e6cd2549ab70b50e3834a9a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a1056c4-c9b1-78ad-cf5a-297f667ea74c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem idealOfSet_ofIdeal_eq_closure (I : Ideal C(X, 𝕜)) :
    idealOfSet 𝕜 (setOfIdeal I) = I.closure := by
  /- Since `idealOfSet 𝕜 (setOfIdeal I)` is closed and contains `I`, it contains `I.closure`.
    For the reverse inclusion, given `f ∈ idealOfSet 𝕜 (setOfIdeal I)` and `(ε : ℝ≥0) > 0` it
    suffices to show that `f` is within `ε` of `I`.-/
  refine' le_antisymm _
      ((idealOfSet_closed 𝕜 <| setOfIdeal I).closure_subset_iff.mpr fun f hf x hx =>
        not_mem_setOfIdeal.mp hx hf)
  refine' (fun f hf => Metric.mem_closure_iff.mpr fun ε hε => _)
  lift ε to ℝ≥0 using hε.lt.le
  replace hε := show (0 : ℝ≥0) < ε from hε
  simp_rw [dist_nndist]
  norm_cast
  -- Let `t := {x : X | ε / 2 ≤ ‖f x‖₊}}` which is closed and disjoint from `set_of_ideal I`.
  set t := {x : X | ε / 2 ≤ ‖f x‖₊}
  have ht : IsClosed t := isClosed_le continuous_const (map_continuous f).nnnorm
  have htI : Disjoint t (setOfIdeal I)ᶜ := by
    refine' Set.subset_compl_iff_disjoint_left.mp fun x hx => _
    simpa only [Set.mem_setOf, Set.mem_compl_iff, not_le] using
      (nnnorm_eq_zero.mpr (mem_idealOfSet.mp hf hx)).trans_lt (half_pos hε)
  /- It suffices to produce `g : C(X, ℝ≥0)` which takes values in `[0,1]` and is constantly `1` on
    `t` such that when composed with the natural embedding of `ℝ≥0` into `𝕜` lies in the ideal `I`.
    Indeed, then `‖f - f * ↑g‖ ≤ ‖f * (1 - ↑g)‖ ≤ ⨆ ‖f * (1 - ↑g) x‖`. When `x ∉ t`, `‖f x‖ < ε / 2`
    and `‖(1 - ↑g) x‖ ≤ 1`, and when `x ∈ t`, `(1 - ↑g) x = 0`, and clearly `f * ↑g ∈ I`. -/
  suffices
    ∃ g : C(X, ℝ≥0), (algebraMapClm ℝ≥0 𝕜 : C(ℝ≥0, 𝕜)).comp g ∈ I ∧ (∀ x, g x ≤ 1) ∧ t.EqOn g 1 by
    obtain ⟨g, hgI, hg, hgt⟩ := this
    refine' ⟨f * (algebraMapClm ℝ≥0 𝕜 : C(ℝ≥0, 𝕜)).comp g, I.mul_mem_left f hgI, _⟩
    rw [nndist_eq_nnnorm]
    refine' (nnnorm_lt_iff _ hε).2 fun x => _
    simp only [coe_sub, coe_mul, Pi.sub_apply, Pi.mul_apply]
    by_cases hx : x ∈ t
    · simpa only [hgt hx, comp_apply, Pi.one_apply, ContinuousMap.coe_coe, algebraMapClm_apply,
        map_one, mul_one, sub_self, nnnorm_zero] using hε
    · refine' lt_of_le_of_lt _ (half_lt_self hε)
      have :=
        calc
          ‖((1 - (algebraMapClm ℝ≥0 𝕜 : C(ℝ≥0, 𝕜)).comp g) x : 𝕜)‖₊ =
              ‖1 - algebraMap ℝ≥0 𝕜 (g x)‖₊ := by
            simp only [coe_sub, coe_one, coe_comp, ContinuousMap.coe_coe, Pi.sub_apply,
              Pi.one_apply, Function.comp_apply, algebraMapClm_apply]
          _ = ‖algebraMap ℝ≥0 𝕜 (1 - g x)‖₊ := by
            simp only [Algebra.algebraMap_eq_smul_one, NNReal.smul_def, ge_iff_le,
              NNReal.coe_sub (hg x), NNReal.coe_one, sub_smul, one_smul]
          _ ≤ 1 := (nnnorm_algebraMap_nNReal 𝕜 (1 - g x)).trans_le tsub_le_self
      calc
        ‖f x - f x * (algebraMapClm ℝ≥0 𝕜 : C(ℝ≥0, 𝕜)).comp g x‖₊ =
            ‖f x * (1 - (algebraMapClm ℝ≥0 𝕜 : C(ℝ≥0, 𝕜)).comp g) x‖₊ :=
          by simp only [mul_sub, coe_sub, coe_one, Pi.sub_apply, Pi.one_apply, mul_one]
        _ ≤ ε / 2 * ‖(1 - (algebraMapClm ℝ≥0 𝕜 : C(ℝ≥0, 𝕜)).comp g) x‖₊ :=
          ((nnnorm_mul_le _ _).trans
            (mul_le_mul_right' (not_le.mp <| show ¬ε / 2 ≤ ‖f x‖₊ from hx).le _))
        _ ≤ ε / 2 := by simpa only [mul_one] using mul_le_mul_left' this _
  /- There is some `g' : C(X, ℝ≥0)` which is strictly positive on `t` such that the composition
    `↑g` with the natural embedding of `ℝ≥0` into `𝕜` lies in `I`. This follows from compactness of
    `t` and that we can do it in any neighborhood of a point `x ∈ t`. Indeed, since `x ∈ t`, then
    `fₓ x ≠ 0` for some `fₓ ∈ I` and so `fun y ↦ ‖(star fₓ * fₓ) y‖₊` is strictly posiive in a
    neighborhood of `y`. Moreover, `(‖(star fₓ * fₓ) y‖₊ : 𝕜) = (star fₓ * fₓ) y`, so composition of
    this map with the natural embedding is just `star fₓ * fₓ ∈ I`. -/
  have : ∃ g' : C(X, ℝ≥0), (algebraMapClm ℝ≥0 𝕜 : C(ℝ≥0, 𝕜)).comp g' ∈ I ∧ ∀ x ∈ t, 0 < g' x := by
    refine' ht.isCompact.induction_on _ _ _ _
    · refine' ⟨0, _, fun x hx => False.elim hx⟩
      convert I.zero_mem
      ext
      simp only [comp_apply, zero_apply, ContinuousMap.coe_coe, map_zero]
    · rintro s₁ s₂ hs ⟨g, hI, hgt⟩; exact ⟨g, hI, fun x hx => hgt x (hs hx)⟩
    · rintro s₁ s₂ ⟨g₁, hI₁, hgt₁⟩ ⟨g₂, hI₂, hgt₂⟩
      refine' ⟨g₁ + g₂, _, fun x hx => _⟩
      · convert I.add_mem hI₁ hI₂
        ext y
        simp only [coe_add, Pi.add_apply, map_add, coe_comp, Function.comp_apply,
          ContinuousMap.coe_coe]
      · rcases hx with (hx | hx)
        simpa only [zero_add] using add_lt_add_of_lt_of_le (hgt₁ x hx) zero_le'
        simpa only [zero_add] using add_lt_add_of_le_of_lt zero_le' (hgt₂ x hx)
    · intro x hx
      replace hx := htI.subset_compl_right hx
      rw [compl_compl, mem_setOfIdeal] at hx
      obtain ⟨g, hI, hgx⟩ := hx
      have := (map_continuous g).continuousAt.eventually_ne hgx
      refine'
        ⟨{y : X | g y ≠ 0} ∩ t,
          mem_nhdsWithin_iff_exists_mem_nhds_inter.mpr ⟨_, this, Set.Subset.rfl⟩,
          ⟨⟨fun x => ‖g x‖₊ ^ 2, (map_continuous g).nnnorm.pow 2⟩, _, fun x hx =>
            pow_pos (norm_pos_iff.mpr hx.1) 2⟩⟩
      convert I.mul_mem_left (star g) hI
      ext
      simp only [comp_apply, ContinuousMap.coe_coe, coe_mk, algebraMapClm_toFun, map_pow,
        mul_apply, star_apply, star_def]
      simp only [normSq_eq_def', IsROrC.conj_mul, ofReal_pow]
      rfl
  /- Get the function `g'` which is guaranteed to exist above. By the extreme value theorem and
    compactness of `t`, there is some `0 < c` such that `c ≤ g' x` for all `x ∈ t`. Then by
    `exists_mul_le_one_eqOn_ge` there is some `g` for which `g * g'` is the desired function. -/
  obtain ⟨g', hI', hgt'⟩ := this
  obtain ⟨c, hc, hgc'⟩ : ∃ (c : _) (_ : 0 < c), ∀ y : X, y ∈ t → c ≤ g' y :=
    t.eq_empty_or_nonempty.elim
      (fun ht' => ⟨1, zero_lt_one, fun y hy => False.elim (by rwa [ht'] at hy )⟩) fun ht' =>
      let ⟨x, hx, hx'⟩ := ht.isCompact.exists_forall_le ht' (map_continuous g').continuousOn
      ⟨g' x, hgt' x hx, hx'⟩
  obtain ⟨g, hg, hgc⟩ := exists_mul_le_one_eqOn_ge g' hc
  refine' ⟨g * g', _, hg, hgc.mono hgc'⟩
  convert I.mul_mem_left ((algebraMapClm ℝ≥0 𝕜 : C(ℝ≥0, 𝕜)).comp g) hI'
  ext
  simp only [algebraMapClm_coe, comp_apply, mul_apply, ContinuousMap.coe_coe, map_mul]
#align continuous_map.ideal_of_set_of_ideal_eq_closure ContinuousMap.idealOfSet_ofIdeal_eq_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46f7fd440c87cd19a2b853573e2e5fb4c18a86a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
