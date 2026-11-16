# Chebyshev band reduction through the 95-state machine

Local source attribution is grwtsk contributors. Formalization assistance by OpenAI Codex.

The [local arithmetic module](ChebyshevBandReduction.lean) works with the actual
Mathlib `Chebyshev.theta`. For $E(n)=n-\theta(n)$ and
$B(n)=\sqrt n(\log n)^2$, `BandBound` asserts
$E(n)-E(4^j)\le B(4^j)/6$ for every integer $j\ge7$ and
$4^j\le n\le4^{j+1}$. It remains an explicit premise.

The square-root factor doubles at each new band and the log factor increases.
Consequently $B(4^{j+1})\ge2B(4^j)$. Endpoint induction and the last partial
band yield $E(n)\le E(4^7)+B(n)/3$. The checked comparison
$17\cdot2^{23451}\le16\operatorname{primorial}(16384)$, converted through
Mathlib's log-primorial identity, gives $E(4^7)<129\le B(4^7)/6$.
The local result `GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ChebyshevBand.half_bound`
is the $E(n)\le B(n)/2$ bound at every integer $n\ge4^7$.

## Nonhalting

Local declaration
`GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ChebyshevBand.riemann95_nonhalting_of_bandBound`
in [ChebyshevBandCryptids.lean](ChebyshevBandCryptids.lean).

The upstream `Riemann95.halts_candidate_iff_counterexample` returns an
actual Shunia counterexample at $m+2$. The finite theorem rules out
$m+2\le21845$. Above that cutoff the local `half_bound` applies, and
`large_theta_bound_of_half_sqrt_log_sq` followed by
`not_shuniaCounterexample_of_theta_bound` rules out the very same indexed
counterexample. The local statement supplies a sufficient condition for
blank-tape nonhalting from `BandBound`. [Machine criterion](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L23) · [Finite prefix](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Analytic.lean#L462) · [Large-stage comparison](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Analytic.lean#L977)

## Riemann hypothesis

Local declaration
`GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ChebyshevBand.riemannHypothesis_of_bandBound`
in [ChebyshevBandCryptids.lean](ChebyshevBandCryptids.lean).

The upstream `Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis`
returns Mathlib's `RiemannHypothesis` from the negation of the exact machine
halting proposition. The sole local hypothesis is `BandBound`. [Blank-tape equivalence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean#L15)

As an external comparison, Schoenfeld's RH-conditional Theorem 10 (6.3)
implies `BandBound`. For $j\ge7$ and $n\le4^{j+1}$,
$B(n)\le(128/49)B(4^j)$, so the two endpoint errors cost at most
(177/(392\pi)\) times $B(4^j)$, below $1/6$.
This converse is an analytic comparison, with Lean verification `NOT_RUN`.
The closed primorial calculation only supplies the finite anchor.
[Schoenfeld, 1976, Theorem 10 (6.3)](https://www.ams.org/mcom/1976-30-134/S0025-5718-1976-0457374-X/S0025-5718-1976-0457374-X.pdf)

## Source and verification scope

The upstream source is Google DeepMind Cryptids at revision
`3647718b5df22e1a61462dec0376bd204526285a`, copyright Google LLC,
Apache-2.0. Source blobs for `Cryptids/Riemann95.lean`,
`Cryptids/Semantics/Riemann120/Analytic.lean`, and
`Cryptids/Semantics/Riemann95.lean` respectively
`3fd86d0b954485707b620846f36ccd98d5ba970f`,
`469ca1a628495aef02674162dce48c95cb6ec1ff`, and
`476d1101cb827e1a29ce61232d2e7b8b0727fecf`.
The local modules import the upstream declarations and add the conditional
composition. [Upstream repository](https://github.com/google-deepmind/cryptids/tree/3647718b5df22e1a61462dec0376bd204526285a)

- Local anchor and telescope compiled on Lean 4.34.1 and Mathlib
  `d13f23b723b8a846827a245b89c10fc7d3f11612` with `--trust=0` and warning
  errors enabled. The axiom audits of `FiniteAnchor.theta_anchor` and
  `half_bound` returned `propext`, `Classical.choice`, and `Quot.sound`.
- The handoff type-checked against the inspected upstream declaration types
  in a local signature check.
- Parsing, compilation, fresh kernel replay, and transitive axiom audit of
  the [isolated package](../../../docs/adaptations/environments/cryptids/)
  with Lean 4.35.0-rc4 and actual Cryptids imports remain `NOT_RUN`.
  Independent analytic review of the combined reduction remains `NOT_RUN`.
