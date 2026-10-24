# inf_iSup_genEigenspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f9759d3c0d19efe6841c097c703e334f0003e39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e013fb3-1663-22be-301d-240c22d6cfef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15ecd32f-624f-0c03-3f37-caa5ddbba2ec",
  "kind": "theorem",
  "lexical_name": "inf_iSup_genEigenspace",
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
  "slug": "inf-isup-geneigenspace--4d783e1142421c2c75a9830b",
  "source": {
    "blob": "4f9759d3c0d19efe6841c097c703e334f0003e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 146,
    "path": "GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d783e1142421c2c75a9830b7c963bc14f51556c65dbf425fb7746b8d68b7a25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15ecd32f-624f-0c03-3f37-caa5ddbba2ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf_iSup_genEigenspace [FiniteDimensional K V] (h : ∀ x ∈ p, f x ∈ p) (k : ℕ∞) :
    p ⊓ ⨆ μ, f.genEigenspace μ k = ⨆ μ, p ⊓ f.genEigenspace μ k := by
  refine le_antisymm (fun m hm ↦ ?_)
    (le_inf_iff.mpr ⟨iSup_le fun μ ↦ inf_le_left, iSup_mono fun μ ↦ inf_le_right⟩)
  classical
  obtain ⟨hm₀ : m ∈ p, hm₁ : m ∈ ⨆ μ, f.genEigenspace μ k⟩ := hm
  obtain ⟨m, hm₂, rfl⟩ := (mem_iSup_iff_exists_finsupp _ _).mp hm₁
  suffices ∀ μ, (m μ : V) ∈ p by
    exact (mem_iSup_iff_exists_finsupp _ _).mpr ⟨m, fun μ ↦ mem_inf.mp ⟨this μ, hm₂ μ⟩, rfl⟩
  intro μ
  by_cases hμ : μ ∈ m.support; swap
  · simp only [Finsupp.notMem_support_iff.mp hμ, p.zero_mem]
  have hm₂_aux := hm₂
  simp_rw [Module.End.mem_genEigenspace] at hm₂_aux
  choose l hlk hl using hm₂_aux
  let l₀ : ℕ := m.support.sup l
  have h_comm : ∀ (μ₁ μ₂ : K),
    Commute ((f - algebraMap K (End K V) μ₁) ^ l₀)
            ((f - algebraMap K (End K V) μ₂) ^ l₀) := fun μ₁ μ₂ ↦
    ((Commute.sub_right rfl <| Algebra.commute_algebraMap_right _ _).sub_left
      (Algebra.commute_algebraMap_left _ _)).pow_pow _ _
  let g : End K V := (m.support.erase μ).noncommProd _ fun μ₁ _ μ₂ _ _ ↦ h_comm μ₁ μ₂
  have hfg : Commute f g := Finset.noncommProd_commute _ _ _ _ fun μ' _ ↦
    (Commute.sub_right rfl <| Algebra.commute_algebraMap_right _ _).pow_right _
  have hg₀ : g (m.sum fun _μ mμ ↦ mμ) = g (m μ) := by
    suffices ∀ μ' ∈ m.support, g (m μ') = if μ' = μ then g (m μ) else 0 by
      rw [map_finsuppSum, Finsupp.sum_congr (g2 := fun μ' _ ↦ if μ' = μ then g (m μ) else 0) this,
        Finsupp.sum_ite_eq', ite_eq_left hμ]
    rintro μ' hμ'
    split_ifs with hμμ'
    · rw [hμμ']
    have hl₀ : ((f - algebraMap K (End K V) μ') ^ l₀) (m μ') = 0 := by
      rw [← LinearMap.mem_ker, Algebra.algebraMap_eq_smul_one, ← End.mem_genEigenspace_nat]
      simp_rw [← End.mem_genEigenspace_nat] at hl
      suffices (l μ' : ℕ∞) ≤ l₀ from (f.genEigenspace μ').mono this (hl μ')
      simpa only [Nat.cast_le] using Finset.le_sup hμ'
    have : _ = g := (m.support.erase μ).noncommProd_erase_mul (Finset.mem_erase.mpr ⟨hμμ', hμ'⟩)
      (fun μ ↦ (f - algebraMap K (End K V) μ) ^ l₀) (fun μ₁ _ μ₂ _ _ ↦ h_comm μ₁ μ₂)
    rw [← this, Module.End.mul_apply, hl₀, _root_.map_zero]
  have hg₁ : MapsTo g p p := Finset.noncommProd_induction _ _ _ (fun g' : End K V ↦ MapsTo g' p p)
      (fun f₁ f₂ ↦ MapsTo.comp) (mapsTo_id _) fun μ' _ ↦ by
    suffices MapsTo (f - algebraMap K (End K V) μ') p p by
      simp only [Module.End.coe_pow, this.iterate l₀]
    intro x hx
    rw [LinearMap.sub_apply, algebraMap_end_apply]
    exact p.sub_mem (h _ hx) (smul_mem p μ' hx)
  have hg₂ : MapsTo g ↑(f.genEigenspace μ k) ↑(f.genEigenspace μ k) :=
    f.mapsTo_genEigenspace_of_comm hfg μ k
  have hg₃ : InjOn g ↑(f.genEigenspace μ k) := by
    apply LinearMap.injOn_of_disjoint_ker subset_rfl
    have := f.independent_genEigenspace k
    have aux (μ') (_hμ' : μ' ∈ m.support.erase μ) :
        (f.genEigenspace μ') ↑l₀ ≤ (f.genEigenspace μ') k := by
      apply (f.genEigenspace μ').mono
      obtain _ | k := k
      · exact le_top
      · exact Nat.cast_le.2 <| Finset.sup_le fun i _ ↦ Nat.cast_le.1 <| hlk i
    rw [LinearMap.ker_noncommProd_eq_of_supIndep_ker, ← Finset.sup_eq_iSup]
    · have := Finset.supIndep_iff_disjoint_erase.mp (this.supIndep' m.support) μ hμ
      apply this.mono_right
      apply Finset.sup_mono_fun
      intro μ' hμ'
      rw [Algebra.algebraMap_eq_smul_one, ← End.genEigenspace_nat]
      apply aux μ' hμ'
    · have := this.supIndep' (m.support.erase μ)
      apply this.antitone_fun
      intro μ' hμ'
      rw [Algebra.algebraMap_eq_smul_one, ← End.genEigenspace_nat]
      apply aux μ' hμ'
  have hg₄ : SurjOn g
      ↑(p ⊓ f.genEigenspace μ k) ↑(p ⊓ f.genEigenspace μ k) := by
    have : MapsTo g
        ↑(p ⊓ f.genEigenspace μ k) ↑(p ⊓ f.genEigenspace μ k) :=
      hg₁.inter_inter hg₂
    rw [← LinearMap.injOn_iff_surjOn this]
    exact hg₃.mono inter_subset_right
  specialize hm₂ μ
  obtain ⟨y, ⟨hy₀ : y ∈ p, hy₁ : y ∈ f.genEigenspace μ k⟩, hy₂ : g y = g (m μ)⟩ :=
    hg₄ ⟨(hg₀ ▸ hg₁ hm₀), hg₂ hm₂⟩
  rwa [← hg₃ hy₁ hm₂ hy₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f9759d3c0d19efe6841c097c703e334f0003e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
