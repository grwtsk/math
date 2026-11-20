# Gaussian packets and full-strip bounds

Local attribution: grwtsk contributors.

## Source correspondence

Maintained file: [WeilGaussianPackets.lean](WeilGaussianPackets.lean), namespace
`GRWTSK.NumberTheory.WeilGaussianPackets`. The consumer is a quantitative waveform
approximation to a specified Weil form. The formulas implement the Gaussian
conventions in the supplied architecture specification, SHA256
`d4d153db89e3505e17dcb002053f13f7bb8e53b80eb4f200f8fe328e27300dea`.

The integral evaluation uses the existing primary mathematical source in
[Mathlib's Gaussian integral development](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gaussian/GaussianIntegral.lean),
`integral_gaussian`, and the
[bilateral complex Gaussian development](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gaussian/FourierTransform.lean),
`integral_cexp_quadratic` and `integrable_cexp_quadratic`. Upstream Mathlib
authorship and licensing remain unchanged. These are local consequences of
those existing library theorems, not newly established paper theorems.

## Integral statements and normalization

For `a > 0`, the packet is `g_a(t)=exp(-a*t^2)`. Completing the square proves

\[
C_a(x)=\int_{\mathbb R}g_a(t)g_a(t+x)\,dt
=\sqrt{\frac{\pi}{2a}}\,e^{-ax^2/2}.
\]

`correlation_zero_pos` proves that the actual zero-shift integral is positive.
`correlation_integrable` proves integrability of the real product for every shift
when `a > 0`, independently of totalized integral conventions.
`normalizedCorrelation_eq` divides by that integral and obtains
`exp(-a*x^2/2)`. For the original width convention `a=1/(4*sigma^2)`, this is
`exp(-x^2/(8*sigma^2))`. The file normalizes the correlation; it does not silently
call the unnormalized packet an L2-unit vector.

The actual bilateral Laplace integral is integrable for every complex `z` and
equals

\[
\int_{\mathbb R}e^{-at^2+zt}\,dt
= (\pi/a)^{1/2}\exp\!\left(\frac{z^2}{4a}\right),
\]

where the Lean expression uses the specified complex power. These are
`laplace_integrable` and `laplace_eq`.

## Derivatives and full-strip estimate

For `k_a(x)=exp(-a*x^2)`, the source proves both derivatives and

\[
(1-2ax^2)k_a(x)=-\frac1{2a}k_a''(x)\qquad(a\ne0).
\]

This polynomial-Gaussian function is defined as `oddCorrelationKernel`.
Its identification with the normalized integral autocorrelation of a first
Hermite packet is an additional moment/integration bridge, not asserted here.

For `z=delta+i*gamma`, `spectralPacket` is exactly
`exp(2*sigma^2*z^2-tau*z)`. The exponential norm identity and
`|delta| ≤ 1/2` prove

\[
\left|e^{2\sigma^2z^2-\tau z}\right|
\le e^{\sigma^2/2+|\tau|/2}e^{-2\sigma^2\gamma^2}.
\]

The bound allows every horizontal position in the centered closed critical
strip. No RH hypothesis or replacement of off-line zeros by their ordinates
is used. `norm_spectralPacket_on_line` gives the corresponding equality on the
line. `odd_multiplier_on_line` proves the multiplier is `+4*sigma^2*gamma^2`,
and `odd_multiplier_nonneg` proves its nonnegativity. An artificial odd-sector
minus sign would contradict this exact calculation.

## Remaining arithmetic return

The complete zero family, analytic multiplicities, full explicit formula,
prime-power sums, pole terms, archimedean contribution, admissibility of Gaussian
tests in that formula, and the complete infinite tail remain separate inputs.
The existing `GaussianConjugatePairing` development uses a different rotated
spectral coordinate; a consumer must state its conversion explicitly. This
module proves no RH, GRH, or finite-data reconstruction of all zeros.

## Verification and review

Starting source pin: `9f997b28e66f1997c9c7c6e1318b08081e2bfd90`.
Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Direct compilation of the corrected source succeeded without warnings. A
separate mathematical review confirmed the amplitude, width, full-strip
envelope, and odd multiplier, and identified the retained Hermite integral
bridge above. Final source-bound kernel/axiom evidence is recorded in
[issue #1839](https://github.com/grwtsk/math/issues/1839). An independent external
checker and the full repository build are not claimed.

## Exact maintained source

The checked Lean source has SHA256
`e1952ac873d403ff9a588d7f5e4514fea2ac5032d95db28a27c8f319f410b1ef`. The checks above and the final issue record refer to these
bytes; later source edits require their own evidence.

## Final integration verification

This exact source was included in the successful combined `leanchecker --fresh`
replay of the eight core modules and their imported constants under the pinned
Lean toolchain. The combined declaration audit also passed, with no axioms outside
`propext`, `Classical.choice`, and `Quot.sound`. This is a fresh Lean-kernel replay,
not a checker implemented independently of Lean. The coordinating
[issue #1839](https://github.com/grwtsk/math/issues/1839) binds the final publication
to these source hashes and records the separately checked binary-character module.
