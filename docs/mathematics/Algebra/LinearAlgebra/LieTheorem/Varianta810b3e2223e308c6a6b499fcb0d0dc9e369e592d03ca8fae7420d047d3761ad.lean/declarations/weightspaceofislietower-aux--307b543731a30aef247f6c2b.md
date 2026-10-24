# weightSpaceOfIsLieTower_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29f87660be69e2247c93d5076461a3aa2eff1472",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3006c1d-8bbd-1a22-0eb0-0eafb26283f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a9bb58f-4f42-5232-b52e-4261e3e9c7ee",
  "kind": "lemma",
  "lexical_name": "weightSpaceOfIsLieTower_aux",
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
  "slug": "weightspaceofislietower-aux--307b543731a30aef247f6c2b",
  "source": {
    "blob": "29f87660be69e2247c93d5076461a3aa2eff1472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:307b543731a30aef247f6c2b14da9dba8bd61f60afcb886765fed432322abac9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a9bb58f-4f42-5232-b52e-4261e3e9c7ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma weightSpaceOfIsLieTower_aux (z : L) (v : V) (hv : v ∈ weightSpace V χ) :
    ⁅z, v⁆ ∈ weightSpace V χ := by
  rw [mem_weightSpace] at hv ⊢
  intro a
  rcases eq_or_ne v 0 with (rfl | hv')
  · simp only [lie_zero, smul_zero]
  suffices χ ⁅z, a⁆ = 0 by
    rw [leibniz_lie, hv a, lie_smul, lie_swap_lie, hv, this, zero_smul, neg_zero, zero_add]
  let U' : ℕ →o Submodule R V :=
  { toFun n := Submodule.span R {((π z)^i) v | i < n},
    monotone' i j h := Submodule.span_mono (fun _ ⟨c, hc, hw⟩ ↦ ⟨c, lt_of_lt_of_le hc h, hw⟩) }
  have map_U'_le (n : ℕ) : Submodule.map (π z) (U' n) ≤ U' (n + 1) := by
    simp only [OrderHom.coe_mk, Submodule.map_span, toEnd_apply_apply, U']
    apply Submodule.span_mono
    suffices ∀ a < n, ∃ b < n + 1, ((π z) ^ b) v = ((π z) ^ (a + 1)) v by simpa [pow_succ']
    aesop
  have T_apply_succ (w : A) (n : ℕ) :
      Submodule.map (T χ w) (U' (n + 1)) ≤ U' n := by
    simp only [OrderHom.coe_mk, U', Submodule.map_span, Submodule.span_le, Set.image_subset_iff]
    simp only [Set.subset_def, Set.mem_setOf_eq, Set.mem_preimage, SetLike.mem_coe,
      forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
    induction n generalizing w
    · simp only [zero_add, Nat.lt_one_iff, LinearMap.sub_apply, LieModule.toEnd_apply_apply,
        LinearMap.smul_apply, Module.End.one_apply, forall_eq, pow_zero, hv w, sub_self, zero_mem]
    · next n hn =>
      intro m hm
      obtain (hm | rfl) : m < n + 1 ∨ m = n + 1 := by omega
      · exact U'.mono (Nat.le_succ n) (hn w m hm)
      have H : ∀ w, ⁅w, (π z ^ n) v⁆ = (T χ w) ((π z ^ n) v) + χ w • ((π z ^ n) v) := by simp
      rw [T, LinearMap.sub_apply, pow_succ', Module.End.mul_apply, LieModule.toEnd_apply_apply,
        LieModule.toEnd_apply_apply, LinearMap.smul_apply, Module.End.one_apply, leibniz_lie,
        lie_swap_lie w z, H, H, lie_add, lie_smul, add_sub_assoc, add_sub_assoc, sub_self, add_zero]
      refine add_mem (neg_mem <| add_mem ?_ ?_) ?_
      · exact U'.mono n.le_succ (hn _ n n.lt_succ_self)
      · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨n, n.lt_succ_self, rfl⟩)
      · exact map_U'_le _ <| Submodule.mem_map_of_mem <| hn w n n.lt_succ_self
  set U : LieSubmodule R A V :=
  { toSubmodule := ⨆ k : ℕ, U' k
    lie_mem {w} x hx := by
      rw [show ⁅w, x⁆ = (T χ w) x + χ w • x by simp]
      apply add_mem _ (Submodule.smul_mem _ _ hx)
      set U := ⨆ k : ℕ, U' k
      suffices Submodule.map (T χ w) U ≤ U from this <| Submodule.mem_map_of_mem hx
      rw [Submodule.map_iSup, iSup_le_iff]
      rintro (_|i)
      · simp [U', Submodule.map_span]
      · exact (T_apply_succ w i).trans (le_iSup _ _) }
  have hzU (x : V) (hx : x ∈ U) : (π z) x ∈ U := by
    suffices Submodule.map (π z) U ≤ U from this <| Submodule.mem_map_of_mem hx
    simp only [U, Submodule.map_iSup, iSup_le_iff]
    exact fun i ↦ (map_U'_le i).trans (le_iSup _ _)
  have trace_za_zero : (LieModule.toEnd R A _ ⁅z, a⁆).trace R U = 0 := by
    have hres : LieModule.toEnd R A U ⁅z, a⁆ = ⁅(π z).restrict hzU, LieModule.toEnd R A U a⁆ := by
      ext ⟨x, hx⟩
      show ⁅⁅z, a⁆, x⁆ = ⁅z, ⁅a, x⁆⁆ - ⁅a, ⁅z, x⁆⁆
      simp only [leibniz_lie z a, add_sub_cancel_right]
    rw [hres, LinearMap.trace_lie]
  have trace_T_U_zero (w : A) : (T χ w).trace R U = 0 := by
    have key (i : ℕ) (hi : i ≠ 0) : ∃ j < i, Submodule.map (T χ w) (U' i) ≤ U' j := by
      obtain ⟨j, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hi
      exact ⟨j, j.lt_succ_self, T_apply_succ w j⟩
    apply IsNilpotent.eq_zero
    apply LinearMap.isNilpotent_trace_of_isNilpotent
    rw [Module.End.isNilpotent_iff_of_finite]
    suffices ⨆ i, U' i ≤ Module.End.maxGenEigenspace (T χ w) 0 by
      intro x
      specialize this x.2
      simp only [Module.End.mem_maxGenEigenspace, zero_smul, sub_zero] at this
      peel this with n hn
      ext
      simp only [ZeroMemClass.coe_zero, ← hn]; clear hn
      induction n <;> simp_all [pow_succ']
    apply iSup_le
    intro i x hx
    simp only [Module.End.mem_maxGenEigenspace, zero_smul, sub_zero]
    induction i using Nat.strong_induction_on generalizing x
    next i ih =>
    obtain rfl | hi := eq_or_ne i 0
    · simp_all [U']
    obtain ⟨j, hj, hj'⟩ := key i hi
    obtain ⟨k, hk⟩ := ih j hj (hj' <| Submodule.mem_map_of_mem hx)
    use k+1
    rw [pow_succ, Module.End.mul_apply, hk]
  have trace_za : (toEnd R A _ ⁅z, a⁆).trace R U = χ ⁅z, a⁆ • (finrank R U) := by
    simpa [T, sub_eq_zero] using trace_T_U_zero ⁅z, a⁆
  suffices finrank R U ≠ 0 by simp_all
  suffices Nontrivial U from Module.finrank_pos.ne'
  have hvU : v ∈ U := by
    apply Submodule.mem_iSup_of_mem 1
    apply Submodule.subset_span
    use 0, zero_lt_one
    rw [pow_zero, Module.End.one_apply]
  exact nontrivial_of_ne ⟨v, hvU⟩ 0 <| by simp [hv']

variable (R V) in
/-- The weight space of `V` with respect to `χ : A → R`, a priori a Lie submodule for `A`, is also a
Lie submodule for `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f87660be69e2247c93d5076461a3aa2eff1472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
