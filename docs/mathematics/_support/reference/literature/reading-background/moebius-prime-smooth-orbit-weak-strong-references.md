# Prime-smooth orbit weak/strong reduction: source and literature ledger

Local mathematical attribution: grwtsk contributors. Date: 2026-11-02.

## Repository sources

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPrimeSmoothOrbitEnergy.lean`: exact selected-prime orbit waveforms, internal/cross energy identity, near-critical internal payment, Mertens comparisons and conditional RH return. Retained source SHA-256 `c8ba0046bb8cccba1f749897c85a36224f8f3abd16d6cb8062dd43d1cc8d996a`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPrimeDilationStarCompensation.lean`: exact local parent/children Gram compensation. Retained source SHA-256 `3df62fb88bd890dd74e06f483da818b46153c8fc8b162c92f36308f3dae4ed48`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalGramCauchy.lean`, Git blob `01c7128c5c81664405b6fe4d1a373dfdbb0a51dc`: real quadratic proof of the actual causal two-source Gram determinant inequality.
- `GRWTSK/Combinatorics/GraphTheory/FiniteWeakGramPairs.lean`, Git blob `70039a25bdbccd3bb15aabf13b5000c8b964489f`: complete ordered weak-pair estimate from a diagonal threshold and Gram Cauchy.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEnergyMatchedWeakResidual.lean`, Git blob `2a3b46e1bb568217732c0a31c927327e03c0b0ff`: integer-level energy-matched weak residual and zero near-angular packet.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPrimeSmoothFiniteConvolution.lean`, Git blob `21f38bfe752ab389fc83a7546504509df01ec438`: exact original rough/prime-smooth convolution and Mertens prefixes.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/GoodScaleEnergyCriterion.lean`, Git blob `ca3ae4975b20cf796a167308a9e87546c6001c41`: affinely frequent complete-energy return to canonical RH.

## Standard mathematical input

The finite Gram determinant inequality is ordinary Cauchy--Schwarz in a real
Hilbert space, proved here from nonnegativity of `||t v+w||^2` so that the
zero-diagonal boundary is explicit. The threshold obstruction uses the rank-one
Gram matrix with every entry `1/N`; it is a finite linear-algebra example and
requires no external theorem.

## External comparison

OpenAI, *Weighted Dilation Graphs, Smooth Shifted Primes, and Totient Fibers*,
repository `openai/math`, revision
`4eaee87548250b2682affda7d05d947c05554bae`, especially:

- `build/sections/02-transference.tex`, blob
  `54c369cc5fc46508667b5f54b5cb81221edb46ef`;
- `build/sections/05-type-ii.tex`, blob
  `691fdb02da72e5e6bde7eb562083ee50096c5197`.

Those results supply graph transference and logarithmic Type-II savings at an
initial arithmetic scale `x`. Under `x=e^T`, the current bounds remain
`exp((1-o(1))T)` and do not prove the all-positive-rate strong-orbit estimate.
No external theorem is imported as a Lean dependency by this package.

## Scope and nonclaims

The weak/strong reduction preserves the actual Möbius coefficients, complete
selected-prime orbit waveforms, causal births, both ordered cross orientations,
and the original good-scale quantifiers. It proves no arithmetic cancellation
for the strong packet, no endpoint supplier, no zeta zero-free theorem, and no
Riemann Hypothesis theorem. All new declarations remain source proof candidates
until compilation and full verification.
