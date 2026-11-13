# SWPR-v1-01: smoothWindow_support_subset

Local author: grwtsk contributors, 2026-11-12.
MSC2020 11M26 (primary), 11M41, 46C20.
Maintained source ../WeilSmoothWindowPoleReturn.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.SmoothWindowPoleReturn.smoothWindow_support_subset
Source-proof-candidate Git blob 11bba14a232de82700aa1c23a20db8eb19bcf1be.

## Literal theorem statement

~~~lean
theorem smoothWindow_support_subset (A : ℝ) (f : smoothWindow A) :
    Function.support (f : ℝ → ℂ) ⊆ Icc (-A) A
~~~

## Complete local argument

Direct from the original pointwise support predicate, support(f) lies in Icc(-A,A). For each t with f(t)≠0, if |t|>A then the source support hypothesis gives f(t)=0, contradiction.

## Original arithmetic consumer, retained quantifiers and evidence

Discharges the precise compact-support and topological support premises for the canonical smooth test domain.

The test domain is the original globally C-infinity complex functions
vanishing pointwise outside the fixed symmetric support window,
not a new spectral or periodically extended model.
The unchanged native source includes
WeilNegativeWitness.Admissible,
SourcePrimeCorrelation.zeta_hasSum_physical_arithmetic,
LowSchur.activePrimePowers and primeWeight,
OddRootProjection.gammaCorrectionDensity and gammaConstant,
WeilZetaPoleRankOneReturn.sourcePole (BOTH signed pole orientations),
and ZetaNegativeMomentCodimension.sourceNegativeMomentLinear.
All complex coefficients, conductor-one source, actual pole signs
and full von Mangoldt prime-power weights remain.
The smooth carrier/zero-side identity does NOT prove
the required universal sign or independent RH criterion.

Prior art: standard compact support, smooth submodules,
finite-dimensional complex rank-nullity and integrable Lebesgue
functional. The full zeta arithmetic source is Connes--Consani--
Moscovici, Zeta Spectral Triples (arXiv:2511.22755v1),
equations (3.19)--(3.20); Bombieri (2000) studies negative
directions of the original Weil form. Novelty UNASSESSED.

Inspected grwtsk/math main at
e9e56bc167d7de60304074be675e79ee2fc3f979,
Lean leanprover/lean4:v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE: Lean elaboration NOT_RUN,
complete dependency build NOT_RUN, fresh kernel replay NOT_RUN,
transitive axiom audit NOT_RUN, independent review NOT_RUN,
certified whole-form numerical evaluation NOT_RUN.
No sorry, admit, research axiom, RH or primitive Dirichlet GRH.
