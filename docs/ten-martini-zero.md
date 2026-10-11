# Ten Martini problems and the distinct roles of zero

For Sturmian Hamiltonians, every irrational frequency and every real nonzero coupling give a Cantor spectrum of Lebesgue measure zero, with every permitted internal gap open. Zero coupling instead gives the interval spectrum of the free discrete Schrödinger operator. The almost Mathieu operator shares the Cantor conclusion, but its spectrum generally has positive measure. These statements concern different objects from the arithmetic convergence boundary in the CCC reduction of RH.

Human mathematical direction: R.A. Jacob Martone. Research synthesis and local formalization assistance: OpenAI Codex. Established results retain their named authors and source versions. The local Lean additions prove conditional transport, actual finite Dirichlet count comparison, the complete free eigenvalue list, the free IDS count limit with inverse cuts, the count error for splitting adjacent Dirichlet volumes, accumulated repeated-block and remainder bounds, and exact origin-to-phase/block-sampling adapters. The infinite Sturmian operator spectrum, tree, nonzero-coupling IDS construction and full Dry Ten Martini theorem remain separate formalization obligations.

## Operators and zero coupling

For an irrational $\alpha\in(0,1)$, phase $\xi\in[0,1)$ and real coupling $V$, the Sturmian operator is

$$
(H_{\alpha,V,\xi}\psi)(n)=\psi(n+1)+\psi(n-1)
+V\,\mathbf1_{[1-\alpha,1)}(\{\xi+n\alpha\})\psi(n).
$$

