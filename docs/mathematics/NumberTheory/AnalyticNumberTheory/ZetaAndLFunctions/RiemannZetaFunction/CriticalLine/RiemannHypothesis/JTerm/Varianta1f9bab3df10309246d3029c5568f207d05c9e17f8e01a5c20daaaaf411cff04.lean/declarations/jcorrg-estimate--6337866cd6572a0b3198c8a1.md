# JcorrG_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:991d02db-66b0-5922-0214-0f7aa7b3b535",
  "kind": "theorem",
  "lexical_name": "JcorrG_estimate",
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
  "slug": "jcorrg-estimate--6337866cd6572a0b3198c8a1",
  "source": {
    "blob": "21e329e89807b9f3ed7a828eb75c1643d540cedf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6337866cd6572a0b3198c8a1b58b7531cb02228df85ba0fc4018f7edb9e9c339",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991d02db-66b0-5922-0214-0f7aa7b3b535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem JcorrG_estimate {c : ℝ} {dE : ℝ → ℂ} {Lpar : ℝ → ℂ}
    (hdEc : Continuous dE) (hdEb : ∃ CE : ℝ, 0 ≤ CE ∧ ∀ t : ℝ, ‖dE t‖ ≤ CE)
    (hconj : ∀ t : ℝ, t ≠ 0 → conj (dE (-t)) = dE t)
    (hfreezeG : ∃ C T₀ : ℝ, 0 ≤ C ∧ 8 ≤ T₀ ∧ ∀ T : ℝ, T₀ ≤ T → ∀ τ t : ℝ, T ≤ τ → T / 4 ≤ t →
      ‖dE t - DfroG c (Lpar τ) t‖ ≤ C * (|t - τ| + 1) / (T * Real.log T))
    (hunifG : ∃ C T₀ : ℝ, 0 ≤ C ∧ 8 ≤ T₀ ∧ ∀ T : ℝ, T₀ ≤ T → ∀ τ t : ℝ, T ≤ τ →
      ‖DfroG c (Lpar τ) t‖ ≤ C / Real.log T) :
    ∃ K T₀ : ℝ, 0 ≤ K ∧ 8 ≤ T₀ ∧
    ∀ {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
      {T a b W W' : ℝ} (hT : T₀ ≤ T) (ha : T ≤ a) (hb : T ≤ b) (hW : 0 ≤ W) (hW' : 0 ≤ W')
      (hw1 : ∀ t : ℝ, ‖Hfn k ((c:ℂ) + t * I)‖ ≤ W * (cauchyK a t * cauchyK b t))
      (hw2 : ∀ t : ℝ, (|t - a| + |t - b|) * ‖Hfn k ((c:ℂ) + t * I)‖ ≤ W' * (cauchyK a t * cauchyK b t))
      (hw1' : ∀ t : ℝ, ‖Hfn k (1 - (c:ℂ) - t * I)‖ ≤ W * (cauchyK (-a) t * cauchyK (-b) t))
      (hw2' : ∀ t : ℝ, (|t + a| + |t + b|) * ‖Hfn k (1 - (c:ℂ) - t * I)‖ ≤ W' * (cauchyK (-a) t * cauchyK (-b) t))
      {cJ : ℕ → ℂ} (hcs : Summable (fun N : ℕ => ‖cJ N‖ * (N : ℝ) ^ (-c)))
      (hC1 : ∀ t : ℝ, LSeries cJ ((c:ℂ) + t * I) = DfroG c (Lpar ((a + b) / 2)) t)
      (hC1' : ∀ t : ℝ, LSeries (fun N => conj (cJ N)) ((c:ℂ) + t * I) = DfroG c (conj (Lpar ((a + b) / 2))) t),
      ‖JcorrG c dE k - ((∑' N : ℕ, cJ N / ((Real.sqrt N : ℝ) : ℂ) * k (Real.log N))
          + ∑' N : ℕ, conj (cJ N) / ((Real.sqrt N : ℝ) : ℂ) * k (-Real.log N))‖
        ≤ K * ((W + W') / (T * Real.log T) / (4 + (a - b) ^ 2) + W / T ^ 2) := by
  obtain ⟨Cf, Tf, hCf0, hTf8, hfreeze⟩ := hfreezeG
  obtain ⟨Cu, Tu, hCu0, hTu8, hfro⟩ := hunifG
  obtain ⟨CE, hCE0, hCE⟩ := hdEb
  -- constants
  refine ⟨(1 / Real.pi) * (8 * Real.pi * Cf + 16 * Real.pi / 9 * (CE + Cu)), max Tf Tu, by positivity,
    le_trans hTf8 (le_max_left _ _), ?_⟩
  intro k hk hkc T a b W W' hT ha hb hW hW' hw1 hw2 hw1' hw2' cJ hcs hC1 hC1'
  have hTf : Tf ≤ T := le_trans (le_max_left _ _) hT
  have hTu : Tu ≤ T := le_trans (le_max_right _ _) hT
  have hT8 : 8 ≤ T := le_trans hTf8 hTf
  have hT0 : 0 < T := by linarith
  have hlogT1 : 1 ≤ Real.log T := by
    rw [← Real.log_exp 1]
    exact Real.log_le_log (Real.exp_pos 1) (by linarith [Real.exp_one_lt_d9])
  set τs : ℝ := (a + b) / 2 with hτs
  have hτs_ge : T ≤ τs := by rw [hτs]; linarith
  set Λs : ℂ := Lpar τs with hΛs
  -- the two error integrands
  set g₁ : ℝ → ℂ := fun t => dE t - DfroG c Λs t with hg₁
  set g₂ : ℝ → ℂ := fun t => dE t - DfroG c (conj Λs) t with hg₂
  have hcs' : Summable (fun N : ℕ => ‖conj (cJ N)‖ * (N : ℝ) ^ (-c)) := by
    simpa only [Complex.norm_conj] using hcs
  have hD₁c : Continuous (DfroG c Λs) := continuous_DfroG_of c hcs hC1
  have hD₂c : Continuous (DfroG c (conj Λs)) := continuous_DfroG_of c hcs' hC1'
  have hdEEc' : Continuous dE := hdEc
  have hg₁c : Continuous g₁ := hdEEc'.sub hD₁c
  have hg₂c : Continuous g₂ := hdEEc'.sub hD₂c
  -- uniform bounds: ‖gᵢ‖ ≤ CE + Cu
  have hCg : ∀ t, ‖g₁ t‖ ≤ CE + Cu ∧ ‖g₂ t‖ ≤ CE + Cu := by
    intro t
    have h1 := hCE t
    have h2 : ‖DfroG c Λs t‖ ≤ Cu := by
      have := hfro T hTu τs t hτs_ge
      exact this.trans (div_le_self hCu0 hlogT1)
    have h3 : ‖DfroG c (conj Λs) t‖ ≤ Cu := by
      rw [DfroG_conj_neg, Complex.norm_conj]
      have := hfro T hTu τs (-t) hτs_ge
      exact this.trans (div_le_self hCu0 hlogT1)
    exact ⟨(norm_sub_le _ _).trans (add_le_add h1 h2), (norm_sub_le _ _).trans (add_le_add h1 h3)⟩
  -- ε-bounds near the bumps
  set ε : ℝ := Cf / (T * Real.log T) with hε
  have hε0 : 0 ≤ ε := by positivity
  have hgε₁ : ∀ t : ℝ, T / 4 ≤ t → ‖g₁ t‖ ≤ ε * (|t - (a + b) / 2| + 1) := by
    intro t ht
    have := hfreeze T hTf τs t hτs_ge ht
    show ‖dE t - DfroG c Λs t‖ ≤ Cf / (T * Real.log T) * (|t - (a + b) / 2| + 1)
    calc ‖dE t - DfroG c Λs t‖ ≤ Cf * (|t - τs| + 1) / (T * Real.log T) := this
      _ = Cf / (T * Real.log T) * (|t - (a + b) / 2| + 1) := by rw [hτs]; ring
  have hgε₂ : ∀ t : ℝ, t ≤ -(T / 4) → ‖g₂ t‖ ≤ ε * (|t + (a + b) / 2| + 1) := by
    intro t ht
    have := hfreeze T hTf τs (-t) hτs_ge (by linarith)
    show ‖dE t - DfroG c (conj Λs) t‖ ≤ Cf / (T * Real.log T) * (|t + (a + b) / 2| + 1)
    have htne : t ≠ 0 := by intro h0; rw [h0] at ht; linarith
    have e : dE t - DfroG c (conj Λs) t = conj (dE (-t) - DfroG c Λs (-t)) := by
      rw [map_sub, hconj t htne, ← DfroG_conj_neg]
    rw [e, Complex.norm_conj]
    calc ‖dE (-t) - DfroG c Λs (-t)‖ ≤ Cf * (|-t - τs| + 1) / (T * Real.log T) := this
      _ = Cf / (T * Real.log T) * (|t + (a + b) / 2| + 1) := by
          rw [hτs, show -t - (a + b) / 2 = -(t + (a + b) / 2) by ring, abs_neg]; ring
  -- the two core estimates
  obtain ⟨hint₁, hE₁⟩ := entry_core (w := fun t => Hfn k ((c:ℂ) + t * I)) (g := g₁) hT0 ha hb
    (continuous_Hfn_line hk hkc c) hg₁c hε0 (by positivity : (0:ℝ) ≤ CE + Cu) hW hW'
    hw1 hw2 (fun t => (hCg t).1) hgε₁
  have hw2c : Continuous (fun t : ℝ => Hfn k (1 - (c:ℂ) - t * I)) := by
    have : (fun t : ℝ => Hfn k (1 - (c:ℂ) - t * I))
        = (fun t : ℝ => Hfn k (((1 - c : ℝ) : ℂ) + t * I)) ∘ fun t : ℝ => -t := by
      funext t; simp only [Function.comp]; congr 1; push_cast; ring
    rw [this]; exact (continuous_Hfn_line hk hkc (1 - c)).comp continuous_neg
  obtain ⟨hint₂, hE₂⟩ := entry_core_mirror (w := fun t => Hfn k (1 - (c:ℂ) - t * I)) (g := g₂) hT0 ha hb
    hw2c hg₂c hε0 (by positivity : (0:ℝ) ≤ CE + Cu) hW hW' hw1' hw2' (fun t => (hCg t).2) hgε₂
  -- the two main terms via dirichlet_line
  obtain ⟨hintM₁, hM₁⟩ := dirichlet_line hk hkc c cJ hcs
  obtain ⟨hintM₂, hM₂⟩ := dirichlet_line_mirror hk hkc c (fun N => conj (cJ N)) hcs'
  -- assemble: JcorrG c dE k = M₁ + M₂ + (1/2π)(∫w₁g₁ + ∫w₂g₂)
  have hsplit1 : ∀ t : ℝ, Hfn k ((c:ℂ) + t * I) * dE t
      = Hfn k ((c:ℂ) + t * I) * LSeries cJ ((c:ℂ) + t * I)
        + Hfn k ((c:ℂ) + t * I) * g₁ t := by
    intro t; rw [hC1 t, hg₁]; ring
  have hsplit2 : ∀ t : ℝ, Hfn k (1 - (c:ℂ) - t * I) * dE t
      = Hfn k (1 - (c:ℂ) - t * I) * LSeries (fun N => conj (cJ N)) ((c:ℂ) + t * I)
        + Hfn k (1 - (c:ℂ) - t * I) * g₂ t := by
    intro t; rw [hC1' t, hg₂]; ring
  have hJ : JcorrG c dE k = ((∑' N : ℕ, cJ N / ((Real.sqrt N : ℝ) : ℂ) * k (Real.log N))
        + ∑' N : ℕ, conj (cJ N) / ((Real.sqrt N : ℝ) : ℂ) * k (-Real.log N))
      + (1 / (2 * Real.pi) : ℂ) * ((∫ t : ℝ, Hfn k ((c:ℂ) + t * I) * g₁ t)
        + ∫ t : ℝ, Hfn k (1 - (c:ℂ) - t * I) * g₂ t) := by
    unfold JcorrG
    have eHw : ∀ t : ℝ, HwC c k t * dE t
        = (Hfn k ((c:ℂ) + t * I) * LSeries cJ ((c:ℂ) + t * I)
            + Hfn k ((c:ℂ) + t * I) * g₁ t)
          + (Hfn k (1 - (c:ℂ) - t * I) * LSeries (fun N => conj (cJ N)) ((c:ℂ) + t * I)
            + Hfn k (1 - (c:ℂ) - t * I) * g₂ t) := by
      intro t; rw [HwC, add_mul, hsplit1, hsplit2]
    simp_rw [eHw]
    have hA : Integrable (fun t : ℝ => Hfn k ((c:ℂ) + t * I) * LSeries cJ ((c:ℂ) + t * I)
        + Hfn k ((c:ℂ) + t * I) * g₁ t) := hintM₁.add hint₁
    have hB : Integrable (fun t : ℝ => Hfn k (1 - (c:ℂ) - t * I)
        * LSeries (fun N => conj (cJ N)) ((c:ℂ) + t * I)
        + Hfn k (1 - (c:ℂ) - t * I) * g₂ t) := hintM₂.add hint₂
    rw [integral_add hA hB, integral_add hintM₁ hint₁, integral_add hintM₂ hint₂, ← hM₁, ← hM₂]
    ring
  rw [hJ]
  have e2 : ((∑' N : ℕ, cJ N / ((Real.sqrt N : ℝ) : ℂ) * k (Real.log N))
        + ∑' N : ℕ, conj (cJ N) / ((Real.sqrt N : ℝ) : ℂ) * k (-Real.log N))
      + (1 / (2 * Real.pi) : ℂ) * ((∫ t : ℝ, Hfn k ((c:ℂ) + t * I) * g₁ t)
        + ∫ t : ℝ, Hfn k (1 - (c:ℂ) - t * I) * g₂ t)
      - ((∑' N : ℕ, cJ N / ((Real.sqrt N : ℝ) : ℂ) * k (Real.log N))
        + ∑' N : ℕ, conj (cJ N) / ((Real.sqrt N : ℝ) : ℂ) * k (-Real.log N))
      = (1 / (2 * Real.pi) : ℂ) * ((∫ t : ℝ, Hfn k ((c:ℂ) + t * I) * g₁ t)
        + ∫ t : ℝ, Hfn k (1 - (c:ℂ) - t * I) * g₂ t) := by ring
  rw [e2, norm_mul]
  have hπ : ‖(1 / (2 * Real.pi) : ℂ)‖ = 1 / (2 * Real.pi) := by
    rw [show (1 / (2 * Real.pi) : ℂ) = ((1 / (2 * Real.pi) : ℝ) : ℂ) by push_cast; ring,
      Complex.norm_real, Real.norm_eq_abs, abs_of_pos (by positivity)]
  rw [hπ]
  set B : ℝ := ε * (W + W' / 2) * (8 * Real.pi / (4 + (a - b) ^ 2))
    + (CE + Cu) * W * (16 * Real.pi / (9 * T ^ 2)) with hB
  have hsumE : ‖(∫ t : ℝ, Hfn k ((c:ℂ) + t * I) * g₁ t) + ∫ t : ℝ, Hfn k (1 - (c:ℂ) - t * I) * g₂ t‖
      ≤ B + B := (norm_add_le _ _).trans (add_le_add hE₁ hE₂)
  calc 1 / (2 * Real.pi) * ‖(∫ t : ℝ, Hfn k ((c:ℂ) + t * I) * g₁ t)
        + ∫ t : ℝ, Hfn k (1 - (c:ℂ) - t * I) * g₂ t‖
      ≤ 1 / (2 * Real.pi) * (B + B) := mul_le_mul_of_nonneg_left hsumE (by positivity)
    _ = (1 / Real.pi) * B := by ring
    _ ≤ (1 / Real.pi) * (8 * Real.pi * Cf + 16 * Real.pi / 9 * (CE + Cu))
          * ((W + W') / (T * Real.log T) / (4 + (a - b) ^ 2) + W / T ^ 2) := by
        rw [mul_assoc]
        refine mul_le_mul_of_nonneg_left ?_ (by positivity)
        rw [hB, hε]
        have hD : 0 < 4 + (a - b) ^ 2 := by positivity
        have hQ1 : 0 ≤ (W + W') / (T * Real.log T) / (4 + (a - b) ^ 2) := by positivity
        have hQ2 : 0 ≤ W / T ^ 2 := by positivity
        have h1 : Cf / (T * Real.log T) * (W + W' / 2) * (8 * Real.pi / (4 + (a - b) ^ 2))
            ≤ 8 * Real.pi * Cf * ((W + W') / (T * Real.log T) / (4 + (a - b) ^ 2)) := by
          have : W + W' / 2 ≤ W + W' := by linarith
          calc Cf / (T * Real.log T) * (W + W' / 2) * (8 * Real.pi / (4 + (a - b) ^ 2))
              ≤ Cf / (T * Real.log T) * (W + W') * (8 * Real.pi / (4 + (a - b) ^ 2)) := by
                gcongr
            _ = 8 * Real.pi * Cf * ((W + W') / (T * Real.log T) / (4 + (a - b) ^ 2)) := by
                field_simp
        have h2 : (CE + Cu) * W * (16 * Real.pi / (9 * T ^ 2))
            = 16 * Real.pi / 9 * (CE + Cu) * (W / T ^ 2) := by field_simp
        calc Cf / (T * Real.log T) * (W + W' / 2) * (8 * Real.pi / (4 + (a - b) ^ 2))
              + (CE + Cu) * W * (16 * Real.pi / (9 * T ^ 2))
            ≤ 8 * Real.pi * Cf * ((W + W') / (T * Real.log T) / (4 + (a - b) ^ 2))
              + 16 * Real.pi / 9 * (CE + Cu) * (W / T ^ 2) := by rw [h2]; exact add_le_add h1 le_rfl
          _ ≤ (8 * Real.pi * Cf + 16 * Real.pi / 9 * (CE + Cu))
              * ((W + W') / (T * Real.log T) / (4 + (a - b) ^ 2) + W / T ^ 2) := by
              nlinarith [mul_nonneg (by positivity : (0:ℝ) ≤ 8 * Real.pi * Cf) hQ2,
                mul_nonneg (by positivity : (0:ℝ) ≤ 16 * Real.pi / 9 * (CE + Cu)) hQ1]

/-! ## The ξ′ instance: c = 5/4, dE = dEE, Λ⋆ = Lstar(τ⋆) -/

/-- the frozen Dirichlet object on the line 5/4, D(Λ⋆; t) := B(5/4+it)/(Λ⋆ − A(5/4+it)) (= DfroG (5/4)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21e329e89807b9f3ed7a828eb75c1643d540cedf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
