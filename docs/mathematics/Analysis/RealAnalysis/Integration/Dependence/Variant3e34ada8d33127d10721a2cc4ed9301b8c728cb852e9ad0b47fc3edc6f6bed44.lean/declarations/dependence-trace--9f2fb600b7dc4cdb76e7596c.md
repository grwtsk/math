# dependence_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "192647ee4b2e7d3959d3e8bb09e974a7200c7616",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 505,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec2d19f2-fa7d-1e9e-9b44-949883e65bbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33c82ae9-031b-6f35-d7b5-723442054d21",
  "kind": "theorem",
  "lexical_name": "dependence_trace",
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
  "slug": "dependence-trace--9f2fb600b7dc4cdb76e7596c",
  "source": {
    "blob": "192647ee4b2e7d3959d3e8bb09e974a7200c7616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 505,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variant3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f2fb600b7dc4cdb76e7596c049e4572c6cfb69e9ba0e82781afb10d6ca05e5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variant3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33c82ae9-031b-6f35-d7b5-723442054d21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dependence_trace (hF : LocalHypsCore cϱ p Fn) {e : ℕ → ℕ → ℂ} (he1 : ∀ r, e r 1 = 0)
    {g : ℕ → ℕ → ℂ} {δv : ℕ → ℝ} (hδ0 : ∀ k, 0 ≤ δv k) (hδ1 : ∀ k, δv k ≤ 1 / 2)
    (hmono : Monotone δv)
    (hexp : ∀ k, k < p.d → ∀ N ∈ Finset.Ioc 0 ⌊p.X⌋₊,
      HasSum (fun r : ℕ => e (r + 1) N * (δv k : ℂ) ^ (r + 1)) (g k N))
    {σ ρ : ℝ} (hσ : 0 ≤ σ) (hρ0 : 0 ≤ ρ) (hρ1 : ρ ≤ 1)
    (hS1 : ∀ r : ℕ, 1 ≤ r → S1 (e r) p.X ≤ σ * ρ ^ r) :
    |∑ k ∈ Finset.range p.d, GentryNu (Pc p.X (g k)) p Fn k k|
      ≤ 2 / Real.log 2 * p.L ^ 2 * σ * ρ := by
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  set Tm : ℕ → ℝ := fun r => ∑ k ∈ Finset.range p.d,
    δv k ^ (r + 1) * GentryNu (Pc p.X (e (r + 1))) p Fn k k with hTm
  have hT : HasSum Tm (∑ k ∈ Finset.range p.d, GentryNu (Pc p.X (g k)) p Fn k k) :=
    hasSum_sum fun k hk => hasSum_gentryNu_Pc hF k k (hexp k (Finset.mem_range.1 hk))
  set Kc : ℝ := 2 * p.L ^ 2 / Real.log 2 * σ with hKc
  have hKc0 : 0 ≤ Kc := by positivity
  set u : ℕ → ℝ := fun r => Kc * ((ρ / 2) ^ (r + 1)) with hu
  -- the bound on each |Tm r|
  have hTu : ∀ r, |Tm r| ≤ u r := by
    intro r
    set c := e (r + 1) with hc
    set w : ℕ → ℝ := fun k => δv k ^ (r + 1) with hw
    have hw0 : ∀ k, 0 ≤ w k := fun k => pow_nonneg (hδ0 k) _
    have hwW : ∀ k, w k ≤ (1 / 2 : ℝ) ^ (r + 1) := fun k => pow_le_pow_left₀ (hδ0 k) (hδ1 k) _
    have hwm : Monotone w := fun a b hab => pow_le_pow_left₀ (hδ0 a) (hmono hab) _
    -- rewrite Tm r with the diagonal formula and swap sums
    have eT : Tm r = 2 * ∑ N ∈ Finset.Ioc 0 ⌊p.X⌋₊, (Real.sqrt N)⁻¹ *
        ∑ k ∈ Finset.range p.d, w k * (Fn.Aphi (Real.log N) *
          ((c N).re * Real.cos (p.tau k * Real.log N) + (c N).im * Real.sin (p.tau k * Real.log N))) := by
      rw [hTm]
      simp only []
      have : ∀ k : ℕ, GentryNu (Pc p.X (e (r + 1))) p Fn k k
          = 2 * ∑ N ∈ Finset.Ioc 0 ⌊p.X⌋₊, (Real.sqrt N)⁻¹ * Fn.Aphi (Real.log N)
            * ((c N).re * Real.cos (p.tau k * Real.log N)
              + (c N).im * Real.sin (p.tau k * Real.log N)) := by
        intro k
        rw [gentryNu_Pc_diag, hc]
        exact Pc_part_eq hF.toCoreW _ _
      simp only [this, Finset.mul_sum]
      conv_lhs => rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun N _ => Finset.sum_congr rfl fun k _ => ?_
      simp only [hw]
      ring
    -- bound per N
    have hN : ∀ N ∈ Finset.Ioc 0 ⌊p.X⌋₊,
        |∑ k ∈ Finset.range p.d, w k * (Fn.Aphi (Real.log N) *
          ((c N).re * Real.cos (p.tau k * Real.log N) + (c N).im * Real.sin (p.tau k * Real.log N)))|
          ≤ ‖c N‖ * (2 * (1 / 2 : ℝ) ^ (r + 1) * (p.L ^ 2 / (2 * Real.log 2))) := by
      intro N hNmem
      rcases Nat.lt_or_ge N 2 with hN2 | hN2
      · have hN1 : N = 1 := by have := (Finset.mem_Ioc.1 hNmem).1; omega
        subst hN1
        have : c 1 = 0 := by rw [hc]; exact he1 _
        simp [this]
      · exact abs_weighted_diag_sum_le hF.toCoreW
          (Real.log_le_log two_pos (by exact_mod_cast hN2)) p.d w hw0 hwW hwm (c N)
    rw [eT, abs_mul, abs_two]
    calc 2 * |∑ N ∈ Finset.Ioc 0 ⌊p.X⌋₊, (Real.sqrt N)⁻¹ *
          ∑ k ∈ Finset.range p.d, w k * (Fn.Aphi (Real.log N) *
            ((c N).re * Real.cos (p.tau k * Real.log N) + (c N).im * Real.sin (p.tau k * Real.log N)))|
        ≤ 2 * ∑ N ∈ Finset.Ioc 0 ⌊p.X⌋₊, (Real.sqrt N)⁻¹ *
            (‖c N‖ * (2 * (1 / 2 : ℝ) ^ (r + 1) * (p.L ^ 2 / (2 * Real.log 2)))) := by
          gcongr
          refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun N hNm => ?_)
          rw [abs_mul, abs_of_nonneg (by positivity : (0:ℝ) ≤ (Real.sqrt N)⁻¹)]
          exact mul_le_mul_of_nonneg_left (hN N hNm) (by positivity)
      _ = (2 * p.L ^ 2 / Real.log 2) * (1 / 2 : ℝ) ^ (r + 1) * S1 c p.X := by
          rw [S1, Finset.mul_sum, Finset.mul_sum]
          refine Finset.sum_congr rfl fun N _ => ?_
          rw [div_eq_mul_inv]
          ring
      _ ≤ (2 * p.L ^ 2 / Real.log 2) * (1 / 2 : ℝ) ^ (r + 1) * (σ * ρ ^ (r + 1)) := by
          gcongr; rw [hc]; exact hS1 (r + 1) (by omega)
      _ = u r := by
          show _ = Kc * (ρ / 2) ^ (r + 1)
          rw [hKc, show ρ / 2 = (1 / 2) * ρ by ring, mul_pow]; ring
  -- summing the geometric majorant
  have hρ2 : ρ / 2 ≤ 1 / 2 := by linarith
  have hρ20 : 0 ≤ ρ / 2 := by positivity
  have hu_has : HasSum u (Kc * ((ρ / 2) * (1 - ρ / 2)⁻¹)) :=
    (hasSum_geom_succ hρ20 (by linarith)).mul_left Kc
  have hu_sum : Summable u := hu_has.summable
  have hsT : Summable (fun r => ‖Tm r‖) :=
    Summable.of_nonneg_of_le (fun _ => norm_nonneg _)
      (fun r => by rw [Real.norm_eq_abs]; exact hTu r) hu_sum
  rw [← hT.tsum_eq]
  calc |∑' r, Tm r| = ‖∑' r, Tm r‖ := (Real.norm_eq_abs _).symm
    _ ≤ ∑' r, ‖Tm r‖ := norm_tsum_le_tsum_norm hsT
    _ ≤ ∑' r, u r :=
        Summable.tsum_le_tsum (fun r => by rw [Real.norm_eq_abs]; exact hTu r) hsT hu_sum
    _ = Kc * ((ρ / 2) * (1 - ρ / 2)⁻¹) := hu_has.tsum_eq
    _ ≤ Kc * (2 * (ρ / 2)) := mul_le_mul_of_nonneg_left (mul_inv_one_sub_le hρ20 hρ2) hKc0
    _ = 2 / Real.log 2 * p.L ^ 2 * σ * ρ := by rw [hKc]; field_simp

end Transfer
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variant3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variant3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `192647ee4b2e7d3959d3e8bb09e974a7200c7616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
