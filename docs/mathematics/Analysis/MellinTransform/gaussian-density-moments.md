# Dyadic sums and remote moments of Gaussian Fourier densities

Let $V:\mathbb R\to\mathbb C$ be an actual compactly supported Schwartz
map. Let $D_{V,R}$ be the Fourier transform of the
[actual Gaussian logarithmic window](gaussian-log-window.md), and define
\[
M_J(V,R)=\int_{\mathbb R}(1+|t|)^J|D_{V,R}(t)|\,dt.
\]
The integrand is integrable and the moment is nonnegative for every real
$R$. For each real $a$, one constant $C(V,J,a)>0$ works for all $R>0$:
$M_J(V,R)\le C(V,J,a)R^{-a}$.

For every real $k$, $s>0$ and natural $J$, there is a constant
$C(V,J,k,s)>0$, chosen before every $Z>0$, such that
\[
\sum_{j\ge0}(2^j)^s(2^j/Z)^kM_J(V,2^j/Z)
\le C(V,J,k,s)Z^s.
\]
The actual series is proved summable.

## Actual remote cutoff

Write $R_j=2^j/Z$. Select the term $(2^j)^sM_J(V,R_j)$ exactly when
$R_j\le A^{-1}$ or $A\le R_j$, and use zero otherwise. For natural $N$
and $s>0$, one constant $C(V,J,N,s)>0$ works before every $Z>0$ and $A\ge1$:
the selected series is summable and its sum is at most
$C(V,J,N,s)Z^s/A^N$.

These are moments of the actual Fourier-density integral. The proof uses
the actual log-window moment supplier, shifts the exponent by $k$, derives
a polynomial envelope from the bounds at zero and a sufficiently large
natural exponent, and dominates the actual series by the
[scalar dyadic kernel](../Series/dyadic-kernel.md). The remote split uses the
actual weighted moments at exponents $-N$ and $N$. Desired convergence or
integral bounds are not assumed.

## A complete zero-cutoff obstruction

If $V\ne0$, the actual normalized entire flow never vanishes, so the
log-window is nonzero. The actual Schwartz Fourier inverse then gives a
nonzero density. Its norm is continuous, integrable and nonnegative, with
a nonzero point; hence $M_0(V,R)>0$ for every real $R$.

The controls use the actual nonzero compact window $V=G(1,0)$. At $Z=1$
and $A=0$, every term is selected. The resulting series is summable by the
unrestricted theorem, and its zeroth term is positive. Its sum is therefore
positive, whereas the proposed $N=1$ bound $C\,1^1/0^1$ is zero under Lean's
totalized division, for every real $C$. The sole negative use then omits
the cutoff-domain evidence. This disproves removing that domain hypothesis
entirely; it does not establish that $A\ge1$ is sharp.

## Source, verification and limits

The [source](../../../../GRWTSK/Analysis/MellinTransform/GaussianDensityMoments.lean),
[positive controls](../../../../GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianDensityMoments.lean),
native receipt (artifact:gitblob:78403906b76d2eb7d14efb19f69629b4619d8090)
and integration record (artifact:gitblob:58d2f93c87825629dea4d84576462e17b8568a9c)
bind exact fresh selected local sources and controls, including the prior
compact Gaussian window used by the nonzero control. Pinned Lean 4.33.0
checks trust zero, fatal warnings and the full owned-declaration and
transitive-axiom census, allowing only `propext`, `Classical.choice` and
`Quot.sound`. Clean pinned dependency objects are reused and fingerprinted;
their sources and the whole umbrella are not rebuilt.

The actual moment and summation proof slices are adapted from OpenAI's
pinned [GaussianDensityBudget](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianDensityBudget.lean)
and [GaussianTailBudget](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianTailBudget.lean).
Apache-2.0 terms, OpenAI project credit and individual Mathlib author credits
remain retained. The positivity producer and actual zero-cutoff obstruction
are local formalization contributions. Human direction: grwtsk contributors;
adaptation/formalization/checking: OpenAI Codex. Correlated review is not
independent validation.

This quantity differs from the prior dyadic Gaussian-window seminorms.
The [coupled separation result](gaussian-coupled-separation.md) now constructs
an actual active cutoff and uses this same log-window density in a finite-family
Fourier inverse identity. Density use in physical rows, common finite support,
row majorants, ideals/Hecke/calibration, the original detector and RH remain open. No novelty, whole-library or operational cache-refinement
acceptance is inferred.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/GaussianDensityMoments.lean`](../../../../GRWTSK/Analysis/MellinTransform/GaussianDensityMoments.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 17 |
| Theorem/lemma commands | 14 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
