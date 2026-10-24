# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Final.Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `384b1356513d7b5b3417ee57fecc0efe77c7d6c0` · SHA-256 `56cabaa2ee0abeb6dbfd0bf34418d7d49360c6277e204a72ccaf9b2446a6a895`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LPos.Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LPos.Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/ZeroSide/Final.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ZeroSide/Final.lean — prop:block with the analytic inputs discharged.

Zeta23/ZeroSide.lean proves §4's block structure / prop:block with three analytic facts as explicit
hypotheses (PhiHatConj, PhiHatReal, PoissonSq) and positivity of L and aL². Here they are supplied
from Zeta23.Hypotheses.GzGp (phiHat_conj, phiHat_ofReal), Zeta23.Taper (Params.half_le_a) and
Zeta23.Poisson (Params.hasSum_phiHatR_sq = lem:poisson), leaving only the standing assumptions
(hP : P.Valid) and (hwL : 8 * P.w ≤ P.L T) [eq:wrange]; and the `∀ᶠ T` form that
thmA_abstract consumes (hwL holds eventually since L = λ log(T/2π) → ∞).
-/
import Zeta23.ZeroSide
import Zeta23.Hypotheses.GzGp
import Zeta23.Taper
import Zeta23.Poisson
import Mathlib.Analysis.SpecialFunctions.Log.Basic


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LPos.Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5

noncomputable section

open Matrix RHLinalg Filter
open scoped ComplexOrder

namespace Zeta23.ZeroSide

variable {P : Params} {T : ℝ}

lemma L_pos (hP : P.Valid) (hwL : 8 * P.w ≤ P.L T) : 0 < P.L T := by linarith [hP.one_le_w]

lemma aLsq_pos (hP : P.Valid) (hwL : 8 * P.w ≤ P.L T) : 0 < P.a T * P.L T ^ 2 :=
  mul_pos (by linarith [Params.half_le_a hP hwL]) (pow_pos (L_pos hP hwL) 2)

/-- From Zeta23.GzGp.phiHat_conj (uses only that φ is real and even). -/
lemma phiHatConj : PhiHatConj T P := fun z => GzGp.phiHat_conj P T z

/-- From Zeta23.GzGp.phiHat_ofReal. -/
lemma phiHatReal : PhiHatReal T P := fun r => GzGp.phiHat_ofReal P T r

lemma poissonSq (hP : P.Valid) (hwL : 8 * P.w ≤ P.L T) : PoissonSq T P :=
  fun γ => Params.hasSum_phiHatR_sq hP hwL γ

/-- prop:block + [eq:Ncount] packaged for Assembly at height T, under the standing assumptions only. -/
theorem blockInputs_of_hwL (Z : ZeroConfig) (P : Params) (T : ℝ) (hP : P.Valid)
    (hwL : 8 * P.w ≤ P.L T) : Assembly.BlockInputs Z P T :=
  blockInputsAt Z P T phiHatConj phiHatReal (poissonSq hP hwL) (L_pos hP hwL) (aLsq_pos hP hwL)

/-- L = λ·log(T/2π) → ∞. -/
lemma tendsto_L_atTop (P : Params) (hlam : 0 < P.lam) : Tendsto P.L atTop atTop := by
  have h : Tendsto (fun T : ℝ => Real.log (T / (2 * Real.pi))) atTop atTop :=
    Real.tendsto_log_atTop.comp (tendsto_id.atTop_div_const (by positivity))
  exact (h.const_mul_atTop hlam).congr fun T => by simp [Params.L, l]

/-- **The input `thmA_abstract` consumes**: eventually in T, prop:block holds. -/
theorem blockInputs (Z : ZeroConfig) (P : Params) (hP : P.Valid) :
    ∀ᶠ T in atTop, Assembly.BlockInputs Z P T := by
  filter_upwards [(tendsto_L_atTop P hP.lam_pos).eventually_ge_atTop (8 * P.w)] with T hT
  exact blockInputs_of_hwL Z P T hP hT

/-- Alias of `blockInputs` in the shape used by Main.lean. -/
theorem eventually_blockInputs (Z : ZeroConfig) (P : Params) (hP : P.Valid) :
    ∀ᶠ T in atTop, Assembly.BlockInputs Z P T :=
  blockInputs Z P hP

/-! ### The individual statements with hypotheses discharged (convenience re-exports) -/

variable (Z : ZeroConfig) (hP : P.Valid) (hwL : 8 * P.w ≤ P.L T)
include hP hwL

/-- **[prop:block] (i)** "n₊(Ã) ≤ s₁ + s₂ + p". -/
theorem prop_block_i_posIndex (h : (P.tilde T (Z.Az P T)).IsHermitian) :
    posIndex h ≤ Z.s1 T + Z.s2 T + Z.p T :=
  posIndex_tilde_Az_le Z T P phiHatConj (L_pos hP hwL) h

/-- **[prop:block] (i)** "rank(Ã) ≤ s₁ + s₂ + 2p = #𝒵(I')". -/
theorem prop_block_i_rank : (P.tilde T (Z.Az P T)).rank ≤ Z.s1 T + Z.s2 T + 2 * Z.p T :=
  rank_tilde_Az_le Z T P phiHatConj (L_pos hP hwL)

omit hP hwL in
/-- **[prop:block] (ii)** "Â = P + Q" (Â := A/(aL²) [eq:hatunits] = P.hat T (Z.Az P T)). -/
theorem prop_block_ii_decomp :
    P.hat T (Z.Az P T) = hatP Z T P phiHatConj + hatQ Z T P phiHatConj :=
  hat_Az_eq_hatP_add_hatQ Z T P phiHatConj

/-- **[prop:block] (ii)** "P ⪰ 0". -/
theorem prop_block_ii_P_posSemidef : (hatP Z T P phiHatConj).PosSemidef :=
  hatP_posSemidef Z T P phiHatConj (aLsq_pos hP hwL)

/-- **[prop:block] (ii)** "rank P ≤ s₁ + s₂". -/
theorem prop_block_ii_rank_P : (hatP Z T P phiHatConj).rank ≤ Z.s1 T + Z.s2 T :=
  rank_hatP_le Z T P phiHatConj (aLsq_pos hP hwL)

/-- **[prop:block] (ii)** "tr P ≤ N_on(I')" (by lem:poisson). -/
theorem prop_block_ii_trace_P : rtrace (hatP Z T P phiHatConj) ≤ (Z.NonIprime T : ℝ) :=
  rtrace_hatP_le Z T P phiHatConj phiHatReal (poissonSq hP hwL) (aLsq_pos hP hwL)

/-- **[prop:block] (ii)** "n₊(Q) ≤ p" (by lem:inertia). -/
theorem prop_block_ii_posIndex_Q (h : (hatQ Z T P phiHatConj).IsHermitian) : posIndex h ≤ Z.p T :=
  posIndex_hatQ_le Z T P phiHatConj (aLsq_pos hP hwL) h

end Zeta23.ZeroSide
```
