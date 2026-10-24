# Free eigenvalue counts and integrated density of states


At $V=0$, Fourier transformation gives the multiplier $2\cos k$, hence spectrum $[-2,2]$. Its IDS is

$$
N_0(E)=
\begin{cases}
0,&E\le-2,\\
1-\pi^{-1}\arccos(E/2),&-2<E<2,\\
1,&E\ge2.
\end{cases}
$$

Thus every internal IDS value is attained even at zero coupling, but on a single energy rather than an open interval. A collapsed gap does not mean a skipped IDS value.

The [free IDS source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean) defines $t(E)=\arccos(E/2)/\pi$, using Mathlib's clipped real arccos outside $[-1,1]$, and proves the exact formula

$$n_{0,N}(E)=N-\bigl(\lceil(N+1)t(E)\rceil_+-1\bigr).$$

The inner subtraction is natural truncated subtraction. This formula includes eigenvalues equal to the energy cut, both exterior energy regimes and volume zero. For positive volume, rounding gives

$$N_0(E)-\frac1N\le\frac{n_{0,N}(E)}N\le N_0(E)+\frac1N,\qquad N_0(E)=1-t(E).$$

The squeeze argument establishes the actual pointwise free count limit at every energy. The source proves the inverse cuts at every internal label $0<\ell<1$, with $e_\ell=-2\cos(\pi\ell)$, and proves equality of the zero-coupling Sturmian and free normalized counts. The free limit admits no positive-width internal labelled plateau. Exterior labels are excluded from the inverse cuts: for example $N_0(-3)=0$, while $e_0=-2>-3$.

The [free IDS source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean) proves the exact ceiling count formula and a uniform error of at most $1/N$ for every energy and positive volume. It proves actual pointwise count convergence to

$$N_0(E)=1-\frac{\arccos(E/2)}{\pi},$$

using the clipped real arccos for exterior energies. For each internal label $0<\ell<1$, it proves both inverse cuts with $e_\ell=-2\cos(\pi\ell)$. The gap-width consumer now supplies these free premises internally and returns $0<b-a\le |V|$ from an actual Sturmian count limit and an actual labelled gap. The zero-coupling Sturmian count sequence equals the free sequence for every phase and origin, and the free limit admits no positive-width internal labelled plateau. Exterior labels are deliberately excluded: $N_0(-3)=0$ while $e_0=-2>-3$. The positive-volume error bound also excludes the empty matrix.


## Source and verification scope

[Source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Spectral/FreeIDS.lean`](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 25 |
| Theorem/lemma commands | 21 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
