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
or elapsed time. The formal circuit-relabeling proof and exact Lean
matching to `rotorDFT` remain open. Extending the lower-bound transfer
to border feedback with simultaneous errors requires its own comparison
of state counts, error ranks and support sizes.
