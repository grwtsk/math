# norm_contour_weight_mul_im_sq_le

Author: grwtsk contributors. Version 1, 2026-11-12 America/Los_Angeles.
Statement locator: WMED-v1-2.
Declaration: `GRWTSK.NumberTheory.WeilMellinEnergyDecay.norm_contour_weight_mul_im_sq_le`.
Source: [WeilMellinEnergyDecay.lean](../WeilMellinEnergyDecay.lean).
Analytical companion: [WeilMellinEnergyDecay.md](../WeilMellinEnergyDecay.md).
Coordination: math#1801, scope comment 6828336051.

## Literal formal statement

The following is the literal declaration type; imports, open namespaces and
notation are exactly those of the maintained source. Admissible, correlation,
CriticalStripZero and zeroMultiplicity are the existing canonical objects.

```lean
theorem norm_contour_weight_mul_im_sq_le
    {f : ℝ → ℂ} (hf : Admissible f) {A : ℝ} (hA : 0 < A)
    (hs : tsupport f ⊆ Icc (-A) A) (s : ℂ) :
    s.im ^ 2 * ‖∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))‖ ≤
      (2 * A * Real.exp (2 * A * |s.re - 1 / 2|)) *
        (∫ x : ℝ, ‖deriv f x‖ ^ 2)
```

## Primary analytical argument

At z=-i*(s-1/2), reuse the undivided order-one Fourier estimate at z and conjugate(z). Their norms and absolute imaginary displacements agree. Multiply the nonnegative bounds and return through the existing exact reflected-product identity. Bound |Im(s)| by |s-1/2|, then pay the derivative L1 cost by WMED-v1-1.

## Consumer and return

The strip-energy theorem obtains the pointwise source-zero majorant used in the complete written tail estimate; there is no unexplained transform-decay premise.

## Individual source and prior-art comparison

Inspected parent: `grwtsk/math@af9b7a05afbf79d4def070fa96f9091b2f177160`.
Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Local input `FourierDerivativeDecay.lean`, blob
`1df24b0bdcc1be9ca263a4a5fa16da04a74a9e82`, establishes actual integration
by parts and derivative integrability. `WeilContourWeight` supplies the exact
signed reflected-product identity. `WeilFourierSupportQuadrature`, blob
`2e44c18f3c63640e8db83d8355a3ce6400c16c95`, supplies the support-moment bound.
`DirichletZeroMultiplicity`, blob `ef9d9f861731f11e446dd59bd60c8896b1e5462d`,
provides the unchanged source index and analytic multiplicities where used.
The literal proof determines which of these declarations it actually consumes.

This declaration is a local consequence of those sources, NOT a direct
formalization of an external Jensen or proportion theorem. The dated
2026-11-12 comparison for its infinite-tail consumer is Alpöge--Furman's
`anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`,
`zeta23/Zeta23/ThmE/LocalCountChi.lean`, blob
`603d34e2374063f482905e72c84e5666f23275ad`, declaration
`Zeta23.ThmE.localCountChi_uniform_proof`, accompanying arXiv:2608.13637v2.
The companion develops a distinct constant bookkeeping and an explicit zeta
pole-removal branch at the WRITTEN level. No external Lean body is copied.
The optional seven-eighths branch is separately pinned in companion section 4;
it is not a hidden hypothesis of the ordinary-strip finite-source theorem.
No exhaustive prior-art review or novelty claim is made. Originality UNASSESSED.
Mathlib authorship and Apache-2.0 licensing are unchanged; local source is MIT.

## Hostile cases and evidence

The assertion remains an undivided inequality at Im(s)=0. The reflected product is not replaced by an absolute square; norms are taken only for an error budget.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent analytical review and numerical functional
certification: NOT_RUN, including imported local candidates. Lexical or scalar
algebra checks do not prove formal acceptance. No RH/GRH conclusion or
all-test prime--gamma--pole sign is claimed.
