# Sturmian phase partitions and count limits


For an irrational frequency $0<\alpha<1$, the literal length $L$ Sturmian coding changes only at the $L+1$ phase points $\{-j\alpha\}$, $0\le j\le L$. Consequently the actual finite Dirichlet eigenvalue count is a finite step function of phase. Frequencies of these phase intervals at the true block step $L\alpha$, combined with the checked boundary and remainder estimate, give a route to the actual normalized count limit without constructing the entire Sturmian hull.

**Status:** the phase partition, frequency and limit arguments below are written mathematics awaiting Lean replay and independent acceptance. They are not certified by the existing spectral receipt. The actual repeated-block estimate and origin-to-phase identity are already locally kernel checked in [SturmianBlockCounts](../../../../GRWTSK/Spectral/SturmianBlockCounts.lean). The complete word, matrix and count adapter script is a local candidate retained during the coordinated source migration; no new library module has been admitted. RH and the independent arithmetic all-rate estimate remain open. The existing audit consumers were relocated during the subject migration. Their earlier receipt remains historical for its original inputs until fresh native replay, even where the spectral library source bytes are unchanged.

Human mathematical direction: grwtsk contributors. Research and formalization assistance: OpenAI Codex. The literal model is from Band, Beckus and Loewy, arXiv:2402.16703v2, equation (1.1); established rotation and finite spectral mathematics retain their source authorship and upstream licenses. No originality claim is made for this standard rotation argument.

## Actual word and matrix identification

Let $L\ge1$ and let $\mathcal W_L=\{0,1\}^{\{0,\ldots,L-1\}}$. Define

$$b_\alpha(\xi,i)=\mathbf1_{[1-\alpha,1)}(\{\xi+i\alpha\}),\qquad
w_{\alpha,\xi}(i)=b_\alpha(\xi,i).$$

For any word $w$, real coupling $V$ and real energy $E$, define the actual symmetric matrix and inclusive count

$$H_{L,V}(w)=F_L+\operatorname{diag}(Vw(i)),\qquad
c_{L,V,E}(w)=\#\{\text{eigenvalues of }H_{L,V}(w)\text{ at most }E\},$$

including multiplicities. Here $F_L$ is the checked Dirichlet path matrix; there is no joining corner. Direct comparison of matrix entries gives

$$H_L(\alpha,V,\xi,o)=H_{L,V}(w_{\alpha,\xi+o\alpha}),\qquad
n_{V,L}^{o}(E)=c_{L,V,E}(w_{\alpha,\xi+o\alpha}).$$

These equalities retain the original integer origin $o$ and hold even without irrationality or a restriction on the sign of $V$. Characteristic-root counts avoid any dependence on a chosen eigenbasis. The dimension bound gives $0\le c_{L,V,E}(w)\le L$.

The word cylinders $C_w=\{\xi:w_{\alpha,\xi}=w\}$ form a disjoint finite partition of phases, including all their literal endpoints. Thus

$$c_L(\xi):=c_{L,V,E}(w_{\alpha,\xi})=
\sum_{w\in\mathcal W_L}c_{L,V,E}(w)\mathbf1_{C_w}(\xi).$$

For the checked block sum, the sampled phases are $\gamma+jL\alpha$, where $\gamma=\xi+o\alpha$. Replacing this step by $\alpha$ changes the observable being averaged.

## Half-open phase atoms

Work with phase representatives in $[0,1)$. Coordinate $i$ can change only when $\{\xi+i\alpha\}$ crosses $0$ or $1-\alpha$. These phase points are

$$\{-i\alpha\}\quad\text{and}\quad\{-(i+1)\alpha\}.$$

Their union is contained in $D_L=\{\{-j\alpha\}:0\le j\le L\}$. Irrationality makes its $L+1$ points distinct: an equality between two representatives would make $(j-k)\alpha$ an integer with $j\ne k$, contradicting irrationality. Write the sorted points as

$$0=d_0<d_1<\cdots<d_L<d_{L+1}=1.$$

On each atom $A_a=[d_a,d_{a+1})$, every coordinate has a constant value. At a threshold $1-\alpha$ the value is one, and at the wrap point zero it is zero; these are the values immediately to the right. This proves constancy on the half-open atoms themselves, rather than only away from the endpoints. Hence

$$c_L(\xi)=\sum_{a=0}^{L}c_a\mathbf1_{A_a}(\{\xi\}),\qquad
0\le c_a\le L.$$

This needs only at most $L+1$ phase atoms. No assertion that their words are pairwise different, or a separate Sturmian word-complexity theorem, is needed for the count limit.

## Frequencies at every phase

Set $\beta=L\alpha$. Since $L\ge1$, $\beta$ is irrational. For every nonzero integer $k$, $z_k=e^{2\pi i k\beta}\ne1$. The geometric sum gives, for $q\ge1$,

$$\sup_{\gamma\in\mathbb R}\left|
\frac1q\sum_{j=0}^{q-1}e^{2\pi i k(\gamma+j\beta)}\right|
\le\frac{2}{q|1-z_k|}\longrightarrow0.$$

The constant character averages to one. Finite linear combinations therefore converge uniformly in the initial phase to their circle integrals. Uniform approximation by trigonometric polynomials extends this statement to every continuous function on the circle. The pinned Mathlib circle Fourier characters and density of their span are relevant interfaces; they do not already prove this averaging statement.

