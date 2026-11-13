# ZNC-v1-04: negative_full_source_implies_negative_nonpole_on_kernel

Local author: grwtsk contributors, 2026-11-12. MSC2020 11M26, 11M41, 15A03.
Maintained source: ../WeilZetaNegativeMomentCodimension.lean
Fully qualified:
GRWTSK.NumberTheory.WeilQuadraticForm.ZetaNegativeMomentCodimension.negative_full_source_implies_negative_nonpole_on_kernel
Source blob SHA: 6214edbeb4903d9178350402585c9d45b625e12b

## Literal theorem statement

~~~lean
theorem negative_full_source_implies_negative_nonpole_on_kernel
    [FiniteDimensional ℂ V] (source : V →ₗ[ℂ] (ℝ → ℂ))
    (A : ℝ)
    (hf : ∀ v : V, Integrable (source v) volume)
    (hs : ∀ (v : V) (t : ℝ), A < |t| → source v t = 0)
    (nonpole : V → ℝ)
    (hnegative : ∀ v : V, v ≠ 0 →
      nonpole v + sourcePole (source v) < 0) :
    let ℓ := sourceNegativeMomentLinear source A hf hs
    Module.finrank ℂ V ≤ Module.finrank ℂ (LinearMap.ker ℓ) + 1 ∧
      (∀ v : LinearMap.ker ℓ, (v : V) ≠ 0 → nonpole v.1 < 0)
~~~

## Mathematical proof

Take a finite-dimensional source family on which the original full source decomposes as nonpole(v)+sourcePole(source v) and is strictly negative on each nonzero v. Apply ZNC-v1-03: the moment kernel has codimension at most one and there the original signed pole is nonnegative. Hence nonpole(v)<0 for every nonzero vector in the moment kernel. This is a return to the unchanged source negative directions, not an assumption that the nonpole component has a favorable sign everywhere.

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
