# Complexity of the projected cyclic Fourier transform

Local attribution: grwtsk contributors.

The local `ResidueBandedFourierSoficPath.rotorDFT` reads 64 complex samples,
returns the first 33 bins, and divides each negative-character sum by 64.
The local Git blob is `00833d87cd5624bf50ec195f60e24fe3bdeea79e`.
[Local source at b7225b69](https://github.com/grwtsk/math/blob/b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c/GRWTSK/NumericalAnalysis/ResidueBandedFourierSoficPath.lean#L37-L50).
For $N=2m\ge2$, extend this exact formula to the first $m+1$ outputs.
The upstream inverse matrix uses rows indexed by the group, columns indexed
by characters, and coefficients $|G|^{-1}\chi(-g)$.
The exact circuit-scope supplier is
`OAI.LinearAlgebra.FiniteFourier.fourierComplexity` from solution module
`OAI.LinearAlgebra.FiniteFourier.Main`, with Comparator challenge blob
`9539a0731033462006266c8c8b7177da6bef8e4d` at `3344da5`.
[Pinned upstream definition](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/ComparatorChallenges/ExactFourier.lean#L202-L245).

Let $G=\mathbb Z/N$, let $\zeta$ be a primitive $N$-th root over an
admissible field $F$, and identify column $j$ with the character
$\chi_j(k)=\zeta^{jk}$. Every character is determined by its value at $1$.
The $N$ powers of $\zeta$ are distinct and exhaust the roots of $X^N-1$,
so this character indexing is bijective. The carrier equivalence in
`SquarePrimeFourierAddress.squareEquiv` establishes finite reindexing.
For $k>0$, the cyclic group $\mathbb Z/2^{2k}$ has exponent $2^{2k}$
whereas $(\mathbb Z/2^k)^2$ has exponent $2^k$, so those two group laws
cannot be identified via that map.
[Local carrier equivalence](https://github.com/grwtsk/math/blob/b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c/GRWTSK/Combinatorics/GraphTheory/SquarePrimeFourierAddress.lean#L32-L40).
In these coordinates the inverse sends
\[
y_k = N^{-1}\sum_{j=0}^{N-1} x_j\zeta^{-kj}.
\]
For $N=64$, $F=\mathbb C$, $\zeta=\exp(2\pi i/N)$, and the usual finite
representatives, its first $33$ rows give the local `rotorDFT`.

Let $F_N$ be the full inverse transform complexity and $R_N$ the complexity
of retaining rows $0,\ldots,m$. Both count binary linear gates with
weighted readouts as in the [upstream circuit model](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/ComparatorChallenges/ExactFourier.lean#L64-L127).
Restriction of the readouts gives $R_N\le F_N$.
Use a second copy of the projected circuit on
$x'_j=\zeta^{-mj}x_j$. Its output at original row $k$ is $y_{k+m}$,
where the index is reduced modulo $N$. The two readout families cover
every row of the full transform. Their overlapping endpoints need no
additional gates. To implement the modulated copy at no gate overhead,
multiply each coefficient on a reference to input wire $j$ by
$\zeta^{-mj}$, including a readout that directly references input $j$.
Leave references to previously computed registers unchanged.
Induction on the register sequence proves that the modified registers
and readouts evaluate the original circuit on $x'$. Concatenating two
copies with reindexed registers proves $F_N\le2R_N$.

Conditional on the cited two-sided family 379 bound for full inverse
transforms, the projection on this even-order family has the same
logarithmic exponent $1/2$ in exact binary linear gate count. Applied
to the existing fixed 64-point local observable, the return is the
finite gate-count comparison $F_{64}/2\le R_{64}\le F_{64}$.
The upstream theorem's existential constants give no measured crossover
or elapsed time. The formal circuit-relabeling proof remains open.
Extending the lower-bound transfer to border feedback with simultaneous
errors requires its own comparison of state counts, error ranks and
support sizes.

## Formal row identities

[`ProjectedFourier.lean`](ProjectedFourier.lean) uses the negative phase
$q=\zeta^{-1}$ directly, so row $k$ uses $q^{kj}$. Its theorem
`inverseRow_modulate` rewrites each term using
$(d+k)j=dj+kj$ and $q^{dj+kj}=q^{dj}q^{kj}$. Given $q^N=1$,
`inverseRow_period` proves the row period $N$. The two-pass theorem
`reassembleHalf_eq_fullTransform` selects the original row when $k<m$
and the modulated row at $k-m$ otherwise. Both indices are in the
projected output range, and $m+(k-m)=k$ in the second case.
No periodic identification is needed by this selection. Primitivity
and invertibility of $N$ are required to interpret the coefficient
formula as Fourier inversion over its field.

The local complex projection has a separate energy observable.
`cutoffResidual` doubles interior retained rows. This weighting represents
both members of a conjugate pair when the input is real, and the code
accepts arbitrary complex inputs. For example, a unit Fourier tone at
row $33$ has unit energy in the omitted full rows at cutoff $32$,
while the coded residual is zero because no retained row exceeds $32$.
The row reconstruction theorem has no real-input requirement and
supplies no full-spectrum energy identity for this residual.

The seven-color `frequencyResidue` map on row representatives gives
exact bin grouping. It cannot grade cyclic convolution modulo $64$
by addition in $\mathbb Z/7$. For example, $63+1$ reduces to $0$ modulo
$64$, while the colors of $63$ and $1$ add to $1$ modulo $7$.
For $a,b$ in $0,\ldots,63$, the exact correction for the output color is
\[
[(a+b)\bmod64]_7=[a]_7+[b]_7-[\lfloor(a+b)/64\rfloor]_7.
\]
This follows from the quotient-remainder identity and $64\equiv1\bmod7$.
An execution using this correction must separately account for the
no-wrap and wrap terms.

## Verification

The pure Mathlib module compiled with Lean 4.34.1 and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Its Git blob is
`91ab049935693eec608a90d76d8f7dfbb253fc4f`. Pinned Lean `#check` reported
the finite row shift, period, alternating-sign and reassembly statements
listed above. Every public declaration was audited under `--trust=0` and
used only axioms from `propext`, `Classical.choice` and `Quot.sound`.
`leanchecker --fresh -v GRWTSK.NumericalAnalysis.ProjectedFourier`
exited 0 and replayed the named module and its dependencies.
The upstream Fourier complexity theorem and Comparator were outside
this local row-identity verification scope.

## Exact rotor specialization

The [maintained rotor formula](RotorFourierObservation.lean) keeps the
original namespace, two index types, phase definition, normalized transform,
and the zero and add theorems. Their source bodies are carried over exactly
from the [prior module at blob `00833d87`](https://github.com/grwtsk/math/blob/1f0dd586be640ebe72642977bba7acd0e1aeb7c3/GRWTSK/NumericalAnalysis/ResidueBandedFourierSoficPath.lean).
[The residue-band and graph module](ResidueBandedFourierSoficPath.lean)
imports the maintained rotor observation. This removes its stale import of
the absent `CorkscrewSpringEnergy` module. The earlier legacy closure check
stopped during its broader `DynamicPartitionRecovery` dependency startup.
The complete residue-band and graph module remains outside this check.

[`ProjectedFourierRotor.lean`](ProjectedFourierRotor.lean) uses
$q=\exp(-2\pi i/64)$. The proof rewrites the original phase to $q^{kj}$
by the exponential power law and shows that $q$ has exact order $64$.
It keeps the original divisor $64$, which is nonzero in $\mathbb C$.
The theorem `rotorDFT_eq_halfTransform` identifies all 33 original readouts.
`rotorDFT_reassemble_eq_fullTransform` gives all 64 normalized
negative-phase rows from two calls of that original observable. Since
$q^{32}=-1$, the input modulation of the second call takes the simple
form $x_j\mapsto(-1)^j x_j$.

Lean 4.34.1 with Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`
compiled the moved observation at blob `a444f238c662166eb186f077d85bccbaf0490c5d`
and the exact specialization at blob `f50b7b46f0fd8b862ae0848bcba3be131eb02d79`.
A separate source and analytic review checked the unchanged declarations
and the two-run reconstruction, including the second call's index range
and alternating phase.
