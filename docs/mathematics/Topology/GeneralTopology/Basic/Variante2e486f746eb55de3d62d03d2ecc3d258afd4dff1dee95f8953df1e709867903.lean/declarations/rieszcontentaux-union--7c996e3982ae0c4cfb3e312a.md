# rieszContentAux_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22abdd76-90f8-38d7-e67e-3f1c7f04a342",
  "kind": "lemma",
  "lexical_name": "rieszContentAux_union",
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
  "slug": "rieszcontentaux-union--7c996e3982ae0c4cfb3e312a",
  "source": {
    "blob": "8e6b2056157bf93f9f2185db974c666d91fc8063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c996e3982ae0c4cfb3e312a278d232322bb06931e23dcb3b87951a88aabf476",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22abdd76-90f8-38d7-e67e-3f1c7f04a342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rieszContentAux_union {K₁ K₂ : TopologicalSpace.Compacts X}
    (disj : Disjoint (K₁ : Set X) K₂) :
    rieszContentAux Λ (K₁ ⊔ K₂) = rieszContentAux Λ K₁ + rieszContentAux Λ K₂ := by
  refine le_antisymm (rieszContentAux_sup_le Λ K₁ K₂) ?_
  refine le_csInf (rieszContentAux_image_nonempty Λ (K₁ ⊔ K₂)) ?_
  intro b ⟨f, ⟨hf, Λf_eq_b⟩⟩
  have hsuppf : ∀ x ∈ K₁ ⊔ K₂, x ∈ support f := by
    intro x hx
    rw [mem_support]
    exact ne_of_gt <| lt_of_lt_of_le (zero_lt_one' ℝ≥0) (hf x hx)
  have hsubsuppf : (K₁ : Set X) ∪ (K₂ : Set X) ⊆ tsupport f := subset_trans hsuppf subset_closure
  obtain ⟨g₁, g₂, hg₁, hg₂, sum_g⟩ := exists_continuous_add_one_of_isCompact_nnreal K₁.isCompact'
    K₂.isCompact' f.hasCompactSupport'.isCompact disj hsubsuppf
  have f_eq_sum : f = g₁ * f + g₂ * f := by
    ext x
    simp only [CompactlySupportedContinuousMap.coe_add, CompactlySupportedContinuousMap.coe_mul,
      Pi.add_apply, Pi.mul_apply, NNReal.coe_add, NNReal.coe_mul,
      Eq.symm (RightDistribClass.right_distrib _ _ _), ← NNReal.coe_add, ← Pi.add_apply]
    by_cases h : f x = 0
    · rw [h]
      simp only [NNReal.coe_zero, NNReal.coe_add, mul_zero]
    · push_neg at h
      simp only [CompactlySupportedContinuousMap.coe_add, ContinuousMap.toFun_eq_coe,
        CompactlySupportedContinuousMap.coe_toContinuousMap] at sum_g
      rw [sum_g (mem_of_subset_of_mem subset_closure (mem_support.mpr h))]
      simp only [Pi.one_apply, NNReal.coe_one, one_mul]
  rw [← Λf_eq_b, f_eq_sum, map_add]
  have aux₁ : ∀ x ∈ K₁, 1 ≤ (g₁ * f) x := by
    intro x x_in_K₁
    simp [hg₁ x_in_K₁, hf x (mem_union_left _ x_in_K₁)]
  have aux₂ : ∀ x ∈ K₂, 1 ≤ (g₂ * f) x := by
    intro x x_in_K₂
    simp [hg₂ x_in_K₂, hf x (mem_union_right _ x_in_K₂)]
  exact add_le_add (rieszContentAux_le Λ aux₁) (rieszContentAux_le Λ aux₂)

end RieszContentAdditive

section RieszContentRegular

variable [T2Space X] [LocallyCompactSpace X]

/-- The content induced by the linear functional `Λ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6b2056157bf93f9f2185db974c666d91fc8063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
