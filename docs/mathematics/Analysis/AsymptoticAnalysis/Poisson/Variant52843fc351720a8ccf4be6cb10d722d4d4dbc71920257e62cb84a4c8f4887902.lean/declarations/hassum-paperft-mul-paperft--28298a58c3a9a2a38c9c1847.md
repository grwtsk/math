# hasSum_paperFT_mul_paperFT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eae553b-88de-2589-994c-b353405ae65b",
  "kind": "theorem",
  "lexical_name": "hasSum_paperFT_mul_paperFT",
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
  "slug": "hassum-paperft-mul-paperft--28298a58c3a9a2a38c9c1847",
  "source": {
    "blob": "7f5e5f7cf935d55f2cda540b3738e277f8a2b7a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 271,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28298a58c3a9a2a38c9c18478ea1a984d9303ac2f9d14f6feb323e30faba9a52",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eae553b-88de-2589-994c-b353405ae65b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_paperFT_mul_paperFT {φ : ℝ → ℝ} {L : ℝ} (hL : 0 < L) (hφc : Continuous φ)
    (hsupp : ∀ u, L / 2 ≤ |u| → φ u = 0) (heven : ∀ u, φ (-u) = φ u)
    (hdecay : ∃ C, ∀ s : ℝ, ‖paperFT (fun u => (φ u : ℂ)) s‖ * (1 + s ^ 2) ≤ C)
    (T τ τ' : ℝ) :
    HasSum (fun k : ℤ => paperFT (fun u => (φ u : ℂ)) ((τ - (T + k * (2 * π / L)) : ℝ) : ℂ)
                        * paperFT (fun u => (φ u : ℂ)) ((τ' - (T + k * (2 * π / L)) : ℝ) : ℂ))
      (L * paperFT (fun u => ((φ u ^ 2 : ℝ) : ℂ)) ((τ - τ' : ℝ) : ℂ)) := by
  obtain ⟨C, hC⟩ := hdecay
  set G := Gaux φ L T τ τ' with hG
  have hGc : Continuous G := Gaux_continuous hL hφc hsupp
  -- G has compact support, hence is O(|x|^{-2})
  have hGO : G =O[cocompact ℝ] fun x : ℝ => |x| ^ (-2 : ℝ) := by
    refine IsBigO.of_bound 0 ?_
    have hev : ∀ᶠ x : ℝ in cocompact ℝ, (1 : ℝ) ≤ ‖x‖ :=
      tendsto_norm_cocompact_atTop.eventually (eventually_ge_atTop _)
    filter_upwards [hev] with x hx
    rw [hG, Gaux_eq_zero hL hsupp (by simpa using hx)]
    simp
  -- decay of 𝓕 G
  have hφhat_bdd : ∀ s : ℝ, ‖paperFT (fun u => (φ u : ℂ)) s‖ ≤ C := by
    intro s
    have := hC s
    have h1 : ‖paperFT (fun u => (φ u : ℂ)) s‖ * 1 ≤ ‖paperFT (fun u => (φ u : ℂ)) s‖ * (1 + s ^ 2) := by
      gcongr; nlinarith
    linarith
  have hC0 : 0 ≤ C := le_trans (norm_nonneg _) (hφhat_bdd 0)
  have hFO : 𝓕 G =O[cocompact ℝ] fun x : ℝ => |x| ^ (-2 : ℝ) := by
    apply isBigO_of_decay (c := τ - T) (h := 2 * π / L) (C := C * C) (by positivity)
    intro w
    rw [hG, fourier_Gaux hL hφc hsupp w, norm_mul]
    have e1 : τ - T - w * (2 * π / L) = τ - (T + w * (2 * π / L)) := by ring
    rw [e1]
    calc ‖paperFT (fun u => (φ u : ℂ)) ↑(τ - (T + w * (2 * π / L)))‖
          * ‖paperFT (fun u => (φ u : ℂ)) ↑(τ' - (T + w * (2 * π / L)))‖
          * (1 + (τ - (T + w * (2 * π / L))) ^ 2)
        = (‖paperFT (fun u => (φ u : ℂ)) ↑(τ - (T + w * (2 * π / L)))‖
            * (1 + (τ - (T + w * (2 * π / L))) ^ 2))
          * ‖paperFT (fun u => (φ u : ℂ)) ↑(τ' - (T + w * (2 * π / L)))‖ := by ring
      _ ≤ C * C := by
        apply mul_le_mul (hC _) (hφhat_bdd _) (norm_nonneg _) hC0
  have hsum : Summable fun n : ℤ => 𝓕 G n :=
    summable_of_isBigO (Real.summable_abs_int_rpow one_lt_two)
      (hFO.comp_tendsto Int.tendsto_coe_cofinite)
  -- Poisson summation at x = 0
  have key := Real.tsum_eq_tsum_fourier_of_rpow_decay_of_summable hGc one_lt_two hGO hsum 0
  have lhs : ∑' n : ℤ, G (0 + n) = G 0 := by
    rw [tsum_eq_single 0]
    · simp
    · intro n hn
      rw [zero_add, hG, Gaux_eq_zero hL hsupp]
      rw [← Int.cast_abs]
      exact_mod_cast Int.one_le_abs hn
  have rhs : ∑' n : ℤ, 𝓕 G n * fourier n ((0 : ℝ) : UnitAddCircle) = ∑' n : ℤ, 𝓕 G n := by
    congr 1 with n
    rw [fourier_coe_apply]
    simp
  rw [lhs, rhs] at key
  -- conclude
  have hs : HasSum (fun n : ℤ => 𝓕 G n) (G 0) := by
    rw [key]; exact hsum.hasSum
  rw [hG, Gaux_zero heven] at hs
  convert hs using 1
  funext k
  rw [fourier_Gaux hL hφc hsupp]

end Poisson

namespace Taper

variable {ϱ : ℝ → ℝ} {L w : ℝ}

/-- Decay input for Poisson: `|φ̂(s)|(1 + s²) ≤ L + C₁` on ℝ (from [eq:hfbound] at `y = 0`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5e5f7cf935d55f2cda540b3738e277f8a2b7a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
