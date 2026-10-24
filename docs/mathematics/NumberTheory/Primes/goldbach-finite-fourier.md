# Goldbach weighted mass and finite additive projector

This source increment advances issue #259 through two exact finite bridges.

For an inclusive cutoff `N`, `goldbachLogMass N` sums

\[
\log p\,\log q
\]

over ordered pairs in the complete box `0 <= p,q <= N` satisfying `p+q=N`,
with composite coordinates assigned weight zero. Its strict positivity is
proved equivalent to the existing `goldbachCount N > 0`; the numerical mass is
not identified with the count.

For a modulus `q`, `goldbachProjectorMass q N` inserts the canonical normalized
additive-character projector from
`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector`. Under the explicit bound

\[
2N<q,
\]

the modular equation cannot wrap, and the projector mass equals the real
Goldbach logarithmic mass embedded in the complex numbers.

The no-wrap condition is not cosmetic. Without it, the finite character
average recognizes a congruence modulo `q`, not an equality of natural
numbers. The source controls retain a concrete wraparound example.

## Remaining obligations

This increment does not formalize the continuous integral

\[
\int_0^1 S_N(\alpha)^2 e^{-2\pi iN\alpha}\,d\alpha,
\]

nor local congruence factors, a major/minor-arc decomposition, a signed
residual estimate, finite exceptional-input coverage, or strong Goldbach.
Those are separate source and analytic obligations. The new declarations are
`SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`.
