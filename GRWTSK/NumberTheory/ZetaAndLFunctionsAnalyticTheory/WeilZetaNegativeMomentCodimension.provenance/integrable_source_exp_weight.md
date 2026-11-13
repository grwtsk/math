# ZNC-v1-01: integrable_source_exp_weight

Local author: grwtsk contributors. Edition 2026-11-12.
MSC2020 11M26 (primary), 11M41, 15A03, 46C20.
Maintained canonical source: ../WeilZetaNegativeMomentCodimension.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.ZetaNegativeMomentCodimension.integrable_source_exp_weight
Source candidate blob SHA: 6214edbeb4903d9178350402585c9d45b625e12b

## Literal theorem statement

~~~lean
theorem integrable_source_exp_weight (f : ℝ → ℂ) (A y : ℝ)
    (hf : Integrable f volume)
    (hs : ∀ t : ℝ, A < |t| → f t = 0) :
    Integrable (fun t : ℝ => f t * (Real.exp (y * t) : ℂ)) volume
~~~

## Primary proof and typed hypotheses

Given f integrable with pointwise support in [-A,A], the original exponential kernel exp(y*t) obeys exp(y*t)<=exp(A*|y|) on support. Thus |f(t)*exp(y*t)|<=|f(t)|*exp(A*|y|) everywhere, while the product is measurable. Monotonicity of Integrable under the actual L1 majorant proves the weighted integral exists. No weighted integrability is introduced as a separate hypothesis.

## Original arithmetic consumer

The pole here is the ORIGINAL complete conductor-one zeta
correlation, not a replacement positivity operator:
  WeilSourcePrimeCorrelation.correlation ->
  WeilCorrelationFourier.zeta_pole_correlation ->
  WeilZetaPoleRankOneReturn.plusMoment/minusMoment/sourcePole ->
  ZetaNegativeMomentCodimension.integrable_source_exp_weight ->
  WeilSignedDeficitNegativeIndex.md (full original zeta negative index).
Both signed pole orientations W(0)+W(1), all von Mangoldt powers,
conductor/parity gamma and real/complex zero locations remain intact.
This declaration supplies only the pole/linear-algebra leg,
NOT the full completed-L-function zero sum nor the all-window sign.
The actual source map's instantiation on the canonical smooth
supported test submodule and Fourier/Plancherel/Bessel trace
remain separate obligations; no source integrability assumption
is replaced by an RH-dependent hypothesis.

## Prior art and verification

Classical Lebesgue dominated integrability, complex linear
integration and finite-dimensional rank-nullity. Primary Weil
normalization: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1 (3.19)--(3.20).
Negative-direction context: Bombieri (2000), Remarks on
Weil's quadratic functional, I, Rendiconti Lincei 11.
No theorem-level novelty claim or independent review.

Source base grwtsk/math/main
4aaf5eea7f62c1f8f2e54d2f29c93c5750ebc8cd.
Exact pins Lean leanprover/lean4:v4.34.1 and
mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE: Lean elaboration NOT_RUN;
complete dependency build NOT_RUN; fresh kernel replay
NOT_RUN; transitive axiom audit NOT_RUN; certified numerical
whole-form evaluation NOT_RUN; independent review NOT_RUN;
novelty UNASSESSED. No sorry, admit, new research axiom,
weakened RH or primitive GRH target.
