# Complete source: GRWTSK.Analysis.ComplexAnalysis.PairedProduct.LocallyUniformTaylorCoefficients

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adedceda2efd5be2236f5728aca912a61da3ab93` · SHA-256 `e591cb64b8c2e575821b9f3307fb21ab4dbf96a19cd715daa81ff6c59bbada24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Uncompiled source split candidate: LocallyUniformTaylorCoefficients

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians,
enthusiasts, and curious minds whose work and questions have helped shape these tools,
and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These provisional roles and computational characterizations are user-supplied;
the exact contribution, source ancestry, attribution and mechanism need clarification.
Existing contributor identities, intellectual sources and applicable notices remain
separate. No mathematical priority, new theorem credit or proof acceptance is claimed.

Original source SHA-256: 1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e
Organized source SHA-256: 2e2ea206f8b5fe45f2e55cc0220ed2fc1b9dcb011b5eff4befbc5665db88e245
Source archive: grwtsk/math@99f310907528f620d85095b675ec1b6f9d7a7046
PMD: 510.5.030 complex analysis; source-bound editorial placement only.
All original imports, the original whole-file introduction, ambient opens, and
noncomputable context are retained below. This candidate contains only its selected
component; the archived whole source remains authoritative for reconstruction.
Statements, hypotheses, declaration comments and proof bodies are copied byte-for-byte.
Only the containing namespace, component selection and this explanatory header change.
This file is outside the public library umbrella. Lean has not been invoked.
-/

import Mathlib.Analysis.Meromorphic.Order
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Calculus.FDeriv.Analytic
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas

/-!
# Infrastructure for the actual paired Hadamard product

Generic analytic lemmas needed by the source-bound `ActualPairedProduct` proof.
They contain no zeta, RH, PF, determinant, or Grassmannian assumptions.

The first theorem is the precise local-biholomorphic multiplicity transport
through the map `u ↦ u^2` away from its ramification point.  The remaining
lemmas transport all Taylor coefficients through locally uniform convergence of
entire functions.  These are the two reusable analytic mechanisms required by
issue #153 before the actual xi source is attached.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.PairedProduct.LocallyUniformTaylorCoefficients

open Filter Set
open scoped Topology

noncomputable section

/-- Iterated derivatives of a locally-uniformly convergent family of entire
functions converge locally uniformly. -/
theorem tendstoLocallyUniformlyOn_iterate_deriv
    {ι : Type*} {φ : Filter ι} [φ.NeBot]
    {F : ι → ℂ → ℂ} {f : ℂ → ℂ}
    (hF : ∀ i, AnalyticOnNhd ℂ (F i) Set.univ)
    (hlim : TendstoLocallyUniformlyOn F f φ Set.univ) (n : ℕ) :
    TendstoLocallyUniformlyOn
      (fun i => (deriv^[n]) (F i)) ((deriv^[n]) f) φ Set.univ := by
  induction n with
  | zero => simpa using hlim
  | succ n ih =>
      have hdiff : ∀ᶠ i in φ, DifferentiableOn ℂ ((deriv^[n]) (F i)) Set.univ :=
        Eventually.of_forall fun i => (hF i).iterated_deriv n |>.differentiableOn
      have hd := ih.deriv hdiff isOpen_univ
      simpa only [Function.iterate_succ_apply] using hd

/-- Pointwise convergence of every iterated derivative at the origin. -/
theorem tendsto_iteratedDeriv_zero_of_locallyUniform
    {ι : Type*} {φ : Filter ι} [φ.NeBot]
    {F : ι → ℂ → ℂ} {f : ℂ → ℂ}
    (hF : ∀ i, AnalyticOnNhd ℂ (F i) Set.univ)
    (hlim : TendstoLocallyUniformlyOn F f φ Set.univ) (n : ℕ) :
    Tendsto (fun i => iteratedDeriv n (F i) 0) φ
      (𝓝 (iteratedDeriv n f 0)) := by
  have h := tendstoLocallyUniformlyOn_iterate_deriv hF hlim n
  have hp := h.tendsto_at (Set.mem_univ (0 : ℂ))
  simpa only [iteratedDeriv_eq_iterate] using hp

/-- Taylor coefficients at zero converge under locally uniform convergence of
entire functions. -/
theorem tendsto_taylorCoefficient_zero_of_locallyUniform
    {ι : Type*} {φ : Filter ι} [φ.NeBot]
    {F : ι → ℂ → ℂ} {f : ℂ → ℂ}
    (hF : ∀ i, AnalyticOnNhd ℂ (F i) Set.univ)
    (hlim : TendstoLocallyUniformlyOn F f φ Set.univ) (n : ℕ) :
    Tendsto
      (fun i => iteratedDeriv n (F i) 0 / (n.factorial : ℂ)) φ
      (𝓝 (iteratedDeriv n f 0 / (n.factorial : ℂ))) :=
  (tendsto_iteratedDeriv_zero_of_locallyUniform hF hlim n).div_const _

end

end GRWTSK.Analysis.ComplexAnalysis.PairedProduct.LocallyUniformTaylorCoefficients
```
