# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RvMChi.Variant397445f0e9241685dc69a26f713e5fb4f6525f21fceb11874324ec44280c1b8c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f558cf937b8f02df4bfcf5c5a6e8cb84b958a25e` · SHA-256 `41d37396342b6b4a78fcddb9c8e9d3140b2b2e5e1963820fab5b3b1b5e43d48c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RvmChi.Variant98831c86a51c5414d4a38eb635b82fe70c885d9ca87b98864e76e3adcc55e3d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98831c86a51c5414d4a38eb635b82fe70c885d9ca87b98864e76e3adcc55e3d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RvmChi.Variant98831c86a51c5414d4a38eb635b82fe70c885d9ca87b98864e76e3adcc55e3d8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"98831c86a51c5414d4a38eb635b82fe70c885d9ca87b98864e76e3adcc55e3d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/ThmE/RvMChi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ThmE/RvMChi.lean — H-RvM(χ) for Mathlib's Dirichlet L-functions.
Main statement:
  theorem rvmChi (hq : 1 < q) (hprim : χ.IsPrimitive) : RiemannVonMangoldtChi q (LZeros (LSeam_of hq hprim))
i.e. main: |N_χ(T,2T) − (T/2π)·ell1q q T| ≤ C log T (T ≥ T₀) and the two-sided local count
N_χ(t,t+1] ≤ A₀ log(|t|+3) — constants depending on q (fixed).
Decomposition (mirrors the Riemann–von Mangoldt argument for ζ; each piece in its own file):
 • Zeta23/ThmE/LGrowth.lean : ‖L(s,χ)‖ ≤ q‖s‖/Re s on Re s > 0; σ ≥ 2 two-sided bounds.
 • Zeta23/ThmE/LocalCountChi.lean: localCountChi — Jensen/ZerosBound disc at 2+(t+½)i after halving by
   ρ ↦ 1−ρ̄ (Zeta23.ZeroConfig.N_le_two_mul_half applies verbatim to LZeros), both signs of t directly.
 • Zeta23/ThmE/MainTermChi.lean: mainChi — argument principle for Λ(s,χ) = completedLFunction on
   [−1,2]×[T₁,T₂] (Zeta23.Analytic.rectangleIntegral'_mul_logDeriv; Λ(·,χ) entire for primitive χ, q>1),
   fold by Λ(1−s̄,χ) = ε(χ)·conj Λ(s,χ) (ε drops out of Λ'/Λ), Γ-side = ∫μ_χ (GammaFactsChi),
   Backlund for L via g(z) = (L(z+iT,χ)+L(z−iT,χ̄))/2, non-ordinate perturbation.
-/
import Zeta23.ThmE.LocalCountChi
import Zeta23.ThmE.MainTermChi


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RvmChi.Variant98831c86a51c5414d4a38eb635b82fe70c885d9ca87b98864e76e3adcc55e3d8

open Complex Set DirichletCharacter

noncomputable section

namespace Zeta23
namespace ThmE

variable {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}

/-- **H-RvM(χ)** for a primitive character χ mod q > 1. -/
theorem rvmChi (hq : 1 < q) (hprim : χ.IsPrimitive) :
    RiemannVonMangoldtChi q (LZeros (LSeam_of hq hprim)) := by
  refine ⟨?_, ?_⟩
  · simpa using mainChi hq hprim
  · simpa using localCountChi hq hprim

end ThmE
end Zeta23
```
