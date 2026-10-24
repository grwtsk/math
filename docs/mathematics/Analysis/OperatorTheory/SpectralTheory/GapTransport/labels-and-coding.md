# Gap labels, tree coding and faithful transport


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

The [gap transport source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/GapTransport.lean) proves that faithful monotone IDS plateaus and distinct injectively coded endpoints produce strictly positive gaps, transports all labels from a reference coding, and bounds gap width from the full IDS comparison and inverse-cut premises. Actual tree construction, surjectivity, injectivity, IDS2 and the reference large-coupling supplier remain explicit ports. Generic counterexamples show why continuity alone and monotonicity alone are insufficient.

The [Ten Martini research record](../../../../Algebra/LinearAlgebra/Schrodinger/sturmian.md) supplies the exact Sturmian model and explains the published tree argument. The local formalization transports labelled gaps under explicit coding and faithful IDS premises. It constructs the finite Dirichlet matrices, proves their eigenvalue-count comparisons, the actual free count limit and its internal-label inverse cuts, and the boundary count error for splitting adjacent volumes. The resulting gap-width consumer retains the target Sturmian count-limit and actual labelled-gap premises. The infinite operator, tree coding, injectivity, nonzero-coupling IDS construction and large-coupling gap supplier remain separate obligations.

For the spectral route, the free eigenvalues, count limit, inverse cuts, accumulated boundary and remainder errors, integer-origin phase adapter and exact block sampling adapter are paid. Next identify the actual count-valued block observable with its finite-word coding. Construct the corresponding half-open word cylinders and their frequencies for $0<\alpha<1$ irrational, retaining every phase and the actual step $L\alpha$ for positive integer $L$. A direct circle-frequency route may avoid constructing the hull for this count-limit step. The inspected pinned Mathlib interfaces provide `Irrational.natCast_mul`, circle Fourier characters and density of the Fourier subalgebra; they do not themselves discharge the literal word-frequency obligation. Prove character-average convergence, continuous approximation and the half-open cylinder boundary controls before passing the weighted block approximation to an actual count limit.

Appendix I of the attached Sturmian paper obtains its IDS from the uniquely ergodic Sturmian hull; that written source theorem is not a local proof. Mathlib's ergodicity theorem for irrational circle translation alone does not supply unique ergodicity of that hull or convergence at every phase. Its Birkhoff-average definitions and Hilbert-space mean ergodic theorem likewise do not by themselves prove the required finite-word frequencies. Establish the actual count limit and faithful local plateau/spectrum characterization before claiming an unconditional spectral gap-width theorem. Reuse the paid finite comparison, free limit and boundary count estimate rather than adding them again as assumptions.


## Source and verification scope

[Source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/GapTransport.lean). Status: **literature-and-historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Spectral/GapTransport.lean`](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/GapTransport.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 14 |
| Theorem/lemma commands | 11 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
