# full_line_identity_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c941fc8-75c1-1c79-7812-89694be2acf5",
  "kind": "theorem",
  "lexical_name": "full_line_identity_of",
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
  "slug": "full-line-identity-of--09590424fa7449d6c638700d",
  "source": {
    "blob": "133d738d698b7cf16c2b9024a42b278b900a3a64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 324,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09590424fa7449d6c638700d495d608d3adfc7ffee23f38a430e53b906250c9c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c941fc8-75c1-1c79-7812-89694be2acf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_line_identity_of (hf : Differentiable ℂ f) (hc : 1 / 2 < c) (hc2 : c ≤ 2)
    (hsymm : ∀ s, logDeriv f (1 - s) = -logDeriv f s)
    {Zset : Set ℂ} (hZ : ∀ s, f s = 0 ↔ s ∈ Zset) (hstrip : ∀ ρ ∈ Zset, 1 - c < ρ.re ∧ ρ.re < c)
    (hGH : ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, ∀ j : ℕ, j₀ ≤ j → ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 - c ≤ s.re → s.re ≤ c →
        f s ≠ 0 ∧ ‖logDeriv f s‖ ≤ C * (Real.log ((j : ℝ) + 3)) ^ 2)
    (hline : ∃ M : ℝ, ∀ t : ℝ, ‖logDeriv f ((c : ℂ) + t * I)‖ ≤ M * Real.log (2 + |t|))
    (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    (hsum : Summable (fun ρ : Zset => (analyticOrderNatAt f ρ : ℂ) * Hfn k ρ)) :
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I))
        * logDeriv f ((c : ℂ) + t * I))
      = ∑' ρ : Zset, (analyticOrderNatAt f ρ : ℂ) * Hfn k ρ := by
  have hcc : 1 - c < c := by linarith
  have hne : ∀ t : ℝ, f ((c : ℂ) + t * I) ≠ 0 := ne_zero_on_line hZ hstrip
  obtain ⟨Cg, hCg, j₀, hj₀, R, hR⟩ := exists_heights_of hGH
  have hRge : ∀ j : ℕ, (j : ℝ) ≤ R j := fun j => by
    have := (hR j).1; have : (0:ℝ) ≤ j₀ := Nat.cast_nonneg j₀; linarith
  have hR0 : ∀ j : ℕ, 0 ≤ R j := fun j => (Nat.cast_nonneg j).trans (hRge j)
  have hRmono : Monotone R := by
    intro i j hij
    rcases hij.eq_or_lt with h | h
    · rw [h]
    · have : (i : ℝ) + 1 ≤ j := by exact_mod_cast h
      linarith [(hR i).2.1, (hR j).1]
  set F : ℂ → ℂ := fun s => Hfn k s * logDeriv f s with hF
  -- the rectangle identity at every height R_j
  have hrect : ∀ j : ℕ, ∃ Z : Finset ℂ,
      ((Z : Set ℂ) = {ρ : ℂ | ρ ∈ Zset ∧ -R j < ρ.im ∧ ρ.im < R j}) ∧
      RectangleIntegral' F (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I)
        = ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) * Hfn k ρ := fun j =>
    rectangle_identity_of hf (differentiable_Hfn hk hkc) hcc hZ hstrip (hR0 j)
      (fun s him h1 h2 => ((hR j).2.2 s him h1 h2).1)
  choose Z hZc hE using hrect
  -- the three limits
  obtain ⟨hHtop, hHbot⟩ := horizontal_vanish_of (f := f) hk hkc hcc.le hc2 hCg.le hj₀ (R := R)
    (fun j => ⟨(hR j).1, fun s him h1 h2 => ((hR j).2.2 s him h1 h2).2⟩)
  have hZlim := zero_sum_limit_of (fun ρ => (analyticOrderNatAt f ρ : ℂ) * Hfn k ρ) hsum
    hRmono hRge hZc
  have hV := tendsto_intervalIntegral_of_integrable
    (integrable_Fline_of hf hne hline hk hkc (by linarith) hc2) hRge
  -- decomposition of the normalized rectangle integral
  have hdec : ∀ j : ℕ, RectangleIntegral' F (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I)
      = (1 / (2 * Real.pi * I) : ℂ) * (HIntegral F (1 - c) c (-(R j)) - HIntegral F (1 - c) c (R j))
        + (1 / (2 * Real.pi) : ℂ) * ∫ t in (-R j)..R j, Fline f k c t := by
    intro j
    obtain ⟨e1, e2, e3, e4⟩ := Zeta23.WeilEF.corner_re_im c (R j)
    rw [RectangleIntegral', RectangleIntegral, smul_eq_mul, e1, e2, e3, e4]
    have hv := verticals_eq_of hf hne hsymm hk hkc (R j)
    rw [hF]
    rw [show ∀ A B V₁ V₂ : ℂ, A - B + V₁ - V₂ = (A - B) + (V₁ - V₂) from fun _ _ _ _ => by ring, hv,
      smul_eq_mul, mul_add, Zeta23.WeilEF.inv_two_pi_I_mul_I]
  -- LHS → (1/2π) ∫ F
  have hL : Tendsto (fun j : ℕ => RectangleIntegral' F (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I))
      atTop (𝓝 ((1 / (2 * Real.pi) : ℂ) * ∫ t, Fline f k c t)) := by
    have h := ((hHbot.sub hHtop).const_mul (1 / (2 * Real.pi * I) : ℂ)).add
      (hV.const_mul (1 / (2 * Real.pi) : ℂ))
    simp only [sub_zero, mul_zero, zero_add] at h
    refine h.congr fun j => ?_
    rw [hdec j]
  have hL' : Tendsto (fun j : ℕ => ∑ ρ ∈ Z j, (analyticOrderNatAt f ρ : ℂ) * Hfn k ρ)
      atTop (𝓝 ((1 / (2 * Real.pi) : ℂ) * ∫ t, Fline f k c t)) :=
    hL.congr fun j => hE j
  have := tendsto_nhds_unique hL' hZlim
  exact this

end Generic

/-! ## Instances -/

section Rational

/-! ### f = s(s−1): the rational piece of (EF2)  (logDeriv = 1/s + 1/(s−1), zeros 0, 1, simple) -/

/-- the polynomial s(s−1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133d738d698b7cf16c2b9024a42b278b900a3a64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
