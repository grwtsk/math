# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Inputs.Variantc1d67d84219b91d572bc778699f07908f223156634e316d4384ee19e7787e11d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `941de2a536795fd8806e55a94e61beac2888842e` · SHA-256 `2aba5322e2bcc81b5acf51816f8d2cf6501cc15934b0db088f8b94bdc2ab9bd6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BlockInputs.Variant4774543e7049159ac2bfd6de313a77edbc7222a5ea9cd1d98b3accc8568da273","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4774543e7049159ac2bfd6de313a77edbc7222a5ea9cd1d98b3accc8568da273","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BlockInputs.Variant4774543e7049159ac2bfd6de313a77edbc7222a5ea9cd1d98b3accc8568da273","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4774543e7049159ac2bfd6de313a77edbc7222a5ea9cd1d98b3accc8568da273","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/Assembly/Inputs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
  Part of the Zeta23 formalization of the paper
  "More than two thirds of the zeros of the Riemann zeta function lie on the critical line".
  Bracketed labels ([prop:cross], [eq:Msplit], …) and section numbers (§5.4, …) refer to that paper.
-/
import Zeta23.LinAlg
import Zeta23.Defs

/-!
# Interfaces consumed by `Zeta23/Assembly.lean` from `ZeroSide.lean` (prop:block) and `Tail.lean` (prop:tail)
This small file exists so that `ZeroSide.lean` / `Tail.lean` can *prove*
`∀ᶠ T, BlockInputs Z P T` / `TailInputs Z P T (θ₀ T)` without importing all of `Assembly.lean`, and
`Main.lean`  can plug those proofs into `Assembly.thmA_abstract`.
Every field is a statement announced by the producing file; docstrings quote the paper labels.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BlockInputs.Variant4774543e7049159ac2bfd6de313a77edbc7222a5ea9cd1d98b3accc8568da273

noncomputable section

open Matrix RHLinalg
open scoped ComplexOrder

namespace Zeta23
namespace Assembly

variable (Z : ZeroConfig) (P : Params) (T : ℝ)

/-- `N(I′∖I) := N(T−D₀,T) + N(2T,2T+D₀)` (the paper prop:zeroside), as a natural number. -/
def NII : ℕ := Z.N (T - D0 T) T + Z.N (2 * T) (2 * T + D0 T)

/-- **Inputs from prop:block + [eq:Ncount] at height `T`** (the paper `prop:block`:
"(i) `n₊(Ã) ≤ s₁+s₂+p` and `rank(Ã) ≤ s₁+s₂+2p = #𝒵(I′)`.
 (ii) `Â = P+Q` with `P,Q` real symmetric, `P ⪰ 0`, `rank P ≤ s₁+s₂`, `tr P ≤ N_on(I′)`, and `n₊(Q) ≤ p`";
[eq:Ncount]: "`N(I′) ≥ s₁+2s₂+2p`" and "`N(I′) ≥ N_on(I′)+2p`"), produced by `ZeroSide.lean`.
Units: `Ã = P.tilde T (Z.Az P T)` [eq:AE], `Â = P.hat T (Z.Az P T)` [eq:hatunits].
`p` (number of off-line pairs in `𝒵(I′)`) is existentially quantified since only the displayed
inequalities involving it are consumed downstream. -/
structure BlockInputs : Prop where
  /-- prop:block(ii) in hat units + "`N_on(I′) + 2p ≤ N(I′)`" -/
  hat : ∃ (Pm Qm : Matrix (Fin (P.d T)) (Fin (P.d T)) ℂ) (p : ℕ)
      (_ : Pm.PosSemidef) (hQm : Qm.IsHermitian),
      P.hat T (Z.Az P T) = Pm + Qm ∧ Pm.rank ≤ Z.s1 T + Z.s2 T ∧
      rtrace Pm ≤ (Z.NonIprime T : ℝ) ∧ posIndex hQm ≤ p ∧
      (Z.NonIprime T : ℝ) + 2 * p ≤ Z.NIprime T
  /-- prop:block(i) in tilde units + "`N(I′) ≥ s₁ + 2s₂ + 2p`" [eq:Ncount] -/
  tilde : ∃ (p : ℕ) (hAt : (P.tilde T (Z.Az P T)).IsHermitian),
      posIndex hAt ≤ Z.s1 T + Z.s2 T + p ∧ (P.tilde T (Z.Az P T)).rank ≤ (Z.ZIprime T).ncard ∧
      (Z.s1 T : ℝ) + 2 * Z.s2 T + 2 * p ≤ Z.NIprime T

/-- **Inputs from prop:tail at height `T`** (the paper `prop:tail`: "`‖Ẽ‖ ≤ θ₀ := 4A₀C₁²X^{1/2}
log(4T)/D₀²` … Moreover the trace norm satisfies `‖Ê‖₁ ≤ θ₀/(aL) ≤ 2θ₀/L`"), produced by
`Tail.lean` with `B = traceNorm Ê`.  Units: `Ẽ = P.tilde T (Z.Ez P T)`, `Ê = P.hat T (Z.Ez P T)`. -/
structure TailInputs (θ₀ : ℝ) : Prop where
  theta_nonneg : 0 ≤ θ₀
  /-- lem:weyl's hypothesis: every eigenvalue of `Ẽ` is at most `θ₀` in absolute value
  (this is `‖Ẽ‖ ≤ θ₀` for the operator norm of a Hermitian matrix) -/
  tilde : ∃ hEt : (P.tilde T (Z.Ez P T)).IsHermitian, ∀ i, |hEt.eigenvalues i| ≤ θ₀
  /-- `|tr Ê| ≤ ‖Ê‖₁`, `‖Ê‖_F ≤ ‖Ê‖₁`, `‖Ê‖₁ ≤ θ₀/(aL)` -/
  hat : ∃ B : ℝ, 0 ≤ B ∧ |rtrace (P.hat T (Z.Ez P T))| ≤ B ∧
      frobSq (P.hat T (Z.Ez P T)) ≤ B ^ 2 ∧ B ≤ θ₀ / (P.a T * P.L T)

end Assembly
end Zeta23

end
```
