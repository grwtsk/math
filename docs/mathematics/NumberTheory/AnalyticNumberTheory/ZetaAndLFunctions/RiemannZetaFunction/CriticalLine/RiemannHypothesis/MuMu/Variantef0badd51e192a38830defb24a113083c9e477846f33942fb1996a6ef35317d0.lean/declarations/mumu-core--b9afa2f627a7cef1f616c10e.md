# mumu_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:087f9730-d5c2-79c9-5586-f8b7ce2d0811",
  "kind": "theorem",
  "lexical_name": "mumu_core",
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
  "slug": "mumu-core--b9afa2f627a7cef1f616c10e",
  "source": {
    "blob": "c248ebad05b0dba9af9ad3e207d3a3b9940a4e5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variantef0badd51e192a38830defb24a113083c9e477846f33942fb1996a6ef35317d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9afa2f627a7cef1f616c10e20b51cba3e6f3d5237d2c04d600f91041f30fe1c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variantef0badd51e192a38830defb24a113083c9e477846f33942fb1996a6ef35317d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:087f9730-d5c2-79c9-5586-f8b7ce2d0811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mumu_core (hΓ : Zeta23.GammaFacts) (hF : LocalHypsCore cϱ p F) (hT2 : 2 ≤ p.T)
    (hμl : ∀ τ ∈ Icc p.T (2 * p.T), |Zeta23.mu τ| ≤ p.l)
    {K : ℝ} (hK0 : 0 ≤ K)
    (hKinc : ∀ t : ℝ, 2 ≤ t → ∀ r : ℝ,
      |Zeta23.mu (t + r) - Zeta23.mu t| ≤ (K * |r| + 10 * r ^ 2) / t) :
    |Mform F.Phi p.T Zeta23.mu Zeta23.mu
        - 2 * π * F.b * p.L * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ ^ 2|
      ≤ (1 + K) * p.l ^ 2 * (∫ x, F.Phi x ^ 2 * |x|)
        + 10 * p.l * ∫ x, F.Phi x ^ 2 * x ^ 2 := by
  have hμc : Continuous Zeta23.mu := hΓ.smooth.continuous
  have hΦc : Continuous F.Phi := hF.Phi_contDiff.continuous
  have hGc : Continuous fun q : ℝ × ℝ => Zeta23.mu q.1 * Zeta23.mu q.2 := by fun_prop
  set c : ℝ := ∫ τ' in Icc p.T (2 * p.T), Zeta23.mu τ' ^ 2 with hc
  have hc' : ∫ τ in p.T..(2 * p.T), Zeta23.mu τ ^ 2 = c := by
    rw [intervalIntegral.integral_of_le (by linarith), hc, integral_Icc_eq_integral_Ioc]
  have hshear : Mform F.Phi p.T Zeta23.mu Zeta23.mu
      = ∫ x, F.Phi x ^ 2 * ∫ τ' in Ix p.T x, Zeta23.mu (x + τ') * Zeta23.mu τ' := by
    unfold Mform
    simp only [mul_assoc]
    exact sqIntegral_shear hΦc hGc
  have hfInt : Integrable (fun x => F.Phi x ^ 2 * ∫ τ' in Ix p.T x,
      Zeta23.mu (x + τ') * Zeta23.mu τ') := integrable_sq_mul_inner hΦc hGc
  have hgInt : Integrable (fun x => F.Phi x ^ 2 * c) := hF.Phi_sq_integrable.mul_const c
  have hmain : 2 * π * F.b * p.L * c = ∫ x, F.Phi x ^ 2 * c := by
    rw [integral_mul_const c (fun x => F.Phi x ^ 2), hF.Phi_sq_integral]
  rw [hc', hshear, hmain, ← integral_sub hfInt hgInt]
  have hpt : ∀ x : ℝ, |F.Phi x ^ 2 * (∫ τ' in Ix p.T x, Zeta23.mu (x + τ') * Zeta23.mu τ')
      - F.Phi x ^ 2 * c|
      ≤ (1 + K) * p.l ^ 2 * (F.Phi x ^ 2 * |x|) + 10 * p.l * (F.Phi x ^ 2 * x ^ 2) := by
    intro x
    rw [← mul_sub, abs_mul, abs_of_nonneg (sq_nonneg (F.Phi x))]
    have hinner := abs_inner_sub_le hΓ hF hT2 hμl hK0 hKinc x
    rw [← hc] at hinner
    calc F.Phi x ^ 2 * |(∫ τ' in Ix p.T x, Zeta23.mu (x + τ') * Zeta23.mu τ') - c|
        ≤ F.Phi x ^ 2 * ((1 + K) * p.l ^ 2 * |x| + 10 * p.l * x ^ 2) := by
          gcongr
      _ = (1 + K) * p.l ^ 2 * (F.Phi x ^ 2 * |x|) + 10 * p.l * (F.Phi x ^ 2 * x ^ 2) := by ring
  calc |∫ x, (F.Phi x ^ 2 * (∫ τ' in Ix p.T x, Zeta23.mu (x + τ') * Zeta23.mu τ')
        - F.Phi x ^ 2 * c)|
      ≤ ∫ x, |F.Phi x ^ 2 * (∫ τ' in Ix p.T x, Zeta23.mu (x + τ') * Zeta23.mu τ')
        - F.Phi x ^ 2 * c| := by
        rw [← Real.norm_eq_abs]
        refine (norm_integral_le_integral_norm _).trans (le_of_eq ?_)
        simp_rw [Real.norm_eq_abs]
    _ ≤ ∫ x, ((1 + K) * p.l ^ 2 * (F.Phi x ^ 2 * |x|) + 10 * p.l * (F.Phi x ^ 2 * x ^ 2)) :=
        integral_mono (hfInt.sub hgInt).abs
          ((hF.Phi_sq_mul_abs_integrable.const_mul _).add
            (hF.Phi_sq_mul_sq_integrable.const_mul _)) hpt
    _ = (1 + K) * p.l ^ 2 * (∫ x, F.Phi x ^ 2 * |x|)
        + 10 * p.l * ∫ x, F.Phi x ^ 2 * x ^ 2 := by
        rw [integral_add (hF.Phi_sq_mul_abs_integrable.const_mul _)
          (hF.Phi_sq_mul_sq_integrable.const_mul _),
          integral_const_mul, integral_const_mul]

end Core

/-! ## [prop:mumu] -/

variable (cϱ lam : ℝ)

set_option linter.unusedVariables false in
/-- **[prop:mumu]** (§5.4): `𝓜[μ,μ] = 2πbL ∫_T^{2T} μ² + O(l² log L)`.
(`hcheb`/`hlam` are unused here but kept so that the statement matches the fixed interface
shared with the other prime-side propositions.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variantef0badd51e192a38830defb24a113083c9e477846f33942fb1996a6ef35317d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variantef0badd51e192a38830defb24a113083c9e477846f33942fb1996a6ef35317d0.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c248ebad05b0dba9af9ad3e207d3a3b9940a4e5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
