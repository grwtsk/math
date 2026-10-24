# sum_mu_div_sq_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c251157b-1a82-6660-1a06-36f7ca756486",
  "kind": "lemma",
  "lexical_name": "sum_mu_div_sq_isLittleO",
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
  "slug": "sum-mu-div-sq-islittleo--021e5c83afe0d5146efc3726",
  "source": {
    "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2226,
    "line": 2143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:021e5c83afe0d5146efc37268b7f1dfb94223e6fb1fbc5cea67a1e2abe51e18e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c251157b-1a82-6660-1a06-36f7ca756486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2143–2226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_mu_div_sq_isLittleO : (fun N : ℕ ↦ ∑ d ∈ Finset.Icc 1 (Nat.sqrt N), ∑ k ∈ Finset.Icc 1 (N / d^2), (μ k : ℝ)) =o[atTop] (fun N ↦ (N : ℝ)) := by
  have h_sum_rewrite : ∀ N : ℕ, (∑ d ∈ Finset.Icc 1 (Nat.sqrt N), (∑ k ∈ Finset.Icc 1 (N / d^2), (μ k : ℝ))) = (∑ d ∈ Finset.Icc 1 (Nat.sqrt N), (M (N / d^2) : ℝ)) := by
    intro N
    simp only [M]
    refine Finset.sum_congr rfl ?_
    intro x hx
    erw [ Finset.sum_Ico_eq_sub _ ] <;> norm_num [ Finset.sum_range_succ' ];
    rw [ show ⌊ ( N : ℝ ) / x ^ 2⌋₊ = N / x ^ 2 from Nat.floor_eq_iff ( by positivity ) |>.2 ⟨ by rw [ le_div_iff₀ ( by norm_cast; nlinarith [ Finset.mem_Icc.mp hx ] ) ] ; norm_cast; linarith [ Nat.div_mul_le_self N ( x ^ 2 ) ], by rw [ div_lt_iff₀ ( by norm_cast; nlinarith [ Finset.mem_Icc.mp hx ] ) ] ; norm_cast; linarith [ Nat.div_add_mod N ( x ^ 2 ), Nat.mod_lt N ( show x ^ 2 > 0 by nlinarith [ Finset.mem_Icc.mp hx ] ) ] ⟩ ] ; erw [ Finset.sum_Ico_eq_sub _ ] <;> norm_num [ Finset.sum_range_succ' ] ;
  have h_bound : ∀ ε > 0, ∃ N₀ : ℕ, ∀ N ≥ N₀, ∀ d ∈ Finset.Icc 1 (Nat.sqrt N), |M (N / d^2)| ≤ ε * (N / d^2) + N₀ := by
    have h_bound : ∀ ε > 0, ∃ C : ℝ, ∀ x : ℝ, 1 ≤ x → |M x| ≤ ε * x + C := by
      have h_bound : ∀ ε > 0, ∃ C : ℝ, ∀ x : ℝ, 1 ≤ x → |M x| ≤ ε * x + C := by
        intro ε hε
        have := M_isLittleO'
        rw [ Asymptotics.isLittleO_iff ] at this;
        norm_num +zetaDelta at *;
        obtain ⟨ a, ha ⟩ := this hε;
        obtain ⟨C, hC⟩ : ∃ C : ℝ, ∀ x ∈ Set.Icc 1 a, |M x| ≤ C := by
          have h_bounded : BddAbove (Set.image (fun x => |M x|) (Set.Icc 1 a)) := by
            have h_bounded : BddAbove (Set.image (fun x => |∑ n ∈ Finset.Iic ⌊x⌋₊, (μ n : ℝ)|) (Set.Icc 1 a)) := by
              have h_finite : Set.Finite (Set.image (fun x => ⌊x⌋₊) (Set.Icc 1 a)) := by
                exact Set.finite_iff_bddAbove.mpr ⟨ ⌊a⌋₊, Set.forall_mem_image.mpr fun x hx => Nat.floor_mono hx.2 ⟩
              have h_bounded : BddAbove (Set.image (fun n : ℕ => |∑ k ∈ Finset.Iic n, (μ k : ℝ)|) (Set.image (fun x => ⌊x⌋₊) (Set.Icc 1 a))) := by
                exact Set.Finite.bddAbove <| h_finite.image _;
              exact ⟨ h_bounded.choose, Set.forall_mem_image.2 fun x hx => h_bounded.choose_spec <| Set.mem_image_of_mem _ <| Set.mem_image_of_mem _ hx ⟩;
            convert h_bounded using 1;
          exact ⟨ h_bounded.choose, fun x hx => h_bounded.choose_spec ⟨ x, hx, rfl ⟩ ⟩;
        exact ⟨ Max.max C 0, fun x hx => if hx' : x ≤ a then le_trans ( hC x ⟨ hx, hx' ⟩ ) ( le_max_left _ _ ) |> le_trans <| le_add_of_nonneg_left <| by positivity else le_trans ( ha x <| le_of_not_ge hx' ) <| by rw [ abs_of_nonneg <| by linarith ] ; exact le_add_of_nonneg_right <| by positivity ⟩;
      assumption;
    intro ε hε
    obtain ⟨C, hC⟩ := h_bound ε hε
    refine ⟨⌈C⌉₊ + 1, ?_⟩
    intro N hN d hd
    specialize hC (N / d ^ 2)
    rcases eq_or_ne d 0 with rfl | hd0
    · simp_all +decide only [gt_iff_lt, ge_iff_le, mem_Icc, _root_.zero_le, and_true]
    · simp_all +decide only [gt_iff_lt, ge_iff_le, mem_Icc, ne_eq, cast_add, cast_one]
      exact
        le_trans
            (hC <|
              by
                rw [le_div_iff₀ <| by positivity]
                nlinarith [show (d : ℝ) ^ 2 ≤ N by norm_cast; nlinarith [Nat.sqrt_le N]])
          (by linarith [Nat.le_ceil C])
  have h_sum_bound : ∀ ε > 0, ∃ N₀ : ℕ, ∀ N ≥ N₀, |∑ d ∈ Finset.Icc 1 (Nat.sqrt N), M (N / d^2)| ≤ ε * N * (∑' k : ℕ, (1 : ℝ) / (k^2)) + N₀ * Nat.sqrt N := by
    intros ε hε_pos
    obtain ⟨N₀, hN₀⟩ := h_bound ε hε_pos
    use N₀
    intro N hN
    have h_sum_bound : |∑ d ∈ Finset.Icc 1 (Nat.sqrt N), M (N / d^2)| ≤ ∑ d ∈ Finset.Icc 1 (Nat.sqrt N), (ε * (N / d^2) + N₀) := by
      exact le_trans ( Finset.abs_sum_le_sum_abs _ _ ) ( Finset.sum_le_sum fun x hx => hN₀ N hN x hx );
    refine le_trans h_sum_bound ?_;
    norm_num [ Finset.sum_add_distrib, Finset.mul_sum _ _ _, mul_assoc, mul_comm, mul_left_comm, div_eq_mul_inv ];
    rw [ ← Finset.mul_sum _ _ _, ← Finset.mul_sum _ _ _ ];
    exact mul_le_mul_of_nonneg_left ( mul_le_mul_of_nonneg_left ( Summable.sum_le_tsum ( Finset.Icc 1 N.sqrt ) ( fun _ _ => by positivity ) ( by simp ) ) ( Nat.cast_nonneg _ ) ) hε_pos.le;
  rw [ Asymptotics.isLittleO_iff ];
  intro c hc
  obtain ⟨ε, hε_pos, hε⟩ : ∃ ε > 0, ε * (∑' k : ℕ, (1 : ℝ) / (k^2)) < c / 2 := by
    exact ⟨ ( c / 2 ) / ( ∑' k : ℕ, 1 / ( k : ℝ ) ^ 2 + 1 ), div_pos ( half_pos hc ) ( add_pos_of_nonneg_of_pos ( tsum_nonneg fun _ => by positivity ) zero_lt_one ), by rw [ div_mul_eq_mul_div, div_lt_iff₀ ] <;> nlinarith [ show 0 ≤ ∑' k : ℕ, 1 / ( k : ℝ ) ^ 2 from tsum_nonneg fun _ => by positivity ] ⟩;
  obtain ⟨ N₀, hN₀ ⟩ := h_sum_bound ε hε_pos;
  obtain ⟨N₁, hN₁⟩ : ∃ N₁ : ℕ, ∀ N ≥ N₁, N₀ * Nat.sqrt N ≤ (c / 2) * N := by
    have h_sqrt_growth : ∃ N₁ : ℕ, ∀ N ≥ N₁, (N₀ : ℝ) * Real.sqrt N ≤ (c / 2) * N := by
      have h_sqrt_bound : Filter.Tendsto (fun N : ℕ => (N₀ : ℝ) * Real.sqrt N / N) Filter.atTop (nhds 0) := by
        simpa [ mul_div_assoc, Real.sqrt_div_self ] using tendsto_const_nhds.mul ( tendsto_inv_atTop_nhds_zero_nat.sqrt )
      exact Filter.eventually_atTop.mp ( h_sqrt_bound.eventually ( gt_mem_nhds <| show 0 < c / 2 by positivity ) ) |> fun ⟨ N₁, hN₁ ⟩ ↦ ⟨ N₁ + 1, fun N hN ↦ by have := hN₁ N ( by linarith ) ; rw [ div_lt_iff₀ ] at this <;> nlinarith [ show ( N : ℝ ) ≥ N₁ + 1 by exact_mod_cast hN ] ⟩;
    exact ⟨ h_sqrt_growth.choose, fun N hN => le_trans ( mul_le_mul_of_nonneg_left ( Real.le_sqrt_of_sq_le <| mod_cast Nat.sqrt_le' _ ) <| Nat.cast_nonneg _ ) <| h_sqrt_growth.choose_spec N hN ⟩;
  filter_upwards [ Filter.eventually_ge_atTop N₀, Filter.eventually_ge_atTop N₁ ] with N hN₀' hN₁' using by rw [ Real.norm_of_nonneg ( Nat.cast_nonneg _ ) ] ; rw [ h_sum_rewrite ] ; exact le_trans ( hN₀ _ hN₀' ) ( by nlinarith [ hN₁ _ hN₁', show ( N : ℝ ) ≥ 0 by positivity ] ) ;


@[blueprint
  "lambda-pnt"
  (statement := /-- We have $\sum_{n \leq x} \lambda(n) = o(x)$. -/)
  (proof := /--
  From the identity
    $$ \lambda(n) = \sum_{d^2|n} \mu(n/d^2)$$
  and summing, we have
  $$ \sum_{n \leq x} \lambda(n) = \sum_{d \leq \sqrt{x}} \sum_{n \leq x/d^2} \mu(n).$$
  For any $\eps>0$, we have from Proposition \ref{mu-pnt} that
  $$ \sum_{n \leq x/d^2} \mu(n) = O(\eps x/d^2) + O_\eps(1)$$
  and hence on summing in $d$
  $$ \sum_{n \leq x} \lambda(n) = O(\eps x) + O_\eps(x^{1/2}).$$
  Sending $\eps \to 0$ we obtain the claim.
  -/)
  (proofUses := ["mu-pnt"])
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean#L2143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
