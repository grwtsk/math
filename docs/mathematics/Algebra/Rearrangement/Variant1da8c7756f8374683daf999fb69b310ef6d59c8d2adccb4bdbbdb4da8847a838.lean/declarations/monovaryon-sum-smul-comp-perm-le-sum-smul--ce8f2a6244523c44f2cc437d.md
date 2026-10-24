# MonovaryOn.sum_smul_comp_perm_le_sum_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f7680af-aa8b-cce0-90d7-27cc60509ce5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97e8fa45-3e3e-ecfb-35b4-4f81f1ab0660",
  "kind": "theorem",
  "lexical_name": "MonovaryOn.sum_smul_comp_perm_le_sum_smul",
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
  "slug": "monovaryon-sum-smul-comp-perm-le-sum-smul--ce8f2a6244523c44f2cc437d",
  "source": {
    "blob": "d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 67,
    "path": "GRWTSK/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8f2a6244523c44f2cc437d526f2dd829fa50ab7d7fd76232660b20fa7a2fb2",
  "verification": {
    "reference": "docs/verification/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97e8fa45-3e3e-ecfb-35b4-4f81f1ab0660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonovaryOn.sum_smul_comp_perm_le_sum_smul (hfg : MonovaryOn f g s)
    (hσ : {x | σ x ≠ x} ⊆ s) : ∑ i ∈ s, f i • g (σ i) ≤ ∑ i ∈ s, f i • g i := by
  classical
  revert hσ σ hfg
  apply Finset.induction_on_max_value (fun i ↦ toLex (g i, f i))
    (p := fun t ↦ ∀ {σ : Perm ι}, MonovaryOn f g t → {x | σ x ≠ x} ⊆ t →
      ∑ i ∈ t, f i • g (σ i) ≤ ∑ i ∈ t, f i • g i) s
  · simp only [le_rfl, Finset.sum_empty, imp_true_iff]
  intro a s has hamax hind σ hfg hσ
  set τ : Perm ι := σ.trans (swap a (σ a)) with hτ
  have hτs : {x | τ x ≠ x} ⊆ s := by
    intro x hx
    simp only [τ, Ne, Set.mem_setOf_eq, Equiv.coe_trans, Equiv.swap_comp_apply] at hx
    split_ifs at hx with h₁ h₂
    · obtain rfl | hax := eq_or_ne x a
      · contradiction
      · exact mem_of_mem_insert_of_ne (hσ fun h ↦ hax <| h.symm.trans h₁) hax
    · exact (hx <| σ.injective h₂.symm).elim
    · exact mem_of_mem_insert_of_ne (hσ hx) (ne_of_apply_ne _ h₂)
  specialize hind (hfg.subset <| subset_insert _ _) hτs
  simp_rw [sum_insert has]
  refine le_trans ?_ (add_le_add_left hind _)
  obtain hσa | hσa := eq_or_ne a (σ a)
  · rw [hτ, ← hσa, swap_self, trans_refl]
  have h1s : σ⁻¹ a ∈ s := by
    rw [Ne, ← inv_eq_iff_eq] at hσa
    refine mem_of_mem_insert_of_ne (hσ fun h ↦ hσa ?_) hσa
    rwa [apply_inv_self, eq_comm] at h
  simp only [← s.sum_erase_add _ h1s, add_comm]
  rw [← add_assoc, ← add_assoc]
  simp only [hτ, swap_apply_left, Function.comp_apply, Equiv.coe_trans, apply_inv_self]
  refine add_le_add (smul_add_smul_le_smul_add_smul' ?_ ?_) (sum_congr rfl fun x hx ↦ ?_).le
  · specialize hamax (σ⁻¹ a) h1s
    rw [Prod.Lex.toLex_le_toLex] at hamax
    rcases hamax with hamax | hamax
    · exact hfg (mem_insert_of_mem h1s) (mem_insert_self _ _) hamax
    · exact hamax.2
  · specialize hamax (σ a) (mem_of_mem_insert_of_ne (hσ <| σ.injective.ne hσa.symm) hσa.symm)
    rw [Prod.Lex.toLex_le_toLex] at hamax
    rcases hamax with hamax | hamax
    · exact hamax.le
    · exact hamax.1.le
  · rw [mem_erase, Ne, eq_inv_iff_eq] at hx
    rw [swap_apply_of_ne_of_ne hx.1 (σ.injective.ne _)]
    rintro rfl
    exact has hx.2

/-- **Rearrangement Inequality**: Pointwise scalar multiplication of `f` and `g` is minimized when
`f` and `g` antivary together on `s`. Stated by permuting the entries of `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
