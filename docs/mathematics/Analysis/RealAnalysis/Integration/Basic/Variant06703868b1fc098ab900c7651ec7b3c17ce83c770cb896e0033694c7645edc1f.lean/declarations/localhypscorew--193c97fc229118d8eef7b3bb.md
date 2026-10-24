# LocalHypsCoreW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11b5604c1f4d09f6366074e122bc032c803819e678d6908e28f94a8e215ba87e",
  "kind": "structure",
  "lexical_name": "LocalHypsCoreW",
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
  "slug": "localhypscorew--193c97fc229118d8eef7b3bb",
  "source": {
    "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 559,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:193c97fc229118d8eef7b3bb9a1ef1d1a18ebb365daa7d4c0fb7d5a7f24b54d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11b5604c1f4d09f6366074e122bc032c803819e678d6908e28f94a8e215ba87e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalHypsCoreW (cϱ : ℝ) (p : Setting) (F : LocalFun) : Prop where
  /-- [eq:phinorms] `c_ϱ ≥ 4`. -/
  four_le_cϱ : 4 ≤ cϱ
  /-- `0 < λ` [Notation] (no upper cap here). -/
  lam_pos : 0 < p.lam
  /-- [eq:wrange] `1 ≤ w ≤ L/8` (forces `L ≥ 8`). -/
  one_le_w : 1 ≤ p.w
  w_le : p.w ≤ p.L / 8
  /-- "T is large": `l ≥ 1`, i.e. `T ≥ 2πe`. -/
  one_le_l : 1 ≤ p.l
  /-- φ̂ real-analytic facts: continuity; evenness (φ even) [§2.2 "φ̂ and Φ are real, even, entire"]. -/
  phiHat_cont : Continuous F.phiHat
  phiHat_even : ∀ r, F.phiHat (-r) = F.phiHat r
  /-- [eq:psidef] `|φ̂(r)| ≤ ψ(r) := min(L, 2/|r|, c_ϱ/(w r²))`, split into three division-free bounds. -/
  phiHat_le_L : ∀ r, |F.phiHat r| ≤ p.L
  phiHat_le_inv : ∀ r, |F.phiHat r| * |r| ≤ 2
  phiHat_le_sq : ∀ r, |F.phiHat r| * r ^ 2 ≤ cϱ / p.w
  /-- Integrability consequences of [eq:psidef] (`φ̂² ≤ ψ² ≤ min(L², c_ϱ²/(w²r⁴))`), and
  [eq:psiints] in the packaged form `∫ φ̂(r)²|r| dr ≤ ∫ ψ²|r| = 8 + 8 log(c_ϱL/4w)` (§2.2, used at
  §5.2 "∫ φ̂(r)²|r| dr ≪ log L"). -/
  phiHat_sq_integrable : Integrable (fun r => F.phiHat r ^ 2)
  phiHat_sq_mul_abs_integrable : Integrable (fun r => F.phiHat r ^ 2 * |r|)
  integral_phiHat_sq_mul_abs_le :
    ∫ r, F.phiHat r ^ 2 * |r| ≤ 8 + 8 * Real.log (cϱ * p.L / (4 * p.w))
  /-- also from [eq:psidef]: `φ̂(r)²r² ≤ min(4, (c_ϱ/w)²/r²)`, so `∫ φ̂(r)² r² dr ≤ 8 + 2(c_ϱ/w)²`
  (used for the `|r| > τ_k/2` tails at §5.2 in place of the paper's sharper r⁻⁴ bound). -/
  phiHat_sq_mul_sq_integrable : Integrable (fun r => F.phiHat r ^ 2 * r ^ 2)
  integral_phiHat_sq_mul_sq_le : ∫ r, F.phiHat r ^ 2 * r ^ 2 ≤ 8 + 2 * (cϱ / p.w) ^ 2
  /-- `∫ φ̂(r)² dr = 2π ∫ φ² = 2π a L` [prop:trace proof, §5.2; Plancherel in the paper's
  convention `∫ f ḡ = (2π)⁻¹ ∫ f̂ conj ĝ` + eq:abdef]. -/
  phiHat_sq_integral : ∫ r, F.phiHat r ^ 2 = 2 * π * F.a * p.L
  /-- `φ̂² = Â_φ` on ℝ [§2.2] + Fourier inversion, in the real form used at §5.2:
  `∫ φ̂(r)² cos(ry) dr = 2π A_φ(y)` (`φ̂²` even, `A_φ` even, continuous, supported in `[−L,L]`). -/
  phiHat_sq_fourier : ∀ y, ∫ r, F.phiHat r ^ 2 * Real.cos (r * y) = 2 * π * F.Aphi y
  /-- window-generic remnant of [eq:gbounds]: `g ≥ 0` and `g ≤ A_φ ≤ (L−|y|)₊`
  (the flat-top plateau lower bound `(L−2w−|y|)₊ ≤ g` is NOT here — see §7.1). -/
  g_nonneg : ∀ y, 0 ≤ F.g y
  g_le_Aphi : ∀ y, F.g y ≤ F.Aphi y
  Aphi_le : ∀ y, F.Aphi y ≤ max (p.L - |y|) 0
  /-- Φ facts: `Φ` is C¹ (indeed entire), even [§2.2]. -/
  Phi_contDiff : ContDiff ℝ 1 F.Phi
  Phi_even : ∀ r, F.Phi (-r) = F.Phi r
  /-- [eq:psidef] `|Φ(r)| ≤ ψ(r)`, three division-free bounds. -/
  Phi_le_L : ∀ r, |F.Phi r| ≤ p.L
  Phi_le_inv : ∀ r, |F.Phi r| * |r| ≤ 2
  Phi_le_sq : ∀ r, |F.Phi r| * r ^ 2 ≤ cϱ / p.w
  /-- Integrability consequences of [eq:psidef] for Φ, and [eq:psiints] packaged as
  `∫ Φ(x)²|x| dx ≤ 8 + 8 log(c_ϱL/4w)` (§5.4 "∫Φ(x)²|x|dx ≪ log L (by (eq:psidef), (eq:psiints))"). -/
  Phi_sq_integrable : Integrable (fun x => F.Phi x ^ 2)
  Phi_sq_mul_abs_integrable : Integrable (fun x => F.Phi x ^ 2 * |x|)
  integral_Phi_sq_mul_abs_le :
    ∫ x, F.Phi x ^ 2 * |x| ≤ 8 + 8 * Real.log (cϱ * p.L / (4 * p.w))
  /-- second moment of `Φ²` (same [eq:psidef] path as the `φ̂` version; needed against the
  `10r²/t` term of `mu_increment_bound` in [prop:mumu]). -/
  Phi_sq_mul_sq_integrable : Integrable (fun x => F.Phi x ^ 2 * x ^ 2)
  integral_Phi_sq_mul_sq_le : ∫ x, F.Phi x ^ 2 * x ^ 2 ≤ 8 + 2 * (cϱ / p.w) ^ 2
  /-- `Φ(0) = aL` [§2.2]. -/
  Phi_zero : F.Phi 0 = F.a * p.L
  /-- `∫_ℝ Φ² = 2π g(0) = 2π b L` [§2.2]. -/
  Phi_sq_integral : ∫ x, F.Phi x ^ 2 = 2 * π * F.b * p.L
  /-- [eq:Phi2FT] `∫_ℝ Φ(x)² e^{ixy} dx = 2π g(y)` (§5.4), real form (`Φ²`, `g` even). -/
  Phi_sq_fourier : ∀ y, ∫ x, F.Phi x ^ 2 * Real.cos (x * y) = 2 * π * F.g y
  /-- [lem:poisson] (★) `Σ_{k∈ℤ} φ̂(τ−τ_k) φ̂(τ'−τ_k) = L Φ(τ−τ')` (§2.2). -/
  poisson : ∀ τ τ', HasSum (fun k : ℤ => F.phiHat (τ - p.tau k) * F.phiHat (τ' - p.tau k))
    (p.L * F.Phi (τ - τ'))
  /-- window-generic remnant of [eq:abdef]: `1/2 ≤ b ≤ a ≤ 1` (the flat-top `1 − 2w/L ≤ b`
  is NOT here; 1/2 suffices for every positivity/division use and holds for the
  Montgomery–Taylor window). -/
  b_ge_half : 1 / 2 ≤ F.b
  b_le_a : F.b ≤ F.a
  a_le_one : F.a ≤ 1
  /-- [eq:psidef] in majorant form, with the [eq:psiints] integrals (`Ψ₀ = 4 + 2log(c_ϱL/4w)`,
  `∫ψ² ≤ 8L`) — fields match `Zeta23.Params.psi'_integrable / psi'_sq_integrable /
  integral_psi'_Ioi_le / integral_psi'_sq_le` in Zeta23/Taper.lean (consumed by [lem:ends]). -/
  psi_integrable : Integrable (psiA cϱ p)
  psi_sq_integrable : Integrable (fun r => psiA cϱ p r ^ 2)
  integral_psi_Ioi_le : ∫ r in Set.Ioi 0, psiA cϱ p r ≤ 4 + 2 * Real.log (cϱ * p.L / (4 * p.w))
  integral_psi_sq_le : ∫ r, psiA cϱ p r ^ 2 ≤ 8 * p.L
  /-- `|φ̂| ≤ ψ` and `|Φ| ≤ ψ` [eq:psidef] in the majorant form used by [lem:ends]. -/
  phiHat_le_psi : ∀ r, |F.phiHat r| ≤ psiA cϱ p r
  Phi_le_psi : ∀ r, |F.Phi r| ≤ psiA cϱ p r
  /-- Π_X is continuous and [eq:PiPfacts] `|Π_X(τ)| ≤ 3√X/(1+|τ|)` (§2.1), for the concrete
  `Zeta23.PiX X` [eq:Pidef] — see `PiX_bound` (holds for all `X ≥ 1`) / `PiX_continuous`. -/
  PiX_cont : Continuous (Zeta23.PiX p.X)
  PiX_bound : ∀ τ, |Zeta23.PiX p.X τ| ≤ 3 * Real.sqrt p.X / (1 + |τ|)


/-- every flat-top taper datum satisfies the window-generic core:
b ≥ 1 − 2w/L ≥ 3/4 ≥ 1/2 ([eq:abdef] + [eq:wrange]), g ≥ 0 (plateau bound). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7555aaf5deacab10b78c258feefd3537a539fd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
