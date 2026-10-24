# Almost Mathieu potential and spectral hypotheses


## The almost Mathieu operator needs an arithmetic identification

[Avila, Last, Shamis and Zhou, arXiv:2110.07974v2](https://arxiv.org/abs/2110.07974v2), equation (1.1), defines

$$
(H_{\alpha,\lambda,\theta}\psi)(n)
=\psi(n+1)+\psi(n-1)+2\lambda\cos(2\pi\alpha n+\theta)\psi(n).
$$

The local real scalar recurrence adapter preserves integer sites, the unscaled phase, the current/previous state, and the determinant-one transfer. Its transfer matrix has determinant one for every real energy, while energy three at zero coupling has absolute trace three. Determinant one therefore supplies no unrestricted trace bound; no spectral membership is asserted for that example.

The paper's Theorems 1–3 impose explicit irrational-frequency, coupling, and approximation hypotheses and establish poor spectral regularity in those regimes. For the general Lipschitz potential in equation (2.5), Proposition 2.9 compares the phase-averaged integrated-density-of-states measures:

$$
\rho_{\alpha'}([r_-,r_+])
\ge \rho_\alpha([r_-+\kappa,r_+-\kappa])-\frac4L,
\qquad
L\ge1,\quad
\kappa\ge2\pi\|\phi\|_{\mathrm{Lip}}|\alpha'-\alpha|L.
$$

Both the interval shrinkage and finite-size error survive any proposed limiting adapter. None of these statements identifies the spectrum or measure with the CCC arithmetic pickup. An applicable spectral route must construct that identification, prove its hypotheses, and bound every correction sufficiently to reach a literal pickup consumer. No such adapter was obtained here, and the paper does not refute RH or rule out every spectral approach.

For comparison, the self-adjoint almost Mathieu potential is $2\lambda\cos(2\pi(\theta+n\alpha))$. [Avila and Jitomirskaya](https://webusers.imj-prg.fr/~artur.avila/aj.pdf) prove Cantor spectrum for every irrational $\alpha$ and $\lambda\ne0$. In this normalization,

$$
\operatorname{Leb}(\Sigma_{\alpha,\lambda})=4\left|1-|\lambda|\right|.
$$

The noncritical formula is established by [Jitomirskaya and Krasovsky](https://arxiv.org/abs/math/0107061v2); [Avila and Krikorian, Theorem 1.5](https://annals.math.princeton.edu/wp-content/uploads/annals-v164-n3-p04.pdf), complete the critical case, using a potential whose coupling is twice $\lambda$. Therefore zero spectral measure occurs at $|\lambda|=1$, rather than throughout the nonzero-coupling regime.

In particular, a Cantor set need not have measure zero, and a zero-measure compact set need not be Cantor without additional hypotheses.

[Avila, arXiv:0810.2965v1](https://arxiv.org/abs/0810.2965v1), Main Theorem, concerns the spectral measures of the self-adjoint almost Mathieu operator: they are absolutely continuous in the subcritical regime $|\lambda|<1$, for every irrational frequency and phase. A Cantor support can carry absolutely continuous spectral measures. Spectral type, support topology and support measure must remain separate.

For self-adjoint AMO gap opening, [Avila, You and Zhou, arXiv:2306.16254v2](https://arxiv.org/abs/2306.16254v2), resolve the noncritical case with nonzero coupling and $|\lambda|\ne1$. [Borgnia and Faust, arXiv:2112.06869v2](https://arxiv.org/html/2112.06869v2), dated September 8, 2026, claim a repaired proof at critical coupling for every irrational frequency. Their route uses magnetic actions, a boundary balance on lattice diagonals and monotonicity of labelled-gap Lyapunov heights. It is distinct from the Sturmian tree construction. The preprint remains a source claim here, without an independent proof audit or local Lean acceptance. Its AI acknowledgment attributes draft organization, statement refinement, a counterexample and figures to ChatGPT assistance; its authors' note distinguishes the revised proof from the original manuscript.

Zero coupling removes the potential; zero spectral measure, a collapsed gap, a vanishing Lyapunov exponent and a critical coupling are different assertions. None implies the others without its stated hypotheses.


## Source and verification scope

[Source](../../../../../GRWTSK/Algebra/LinearAlgebra/AlmostMathieu.lean). Status: **literature-and-historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

A scoped frozen Lean check binds the local source SHA `ed4a3641f340c856b6e0d98cbeb99c18f06cc86c64d3d84f306adc1b35849643`. Removing only the tactic umbrella preserves all eight owned declarations, including generated declarations, with exact raw types and proof values. The accepted standard profile checks 25 owned source modules and 278 mathematical declarations with no runtime exclusions; the actual Energy consumer supplies 243 exact declaration contracts, and all six intended rejection controls were freshly checked. Qualification SHA `568fd68c0aec6bbbf1f0af13074dfb77c42c52b67f49cd079bb68684e9666740`. These checks qualify the local potential, transfer recurrence, determinant and trace counterexample. The cited spectral regularity, measure estimates and Cantor-spectrum claims retain their literature evidence and hypotheses; the local source does not prove them. Whole-project, standalone checker, complete consumer and unconditional RH acceptance remain open. Dependency source pins and imported-object provenance are recorded separately; no Mathlib source rebuild is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/LinearAlgebra/AlmostMathieu.lean`](../../../../../GRWTSK/Algebra/LinearAlgebra/AlmostMathieu.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 5 |
| Theorem/lemma commands | 3 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