For each half-open atom, choose continuous functions $g_-\le\mathbf1_{A_a}\le g_+$ on the circle, with integral difference as small as desired. Such functions taper within small neighborhoods of its finitely many endpoints. The inequalities must hold at the endpoints too: the lower approximation may be zero there and the upper approximation one there. Applying the continuous averaging result to both functions and then shrinking their neighborhoods proves

$$\lim_{q\to\infty}\sup_{\gamma\in\mathbb R}
\left|\frac1q\sum_{j=0}^{q-1}\mathbf1_{A_a}(\{\gamma+j\beta\})
-(d_{a+1}-d_a)\right|=0.$$

The orbit under an irrational step is injective, so any one endpoint can be hit at most once. This also bounds the total sampled endpoint contribution by $(L+1)/q$; it does not justify replacing the everywhere sandwich by an almost-everywhere identity. The case of the whole circle is constant and needs no endpoint taper.

Multiplying these finitely many interval frequencies by the actual coefficients $c_a$ gives, uniformly in $\gamma$,

$$\frac1q\sum_{j=0}^{q-1}c_L(\gamma+jL\alpha)
\longrightarrow I_L(E):=\sum_{a=0}^{L}c_a(d_{a+1}-d_a).$$

In particular $A_L(E):=I_L(E)/L$ belongs to $[0,1]$. No arithmetic pickup or signed residual is identified with this phase average.

## From blocks to the actual volume limit

Fix $V,E$ and the irrational frequency. For $N=qL+r$, $q=\lfloor N/L\rfloor$ and $0\le r<L$, the checked actual block sum is

$$B_{q,L}^{o}(E)=\sum_{j=0}^{q-1}c_L(\xi+o\alpha+jL\alpha).$$

At fixed $L$, $q\to\infty$ and $q/N\to1/L$ as $N\to\infty$. Therefore the frequency argument gives $B_{\lfloor N/L\rfloor,L}^{o}(E)/N\to A_L(E)$ uniformly over phase and origin. The denominator is the whole volume $N$, including the omitted remainder. The checked finite approximation is

$$\left|\frac{n_{V,N}^{o}(E)}N-
\frac{B_{\lfloor N/L\rfloor,L}^{o}(E)}N\right|
\le\frac2L+\frac LN.$$

Compare the same actual normalized count against block lengths $L$ and $K$, then pass $N\to\infty$. This yields

$$|A_L(E)-A_K(E)|\le\frac2L+\frac2K.$$

Thus $A_L(E)$ is Cauchy as $L\to\infty$. Let its limit be $N_V(E)$. Passing $K\to\infty$ in the last inequality gives $|A_L(E)-N_V(E)|\le2/L$. For fixed $L$, the triangle inequality now gives

$$\limsup_{N\to\infty}\sup_{\xi\in\mathbb R,\,o\in\mathbb Z}
\left|\frac{n_{V,N}^{o}(E)}N-N_V(E)\right|\le\frac4L.$$

Letting $L\to\infty$ proves convergence of the actual normalized count sequence at this energy, uniformly over phase and origin. This written argument establishes the intended count-limit route once its new adapters, frequencies and limit passage are formalized; the existing local receipt still marks nonzero-coupling limit existence unproved.

## Remaining formal obligations

First elaborate and natively audit the exact word and count adapter under the current mathematical subject layout. Then formalize the phase atoms with their endpoint conventions, the character-average estimate, continuous interval sandwiches, and the two limit passages above. Keep positive block length, irrationality and $0<\alpha<1$ explicit. Reuse the existing actual rank-two block and remainder estimate.

Identifying this count limit with the IDS of a constructed infinite operator, proving faithful plateau versus spectrum equivalence, and producing every open labelled gap remain further obligations. Finite phase-boundary measure zero is used only for interval approximation here. It implies neither spectral measure zero nor cancellation of the signed arithmetic pickup, and this route does not prove RH.
The [phase-count reduction](phase-count-limits.md) gives a written argument for a route from the literal finite matrices to their actual count limit. For $0<\alpha<1$ irrational and positive block length $L$, all coding endpoints lie in $\{\{-j\alpha\}:0\le j\le L\}$. Sorting these $L+1$ distinct points gives half-open phase atoms on which the actual block count is constant, including the endpoint values. This avoids needing a separate word-complexity theorem.

Character geometric sums at the actual step $L\alpha$, continuous approximation, and everywhere interval sandwiches give a proposed every-phase frequency proof. Combined with the previously checked whole-volume block error, its proposed block means satisfy $|A_L(E)-A_K(E)|\le2/L+2/K$ and converge to an actual count limit, uniformly over phase and origin at fixed energy. These are written arguments, not newly kernel-checked theorems. The complete finite-word, matrix and count adapter script is retained in ignored local storage and has not been elaborated or admitted to the library. The new written scope has its own source manifest; the monitor continues to own the shared migration manifest.


## Source and verification scope

[Source](../../../../GRWTSK/Spectral/SturmianBlockCounts.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Spectral/SturmianBlockCounts.lean`](../../../../GRWTSK/Spectral/SturmianBlockCounts.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 13 |
| Theorem/lemma commands | 12 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
