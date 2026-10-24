# mu_pnt_alt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:202fa2bb-96d2-7440-a571-bdbb182455fa",
  "kind": "theorem",
  "lexical_name": "mu_pnt_alt",
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
  "slug": "mu-pnt-alt--cef63d73c593af03299ad864",
  "source": {
    "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2460,
    "line": 2411,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cef63d73c593af03299ad8640eaa6b4e174dd66f2947fd4082f64b1c69b5e0e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:202fa2bb-96d2-7440-a571-bdbb182455fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2411–2460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mu_pnt_alt : (fun x : ℝ ↦ ∑ n ∈ range ⌊x⌋₊, (μ n : ℝ) / n) =o[atTop] fun _ ↦ (1 : ℝ) := by
  rw [Asymptotics.isLittleO_iff_tendsto'] <;> norm_num
  have h_sum_zero : Filter.Tendsto (fun x : ℝ => ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (μ n : ℝ) / n) Filter.atTop (nhds 0) := by
    set S : ℝ → ℝ := fun y => ∑ n ∈ Finset.Icc 1 ⌊y⌋₊, (μ n : ℝ) / n
    have h_bound : ∀ K : ℕ, 0 < K → ∀ x : ℝ, 1 ≤ x → |S (x / K)| ≤ 1 / K + 1 / x + |∑ n ∈ Finset.Ioc ⌊x / K⌋₊ ⌊x⌋₊, (μ n : ℝ) * (⌊x / (n : ℝ)⌋ : ℝ)| / x := by
      intros K hK x hx
      have h_approx : |x * S (x / K) - 1| ≤ x / K + |∑ n ∈ Finset.Ioc ⌊x / K⌋₊ ⌊x⌋₊, (μ n : ℝ) * (⌊x / (n : ℝ)⌋ : ℝ)| := by
        convert sum_mobius_div_approx x K hK hx using 1
      rw [abs_le] at *
      ring_nf at *
      constructor <;> nlinarith [inv_pos.2 (by positivity : 0 < x), mul_inv_cancel₀ (by positivity : x ≠ 0), abs_nonneg (∑ n ∈ Finset.Ioc ⌊ (K : ℝ) ⁻¹ * x⌋₊ ⌊x⌋₊, (μ n : ℝ) * ⌊x * (n : ℝ) ⁻¹⌋)]
    have h_tail_zero : ∀ K : ℕ, 0 < K → Filter.Tendsto (fun x : ℝ => |∑ n ∈ Finset.Ioc ⌊x / K⌋₊ ⌊x⌋₊, (μ n : ℝ) * (⌊x / (n : ℝ)⌋ : ℝ)| / x) Filter.atTop (nhds 0) := by
      intro K hK
      have h_tail_zero : Filter.Tendsto (fun x : ℝ => |∑ n ∈ Finset.Ioc ⌊x / K⌋₊ ⌊x⌋₊, (μ n : ℝ) * (⌊x / (n : ℝ)⌋ : ℝ)| / x) Filter.atTop (nhds 0) := by
        have := sum_mobius_floor_tail_isLittleO K hK
        rw [Asymptotics.isLittleO_iff_tendsto'] at this
        · simpa [abs_div] using this.abs.congr' (by filter_upwards [Filter.eventually_gt_atTop 0] with x hx using by rw [abs_div, abs_of_nonneg hx.le])
        · filter_upwards [Filter.eventually_gt_atTop 0] with x hx hx' using absurd hx' hx.ne'
      convert h_tail_zero using 1
    have h_eps : ∀ ϵ > 0, ∃ Y : ℝ, ∀ y ≥ Y, |S y| < ϵ := by
      intros ϵ hϵ_pos
      obtain ⟨K, hK_pos, hK⟩ : ∃ K : ℕ, 0 < K ∧ 1 / (K : ℝ) < ϵ / 3 := by
        exact ⟨⌊ϵ⁻¹ * 3⌋₊ + 1, Nat.succ_pos _, by rw [div_lt_iff₀] <;> push_cast <;> nlinarith [Nat.lt_floor_add_one (ϵ⁻¹ * 3), mul_inv_cancel₀ hϵ_pos.ne']⟩
      obtain ⟨Y, hY⟩ : ∃ Y : ℝ, ∀ x ≥ Y, |S (x / K)| < ϵ := by
        have h_tail_zero : Filter.Tendsto (fun x : ℝ => 1 / (K : ℝ) + 1 / x + |∑ n ∈ Finset.Ioc ⌊x / K⌋₊ ⌊x⌋₊, (μ n : ℝ) * (⌊x / (n : ℝ)⌋ : ℝ)| / x) Filter.atTop (nhds (1 / (K : ℝ))) := by
          simpa using Filter.Tendsto.add (tendsto_const_nhds.add (tendsto_inv_atTop_zero)) (h_tail_zero K hK_pos)
        exact Filter.eventually_atTop.mp (h_tail_zero.eventually (gt_mem_nhds <| by linarith)) |> fun ⟨Y, hY⟩ ↦ ⟨Max.max Y 1, fun x hx ↦ lt_of_le_of_lt (h_bound K hK_pos x <| le_trans (le_max_right _ _) hx) <| hY x <| le_trans (le_max_left _ _) hx⟩
      use Y / K; intros y hy; specialize hY (y * K) (by nlinarith [show (K : ℝ) ≥ 1 by norm_cast, div_mul_cancel₀ Y (by positivity : (K : ℝ) ≠ 0)]) ; simp_all +decide [ne_of_gt]
    exact Metric.tendsto_atTop.mpr fun ε hε => by simpa using h_eps ε hε
  have h_sum_zero : Filter.Tendsto (fun x : ℝ => ∑ n ∈ Finset.range (⌊x⌋₊ + 1), (μ n : ℝ) / n) Filter.atTop (nhds 0) := by
    convert h_sum_zero using 2 ; erw [Finset.sum_Ico_eq_sub _ _] <;> norm_num [Finset.sum_range_succ']
  simpa [Finset.sum_range_succ] using h_sum_zero.sub (show Filter.Tendsto (fun x : ℝ => (μ ⌊x⌋₊ : ℝ) / ⌊x⌋₊) Filter.atTop (nhds 0) from tendsto_zero_iff_norm_tendsto_zero.mpr <| squeeze_zero (fun _ => by positivity) (fun x => by simpa using div_le_div_of_nonneg_right (show |(μ ⌊x⌋₊ : ℝ)| ≤ 1 from mod_cast by { unfold ArithmeticFunction.moebius; aesop }) <| Nat.cast_nonneg _) <| tendsto_inv_atTop_zero.comp <| tendsto_natCast_atTop_atTop.comp <| tendsto_nat_floor_atTop)


blueprint_comment /--
\section{Consequences of the PNT in arithmetic progressions}
-/

@[blueprint
  "chebyshev-asymptotic-pnt"
  (title := "Prime number theorem in AP")
  (statement := /--
  If $a\ (q)$ is a primitive residue class, then one has
  $$ \sum_{p \leq x: p = a\ (q)} \log p = \frac{x}{\phi(q)} + o(x).$$
  -/)
  (proof := /--
  This is a routine modification of the proof of Theorem \ref{chebyshev-asymptotic}.
  -/)
  (proofUses := ["chebyshev-asymptotic"])
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean#L2411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