The half-open interval and integer lattice matter. The spectrum and IDS are independent of phase in the irrational Sturmian setting. [Band, Beckus and Loewy, arXiv:2402.16703v2](https://arxiv.org/abs/2402.16703v2), equation (1.1) and Appendix I, use phase zero after establishing this independence.

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

For comparison, the self-adjoint almost Mathieu potential is $2\lambda\cos(2\pi(\theta+n\alpha))$. [Avila and Jitomirskaya](https://webusers.imj-prg.fr/~artur.avila/aj.pdf) prove Cantor spectrum for every irrational $\alpha$ and $\lambda\ne0$. In this normalization,

$$
\operatorname{Leb}(\Sigma_{\alpha,\lambda})=4\left|1-|\lambda|\right|.
$$

The noncritical formula is established by [Jitomirskaya and Krasovsky](https://arxiv.org/abs/math/0107061v2); [Avila and Krikorian, Theorem 1.5](https://annals.math.princeton.edu/wp-content/uploads/annals-v164-n3-p04.pdf), complete the critical case, using a potential whose coupling is twice $\lambda$. Therefore zero spectral measure occurs at $|\lambda|=1$, rather than throughout the nonzero-coupling regime.

| Object equal to zero | Precise meaning |
|---|---|
| Coupling $V$ or $\lambda$ | The perturbing potential vanishes and the self-adjoint model becomes free. |
| Length of a labelled gap | Its two spectral endpoints coincide; the label has no open interval. |
| Lebesgue measure of the spectrum | A metric size statement, independent of the Cantor topology. |
| Number of nondegenerate intervals contained in a Cantor spectrum | Zero; the spectrum also has no isolated points. |
| Energy $E$ | A location on the energy axis, with no general implication for coupling, measure or gap width. |
| CCC boundary $\alpha_W$ | An infimum of actual weighted pickup-integrability parameters; proving it zero is an unresolved arithmetic obligation. |

In particular, a Cantor set need not have measure zero, and a zero-measure compact set need not be Cantor without additional hypotheses.

## Gap labels and the Dry problem

Define the IDS by the normalized finite-volume eigenvalue count, with Dirichlet restrictions and multiplicities retained. It is continuous and nondecreasing. A real energy lies outside the spectrum exactly when the IDS is constant on some open neighborhood of that energy; this second property is essential.

The allowed label group is $\mathbb Z+\alpha\mathbb Z$, normalized to $[0,1]$. Its internal labels are

$$
\mathcal L_\alpha=(\mathbb Z+\alpha\mathbb Z)\cap(0,1)
=\{\{m\alpha\}:m\in\mathbb Z\setminus\{0\}\}.
$$

Labels $0$ and $1$ belong to the two exterior, unbounded gaps. The gap-labelling theorem gives inclusion in the allowed set. The Dry theorem supplies the reverse inclusion:

$$
\forall \ell\in\mathcal L_\alpha\ \forall V\ne0\
\exists a_\ell(V)<b_\ell(V):
\quad(a_\ell(V),b_\ell(V))\cap\Sigma_{\alpha,V}=\varnothing,
\quad N_{\alpha,V}|_{[a_\ell(V),b_\ell(V)]}=\ell.
$$

The endpoints are in the spectrum. This formulation retains strictly positive width and distinguishes an allowed label from an existing open gap. It yields countably infinitely many internal gaps. [Band, Beckus and Loewy, Theorem 1.1](https://arxiv.org/abs/2402.16703v2), prove the equality for all irrational frequencies and both signs of nonzero coupling.

## The infinite tree and the transport proof

Write $\alpha=[0;c_1,c_2,\ldots]$ and let $p_k/q_k$ be its convergents. The periodic approximant spectra $\sigma_k(V)$ consist of exactly $q_k$ disjoint bands for $V\ne0$. This exact band count is a special property of these approximants, rather than a consequence of determinant one for arbitrary periodic operators. The nested approximation uses adjacent unions:

$$
\Sigma_{\alpha,V}=\bigcap_{k\ge1}\bigl(\sigma_k(V)\cup\sigma_{k+1}(V)\bigr),
\qquad \sigma_{k+1}(V)\subseteq\sigma_k(V)\cup\sigma_{k-1}(V).
$$

Definition 1.4 builds an ordered tree independent of positive coupling. A vertex at level $k$ has $M=c_{k+1}-1$ if its type is A and $M=c_{k+1}$ if its type is B. It has $M$ A children at level $k+1$ and $M+1$ B children at level $k+2$, interleaved in order. Tree level therefore differs from distance from the root. Theorem 1.8 identifies vertices with bands and directed ancestry with strict nesting; its band-order comparison applies to equal or adjacent levels.

An infinite path $\gamma$ selects nested bands whose intersection is a single spectral energy $E_\alpha(\gamma;V)$. Theorem 1.10 proves that this coding is bijective and order preserving, that energy is Lipschitz in positive coupling for a fixed path, and that

$$
N_{\alpha,V}\bigl(E_\alpha(\gamma;V)\bigr)=N_\alpha(\gamma)
$$

is independent of positive coupling. A unique point for each path alone does not prove injectivity across distinct paths. The small-coupling bands can overlap; Lemma 4.4 resolves this substantive obstacle.

The proof of Theorem 1.1 then proceeds as follows:

1. At a reference coupling $\widetilde V>4$, Raymond's result supplies two distinct endpoints for each internal label.
2. Surjectivity lifts these endpoints to two distinct tree paths.
3. The same paths at any $V>0$ retain their label. Injectivity keeps their energies distinct.
4. Monotonicity makes the IDS constant between the new endpoints. Its local characterization places the whole open interval outside the spectrum.
5. For $V<0$, spectral reflection $\Sigma_{\alpha,V}=-\Sigma_{\alpha,-V}$ and IDS reflection $N\mapsto1-N$ preserve the complete label set.

The [2023 MFO report](https://arxiv.org/abs/2309.04351) announces this strategy. The supplied main paper is the July 2026 version of a preprint first submitted in February 2024; its theorem numbers and proof should be tied to v2.

## Quantitative approach to zero

The following comparison is an elementary consequence of the bounded binary potential, not an additional gap-opening theorem. Put $L=\min(V,0)$ and $U=\max(V,0)$. Each finite-volume perturbation lies between $L I$ and $U I$, so eigenvalue ordering gives, after taking the IDS limits,

$$
N_0(E-U)\le N_{\alpha,V}(E)\le N_0(E-L).
$$

For an internal label $\ell$, the unique free energy with this label is
$e_\ell=-2\cos(\pi\ell)$. Every point of the label plateau therefore satisfies

$$
e_\ell+L\le E\le e_\ell+U.
$$

Applying this to both gap endpoints yields

$$
0<b_\ell(V)-a_\ell(V)\le U-L=|V|\qquad(V\ne0).
$$

Consequently both endpoints converge to $e_\ell$ and every fixed labelled gap collapses as $V\to0$. Strict opening at each nonzero coupling is compatible with zero width in this limit. There is no uniform positive lower bound across all labels: infinitely many disjoint gaps fit inside a bounded spectral hull. For a fixed label on a compact interval of positive couplings bounded away from zero, continuity and strict opening do give a positive minimum.

The operator perturbation norm is at most $|V-W|$, so the spectra vary continuously in Hausdorff distance. Sturmian spectral measure nevertheless jumps from zero at every nonzero coupling to four at zero. Hausdorff convergence does not preserve Lebesgue measure.

## Supporting models and current literature

[Avila, arXiv:0810.2965v1](https://arxiv.org/abs/0810.2965v1), Main Theorem, concerns the spectral measures of the self-adjoint almost Mathieu operator: they are absolutely continuous in the subcritical regime $|\lambda|<1$, for every irrational frequency and phase. A Cantor support can carry absolutely continuous spectral measures. Spectral type, support topology and support measure must remain separate.

[Cedzich, Fillman and Ong, arXiv:2112.03216v2](https://arxiv.org/abs/2112.03216v2), study a unitary quantum walk with two parameters $\lambda_1,\lambda_2\in[0,1]$ and spectrum on the unit circle. Their Theorem 2.2(d) gives zero-measure Cantor spectrum for every irrational frequency when $0<\lambda_1=\lambda_2<1$. The cases $\lambda_1=0$ and $\lambda_2=0$ have different spectral types, detailed in Theorem 2.2(g,h). Neither this model's critical diagonal nor its zero-parameter boundaries are the Sturmian nonzero-coupling theorem. Section 1 explicitly distinguishes results about classes of unitary/self-adjoint models from a dictionary identifying particular models.

For self-adjoint AMO gap opening, [Avila, You and Zhou, arXiv:2306.16254v2](https://arxiv.org/abs/2306.16254v2), resolve the noncritical case with nonzero coupling and $|\lambda|\ne1$. [Borgnia and Faust, arXiv:2112.06869v2](https://arxiv.org/html/2112.06869v2), dated September 8, 2026, claim a repaired proof at critical coupling for every irrational frequency. Their route uses magnetic actions, a boundary balance on lattice diagonals and monotonicity of labelled-gap Lyapunov heights. It is distinct from the Sturmian tree construction. The preprint remains a source claim here, without an independent proof audit or local Lean acceptance. Its AI acknowledgment attributes draft organization, statement refinement, a counterexample and figures to ChatGPT assistance; its authors' note distinguishes the revised proof from the original manuscript.

## Local formalization and the CCC obligation

The [Sturmian transfer source](../GRWTSK/LinearAlgebra/Sturmian.lean) preserves the literal half-open coding, integer sites, phase, exact scalar recurrence and determinant-one transfer. It proves the potential comparison offsets, the bound $|v_V(n)-v_W(n)|\le|V-W|$, zero-coupling transfer and the single-step trace criterion. The latter is algebraic; a Floquet or Fourier theorem is still required to identify an operator spectrum.

The [gap transport source](../GRWTSK/Spectral/GapTransport.lean) proves that faithful monotone IDS plateaus and distinct injectively coded endpoints produce strictly positive gaps, transports all labels from a reference coding, and bounds gap width from the full IDS comparison and inverse-cut premises. Actual tree construction, surjectivity, injectivity, IDS2 and the reference large-coupling supplier remain explicit ports. Generic counterexamples show why continuity alone and monotonicity alone are insufficient.

The [finite-volume source](../GRWTSK/Spectral/SturmianFiniteVolume.lean) now constructs the real symmetric Dirichlet matrix on any number of consecutive integer sites, with arbitrary origin and phase and the same literal half-open coding. It proves the positive semidefinite comparison with the free matrix shifted by $L=\min(V,0)$ and $U=\max(V,0)$. The [matrix count proof](../GRWTSK/Spectral/MatrixCountComparison.lean) projects the low-energy eigenbasis subspace of the higher matrix into that of the lower matrix. A nonzero kernel vector would have quadratic energy at most the cut for the former and strictly above the cut for the latter, contradicting the quadratic comparison. Injectivity pays the dimension inequality. Counts include eigenvalues equal to the cut and retain multiplicities.

Consequently the actual finite counts satisfy $n_{0,N}(E-U)\le n_{V,N}(E)\le n_{0,N}(E-L)$ for every energy, site origin, phase and both coupling signs, without requiring irrational frequency for this elementary comparison. Division by the volume preserves the inequalities. The limit-passage theorem proves the full IDS comparison when pointwise convergence of these actual normalized counts is supplied. The free limit is now proved separately; existence of the nonzero-coupling Sturmian limit and identification with an infinite operator remain unpaid.

The [free spectrum source](../GRWTSK/Spectral/FreeDirichletSpectrum.lean) proves the entire finite eigenvalue list

$$\lambda_{k,N}=2\cos\left(\frac{\pi(k+1)}{N+1}\right),\qquad 0\le k<N.$$

Its sine vectors satisfy both zero boundary conditions and the actual matrix equation. Distinct eigenvalues give linear independence; the dimension equality makes the family a full basis. Diagonalization in that basis proves the characteristic polynomial and its root multiset, hence equality with the actual inclusive eigenvalue count. No sorted-eigenvalue formula is assumed.

The [free IDS source](../GRWTSK/Spectral/FreeIDS.lean) defines $t(E)=\arccos(E/2)/\pi$, using Mathlib's clipped real arccos outside $[-1,1]$, and proves the exact formula

$$n_{0,N}(E)=N-\bigl(\lceil(N+1)t(E)\rceil_+-1\bigr).$$

The inner subtraction is natural truncated subtraction. This formula includes eigenvalues equal to the energy cut, both exterior energy regimes and volume zero. For positive volume, rounding gives

$$N_0(E)-\frac1N\le\frac{n_{0,N}(E)}N\le N_0(E)+\frac1N,\qquad N_0(E)=1-t(E).$$

The squeeze argument establishes the actual pointwise free count limit at every energy. The source proves the inverse cuts at every internal label $0<\ell<1$, with $e_\ell=-2\cos(\pi\ell)$, and proves equality of the zero-coupling Sturmian and free normalized counts. The free limit admits no positive-width internal labelled plateau. Exterior labels are excluded from the inverse cuts: for example $N_0(-3)=0$, while $e_0=-2>-3$.

The resulting gap-width consumer supplies the free limit and its inverse cuts internally. It retains the target Sturmian count-limit premise and an actual labelled gap, and concludes $0<b-a\le |V|$. It does not produce a gap or prove the Dry theorem.

The [Dirichlet cut source](../GRWTSK/Spectral/DirichletCut.lean) constructs the symmetric joining edge and factors its actual linear action through its two endpoint coordinates. This proves rank at most two. The general count proof records both the lower spectral projection and the full finite-dimensional defect; a vector in their common kernel would again contradict the low/high quadratic cuts. Thus a signed perturbation is controlled without assuming positive semidefiniteness.

Removing the edge at sites $N-1,N$ and reindexing proves the literal block matrix consisting of the first $N$ sites and the next $M$ sites. The second restriction starts at $o+N$, with the same phase and potential formula. Characteristic polynomial multiplication, followed by the root-multiset count, pays additivity for the cut matrix. For $N>0$ and $M\ge0$, this gives

$$\left|n_{V,N}^{o}(E)+n_{V,M}^{o+N}(E)-n_{V,N+M}^{o}(E)\right|\le2.$$

The normalized error is at most $2/(N+M)$, for every real energy, phase, origin and coupling. Exact count additivity for the original joined matrix is false already for two free sites at cut energy zero: the full count is one, while the sum of the two one-site counts is two. The bound supplies finite boundary control; it does not establish nonzero-coupling IDS convergence or uniform Sturmian word frequencies.

The [block-count source](../GRWTSK/Spectral/SturmianBlockCounts.lean) proves the actual count is at most the volume. For $L>0$, let

$$B_{q,L}^{o}(E)=\sum_{j=0}^{q-1}n_{V,L}^{o+jL}(E).$$

Keeping the remainder at its actual origin gives

$$\left|B_{q,L}^{o}(E)+n_{V,r}^{o+qL}(E)-n_{V,qL+r}^{o}(E)\right|\le2q.$$

For $q$ complete blocks, the sharper bound is $2(q-1)_+$, with natural truncated subtraction. Omitting the remainder pays its dimension:

$$\left|B_{q,L}^{o}(E)-n_{V,qL+r}^{o}(E)\right|\le2q+r.$$

With the actual natural quotient $q=\lfloor N/L\rfloor$ and remainder $r=N\bmod L$, for $N,L>0$ this yields

$$\left|\frac{n_{V,N}^{o}(E)}N-\frac{B_{\lfloor N/L\rfloor,L}^{o}(E)}N\right|\le\frac2L+\frac LN.$$

The block total uses denominator $N$, so it is weighted by the whole volume; it is not the average divided by $qL$. These bounds hold at every energy, origin, phase and real coupling. They prove no convergence by themselves.

The same source proves the literal matrix and count identity for the origin shift $\xi\mapsto\xi+o\alpha$. Consequently the block sum samples the actual origin-zero count observable at phases

$$\xi+o\alpha+j(L\alpha).$$

No irrationality hypothesis is needed for this algebraic adapter. Every-phase frequencies for that sampling, a finite-word observable identification, and the nonzero-coupling IDS limit remain separate obligations.

Run `lake --wfail build` and the [scoped checker](../scripts/check_ten_martini.py). The checker freshly exports the complete selected project import closure at trust zero against pinned dependency objects, audits declaration ownership and transitive axioms, and checks literal contracts. Its seventeen negative controls reject missing injectivity, missing IDS2, an all-energy free trace bound, a discarded signed comparison offset, a discarded target count-limit premise, a periodic corner in a Dirichlet matrix, an inverse cut at exterior label zero, an eigenvalue formula with denominator $N$ instead of $N+1$, the positive-volume error estimate at volume zero, missing operator equality on the defect kernel, exact joined-count additivity, omission of the second endpoint coordinate, an unshifted second block origin, omission of the remainder cost, omission of accumulated block-boundary error, a missing positive block length, and replacing the actual block sampling step $Llpha$ by $lpha$. The scoped receipt is [ten-martini-checks.json](../evidence/ten-martini-checks.json); independent admission remains pending.

The inspected math interfaces and upstream formal-research CCC precision source contain no supplied identification between the Sturmian IDS/tree and the signed Möbius pickup. A spectral route to RH must prove an observable-preserving identification and pay the full residual in the existing CCC comparison interface. Spectrum measure zero, zero Lyapunov exponent on a spectrum, open labelled gaps and a tree boundary do not imply $\alpha_W=0$ for the actual pickup. The original arithmetic supplier and RH remain open.
