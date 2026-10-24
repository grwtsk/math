# LinearIsometryEquiv.reflections_generate_dim_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f238cdc4e181872e282540e2a1fb89ed3e553da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8887e527-6870-1a1c-9a2c-43d1f2395f87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a31a0e12-e2be-1cd6-e10d-82553810f65a",
  "kind": "theorem",
  "lexical_name": "LinearIsometryEquiv.reflections_generate_dim_aux",
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
  "slug": "linearisometryequiv-reflections-generate-dim-aux--2197cdd779db49688fdf2469",
  "source": {
    "blob": "4f238cdc4e181872e282540e2a1fb89ed3e553da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1251,
    "line": 1173,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2197cdd779db49688fdf2469c7dde4d6c2d5acbbbbfac6be6f77f54e739d3f41",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a31a0e12-e2be-1cd6-e10d-82553810f65a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1173–1251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIsometryEquiv.reflections_generate_dim_aux [FiniteDimensional ℝ F] {n : ℕ}
    (φ : F ≃ₗᵢ[ℝ] F) (hn : finrank ℝ (ker (ContinuousLinearMap.id ℝ F - φ))ᗮ ≤ n) :
    ∃ l : List F, l.length ≤ n ∧ φ = (l.map fun v => reflection (ℝ ∙ v)ᗮ).prod := by
  -- We prove this by strong induction on `n`, the dimension of the orthogonal complement of the
  -- fixed subspace of the endomorphism `φ`
  induction' n with n IH generalizing φ
  · -- Base case: `n = 0`, the fixed subspace is the whole space, so `φ = id`
    refine' ⟨[], rfl.le, show φ = 1 from _⟩
    have : ker (ContinuousLinearMap.id ℝ F - φ) = ⊤ := by
      rwa [Nat.zero_eq, le_zero_iff, finrank_eq_zero, Submodule.orthogonal_eq_bot_iff] at hn
    symm
    ext x
    have := LinearMap.congr_fun (LinearMap.ker_eq_top.mp this) x
    simpa only [sub_eq_zero, ContinuousLinearMap.coe_sub, LinearMap.sub_apply,
      LinearMap.zero_apply] using this
  · -- Inductive step.  Let `W` be the fixed subspace of `φ`.  We suppose its complement to have
    -- dimension at most n + 1.
    let W := ker (ContinuousLinearMap.id ℝ F - φ)
    have hW : ∀ w ∈ W, φ w = w := fun w hw => (sub_eq_zero.mp hw).symm
    by_cases hn' : finrank ℝ Wᗮ ≤ n
    · obtain ⟨V, hV₁, hV₂⟩ := IH φ hn'
      exact ⟨V, hV₁.trans n.le_succ, hV₂⟩
    -- Take a nonzero element `v` of the orthogonal complement of `W`.
    haveI : Nontrivial Wᗮ := nontrivial_of_finrank_pos (by linarith [zero_le n] : 0 < finrank ℝ Wᗮ)
    obtain ⟨v, hv⟩ := exists_ne (0 : Wᗮ)
    have hφv : φ v ∈ Wᗮ := by
      intro w hw
      rw [← hW w hw, LinearIsometryEquiv.inner_map_map]
      exact v.prop w hw
    have hv' : (v : F) ∉ W := by
      intro h
      exact hv ((Submodule.mem_left_iff_eq_zero_of_disjoint W.orthogonal_disjoint).mp h)
    -- Let `ρ` be the reflection in `v - φ v`; this is designed to swap `v` and `φ v`
    let x : F := v - φ v
    let ρ := reflection (ℝ ∙ x)ᗮ
    -- Notation: Let `V` be the fixed subspace of `φ.trans ρ`
    let V := ker (ContinuousLinearMap.id ℝ F - φ.trans ρ)
    have hV : ∀ w, ρ (φ w) = w → w ∈ V := by
      intro w hw
      change w - ρ (φ w) = 0
      rw [sub_eq_zero, hw]
    -- Everything fixed by `φ` is fixed by `φ.trans ρ`
    have H₂V : W ≤ V := by
      intro w hw
      apply hV
      rw [hW w hw]
      refine' reflection_mem_subspace_eq_self _
      rw [Submodule.mem_orthogonal_singleton_iff_inner_left]
      exact Submodule.sub_mem _ v.prop hφv _ hw
    -- `v` is also fixed by `φ.trans ρ`
    have H₁V : (v : F) ∈ V := by
      apply hV
      have : ρ v = φ v := reflection_sub (φ.norm_map v).symm
      rw [← this]
      exact reflection_reflection _ _
    -- By dimension-counting, the complement of the fixed subspace of `φ.trans ρ` has dimension at
    -- most `n`
    have : finrank ℝ Vᗮ ≤ n := by
      change finrank ℝ Wᗮ ≤ n + 1 at hn
      have : finrank ℝ W + 1 ≤ finrank ℝ V :=
        Submodule.finrank_lt_finrank_of_lt (SetLike.lt_iff_le_and_exists.2 ⟨H₂V, v, H₁V, hv'⟩)
      have : finrank ℝ V + finrank ℝ Vᗮ = finrank ℝ F := V.finrank_add_finrank_orthogonal
      have : finrank ℝ W + finrank ℝ Wᗮ = finrank ℝ F := W.finrank_add_finrank_orthogonal
      linarith
    -- So apply the inductive hypothesis to `φ.trans ρ`
    obtain ⟨l, hl, hφl⟩ := IH (ρ * φ) this
    -- Prepend `ρ` to the factorization into reflections obtained for `φ.trans ρ`; this gives a
    -- factorization into reflections for `φ`.
    refine' ⟨x::l, Nat.succ_le_succ hl, _⟩
    rw [List.map_cons, List.prod_cons]
    have := congr_arg ((· * ·) ρ) hφl
    dsimp only at this
    rwa [← mul_assoc, reflection_mul_reflection, one_mul] at this
#align linear_isometry_equiv.reflections_generate_dim_aux LinearIsometryEquiv.reflections_generate_dim_aux

/-- The orthogonal group of `F` is generated by reflections; specifically each element `φ` of the
orthogonal group is a product of at most as many reflections as the dimension of `F`.

Special case of the **Cartan–Dieudonné theorem**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean#L1173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f238cdc4e181872e282540e2a1fb89ed3e553da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
