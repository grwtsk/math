# dist_bound_of_gzMoments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f904127-7c81-3676-1ace-faf4eb77fdc1",
  "kind": "theorem",
  "lexical_name": "dist_bound_of_gzMoments",
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
  "slug": "dist-bound-of-gzmoments--bc4307cdb6bc3a6a8619efb1",
  "source": {
    "blob": "800f4ced3575e62484eaaef1af4a74a32d280f0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 209,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc4307cdb6bc3a6a8619efb12b3f7324aeccec0f5893bdbf6e70cc64ea391907",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f904127-7c81-3676-1ace-faf4eb77fdc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_bound_of_gzMoments {κ : ℝ} (hM : GzMoments Z (fun _ => P) κ) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (3 / 2 - κ / 2 - ε) * (Z.N T (2 * T) : ℝ) ≤ Z.Nd T (2 * T) := by
  have hlam0 := hP.lam_pos
  have hlam1 : P.lam ≤ 1 := hlam.le
  obtain ⟨ha, hNII⟩ := eventually_side_conditions_of_rvm Z hR P hP
  obtain ⟨θ₀, hTail, Cθ, hθ⟩ := eventually_tailPackage_of_rvm Z hR P hP
  obtain ⟨htrace, hfrob⟩ := hM
  have hLtop := tendsto_L_atTop P hlam0
  have hapos : ∀ᶠ T in atTop, 1 / 2 ≤ P.a T := by
    filter_upwards [ha, hLtop.eventually_ge_atTop (4 * P.w)] with T h hL4
    have hw := hP.one_le_w
    have hLpos : 0 < P.L T := by linarith
    have : 2 * P.w / P.L T ≤ 1 / 2 := by rw [div_le_iff₀ hLpos]; linarith
    linarith [h.1]
  have hwL : ∀ᶠ T in atTop, 8 * P.w ≤ P.L T := hLtop.eventually_ge_atTop _
  have h0 : ∀ᶠ T in atTop, 6 * rtrace (P.hat T (Z.Gz P T)) - frobSq (P.hat T (Z.Gz P T))
      - 3 * (Z.N T (2 * T) : ℝ) - 5 * (NII Z T : ℝ)
      - θ₀ T / (P.a T * P.L T)
          * (6 + 2 * Real.sqrt (frobSq (P.hat T (Z.Gz P T))) + θ₀ T / (P.a T * P.L T))
      ≤ 2 * (Z.Nd T (2 * T) : ℝ) := by
    filter_upwards [hTail, hwL, hapos, eventually_ge_atTop (0:ℝ), eventually_l_pos]
      with T hTl h8 ha2 hT0 hl
    have hLpos : 0 < P.L T := by simp only [Params.L]; positivity
    exact seamA_mult3 hT0 ZeroSide.phiHatConj ZeroSide.phiHatReal (ZeroSide.poissonSq hP h8) hTl
      (by linarith) hLpos
  have hB0 : ∀ᶠ T in atTop, 0 ≤ θ₀ T / (P.a T * P.L T) := by
    filter_upwards [hTail, hapos, eventually_l_pos] with T hTl ha2 hl
    have hLpos : 0 < P.L T := by simp only [Params.L]; positivity
    exact div_nonneg hTl.theta_nonneg (by positivity)
  have hBto : Tendsto (fun T => θ₀ T / (P.a T * P.L T)) atTop (𝓝 0) := by
    have hup : Tendsto (fun T => 2 * |Cθ| * (l T * T ^ (P.lam / 2 - 1) / P.L T)) atTop (𝓝 0) := by
      simpa using (tendsto_theta_over_L P hlam0 hlam1).const_mul (2 * |Cθ|)
    refine tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds hup hB0 ?_
    filter_upwards [hTail, hapos, eventually_l_pos, hθ, eventually_gt_atTop (0:ℝ)]
      with T hTl ha2 hl hθT hT0
    have hLpos : 0 < P.L T := by simp only [Params.L]; positivity
    have hapos' : 0 < P.a T := by linarith
    have hq' : 0 ≤ l T * T ^ (P.lam / 2 - 1) / P.L T := by positivity
    rw [div_le_iff₀ (mul_pos hapos' hLpos)]
    calc θ₀ T ≤ Cθ * l T * T ^ (P.lam / 2 - 1) := hθT
      _ ≤ |Cθ| * l T * T ^ (P.lam / 2 - 1) := by gcongr; exact le_abs_self _
      _ = |Cθ| * (l T * T ^ (P.lam / 2 - 1) / P.L T) * P.L T := by field_simp
      _ ≤ (2 * |Cθ| * (l T * T ^ (P.lam / 2 - 1) / P.L T)) * (P.a T * P.L T) := by
          have e : |Cθ| * (l T * T ^ (P.lam / 2 - 1) / P.L T) * P.L T
              = (2 * |Cθ| * (l T * T ^ (P.lam / 2 - 1) / P.L T)) * (1 / 2 * P.L T) := by ring
          rw [e]; gcongr
  have hNII_o : (fun T => (NII Z T : ℝ)) =o[atTop] (fun T => (Z.N T (2 * T) : ℝ)) := by
    obtain ⟨CII, hII⟩ := hNII
    have hO : (fun T => (NII Z T : ℝ)) =O[atTop] (fun T => Real.sqrt T * l T) := by
      refine IsBigO.of_bound CII ?_
      filter_upwards [hII, eventually_l_pos] with T h hl
      rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg (Nat.cast_nonneg _),
        abs_of_nonneg (by positivity)]
      simpa [mul_assoc] using h
    exact hO.trans_isLittleO (isLittleO_N_of_isLittleO_Tl Z hR isLittleO_sqrt_mul_l_Tl)
  have hNtop := tendsto_N_atTop Z hR
  exact count_certificate_c3 Z P κ (fun T => (Z.Nd T (2 * T) : ℝ)) θ₀ h0 hB0 hBto
    hNII_o hNtop htrace hfrob

end Flat

/-! ## §A3. The fixed-λ certificate bounds from GzMoments for a HEIGHT FAMILY Pf (quartic window etc.)

The window at height T is (Pf T).phi T (Defs.Params.atV realises a profile v on the taper).  The zero side
is consumed per height exactly as in §A2, through the three facts below (pattern:
Zeta23/ThmD/ZeroSideD.lean for P.atD), and the certificate algebra is CertificateFn's function-abstract copy. -/

/-- **The zero-side facts for a height-indexed window family** that the c = 2, 3 seams consume at heights
T → ∞ (the instance for Pf := P.atV vQuartic is built in XiPrime/QuarticWindow.lean from an
Zeta23.AdmWindow instance for φ_v := √(v(u/L))·φ, as ZeroSideD does for φ_D):
  lam_eq, w_eq — the family shares λ and w (hence L, X, d, τ_k) with P;
  poisson      — lem:poisson ★ for the window at height T (ZeroSide.PoissonSq T (Pf T));
  tail         — the prop:tail package for (Pf T) at height T with the standard rate θ₀ ≤ C·l·T^{λ/2−1}
                 (from RvM.local_count of Z and the decay ‖φ̂_v(r−iy)‖ ≤ e^{L/4}‖φ_v″‖₁/|r−iy|², as
                 Tail.TailHyp.tailInputs / ZeroSideD.eventually_tailPackageD);
  a_half       — a(T) = (1/L)∫φ_v² ≥ 1/2 eventually (v ≥ 27/40 on the window suffices for vQuartic). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800f4ced3575e62484eaaef1af4a74a32d280f0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
