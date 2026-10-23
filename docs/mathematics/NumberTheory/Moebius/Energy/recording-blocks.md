# Horizon-matched blocks and dyadic energy

The prime cascade gives an exact scale decomposition of the actual Möbius pickup. It also exposes an obstruction to the earlier uniform prime and block suppliers: controlling every intermediate finite prime cascade by a polynomial in recording time and logarithmic prime mass is too strong. The new research target retains the cancellation of an entire horizon-matched block. No bound for that target, and no RH proof, is supplied.

## Exact horizon-matched block

For $T\ge0$, let $P_T$ be the closed prime cutoff at $e^T$, and let

$$
B_T=P_{2T}\setminus P_T,\qquad
F_T=W_{P_T},\qquad
Q_T(u)=\sum_{p\in B_T}p^{-1/2}S_{\log p}F_T(u).
$$

Every $p\in B_T$ has $\log p>T$. Two distinct block delays cannot fit in the window $[0,2T]$. Lean proves

$$
W(u)=F_T(u)-Q_T(u),\qquad0\le u\le2T.
\tag{5}
$$

Every active echo looks back into $[0,T]$, where $F_T=W$. Accordingly `recordingEcho_eq_actual` replaces the shifted finite cascade in $Q_T$ with the literal actual pickup. Causal equality at a double birth is also permitted: the source vanishes at zero.

The square in the exact energy formula still includes **all** ordered interactions between different block primes. No orthogonality or positivity of those interactions is asserted. Define

$$
I(T)=E_{F_T}(2T)-E_W(T)+E_{Q_T}(2T)
-2\int_0^{2T}F_T(u)Q_T(u)\,du.
$$

Lean proves

$$
E_W(2T)=E_W(T)+I(T),\qquad I(T)\ge0.
\tag{6}
$$

The potentially large finite-core and echo energies are retained together with their cancellation. They are not separately charged to a small polynomial allowance.

## A remaining sufficient scale estimate

`RecordingScaleBound C r`, with $C\ge0$ and natural $r$, is the still-open estimate

$$
I(T)\le(2^{r+1}-1)E_W(T)+C\,2^rT^r,
\qquad\text{every real }T\ge1.
\tag{7}
$$

It gives the compensated doubling inequality

$$
E_W(2T)+C(2T)^r\le2^{r+1}\bigl(E_W(T)+CT^r\bigr).
$$

Lean checks its induction at every dyadic horizon and the monotone interpolation to every real horizon. The resulting polynomial witnesses are

$$
\bigl(E_W(1)+C\bigr)2^{r+1},\qquad r+1.
$$

The existing pickup-energy consumer then proves the literal Mathlib `RiemannHypothesis`, explicitly conditional on (7). A finite set of computations cannot supply that universal premise. The estimate concerns the actual complete recording, so the independently varying finite-cutoff obstruction above does not apply to its quantifiers. Establishing (7), or a suitable weaker all-rate estimate, remains the arithmetic problem. This contribution supplies the exact block expression and eliminates false proof shortcuts; it does not establish an improved unconditional growth exponent.

Lean also proves that existence of nonnegative constants in (7) is **equivalent to polynomial pickup energy and to P04**. For the converse, an energy bound with constant $A$ and exponent $q$ gives (7) with $r=\lceil q\rceil_+$ and $C=A3^r$, using $I(T)\le E_W(2T)$ and $1+2T\le3T$ for $T\ge1$. The new formulation retains the exact prime-block cancellation while imposing no extra uniform-prefix obligation. This equivalence does not lower the established arithmetic difficulty.


## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/PrimeBlockEnergy.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/PrimeBlockEnergy.lean`](../../../../../GRWTSK/NumberTheory/Moebius/PrimeBlockEnergy.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 8 |
| Theorem/lemma commands | 7 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
