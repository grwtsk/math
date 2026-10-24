# norm_uvec_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:394e4217-7824-14c0-a597-bf2682836d70",
  "kind": "lemma",
  "lexical_name": "norm_uvec_le",
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
  "slug": "norm-uvec-le--b183c061c15f7735e0071caa",
  "source": {
    "blob": "aeeed052f300b43537382b09eeef04f0a8dcb49a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 198,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b183c061c15f7735e0071caae13af626df3b736ef9142325c44bd2e4fc5db796",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:394e4217-7824-14c0-a597-bf2682836d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_uvec_le (hL : 0 < P.L T) (hT : 0 < T) {C₁ : ℝ} (hC₁ : 0 ≤ C₁)
    (hdecay : ∀ (r y : ℝ), |y| ≤ 1 / 2 → (r : ℂ) - I * y ≠ 0 →
        ‖P.phiHat T (r - I * y)‖ ≤ Real.exp (P.L T / 4) * C₁ / ‖(r : ℂ) - I * y‖ ^ 2)
    {ρ : ℂ} (hρ : ρ ∈ Z.carrier) (htail : InTail T ρ.im) (k : Fin (P.d T)) :
    ‖uvec P T ρ k‖
      ≤ (Real.exp (P.L T / 4) * C₁) * (|ρ.im - (T + (k : ℕ) * (2 * Real.pi / P.L T))| ^ 2)⁻¹ := by
  set r : ℝ := ρ.im - P.tau T k with hr
  set y : ℝ := ρ.re - 1 / 2 with hy
  have hstrip := Z.strip ρ hρ
  have hyab : |y| ≤ 1 / 2 := by rw [abs_le]; constructor <;> linarith [hstrip.1, hstrip.2]
  have hτ := tau_mem hL hT.le k
  have hsq : 0 < Real.sqrt T := Real.sqrt_pos.mpr hT
  have hr0 : r ≠ 0 := by
    rcases htail with h | h
    · have : r < 0 := by rw [hr]; linarith
      exact this.ne
    · have : 0 < r := by rw [hr]; linarith
      exact this.ne'
  have hz : (r : ℂ) - I * y ≠ 0 := by
    intro h
    have := congrArg Complex.re h
    simp at this
    exact hr0 this
  have hnormz : r ^ 2 ≤ ‖(r : ℂ) - I * y‖ ^ 2 := by
    have h1 : |((r : ℂ) - I * y).re| ≤ ‖(r : ℂ) - I * y‖ := Complex.abs_re_le_norm _
    have h2 : ((r : ℂ) - I * y).re = r := by simp
    rw [h2] at h1
    calc r ^ 2 = |r| ^ 2 := (sq_abs r).symm
      _ ≤ _ := pow_le_pow_left₀ (abs_nonneg r) h1 2
  have hrsq : 0 < r ^ 2 := by positivity
  have heq : uvec P T ρ k = P.phiHat T (r - I * y) := by
    unfold uvec; rw [gammaOf_sub_ofReal]
  rw [heq, ← tau_fin, ← hr, sq_abs]
  calc ‖P.phiHat T (r - I * y)‖ ≤ Real.exp (P.L T / 4) * C₁ / ‖(r : ℂ) - I * y‖ ^ 2 :=
        hdecay r y hyab hz
    _ ≤ Real.exp (P.L T / 4) * C₁ / r ^ 2 :=
        div_le_div_of_nonneg_left (by positivity) hrsq hnormz
    _ = _ := by rw [div_eq_mul_inv]

/-- ‖u_ρ‖₂² ≤ K² · L · dist(γ,I)⁻³ for a tail zero (decay + the grid estimate). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeeed052f300b43537382b09eeef04f0a8dcb49a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
