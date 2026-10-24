# Uniform scale bounds for Gaussian derivatives

Let $P$ be the exact normalized Gaussian Mellin profile. For every real
$a$ and natural derivative order $n$, there is a constant $C>0$ such that

\[
\forall r>0\;\forall y\in[1/2,2],\qquad
\left\|D^n_x\bigl(P(rx)\bigr)(y)\right\|\le C r^{-a}.
\]

The derivative is Mathlib's actual iterated real derivative of the displayed
scaled function. The constant may depend on $a,n$, but is independent of
$r,y$ in the stated domain. This is a uniform scale estimate; the
[compact window's](compact-gaussian-window.md) fixed-scale Schwartz-map
construction has a separate contract.

## Actual suppliers and proof

The source extends the same profile to the principal-log complex function

\[
F(z)=c\exp\bigl(-\log(z)^2/4\bigr),\qquad
c=\left(\frac1{2\pi}:\mathbb R\right)\pi^{1/2}.
\]

Its restriction to real arguments is exactly $P$. For $z\ne0$ and every
real $a$, the source proves

\[
\|F(z)\|\le\|c\|\exp(\pi^2/4+a^2)\|z\|^{-a}.
\]

The principal argument bound and completion of a real square supply this
inequality. Positive real part supplies analyticity. A closed complex disk
of radius $1/4$ about $y\in[1/2,2]$ stays in the positive half-plane and
has norm between $1/4$ and $9/4$. Compactness bounds its remaining real
power factor independently of $r$. The pinned Cauchy derivative estimate
then supplies the factorial and radius factor. An actual iterated-derivative
restriction theorem identifies the complex derivatives with the real
scaled derivatives in the statement. No desired derivative or disk bound
is assumed as a premise.

## Domain control and remaining consumers

The exact totalized profile has $P(0)\ne0$. At derivative order zero and
$a=1$, no single constant can bound $\|P(r\cdot0)\|$ by $C/r$ for every
positive $r$. The positive module proves this actual omitted-domain
obstruction before the negative consumer attempts to weaken the domain.

The accepted domain remains $r>0$ and $y\in[1/2,2]$. The [uniform window seminorm consumer](gaussian-window-seminorms.md)
now combines this bound with actual product-rule estimates for the fixed
cutoff divided by the square root. It supplies uniform window derivatives,
Schwartz seminorms, finite families and two-sided estimates, with its own
source, controls and native receipt. Arithmetic ideal, Hecke, calibration
and physical-row suppliers retain their own obligations.

## Source, verification and credit

The [source](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean),
[positive controls](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean),
native receipt (artifact:gitblob:f5eab426fa965cc75caab50b6d165fef944b6c8b)
and integration record (artifact:gitblob:d72d90e97c0d7e604f4365a2b8ba2c0836078c75)
bind the exact selected closure. Lean 4.33.0 checks fresh local sources at
trust zero with fatal warnings and a complete owned-declaration/transitive-
axiom census permitting only `propext`, `Classical.choice` and `Quot.sound`.
Clean pinned dependency objects are reused and fingerprinted; their sources
are not rebuilt. Correlated model/source review is not independent validation.

The exact supplier chain follows OpenAI's pinned
[GaussianDerivative](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianDerivative.lean).
Apache-2.0 terms and upstream authorship remain retained, including Yury
Kudryashov's Mathlib Cauchy APIs and the individual Gaussian, logarithm,
analyticity and derivative authors in the imported sources. Human direction:
grwtsk contributors; local adaptation/formalization/checking: OpenAI Codex.
No novelty, cold dependency rebuild, whole-library or RH admission, or
operational cache refinement is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean`](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 8 |
| Theorem/lemma commands | 7 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
