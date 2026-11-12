# WFSQ-v1-1: support supplies the original physical moments

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Local declaration: `GRWTSK.NumberTheory.WeilFourierSupportQuadrature.admissible_supported_moment_bounds`.
Source: [WeilFourierSupportQuadrature.lean](../WeilFourierSupportQuadrature.lean).
Analytical companion: [sections 1--7](../WeilFourierSupportQuadrature.md).
Coordination: math#1801, scope comment 6817068740.

## Typed statement and retained scope

For every canonical complex admissible test supported pointwise in [-A,A], A>0, derive L0^2<=2*A*M0 and Lx<=A*L0. No real/even restriction, normalized mass, sampled test or Lp certificate is assumed.

```lean
theorem admissible_supported_moment_bounds {f : ℝ → ℂ} (hf : Admissible f)
    {A : ℝ} (hA : 0 < A)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) :
    l1Mass f ^ 2 ≤ 2 * A * (∫ x : ℝ, ‖f x‖ ^ 2) ∧
      firstMoment f ≤ A * l1Mass f
```

## Primary derivation, provenance and comparison

The unchanged test has integrable norm and squared norm by its Schwartz embedding and admissible_energy_integrable. Localize those integrals to the support interval. Integrate (2*A*norm(f)-L0)^2>=0, expand only after establishing each term integrable, and use interval length 2*A. Cancellation uses A>0, not M0>0. For the first moment, pointwise |x|*norm(f)<=A*norm(f) also supplies the integrable majorant before comparison.

This is a local elementary consequence, not an attributed external paper theorem.
Parent source: grwtsk/math@7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c; actual imported
WeilFourierQuadrature blob `be5e3afa9925623c322d60518aab08a99d3e5e14`,
WeilFourierMoments blob `aa20033bb58f9f99ed31e71f33e0a1a2af08136f`,
ArchimedeanMomentBounds blob `72d24ec6c700c124fcf09d6632f2f56d1010fb66`.
Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Upstream Mathlib authorship and Apache-2.0 licensing are unchanged; this local
source remains MIT. Exact whole-cell and Fourier-moment arguments and their
individual source provenance are retained, not independently reproved here.
The 2026-11-11 comparison is limited to the inspected local chain and relevant
Mathlib APIs; it is not a corpus-wide prior-art or duplicate audit. Originality
UNASSESSED; no novelty claim or independent verification claim.

## Consumer and return

admissible_supported_coreSlope_le in the same module; this supplies its physical-moment premise rather than accepting an arbitrary moment certificate.

## Falsification and remaining obligations

The zero test is included; A=0 is excluded but supports no nonzero continuous test. Translations out of the stated window are not allowed. A Gaussian is not a permitted compact test. Cauchy--Schwarz against the support indicator is an alternative written derivation, not an independent checked proof.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent analytical review and numerical functional
certification: NOT_RUN, including imported local candidates. Publication and
source-text/algebra checks are not formal acceptance. Full source convention
identification, signed-zero explicit formula/detection and the all-test,
all-window arithmetic prime--gamma--pole sign inequality remain separate.
