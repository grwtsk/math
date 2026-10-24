# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaResidueHead

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f47207cf95aae509028fec8f59d299e09fd3a893` · SHA-256 `409c3f8975ae5efd70e6d81e63ab2e039337d4cbc1f47e94b259dfe4214a61af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedZetaExplicitFormulaChannels
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Finite source-faithful zeta residue heads

Before a global contour theorem is available, the exact finite nontrivial-zero
side can already be assembled at bounded absolute height. For a continuous
multiplier F, every summand is the actual logarithmic residue coefficient of
-zeta'/zeta multiplied by F.

The pole contribution is likewise exactly F(1).

This module does not assert that these finite heads equal a prime sum, nor that
they converge as the height tends to infinity. Those are the remaining global
explicit-formula obligations.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_RESIDUE_HEAD_DEFINED / GLOBAL_CONTOUR_IDENTITY_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open CanonicalZeroDivisor

def nontrivialZeroResidueHead (T : ℝ) (F : ℂ → ℂ) : ℂ :=
  ∑ z ∈ heightHead T, -(multiplicity z : ℂ) * F z.1

def zetaPoleResidueTerm (F : ℂ → ℂ) : ℂ :=
  F 1

def knownFiniteZetaResidueHead (T : ℝ) (F : ℂ → ℂ) : ℂ :=
  zetaPoleResidueTerm F + nontrivialZeroResidueHead T F

theorem nontrivial_zero_weighted_local_residue
    (z : ZeroPoint) (F : ℂ → ℂ) (hF : ContinuousAt F z.1) :
    Tendsto
      (fun s =>
        (s - z.1) *
          (-GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv
            riemannZeta s * F s))
      (𝓝[≠] z.1)
      (𝓝 (-(multiplicity z : ℂ) * F z.1)) :=
  CanonicalLogarithmicResidues.canonical_zero_weighted_limit z F hF

theorem pole_weighted_local_residue
    (F : ℂ → ℂ) (hF : ContinuousAt F 1) :
    Tendsto
      (fun s =>
        (s - 1) *
          (-GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv
            riemannZeta s * F s))
      (𝓝[≠] (1 : ℂ))
      (𝓝 (zetaPoleResidueTerm F)) := by
  simpa [zetaPoleResidueTerm] using
    CanonicalLogarithmicResidues.zeta_pole_weighted_limit F hF

theorem nontrivialZeroResidueHead_add
    (T : ℝ) (F G : ℂ → ℂ) :
    nontrivialZeroResidueHead T (fun s => F s + G s) =
      nontrivialZeroResidueHead T F +
        nontrivialZeroResidueHead T G := by
  classical
  simp [nontrivialZeroResidueHead, mul_add, Finset.sum_add_distrib]

end GRWTSK.RiemannHypothesis
```
