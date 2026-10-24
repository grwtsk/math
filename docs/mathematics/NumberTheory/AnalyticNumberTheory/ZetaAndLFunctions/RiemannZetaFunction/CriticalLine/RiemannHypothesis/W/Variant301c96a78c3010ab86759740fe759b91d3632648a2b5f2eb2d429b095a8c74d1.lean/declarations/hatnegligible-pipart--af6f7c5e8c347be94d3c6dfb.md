# hatNegligible_piPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "812c26bf4f3b41e667569f13aaee85f1df82df1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4151534-6fc7-e568-5b78-7dbc8518f402",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2eb0c132-85d6-a1ef-852c-7f57ac324eb9",
  "kind": "theorem",
  "lexical_name": "hatNegligible_piPart",
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
  "slug": "hatnegligible-pipart--af6f7c5e8c347be94d3c6dfb",
  "source": {
    "blob": "812c26bf4f3b41e667569f13aaee85f1df82df1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 212,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af6f7c5e8c347be94d3c6dfb01234ac9087d8d5b4ec796fe147280818f41e00c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2eb0c132-85d6-a1ef-852c-7f57ac324eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hatNegligible_piPart (Z : ZeroConfig) (Pf : ℝ → Params) (c : ℝ → ℕ → ℂ)
    (P : Params) (hP : P.Valid) (hPf : ∀ T, (Pf T).lam = P.lam ∧ (Pf T).w = P.w)
    {cϱ : ℝ} (hcore : ∃ T₁ : ℝ, ∀ T : ℝ, T₁ ≤ T → LocalHypsCore cϱ ((Pf T).toSetting T) ((Pf T).localFun T))
    (hΓ : GammaFacts)
    (ha : ∃ a₀ : ℝ, 0 < a₀ ∧ ∀ᶠ T in atTop, a₀ ≤ (Pf T).a T)
    (hR : RiemannVonMangoldt Z) :
    HatNegligible Z Pf (fun T => (Pf T).GpCW T 2 (c T) - (Pf T).GpC T (c T)) := by
  obtain ⟨T₁, hcore⟩ := hcore
  obtain ⟨a₀, ha₀, ha⟩ := ha
  intro η hη
  have hπ := Real.pi_pos
  set K : ℝ := 8 + 2 * (cϱ / P.w) ^ 2 with hK
  have hK0 : 0 < K := by positivity
  -- the two constants: |tr D̂| ≤ κ₁ √X,  frobSq D̂ ≤ κ₂² X
  set κ₁ : ℝ := 6 + 12 * K / (2 * π * a₀) with hκ₁
  set κ₂ : ℝ := 6 + 12 * K / (2 * π * a₀) with hκ₂
  have hκ0 : 0 < κ₁ := by positivity
  have hLtop := Assembly.tendsto_L_atTop P hP.lam_pos
  filter_upwards [eventually_ge_atTop T₁, eventually_ge_atTop (2:ℝ), ha, Assembly.eventually_N_ge Z hR,
    Assembly.eventually_one_le_l, hLtop.eventually_ge_atTop 1,
    eventually_ge_atTop ((4 * π * κ₁ / η) ^ 2),
    Assembly.tendsto_l_atTop.eventually_ge_atTop (4 * π * κ₂ ^ 2 / η ^ 2)]
    with T hT₁ hT2 haT hN hl1 hL1 hTbig hlbig
  set P' := Pf T with hP'
  set p := P'.toSetting T with hp
  set Fn := P'.localFun T with hFn
  have hF : LocalHypsCore cϱ p Fn := hcore T hT₁
  have hT : 0 < T := by linarith
  have hLf : P'.L T = P.L T := fam_L hPf T
  have hXf : P'.X T = P.X T := fam_X hPf T
  have hwf : P'.w = P.w := (hPf T).2
  have hL0 : 0 < P.L T := by linarith
  have hh0 : 0 ≤ P'.hgrid T := by unfold Params.hgrid; rw [hLf]; positivity
  have hX0 : 0 < P.X T := by unfold Params.X; exact Real.exp_pos _
  have hXT : P.X T ≤ T := by
    have h1 : P.X T ≤ Real.exp (l T) := by
      unfold Params.X Params.L
      exact Real.exp_le_exp.2 (by nlinarith [hP.lam_le_one])
    rw [l, Real.exp_log (by positivity)] at h1
    have : T / (2 * π) ≤ T := div_le_self hT.le (by linarith [Real.pi_gt_three])
    linarith
  have haT0 : 0 < P'.a T := ha₀.trans_le haT
  have haL : 0 < P'.a T * P'.L T ^ 2 := by rw [hLf]; positivity
  -- entry bound (in the abstract scalars p.X = X, p.L = L, Fn.a = a, p.w = w)
  have eX : p.X = P.X T := hXf
  have eL : p.L = P.L T := hLf
  have ew : p.w = P.w := hwf
  set Bπ : ℝ := 6 * Real.sqrt p.X / T * (2 * π * Fn.a * p.L)
    + 12 * Real.sqrt p.X / T ^ 2 * (8 + 2 * (cϱ / p.w) ^ 2) with hBπ
  have hBπ0 : 0 ≤ Bπ := by
    have : 0 ≤ Fn.a := haT0.le
    have : 0 < p.L := by rw [eL]; exact hL0
    positivity
  have hentry : ∀ k l' : Fin (P'.d T), ‖(P'.GpCW T 2 (c T) - P'.GpC T (c T)) k l'‖ ≤ Bπ := by
    intro k l'
    rw [GpCW_two_sub_GpC_apply P' T hΓ hF (by rw [hXf]; exact hX0) hT hh0 (c T) k l',
      Complex.norm_real, Real.norm_eq_abs]
    have hk : T ≤ p.tau k := tau_ge_T P' T hh0
    have hl : T ≤ p.tau l' := tau_ge_T P' T hh0
    exact abs_gentryNu_PiX_le hF hT2 hk hl
  have hBπ_eval : (P'.a T * P'.L T ^ 2)⁻¹ * ((P.L T * T / (2 * π)) * Bπ)
      = 6 * Real.sqrt (P.X T) + 12 * K * Real.sqrt (P.X T) / (2 * π * P'.a T * (P.L T * T)) := by
    rw [hBπ, eX, eL, ew, ← hK, hLf]
    have : Fn.a = P'.a T := rfl
    rw [this]
    field_simp
  constructor
  · -- trace: (aL²)⁻¹ · d · Bπ ≤ κ₁ √X ≤ η N
    rw [rtrace_hat', abs_mul, abs_of_pos (inv_pos.2 haL)]
    have htr : |rtrace (P'.GpCW T 2 (c T) - P'.GpC T (c T))| ≤ (P'.d T : ℝ) * Bπ := by
      refine (Transfer.abs_rtrace_le_sum_norm_diag _).trans ?_
      calc ∑ k : Fin (P'.d T), ‖(P'.GpCW T 2 (c T) - P'.GpC T (c T)) k k‖
          ≤ ∑ _k : Fin (P'.d T), Bπ := Finset.sum_le_sum fun k _ => hentry k k
        _ = (P'.d T : ℝ) * Bπ := by simp
    have hdle : (P'.d T : ℝ) ≤ P.L T * T / (2 * π) := by
      have := d_le P' T (by rw [hLf]; positivity); rwa [hLf] at this
    have hsqT : 4 * π * κ₁ / η ≤ Real.sqrt T := by
      calc 4 * π * κ₁ / η = Real.sqrt ((4 * π * κ₁ / η) ^ 2) := (Real.sqrt_sq (by positivity)).symm
        _ ≤ Real.sqrt T := Real.sqrt_le_sqrt hTbig
    calc (P'.a T * P'.L T ^ 2)⁻¹ * |rtrace (P'.GpCW T 2 (c T) - P'.GpC T (c T))|
        ≤ (P'.a T * P'.L T ^ 2)⁻¹ * ((P.L T * T / (2 * π)) * Bπ) := by
          refine mul_le_mul_of_nonneg_left (htr.trans ?_) (inv_nonneg.2 haL.le)
          exact mul_le_mul_of_nonneg_right hdle hBπ0
      _ = 6 * Real.sqrt (P.X T) + 12 * K * Real.sqrt (P.X T) / (2 * π * P'.a T * (P.L T * T)) := hBπ_eval
      _ ≤ 6 * Real.sqrt (P.X T) + 12 * K * Real.sqrt (P.X T) / (2 * π * a₀ * (1 * 1)) := by
          gcongr
          · linarith
      _ = κ₁ * Real.sqrt (P.X T) := by rw [hκ₁]; ring
      _ ≤ κ₁ * Real.sqrt T := by gcongr
      _ = η / (4 * π) * (4 * π * κ₁ / η) * Real.sqrt T := by field_simp
      _ ≤ η / (4 * π) * Real.sqrt T * Real.sqrt T := by gcongr
      _ = η * (T / (4 * π)) := by rw [mul_assoc, Real.mul_self_sqrt hT.le]; ring
      _ ≤ η * (T * l T / (4 * π)) := by
          gcongr; exact le_mul_of_one_le_right hT.le hl1
      _ ≤ η * (Z.N T (2 * T) : ℝ) := by gcongr
  · -- Frobenius: (aL²)⁻² d² Bπ² ≤ κ₂² X ≤ η² N
    rw [frobSq_hat']
    have hfr : frobSq (P'.GpCW T 2 (c T) - P'.GpC T (c T)) ≤ (P'.d T : ℝ) ^ 2 * Bπ ^ 2 := by
      refine (Transfer.frobSq_le_of_norm_le _ (fun _ _ => Bπ) hentry).trans ?_
      simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
      exact le_of_eq (by ring)
    have hdle : (P'.d T : ℝ) ≤ P.L T * T / (2 * π) := by
      have := d_le P' T (by rw [hLf]; positivity); rwa [hLf] at this
    have hd0 : (0:ℝ) ≤ (P'.d T : ℝ) := Nat.cast_nonneg _
    have key : (P'.a T * P'.L T ^ 2)⁻¹ * ((P'.d T : ℝ) * Bπ) ≤ κ₂ * Real.sqrt (P.X T) := by
      calc (P'.a T * P'.L T ^ 2)⁻¹ * ((P'.d T : ℝ) * Bπ)
          ≤ (P'.a T * P'.L T ^ 2)⁻¹ * ((P.L T * T / (2 * π)) * Bπ) := by
            refine mul_le_mul_of_nonneg_left ?_ (inv_nonneg.2 haL.le)
            exact mul_le_mul_of_nonneg_right hdle hBπ0
        _ = 6 * Real.sqrt (P.X T) + 12 * K * Real.sqrt (P.X T) / (2 * π * P'.a T * (P.L T * T)) := hBπ_eval
        _ ≤ 6 * Real.sqrt (P.X T) + 12 * K * Real.sqrt (P.X T) / (2 * π * a₀ * (1 * 1)) := by
            gcongr
            · linarith
        _ = κ₂ * Real.sqrt (P.X T) := by rw [hκ₂]; ring
    have key0 : 0 ≤ (P'.a T * P'.L T ^ 2)⁻¹ * ((P'.d T : ℝ) * Bπ) := by positivity
    calc ((P'.a T * P'.L T ^ 2)⁻¹) ^ 2 * frobSq (P'.GpCW T 2 (c T) - P'.GpC T (c T))
        ≤ ((P'.a T * P'.L T ^ 2)⁻¹) ^ 2 * ((P'.d T : ℝ) ^ 2 * Bπ ^ 2) :=
          mul_le_mul_of_nonneg_left hfr (sq_nonneg _)
      _ = ((P'.a T * P'.L T ^ 2)⁻¹ * ((P'.d T : ℝ) * Bπ)) ^ 2 := by ring
      _ ≤ (κ₂ * Real.sqrt (P.X T)) ^ 2 := pow_le_pow_left₀ key0 key 2
      _ = κ₂ ^ 2 * P.X T := by rw [mul_pow, Real.sq_sqrt hX0.le]
      _ ≤ κ₂ ^ 2 * T := by gcongr
      _ = η ^ 2 / (4 * π) * (4 * π * κ₂ ^ 2 / η ^ 2) * T := by field_simp
      _ ≤ η ^ 2 / (4 * π) * l T * T := by gcongr
      _ = η ^ 2 * (T * l T / (4 * π)) := by ring
      _ ≤ η ^ 2 * (Z.N T (2 * T) : ℝ) := by gcongr

/-- XiTraceTransfer Z Pf F from the W explicit formula WEF (main term M^𝒵, pole weight 2,
real base) + the Z′ re-expansion + the PP bound.  Instantiate at Z := wZeros hZ hs, F := wCoeffFamily. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `812c26bf4f3b41e667569f13aaee85f1df82df1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
