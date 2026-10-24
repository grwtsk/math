# max_norm_root_eq_spectralValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e662f4e0-5878-d1df-e84b-e1a3b6a61496",
  "kind": "theorem",
  "lexical_name": "max_norm_root_eq_spectralValue",
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
  "slug": "max-norm-root-eq-spectralvalue--e13e547889f6eb6b59adf2b5",
  "source": {
    "blob": "966cc62fcc2a5f696404037c9fc864e171e85938",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 302,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e13e547889f6eb6b59adf2b5b31f59f56318cc3c81c694f79fdc1bbc7d13d724",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e662f4e0-5878-d1df-e84b-e1a3b6a61496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem max_norm_root_eq_spectralValue [DecidableEq L] {f : AlgebraNorm K L} (hf_pm : IsPowMul f)
    (hf_na : IsNonarchimedean f) (hf1 : f 1 = 1) (p : K[X]) (s : Multiset L)
    (hp : mapAlg K L p = (map (fun a : L ↦ X - C a) s).prod) :
    (⨆ x : L, if x ∈ s then f x else 0) = spectralValue p := by
  have h_le : 0 ≤ ⨆ x : L, ite (x ∈ s) (f x) 0 := by
    apply iSup_nonneg (fun _ ↦ ?_)
    split_ifs
    exacts [apply_nonneg _ _, le_refl _]
  apply le_antisymm
  · apply ciSup_le (fun x ↦ ?_)
    by_cases hx : x ∈ s
    · have hx0 : aeval x p = 0 := aeval_root_of_mapAlg_eq_multiset_prod_X_sub_C s hx hp
      rw [ite_eq_left hx]
      exact norm_root_le_spectralValue hf_pm hf_na
        (monic_of_monic_mapAlg (hp ▸ monic_multisetProd_X_sub_C s)) hx0
    · simp only [ite_eq_right hx, spectralValue_nonneg _]
  · apply ciSup_le (fun m ↦ ?_)
    by_cases hm : m < p.natDegree
    · rw [spectralValueTerms_of_lt_natDegree _ hm]
      have h : 0 < (p.natDegree - m : ℝ) := by rw [sub_pos, Nat.cast_lt]; exact hm
      rw [← rpow_le_rpow_iff (rpow_nonneg (norm_nonneg _) _) h_le h, ← rpow_mul (norm_nonneg _),
        one_div_mul_cancel (ne_of_gt h), rpow_one, ← Nat.cast_sub (le_of_lt hm), rpow_natCast]
      have hps : card s = p.natDegree := by
        rw [← natDegree_map (algebraMap K L), ← mapAlg_eq_map, hp,
          natDegree_multiset_prod_X_sub_C_eq_card]
      have hc : ‖p.coeff m‖ = f (((mapAlg K L) p).coeff m) := by
        rw [← AlgebraNorm.extends_norm hf1, mapAlg_eq_map, coeff_map]
      rw [hc, hp, prod_X_sub_C_coeff s (hps ▸ le_of_lt hm)]
      have h : f ((-1) ^ (card s - m) * s.esymm (card s - m)) = f (s.esymm (card s - m)) := by
        rcases neg_one_pow_eq_or L (card s - m) with h1 | hn1
        · rw [h1, one_mul]
        · rw [hn1, neg_mul, one_mul, map_neg_eq_map]
      rw [h, esymm]
      obtain ⟨t, ht_card, hts, ht_ge⟩ : ∃ t : Multiset L, card t = card s - m ∧
          (∀ x : L, x ∈ t → x ∈ s) ∧ f (map prod (powersetCard (card s - m) s)).sum ≤ f t.prod :=
        hf_na.multiset_powerset_image_add m s
      apply le_trans ht_ge
      have h_pr : f t.prod ≤ (t.map f).prod := le_prod_of_submultiplicative_of_nonneg f
        (apply_nonneg _) (le_of_eq hf1) (map_mul_le_mul _) t
      apply le_trans h_pr
      have hs_ne : s ≠ 0 :=
        have hpos : 0 < s.toFinset.card := by
          have hs0 : 0 < s.card := hps ▸ hm.pos
          obtain ⟨x, hx⟩ := card_pos_iff_exists_mem.mp hs0
          exact Finset.card_pos.mpr ⟨x, mem_toFinset.mpr hx⟩
        toFinset_nonempty.mp (Finset.card_pos.mp hpos)
      obtain ⟨y, hyx, hy_max⟩ : ∃ y : L, y ∈ s ∧ ∀ z : L, z ∈ s → f z ≤ f y :=
        exists_max_image f hs_ne
      have : (map f t).prod ≤ f y ^ (p.natDegree - m) := by
        set g : L → NNReal := fun x ↦ ⟨f x, apply_nonneg f x⟩
        have h_card : p.natDegree - m = card (t.map g) := by rw [card_map, ht_card, ← hps]
        have hx_le : ∀ x : NNReal, x ∈ map g t → x ≤ g y := by
          intro r hr
          obtain ⟨_, hzt, hzr⟩ := mem_map.mp hr
          exact hzr ▸ hy_max _ (hts _ hzt)
        have : (map g t).prod ≤ g y ^ (p.natDegree - m) := h_card ▸ prod_le_pow_card _ _ hx_le
        simpa [g, ← NNReal.coe_le_coe, NNReal.coe_pow, NNReal.coe_mk, NNReal.coe_multiset_prod,
          map_map, Function.comp_apply, NNReal.coe_mk] using! this
      have h_bdd : BddAbove (Set.range fun x : L ↦ ite (x ∈ s) (f x) 0) := by
        use f y
        intro r hr
        obtain ⟨z, hz⟩ := Set.mem_range.mpr hr
        simp only at hz
        rw [← hz]
        split_ifs with h
        · exact hy_max _ h
        · exact apply_nonneg _ _
      exact le_trans this (pow_le_pow_left₀ (apply_nonneg _ _)
        (le_trans (by rw [ite_eq_left hyx]) (le_ciSup h_bdd y)) _)
    · simp only [spectralValueTerms, ite_eq_right hm, h_le]

end BddBySpectralValue


section spectralNorm

section NormedField
/- In this section we prove [S. Bosch, U. Güntzer, R. Remmert, *Non-Archimedean Analysis*
(Theorem 3.2.1/2)][bosch-guntzer-remmert]. -/

open IntermediateField

variable (K : Type*) [NormedField K] (L : Type*) [Field L] [Algebra K L]

/-- If `L` is an algebraic extension of a normed field `K` and `y : L` then the spectral norm
  `spectralNorm K y : ℝ` of `y` (written `|y|_sp` in the textbooks) is the spectral value of the
  minimal polynomial of `y` over `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966cc62fcc2a5f696404037c9fc864e171e85938` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
