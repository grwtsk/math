# Support-relative Lipschitz budget for the true Fourier core

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Local declaration: `GRWTSK.NumberTheory.WeilFourierSupportQuadrature.admissible_supported_coreSlope_le`.
Source: [WeilFourierSupportQuadrature.lean](../WeilFourierSupportQuadrature.lean).
Analytical companion: [sections 1--7](../WeilFourierSupportQuadrature.md).
Coordination: math#1801, scope comment 6817068740.

## Typed statement and retained scope

For sigma>0, A>0, every N and every canonical supported complex test, bound the pre-existing coreSlope by (2*A^2*H_N+A*J_N)*M0/pi. No spectral or positivity hypothesis is added.

```lean
theorem admissible_supported_coreSlope_le {sigma A : ℝ}
    (hsigma : 0 < sigma) (hA : 0 < A) (N : ℕ)
    {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) :
    coreSlope sigma N f ≤
      ((2 * A ^ 2 * reciprocalCap sigma N + A * slopeCap sigma N) / Real.pi) *
        (∫ x : ℝ, ‖f x‖ ^ 2)
```

## Primary derivation, provenance and comparison

Use the two proved supported moments. Multiply Lx<=A*L0 by L0>=0, then L0^2<=2*A*M0 by A>0, obtaining L0*Lx<=2*A^2*M0. Establish the finite caps H_N and J_N nonnegative and substitute both moment bounds into the original definition of coreSlope. Positive pi and exact field algebra give the displayed coefficient.

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

The private gridBudget_le_mass lemma and both public supported midpoint/sample enclosures; ultimately finite_family_midpoint_enclosure.

## Falsification and remaining obligations

N=0 makes the finite multiplier and the grid coefficient zero, not the infinite gamma remainder. The bound is dimension-free but depends on A; it is an upper error/growth estimate, not arithmetic sign control.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent analytical review and numerical functional
certification: NOT_RUN, including imported local candidates. Publication and
source-text/algebra checks are not formal acceptance. Full source convention
identification, signed-zero explicit formula/detection and the all-test,
all-window arithmetic prime--gamma--pole sign inequality remain separate.
