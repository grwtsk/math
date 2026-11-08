# Prime-smooth Möbius orbit energy source ledger

Local mathematical attribution: grwtsk contributors.

## grwtsk/math source chain

Pinned inspected head:

`grwtsk/math@fea5aca39bea76e71d18a48b85001becf1223f35`.

- `MoebiusPrimeSmoothFiniteConvolution.lean`, blob
  `21f38bfe752ab389fc83a7546504509df01ec438`: exact original rough
  coefficient, selected-prime-smooth divisor convolution, and exact finite
  rough/matched Mertens prefixes.
- `MoebiusBalancedTwoSidedPNTDense.lean`, blob
  `8abba800d86af6cee6065b11dfff52713ae85785`: original rough/matched tags,
  dense ordered rectangles, finite Euler weights, and the near-critical prime
  cutoff.
- `FiniteResponseSum.lean`, blob
  `15402baec3be3c090a23f9ac1943124e16357dd0`: unchanged causal response,
  finite-inventory Fubini, complete pickup Gram, and
  `pickupEnergy = pickupDiagonal + pickupCross`.
- `GoodScaleEnergyCriterion.lean`, blob
  `ca3ae4975b20cf796a167308a9e87546c6001c41`: monotone energy gap filling and
  canonical RH return from affinely frequent subexponential energy scales.
- `LiouvilleWeightedPrefixFinitePrimeOrbits.lean`, blob
  `573e7943e6c072244eccc82673a23ca831f43a00`: analogous finite-prime orbit
  payment for a different weighted-prefix kernel and the fixed-prime
  obstruction.
- `MoebiusPrimeDilationPointSpectrumInterval.lean`, blob
  `23b1fde44de5c8a9a81422207c253b0993edc30c`: logarithmic prime-dilation
  interval on a nonseparable counting-`l2` carrier; useful for spectral
  organization but not a source-preserving causal Gram replacement.

## Retained unpublished predecessor package

- `MoebiusPrimeDilationStarCompensation.lean`, SHA-256
  `3df62fb88bd890dd74e06f483da818b46153c8fc8b162c92f36308f3dae4ed48`,
  expected Git blob `bad0f83dbbaa12e871745520f219905031f9a921`:
  exact parent/child/child-child star partition and forced Type-II
  compensation.  It was not present on inspected main and remains an additive
  publication obligation.

## Mathematical correspondence

For a finite prime bank `P`, define

\[
  \kappa_P(d)=\mu(d)1_{P\text{-smooth}}(d),\qquad
  \rho_P(q)=\mu(q)1_{P\text{-rough}}(q).
\]

The exact arithmetic identity is `mu = kappa_P * rho_P`.  The unchanged causal
waveform decomposes into complete rough-core orbits.  Their internal energy is
bounded by

\[
  \prod_{p\in P}(1+p^{-1/2})^2\,\operatorname{pickupDiagonal}(T).
\]

For prime banks up to

\[
  (1+T)^2(\log(2+T))^\alpha,\qquad 0\le\alpha<2,
\]

classical Chebyshev prime counting and partial summation make this internal
allowance subexponential in physical time.

## OpenAI comparison

Pinned comparison source:

`openai/math@4eaee87548250b2682affda7d05d947c05554bae`, preprint
*Weighted Dilation Graphs, Smooth Shifted Primes, and Totient Fibers*.

- `build/sections/02-transference.tex`, blob
  `54c369cc5fc46508667b5f54b5cb81221edb46ef`: transfer of ideal prime-label
  operator norms to divisibility-constrained physical dilation graphs.
- `build/sections/05-type-ii.tex`, blob
  `691fdb02da72e5e6bde7eb562083ee50096c5197`: Type-II estimate with arbitrary
  logarithmic savings at scale `x`.

These results motivate a possible treatment of the remaining cross-core graph.
Their quantitative output is `x (log x)^{-A}`, not an all-positive-rate
`x^epsilon` bound, and their physical graph/kernel is not the Möbius causal
Gram.  No source-exact transfer is asserted here.

## Standard external inputs

- finite Euler products and squarefree divisor expansion;
- the classical Chebyshev upper bound `pi(x) << x/log x`;
- partial summation, giving
  `sum_{p<=Y} p^(-1/2) << sqrt(Y)/log Y`;
- triangle inequality/Minkowski in a real Hilbert space.

No external theorem is used to supply the remaining signed between-core
cancellation.

## Nonclaims

- No all-positive-rate between-core bound is proved.
- No endpoint arithmetic supplier is proved.
- No terminal-prime star is paid by the near-critical Euler norm.
- No point-spectrum interval is used as an orthogonal replacement for the
  causal response Gram.
- No compilation, expected-type, fresh-kernel, native-execution, or transitive
  axiom receipt is claimed.
- RH remains unproved.

## Reconciled current source and external comparison

- `grwtsk/math@cedf6c48caabd9b2d92ec4e45da6355bee863d81`,
  `MoebiusCausalMertensSquareEnergyIntegration.lean`, Git blob
  `c01a1e892c14343aee002554172373e9190f6611`: exact original-energy finite
  Fubini, sharper absolute-prefix drop integral and positive Mertens-square
  Gram-drop budget.
- Companion review blob `eb98ca1d49eb623a89f26752b653c24d8f83dd27`:
  documents the weighted-Cauchy half-exponent loss and the independent
  arithmetic boundary.
- `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, weighted dilation
  graph preprint, `02-transference.tex` blob
  `54c369cc5fc46508667b5f54b5cb81221edb46ef` and `05-type-ii.tex` blob
  `691fdb02da72e5e6bde7eb562083ee50096c5197`: ideal-to-physical graph
  transference and Type-II logarithmic savings.  Their current quantitative
  scale is insufficient for the all-positive-rate causal target after
  `x=exp(T)`.
- `grwtsk/math@24f84f64e743ace636fd03ba8f81cc2d2c0b569f`,
  `MoebiusCausalMertensSpike.lean`, Git blob
  `38e1ccdadd1ba9e1ea99dbc73e1be465f308b48d`: original-source finite prefix
  persistence and visible fifth-power local-energy/rate-equivalence targets.
  The orbit source localizes this spike lower bound in the complete net
  between-core packet after the all-rate same-core payment.
