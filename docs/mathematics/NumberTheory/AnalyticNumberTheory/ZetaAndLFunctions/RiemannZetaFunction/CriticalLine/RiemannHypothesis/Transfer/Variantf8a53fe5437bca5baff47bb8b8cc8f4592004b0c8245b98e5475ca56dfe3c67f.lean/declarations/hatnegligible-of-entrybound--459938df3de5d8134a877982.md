# hatNegligible_of_entryBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff5090f8-47b7-d1c3-4bb2-08f0249418ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b43e3976-c889-8040-0542-09b1c34046d4",
  "kind": "theorem",
  "lexical_name": "hatNegligible_of_entryBound",
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
  "slug": "hatnegligible-of-entrybound--459938df3de5d8134a877982",
  "source": {
    "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 299,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:459938df3de5d8134a877982862e3e0158a8e02ba80c1c232967f2fb794397c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b43e3976-c889-8040-0542-09b1c34046d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hatNegligible_of_entryBound (Z : ZeroConfig) (Pf : ℝ → Params) (P : Params) (hP : P.Valid)
    (hPf : ∀ T, (Pf T).lam = P.lam ∧ (Pf T).w = P.w)
    (ha : ∃ a₀ : ℝ, 0 < a₀ ∧ ∀ᶠ T in atTop, a₀ ≤ (Pf T).a T)
    (hR : RiemannVonMangoldt Z)
    (M : (T : ℝ) → Matrix (Fin ((Pf T).d T)) (Fin ((Pf T).d T)) ℂ)
    (hEF : ∃ C δ T₀ : ℝ, 0 < δ ∧ ∀ T : ℝ, T₀ ≤ T → ∀ k l : Fin ((Pf T).d T),
      ‖Z.Gz (Pf T) T k l - M T k l‖
        ≤ C * T ^ (-δ) * (1 / max 1 (((Pf T).tau T k - (Pf T).tau T l) ^ 2) + 1 / T)) :
    HatNegligible Z Pf (fun T => Z.Gz (Pf T) T - M T) := by
  obtain ⟨C₀, δ, T₀, hδ, hEF⟩ := hEF
  obtain ⟨a₀, ha₀, ha⟩ := ha
  set C := max C₀ 1 with hCdef
  have hC : 0 < C := lt_of_lt_of_le one_pos (le_max_right _ _)
  intro η hη
  have hπ2 : 9 < π ^ 2 := by have := Real.pi_gt_three; nlinarith
  have h13 : 4 * π ≤ 13 := by have := Real.pi_lt_d2; norm_num at this ⊢; linarith
  have c1 : 4 / π ^ 2 ≤ (1:ℝ) / 2 := by
    rw [div_le_div_iff₀ (by positivity) two_pos]; linarith only [hπ2]
  have c2 : 1 / (4 * π ^ 2) ≤ (1:ℝ) / 2 := by
    rw [div_le_div_iff₀ (by positivity) two_pos]; linarith only [hπ2]
  -- smallness: T^{-δ} ≤ ε
  set ε : ℝ := min 1 (min (η * a₀ / (4 * C)) (η ^ 2 * a₀ ^ 2 / (26 * C ^ 2))) with hεdef
  have hε0 : 0 < ε := by positivity
  have hsmall : ∀ᶠ T : ℝ in atTop, T ^ (-δ) ≤ ε :=
    ((tendsto_rpow_neg_atTop hδ).eventually (eventually_le_nhds hε0))
  have hLtop := Assembly.tendsto_L_atTop P hP.lam_pos
  filter_upwards [eventually_ge_atTop T₀, eventually_ge_atTop (1:ℝ), ha, Assembly.eventually_N_ge Z hR,
    Assembly.eventually_one_le_l, hLtop.eventually_ge_atTop (2 * π), hsmall]
    with T hT₀ hT1 haT hN hl hL hTδ
  have hT : 0 < T := by linarith
  have hπ := Real.pi_pos
  have hLf : (Pf T).L T = P.L T := fam_L hPf T
  have hL0 : 0 < P.L T := by nlinarith [Real.pi_gt_three]
  have hh : (Pf T).hgrid T = 2 * π / P.L T := by simp [Params.hgrid, hLf]
  have hhpos : 0 < (Pf T).hgrid T := by rw [hh]; positivity
  have hinvh : 1 / (Pf T).hgrid T = P.L T / (2 * π) := by rw [hh]; field_simp
  have hdle : ((Pf T).d T : ℝ) ≤ P.L T * T / (2 * π) := by
    have := d_le (Pf T) T (by rw [hLf]; positivity); rwa [hLf] at this
  have hd0 : (0:ℝ) ≤ ((Pf T).d T : ℝ) := Nat.cast_nonneg _
  have hTδ0 : 0 ≤ T ^ (-δ) := Real.rpow_nonneg hT.le _
  have hε1 : ε ≤ 1 := min_le_left _ _
  have hε2 : ε ≤ η * a₀ / (4 * C) := (min_le_right _ _).trans (min_le_left _ _)
  have hε3 : ε ≤ η ^ 2 * a₀ ^ 2 / (26 * C ^ 2) := (min_le_right _ _).trans (min_le_right _ _)
  -- the entrywise bound with C in place of C₀
  have hEF' : ∀ k l : Fin ((Pf T).d T), ‖Z.Gz (Pf T) T k l - M T k l‖
      ≤ C * T ^ (-δ) * (1 / max 1 (((Pf T).tau T k - (Pf T).tau T l) ^ 2) + 1 / T) := by
    intro k l
    refine (hEF T hT₀ k l).trans ?_
    have h0 : 0 ≤ T ^ (-δ) * (1 / max 1 (((Pf T).tau T k - (Pf T).tau T l) ^ 2) + 1 / T) := by
      positivity
    have := mul_le_mul_of_nonneg_right (le_max_left C₀ 1) h0
    simpa only [mul_assoc] using this
  obtain ⟨htr, hfr⟩ := entryError_bounds Z (Pf T) T (M T) hC.le hT hhpos hEF'
  have haT0 : 0 < (Pf T).a T := ha₀.trans_le haT
  have haL : 0 < (Pf T).a T * (Pf T).L T ^ 2 := by rw [hLf]; positivity
  have ha₀L : 0 < a₀ * P.L T ^ 2 := by positivity
  have hinv : ((Pf T).a T * (Pf T).L T ^ 2)⁻¹ ≤ (a₀ * P.L T ^ 2)⁻¹ := by
    rw [hLf]; exact inv_anti₀ ha₀L (by gcongr)
  constructor
  · rw [rtrace_hat', abs_mul, abs_of_pos (inv_pos.2 haL)]
    have hT1' : 1 + 1 / T ≤ 2 := by
      have : 1 / T ≤ 1 := by rw [div_le_one hT]; exact hT1
      linarith
    calc ((Pf T).a T * (Pf T).L T ^ 2)⁻¹ * |rtrace (Z.Gz (Pf T) T - M T)|
        ≤ (a₀ * P.L T ^ 2)⁻¹ * (((Pf T).d T : ℝ) * (C * T ^ (-δ) * (1 + 1 / T))) :=
          mul_le_mul hinv htr (abs_nonneg _) (inv_nonneg.2 ha₀L.le)
      _ ≤ (a₀ * P.L T ^ 2)⁻¹ * ((P.L T * T / (2 * π)) * (C * T ^ (-δ) * 2)) := by gcongr
      _ = (C * T ^ (-δ)) * T / (π * a₀ * P.L T) := by field_simp
      _ ≤ (C * ε) * T / (π * a₀ * P.L T) := by gcongr
      _ ≤ (η * a₀ / 4) * T / (π * a₀ * P.L T) := by
          gcongr
          calc C * ε ≤ C * (η * a₀ / (4 * C)) := by gcongr
            _ = η * a₀ / 4 := by field_simp
      _ = η * (T / (4 * π)) * (1 / P.L T) := by field_simp
      _ ≤ η * (T / (4 * π)) * l T := by
          gcongr
          calc 1 / P.L T ≤ 1 := by rw [div_le_one hL0]; linarith [Real.pi_gt_three]
            _ ≤ l T := hl
      _ = η * (T * l T / (4 * π)) := by ring
      _ ≤ η * (Z.N T (2 * T) : ℝ) := by gcongr
  · rw [frobSq_hat']
    have hbr : ((Pf T).d T : ℝ) * (8 * (1 + 1 / (Pf T).hgrid T)) + ((Pf T).d T : ℝ) ^ 2 / T ^ 2
        ≤ P.L T ^ 2 * T := by
      rw [hinvh]
      have hL2π : 1 ≤ P.L T / (2 * π) := by rw [le_div_iff₀ (by positivity)]; linarith
      have h1 : ((Pf T).d T : ℝ) * (8 * (1 + P.L T / (2 * π)))
          ≤ (P.L T * T / (2 * π)) * (8 * (P.L T / π)) := by
        gcongr
        calc 1 + P.L T / (2 * π) ≤ P.L T / (2 * π) + P.L T / (2 * π) := by linarith
          _ = P.L T / π := by ring
      have h2 : ((Pf T).d T : ℝ) ^ 2 / T ^ 2 ≤ (P.L T * T / (2 * π)) ^ 2 / T ^ 2 := by gcongr
      have e1 : (P.L T * T / (2 * π)) * (8 * (P.L T / π)) = (4 / π ^ 2) * (P.L T ^ 2 * T) := by
        (field_simp; ring)
      have e2 : (P.L T * T / (2 * π)) ^ 2 / T ^ 2 = (1 / (4 * π ^ 2)) * P.L T ^ 2 := by
        (field_simp; ring)
      have hLT0 : 0 ≤ P.L T ^ 2 * T := by positivity
      have hLT : P.L T ^ 2 ≤ P.L T ^ 2 * T := le_mul_of_one_le_right (sq_nonneg _) hT1
      have i1 : (4 / π ^ 2) * (P.L T ^ 2 * T) ≤ (1 / 2) * (P.L T ^ 2 * T) :=
        mul_le_mul_of_nonneg_right c1 hLT0
      have i2 : (1 / (4 * π ^ 2)) * P.L T ^ 2 ≤ (1 / 2) * (P.L T ^ 2 * T) :=
        mul_le_mul c2 hLT (sq_nonneg _) (by norm_num)
      linarith only [h1, h2, e1, e2, i1, i2]
    have hfr' : frobSq (Z.Gz (Pf T) T - M T) ≤ 2 * (C * T ^ (-δ)) ^ 2 * (P.L T ^ 2 * T) :=
      hfr.trans (mul_le_mul_of_nonneg_left hbr (by positivity))
    have hinv2 : (((Pf T).a T * (Pf T).L T ^ 2)⁻¹) ^ 2 ≤ ((a₀ * P.L T ^ 2)⁻¹) ^ 2 :=
      pow_le_pow_left₀ (inv_nonneg.2 haL.le) hinv 2
    have hTδ2 : (T ^ (-δ)) ^ 2 ≤ ε := by
      calc (T ^ (-δ)) ^ 2 = T ^ (-δ) * T ^ (-δ) := sq _
        _ ≤ ε * 1 := mul_le_mul hTδ (hTδ.trans hε1) hTδ0 hε0.le
        _ = ε := mul_one _
    calc (((Pf T).a T * (Pf T).L T ^ 2)⁻¹) ^ 2 * frobSq (Z.Gz (Pf T) T - M T)
        ≤ ((a₀ * P.L T ^ 2)⁻¹) ^ 2 * (2 * (C * T ^ (-δ)) ^ 2 * (P.L T ^ 2 * T)) :=
          mul_le_mul hinv2 hfr' (Assembly.frobSq_nonneg _) (sq_nonneg _)
      _ = 2 * C ^ 2 * (T ^ (-δ)) ^ 2 * T / (a₀ ^ 2 * P.L T ^ 2) := by field_simp
      _ ≤ 2 * C ^ 2 * ε * T / (a₀ ^ 2 * P.L T ^ 2) := by gcongr
      _ ≤ 2 * C ^ 2 * (η ^ 2 * a₀ ^ 2 / (26 * C ^ 2)) * T / (a₀ ^ 2 * P.L T ^ 2) := by gcongr
      _ = η ^ 2 * (T / 13) * (1 / P.L T ^ 2) := by (field_simp; ring)
      _ ≤ η ^ 2 * (T / 13) * 1 := by
          gcongr
          rw [div_le_one (by positivity)]; nlinarith [Real.pi_gt_three]
      _ ≤ η ^ 2 * (T * l T / (4 * π)) := by
          rw [mul_one]
          gcongr η ^ 2 * ?_
          calc T / 13 ≤ T / (4 * π) := div_le_div_of_nonneg_left hT.le (by positivity) h13
            _ ≤ T * l T / (4 * π) :=
                div_le_div_of_nonneg_right (le_mul_of_one_le_right hT.le hl) (by positivity)
      _ ≤ η ^ 2 * (Z.N T (2 * T) : ℝ) := by gcongr

/-- **[XF′ Lemma 5.1]**: from XiEF, E = G¹ − M is HatNegligible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469a31ec055d6db903e9095cdca737f5b904f019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
