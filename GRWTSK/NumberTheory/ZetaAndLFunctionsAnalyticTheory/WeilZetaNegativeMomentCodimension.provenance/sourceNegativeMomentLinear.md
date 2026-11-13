# ZNC-v1-02: sourceNegativeMomentLinear

Local author: grwtsk contributors. Edition 2026-11-12.
MSC2020 11M26 (primary), 11M41, 15A03, 46C20.
Maintained canonical source: ../WeilZetaNegativeMomentCodimension.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.ZetaNegativeMomentCodimension.sourceNegativeMomentLinear
Source candidate blob SHA: 6214edbeb4903d9178350402585c9d45b625e12b

## Literal definition statement

~~~lean
def sourceNegativeMomentLinear (source : V →ₗ[ℂ] (ℝ → ℂ))
    (A : ℝ)
    (hf : ∀ v : V, Integrable (source v) volume)
    (hs : ∀ (v : V) (t : ℝ), A < |t| → source v t = 0) :
    V →ₗ[ℂ] ℂ
~~~

## Primary proof and typed hypotheses

The actual source map has values f_v(t), integrable on the original symmetric support. Integrability of f_v(t)*exp(±t/2) is discharged by ZNC-v1-01. The original plusMoment and minusMoment are linear under finite additions and complex scalar multiplication by genuine Lebesgue integral_add and integral_const_mul; their difference is a complex LinearMap. This is the literal M_plus-M_minus pole functional, not an arbitrary certificate field.

## Original arithmetic consumer

The pole here is the ORIGINAL complete conductor-one zeta
correlation, not a replacement positivity operator:
  WeilSourcePrimeCorrelation.correlation ->
  WeilCorrelationFourier.zeta_pole_correlation ->
  WeilZetaPoleRankOneReturn.plusMoment/minusMoment/sourcePole ->
  ZetaNegativeMomentCodimension.sourceNegativeMomentLinear ->
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
