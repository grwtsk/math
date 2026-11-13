# ZNC-v1-03: sourcePole_nonneg_on_codimension_one_kernel

Local author: grwtsk contributors, 2026-11-12. MSC2020 11M26, 11M41, 15A03.
Maintained source: ../WeilZetaNegativeMomentCodimension.lean
Fully qualified:
GRWTSK.NumberTheory.WeilQuadraticForm.ZetaNegativeMomentCodimension.sourcePole_nonneg_on_codimension_one_kernel
Source blob SHA: 6214edbeb4903d9178350402585c9d45b625e12b

## Literal theorem statement

~~~lean
theorem sourcePole_nonneg_on_codimension_one_kernel
    [FiniteDimensional ℂ V] (source : V →ₗ[ℂ] (ℝ → ℂ))
    (A : ℝ)
    (hf : ∀ v : V, Integrable (source v) volume)
    (hs : ∀ (v : V) (t : ℝ), A < |t| → source v t = 0) :
    let ℓ := sourceNegativeMomentLinear source A hf hs
    Module.finrank ℂ V ≤ Module.finrank ℂ (LinearMap.ker ℓ) + 1 ∧
      (∀ v : LinearMap.ker ℓ, 0 ≤ sourcePole (source v.1))
~~~

## Mathematical proof

Let L be the ACTUAL complex linear map sourceNegativeMomentLinear from original L1 source integrals. Finite-dimensional rank-nullity gives dim_C V=dim_C(im L)+dim_C(ker L); since im L is a subspace of C its dimension is <=1. Thus dim_C(ker L)>=dim_C V-1. Every vector in ker L has plusMoment(source v)=minusMoment(source v). Apply the previously published sourcePole_nonneg_on_negative_kernel with the IDENTICAL source Integrable and pointwise support hypotheses; the COMPLETE two-orientation zeta pole integral is nonnegative on the kernel.

## Exact source return and other obligations

This theorem uses the actual
WeilZetaPoleRankOneReturn.plusMoment/minusMoment/sourcePole and the
native WeilCorrelationFourier.zeta_pole_correlation theorem, preserving
the complete conductor-one W(0)+W(1) pair, even if negative.
The native prime terms, gamma/parity, analytic completion and
zero multiplicities are not rewritten. The resulting codimension
correction is an ingredient of WeilSignedDeficitNegativeIndex.md
and its original pole-inclusive zeta form. The application to the
canonical supported C_c^infinity submodule and the actual
Fourier/Plancherel/Bessel source trace are not Lean declarations
in this module. No positivity of the nonpole form is asserted.

Classical rank-nullity and complex integral linearity;
prior comparison Bombieri (2000), Remarks on Weil's quadratic
functional, I, Rend. Lincei 11; primary arithmetic formula
Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20).
Novelty UNASSESSED.

Inspected main: 4aaf5eea7f62c1f8f2e54d2f29c93c5750ebc8cd.
Lean leanprover/lean4:v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Status SOURCE_PROOF_CANDIDATE; elaboration NOT_RUN,
complete dependency build NOT_RUN, fresh kernel replay NOT_RUN,
transitive axiom audit NOT_RUN, independent review NOT_RUN,
certified whole-form computation NOT_RUN.
No sorry/admit/new research axiom, accepted full zeta sign,
RH or primitive Dirichlet GRH claim.
