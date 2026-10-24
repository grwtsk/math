# rectangleIntegral'_mul_logDeriv_of_poles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db30df619c414827f45a20b95fd173edd3600ee1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9b19bf1-1a22-085b-50f3-47bbd3814ecc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:686b2cb5-9f41-4d8b-39d7-fcde76d46f74",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral'_mul_logDeriv_of_poles",
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
  "slug": "rectangleintegral-mul-logderiv-of-poles--c8f87fe4f3a76393d9e42165",
  "source": {
    "blob": "db30df619c414827f45a20b95fd173edd3600ee1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8f87fe4f3a76393d9e42165ed4b58782c3a8eda554a40022ca4c7d58ba637b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:686b2cb5-9f41-4d8b-39d7-fcde76d46f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral'_mul_logDeriv_of_poles {f g : ℂ → ℂ} {z w : ℂ} (hre : z.re ≤ w.re)
    (him : z.im ≤ w.im) (Z P : Finset ℂ) (hZP : Disjoint Z P)
    (hPint : ∀ p ∈ P, Rectangle z w ∈ 𝓝 p)
    (hf : AnalyticOnNhd ℂ f (Rectangle z w \ (P : Set ℂ)))
    (hg : AnalyticOnNhd ℂ g (Rectangle z w))
    (hborder : ∀ s ∈ RectangleBorder z w, f s ≠ 0)
    (hZ : ∀ s ∈ Rectangle z w \ (P : Set ℂ), f s = 0 ↔ s ∈ Z) (hZsub : (Z : Set ℂ) ⊆ Rectangle z w)
    (m : ℂ → ℕ)
    (hpole : ∀ p ∈ P, ∃ c : ℂ, c ≠ 0 ∧ Tendsto (fun s => (s - p) ^ m p * f s) (𝓝[≠] p) (𝓝 c)) :
    RectangleIntegral' (fun s => g s * logDeriv f s) z w
      = ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) * g ρ - ∑ p ∈ P, (m p : ℂ) * g p := by
  classical
  have hZnotP : ∀ ρ ∈ Z, ρ ∉ P := fun ρ hρ hρP => Finset.disjoint_left.mp hZP hρ hρP
  have hZmem : ∀ ρ ∈ Z, ρ ∈ Rectangle z w \ (P : Set ℂ) := fun ρ hρ =>
    ⟨hZsub hρ, by simpa using hZnotP ρ hρ⟩
  -- zeros are interior points
  have hZint : ∀ ρ ∈ Z, Rectangle z w ∈ 𝓝 ρ := by
    intro ρ hρ
    have hρR : ρ ∈ Rectangle z w := hZsub hρ
    have hρB : ρ ∉ RectangleBorder z w := fun h => hborder ρ h ((hZ ρ (hZmem ρ hρ)).mpr hρ)
    obtain ⟨h1, h2⟩ := hρR
    have h1' : z.re ≤ ρ.re ∧ ρ.re ≤ w.re := by simpa [uIcc_of_le hre] using h1
    have h2' : z.im ≤ ρ.im ∧ ρ.im ≤ w.im := by simpa [uIcc_of_le him] using h2
    simp only [RectangleBorder, mem_union, mem_reProdIm, mem_singleton_iff, not_or] at hρB
    obtain ⟨⟨⟨hb1, hb2⟩, hb3⟩, hb4⟩ := hρB
    rw [rectangle_mem_nhds_iff, mem_reProdIm, uIoo_of_le hre, uIoo_of_le him]
    refine ⟨⟨lt_of_le_of_ne h1'.1 (fun h => hb2 ⟨h.symm, h2⟩),
      lt_of_le_of_ne h1'.2 (fun h => hb4 ⟨h, h2⟩)⟩,
      ⟨lt_of_le_of_ne h2'.1 (fun h => hb1 ⟨h1, h.symm⟩),
      lt_of_le_of_ne h2'.2 (fun h => hb3 ⟨h1, h⟩)⟩⟩
  -- residues: +ord·g at zeros, −m·g at poles
  let A : ℂ → ℂ := fun q => if q ∈ P then -((m q : ℂ) * g q) else (analyticOrderNatAt f q : ℂ) * g q
  have hint : ∀ q ∈ Z ∪ P, Rectangle z w ∈ 𝓝 q := by
    intro q hq
    rcases Finset.mem_union.mp hq with hq | hq
    exacts [hZint q hq, hPint q hq]
  have key := residueTheorem_finset (f := fun s => g s * logDeriv f s) hre him (Z ∪ P) A hint
    ?holo ?near
  · rw [key, Finset.sum_union hZP]
    have hZsum : ∑ q ∈ Z, A q = ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) * g ρ :=
      Finset.sum_congr rfl (fun q hq => by simp [A, hZnotP q hq])
    have hPsum : ∑ q ∈ P, A q = -∑ p ∈ P, (m p : ℂ) * g p := by
      rw [← Finset.sum_neg_distrib]
      exact Finset.sum_congr rfl (fun q hq => by simp [A, hq])
    rw [hZsum, hPsum, sub_eq_add_neg]
  case holo =>
    intro s hs
    have hsP : s ∉ P := fun h => hs.2 (by simp [h])
    have hsZ : s ∉ Z := fun h => hs.2 (by simp [h])
    have hsRP : s ∈ Rectangle z w \ (P : Set ℂ) := ⟨hs.1, by simpa using hsP⟩
    have hfs : f s ≠ 0 := fun h => hsZ ((hZ s hsRP).mp h)
    have hfa := hf s hsRP
    have hga := hg s hs.1
    apply DifferentiableAt.differentiableWithinAt
    show DifferentiableAt ℂ (fun s => g s * (deriv f s / f s)) s
    exact hga.differentiableAt.mul (hfa.deriv.differentiableAt.div hfa.differentiableAt hfs)
  case near =>
    intro q hq
    rcases Finset.mem_union.mp hq with hρ | hp
    · ---------------- a zero ρ := q
      have hρRP := hZmem q hρ
      have hga := hg q (hZsub hρ)
      have hA : A q = (analyticOrderNatAt f q : ℂ) * g q := by simp [A, hZnotP q hρ]
      by_cases htop : analyticOrderAt f q = ⊤
      · -- f vanishes identically near q: everything is 0
        have h0 : ∀ᶠ s in 𝓝 q, f s = 0 := analyticOrderAt_eq_top.mp htop
        have hO : (fun _ : ℂ => (0 : ℂ)) =O[𝓝[≠] q] (1 : ℂ → ℂ) := isBigO_zero _ _
        refine hO.congr' ?_ EventuallyEq.rfl
        filter_upwards [mem_nhdsWithin_of_mem_nhds (h0.eventually_nhds)] with s hs
        have hs' : f =ᶠ[𝓝 s] fun _ => (0 : ℂ) := hs
        have hds : deriv f s = 0 := by
          rw [hs'.deriv_eq]; simp
        simp [hA, logDeriv_apply, hds, analyticOrderNatAt, htop]
      obtain ⟨h, hh, hh0, hfh⟩ := (hf q hρRP).analyticOrderAt_ne_top.mp htop
      have hh_ne : ∀ᶠ s in 𝓝 q, h s ≠ 0 := hh.continuousAt.eventually_ne hh0
      have h2 : ∀ᶠ s in 𝓝 q, f =ᶠ[𝓝 s] (fun s => (s - q) ^ analyticOrderNatAt f q • h s) :=
        hfh.eventually_nhds
      have h3 : ∀ᶠ s in 𝓝 q, AnalyticAt ℂ h s := hh.eventually_analyticAt
      have hexp : ∀ᶠ s in 𝓝[≠] q,
          (analyticOrderNatAt f q : ℂ) * ((g s - g q) / (s - q)) + g s * logDeriv h s
            = ((fun s => g s * logDeriv f s) - fun s => A q / (s - q)) s := by
        filter_upwards [self_mem_nhdsWithin, mem_nhdsWithin_of_mem_nhds h2,
          mem_nhdsWithin_of_mem_nhds hh_ne, mem_nhdsWithin_of_mem_nhds h3]
          with s hs hfs hhs hhas
        have hsq : s - q ≠ 0 := sub_ne_zero.mpr (by simpa using hs)
        have hld : logDeriv f s = (analyticOrderNatAt f q : ℂ) / (s - q) + logDeriv h s := by
          have e1 : logDeriv f s
              = logDeriv (fun s => (s - q) ^ analyticOrderNatAt f q * h s) s := by
            simp only [logDeriv_apply, hfs.deriv_eq, hfs.self_of_nhds, smul_eq_mul]
          rw [e1, logDeriv_mul (f := fun s : ℂ => (s - q) ^ analyticOrderNatAt f q) (g := h) s
            (pow_ne_zero _ hsq) hhs (by fun_prop) hhas.differentiableAt]
          have e2 : logDeriv (fun s : ℂ => (s - q) ^ analyticOrderNatAt f q) s
              = (analyticOrderNatAt f q : ℂ) / (s - q) := by
            rw [show (fun s : ℂ => (s - q) ^ analyticOrderNatAt f q)
                = (fun x : ℂ => x ^ analyticOrderNatAt f q) ∘ (fun s => s - q) from rfl,
              logDeriv_comp (by fun_prop) (by fun_prop), logDeriv_pow]
            simp
          rw [e2]
        simp only [Pi.sub_apply, hld, hA]
        ring
      have hslope : Tendsto (fun s => (g s - g q) / (s - q)) (𝓝[≠] q) (𝓝 (deriv g q)) := by
        have := hasDerivAt_iff_tendsto_slope.mp hga.differentiableAt.hasDerivAt
        simpa only [slope_fun_def_field] using this
      have hcont : Tendsto (fun s => g s * logDeriv h s) (𝓝[≠] q)
          (𝓝 (g q * logDeriv h q)) := by
        have : ContinuousAt (fun s => g s * logDeriv h s) q := by
          show ContinuousAt (fun s => g s * (deriv h s / h s)) q
          exact hga.continuousAt.mul (hh.deriv.continuousAt.div hh.continuousAt hh0)
        exact this.tendsto.mono_left nhdsWithin_le_nhds
      have hO : (fun s => (analyticOrderNatAt f q : ℂ) * ((g s - g q) / (s - q))
          + g s * logDeriv h s) =O[𝓝[≠] q] (1 : ℂ → ℂ) :=
        ((hslope.const_mul (analyticOrderNatAt f q : ℂ)).add hcont).isBigO_one ℂ
      exact hO.congr' hexp EventuallyEq.rfl
    · ---------------- a pole p := q
      obtain ⟨c, hc, hT⟩ := hpole q hp
      have hqR : q ∈ Rectangle z w := mem_of_mem_nhds (hPint q hp)
      have hga := hg q hqR
      have hA : A q = -((m q : ℂ) * g q) := by simp [A, hp]
      -- the regularisation G := (s − q)^m · f, extended by c at q: analytic at q, G q ≠ 0
      set F : ℂ → ℂ := fun s => (s - q) ^ m q * f s with hF
      set G : ℂ → ℂ := Function.update F q c with hG
      have hGq : G q = c := Function.update_self _ _ _
      have hGF : ∀ s, s ≠ q → G s = F s := fun s hs => Function.update_of_ne hs _ _
      have hPc : ((P : Set ℂ) \ {q})ᶜ ∈ 𝓝 q :=
        (P.finite_toSet.subset Set.sdiff_subset).isClosed.isOpen_compl.mem_nhds (by simp)
      have hnear : ∀ᶠ s in 𝓝[≠] q, s ≠ q ∧ s ∈ Rectangle z w \ (P : Set ℂ) := by
        filter_upwards [mem_nhdsWithin_of_mem_nhds (hPint q hp),
          mem_nhdsWithin_of_mem_nhds hPc, self_mem_nhdsWithin] with s h1 h2 h3
        have h3' : s ≠ q := by simpa using h3
        exact ⟨h3', h1, fun hsP => h2 ⟨hsP, by simpa using h3'⟩⟩
      have hGdiff : ∀ᶠ s in 𝓝[≠] q, DifferentiableAt ℂ G s := by
        filter_upwards [hnear] with s ⟨hsq, hsRP⟩
        have hFs : DifferentiableAt ℂ F s :=
          ((differentiableAt_id.sub_const q).pow _).mul (hf s hsRP).differentiableAt
        refine hFs.congr_of_eventuallyEq ?_
        filter_upwards [isOpen_compl_singleton.mem_nhds hsq] with x hx
        exact hGF x hx
      have hGcont : ContinuousAt G q := by
        rw [hG, continuousAt_update_same]
        exact hT
      have hGan : AnalyticAt ℂ G q :=
        analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt hGdiff hGcont
      have hG0 : G q ≠ 0 := by rwa [hGq]
      have hFne : ∀ᶠ s in 𝓝[≠] q, F s ≠ 0 := hT.eventually_ne hc
      have hGan' : ∀ᶠ s in 𝓝 q, AnalyticAt ℂ G s := hGan.eventually_analyticAt
      have hexp : ∀ᶠ s in 𝓝[≠] q,
          g s * logDeriv G s - (m q : ℂ) * ((g s - g q) / (s - q))
            = ((fun s => g s * logDeriv f s) - fun s => A q / (s - q)) s := by
        filter_upwards [hnear, hFne, mem_nhdsWithin_of_mem_nhds hGan'] with s ⟨hsq, hsRP⟩ hFs hGs
        have hsq' : s - q ≠ 0 := sub_ne_zero.mpr hsq
        have hfs : f s ≠ 0 := fun h => hFs (by simp [hF, h])
        have hfd : DifferentiableAt ℂ f s := (hf s hsRP).differentiableAt
        have hldF : logDeriv F s = (m q : ℂ) / (s - q) + logDeriv f s := by
          rw [hF, logDeriv_mul (f := fun s : ℂ => (s - q) ^ m q) (g := f) s
            (pow_ne_zero _ hsq') hfs (by fun_prop) hfd]
          have e2 : logDeriv (fun s : ℂ => (s - q) ^ m q) s = (m q : ℂ) / (s - q) := by
            rw [show (fun s : ℂ => (s - q) ^ m q) = (fun x : ℂ => x ^ m q) ∘ (fun s => s - q)
                from rfl, logDeriv_comp (by fun_prop) (by fun_prop), logDeriv_pow]
            simp
          rw [e2]
        have hGFs : G =ᶠ[𝓝 s] F := by
          filter_upwards [isOpen_compl_singleton.mem_nhds hsq] with x hx
          exact hGF x hx
        have hldG : logDeriv G s = logDeriv F s := by
          simp only [logDeriv_apply, hGFs.deriv_eq, hGFs.self_of_nhds]
        simp only [Pi.sub_apply, hA, hldG, hldF]
        ring
      have hslope : Tendsto (fun s => (g s - g q) / (s - q)) (𝓝[≠] q) (𝓝 (deriv g q)) := by
        have := hasDerivAt_iff_tendsto_slope.mp hga.differentiableAt.hasDerivAt
        simpa only [slope_fun_def_field] using this
      have hcont : Tendsto (fun s => g s * logDeriv G s) (𝓝[≠] q)
          (𝓝 (g q * logDeriv G q)) := by
        have : ContinuousAt (fun s => g s * logDeriv G s) q := by
          show ContinuousAt (fun s => g s * (deriv G s / G s)) q
          exact hga.continuousAt.mul (hGan.deriv.continuousAt.div hGan.continuousAt hG0)
        exact this.tendsto.mono_left nhdsWithin_le_nhds
      have hO : (fun s => g s * logDeriv G s - (m q : ℂ) * ((g s - g q) / (s - q)))
          =O[𝓝[≠] q] (1 : ℂ → ℂ) :=
        (hcont.sub (hslope.const_mul (m q : ℂ))).isBigO_one ℂ
      exact hO.congr' hexp EventuallyEq.rfl

/-- **Weighted argument principle on a rectangle.** For f, g analytic on a neighbourhood of every
point of the closed rectangle, f nonvanishing on its border, and Z the zero set of f in the
rectangle (as a Finset):  (1/2πi) ∮ g·(f'/f) = Σ_{ρ ∈ Z} ord_ρ(f)·g(ρ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db30df619c414827f45a20b95fd173edd3600ee1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
