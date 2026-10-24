# Ideal.IsHomogeneous.isPrime_of_homogeneous_mem_or_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b8d7cab-3046-7f4c-3f62-f6efc42cfc20",
  "kind": "theorem",
  "lexical_name": "Ideal.IsHomogeneous.isPrime_of_homogeneous_mem_or_mem",
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
  "slug": "ideal-ishomogeneous-isprime-of-homogeneous-mem-or-mem--986ab898444cc06a7dbdcd9b",
  "source": {
    "blob": "d75b8869c469ef3246b15f82ae619532c430e312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 53,
    "path": "GRWTSK/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:986ab898444cc06a7dbdcd9b323c90708613dcdc62b1bcbe0c58d5ffabd68405",
  "verification": {
    "reference": "docs/verification/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b8d7cab-3046-7f4c-3f62-f6efc42cfc20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.IsHomogeneous.isPrime_of_homogeneous_mem_or_mem {I : Ideal A} (hI : I.IsHomogeneous 𝒜)
    (I_ne_top : I ≠ ⊤)
    (homogeneous_mem_or_mem :
      ∀ {x y : A}, IsHomogeneousElem 𝒜 x → IsHomogeneousElem 𝒜 y → x * y ∈ I → x ∈ I ∨ y ∈ I) :
    Ideal.IsPrime I :=
  ⟨I_ne_top, by
    intro x y hxy
    by_contra! rid
    obtain ⟨rid₁, rid₂⟩ := rid
    classical
      /-
        The idea of the proof is the following :
        since `x * y ∈ I` and `I` homogeneous, then `proj i (x * y) ∈ I` for any `i : ι`.
        Then consider two sets `{i ∈ x.support | xᵢ ∉ I}` and `{j ∈ y.support | yⱼ ∉ J}`;
        let `max₁, max₂` be the maximum of the two sets, then `proj (max₁ + max₂) (x * y) ∈ I`.
        Then, `proj max₁ x ∉ I` and `proj max₂ j ∉ I`
        but `proj i x ∈ I` for all `max₁ < i` and `proj j y ∈ I` for all `max₂ < j`.
        `  proj (max₁ + max₂) (x * y)`
        `= ∑ {(i, j) ∈ supports | i + j = max₁ + max₂}, xᵢ * yⱼ`
        `= proj max₁ x * proj max₂ y`
        `  + ∑ {(i, j) ∈ supports \ {(max₁, max₂)} | i + j = max₁ + max₂}, xᵢ * yⱼ`.
        This is a contradiction, because both `proj (max₁ + max₂) (x * y) ∈ I` and the sum on the
        right hand side is in `I` however `proj max₁ x * proj max₂ y` is not in `I`.
        -/
      set set₁ := {i ∈ (decompose 𝒜 x).support | proj 𝒜 i x ∉ I} with set₁_eq
      set set₂ := {i ∈ (decompose 𝒜 y).support | proj 𝒜 i y ∉ I} with set₂_eq
      have nonempty :
        ∀ x : A, x ∉ I → {i ∈ (decompose 𝒜 x).support | proj 𝒜 i x ∉ I}.Nonempty := by
        intro x hx
        rw [filter_nonempty_iff]
        contrapose! hx
        simp_rw [proj_apply] at hx
        rw [← sum_support_decompose 𝒜 x]
        exact Ideal.sum_mem _ hx
      set max₁ := set₁.max' (nonempty x rid₁)
      set max₂ := set₂.max' (nonempty y rid₂)
      have mem_max₁ : max₁ ∈ set₁ := max'_mem set₁ (nonempty x rid₁)
      have mem_max₂ : max₂ ∈ set₂ := max'_mem set₂ (nonempty y rid₂)
      replace hxy : proj 𝒜 (max₁ + max₂) (x * y) ∈ I := hI _ hxy
      have mem_I : proj 𝒜 max₁ x * proj 𝒜 max₂ y ∈ I := by
        set antidiag :=
          {z ∈ (decompose 𝒜 x).support ×ˢ (decompose 𝒜 y).support | z.1 + z.2 = max₁ + max₂}
           with ha
        have mem_antidiag : (max₁, max₂) ∈ antidiag := by
          simp only [antidiag, add_sum_erase, mem_filter, mem_product]
          exact ⟨⟨mem_of_mem_filter _ mem_max₁, mem_of_mem_filter _ mem_max₂⟩, trivial⟩
        have eq_add_sum :=
          calc
            proj 𝒜 (max₁ + max₂) (x * y) = ∑ ij ∈ antidiag, proj 𝒜 ij.1 x * proj 𝒜 ij.2 y := by
              simp_rw [ha, proj_apply, DirectSum.decompose_mul, DirectSum.coe_mul_apply 𝒜]
            _ =
                proj 𝒜 max₁ x * proj 𝒜 max₂ y +
                  ∑ ij ∈ antidiag.erase (max₁, max₂), proj 𝒜 ij.1 x * proj 𝒜 ij.2 y :=
              (add_sum_erase _ _ mem_antidiag).symm
        rw [eq_sub_of_add_eq eq_add_sum.symm]
        refine Ideal.sub_mem _ hxy (Ideal.sum_mem _ fun z H => ?_)
        rcases z with ⟨i, j⟩
        simp only [antidiag, mem_erase, Prod.mk_inj, Ne, mem_filter, mem_product] at H
        rcases H with ⟨H₁, ⟨H₂, H₃⟩, H₄⟩
        have max_lt : max₁ < i ∨ max₂ < j := by
          rcases lt_trichotomy max₁ i with (h | rfl | h)
          · exact Or.inl h
          · refine False.elim (H₁ ⟨rfl, add_left_cancel H₄⟩)
          · apply Or.inr
            have := add_lt_add_right h j
            rw [H₄] at this
            exact lt_of_add_lt_add_left this
        rcases max_lt with max_lt | max_lt
        · -- in this case `max₁ < i`, then `xᵢ ∈ I`; for otherwise `i ∈ set₁` then `i ≤ max₁`.
          have notMem : i ∉ set₁ := fun h =>
            lt_irrefl _ ((max'_lt_iff set₁ (nonempty x rid₁)).mp max_lt i h)
          rw [set₁_eq] at notMem
          simp only [not_and, Classical.not_not, Ne, mem_filter] at notMem
          exact Ideal.mul_mem_right _ I (notMem H₂)
        · -- in this case `max₂ < j`, then `yⱼ ∈ I`; for otherwise `j ∈ set₂`, then `j ≤ max₂`.
          have notMem : j ∉ set₂ := fun h =>
            lt_irrefl _ ((max'_lt_iff set₂ (nonempty y rid₂)).mp max_lt j h)
          rw [set₂_eq] at notMem
          simp only [not_and, Classical.not_not, Ne, mem_filter] at notMem
          exact Ideal.mul_mem_left I _ (notMem H₃)
      have notMem_I : proj 𝒜 max₁ x * proj 𝒜 max₂ y ∉ I := by
        have neither_mem : proj 𝒜 max₁ x ∉ I ∧ proj 𝒜 max₂ y ∉ I := by
          rw [mem_filter] at mem_max₁ mem_max₂
          exact ⟨mem_max₁.2, mem_max₂.2⟩
        intro _rid
        rcases homogeneous_mem_or_mem ⟨max₁, SetLike.coe_mem _⟩ ⟨max₂, SetLike.coe_mem _⟩ mem_I
          with h | h
        · apply neither_mem.1 h
        · apply neither_mem.2 h
      exact notMem_I mem_I⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d75b8869c469ef3246b15f82ae619532c430e312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
