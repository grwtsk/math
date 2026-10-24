# A Gaussian contour for the zeta Dirichlet series

Let $\sigma>1$ and $Z>0$ be real. Put $s_v=\sigma+iv$ and let $P$ be the
exact [normalized Gaussian Mellin profile](../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/normalized-gaussian.md)
with Mellin transform $\exp(s^2)$. Then

\[
\frac1{2\pi}\int_{\mathbb R}
 Z^{s_v}\exp(s_v^2)\zeta(s_v)\,dv
=\sum_{n\ge0}P((n+1)/Z).
\]

The coefficients are exactly one on the positive natural numbers. Complex
powers use Mathlib's principal convention, with positivity of $Z$ and $n+1$
retained. The profile on the right is the exact quarter-width profile with
its principal half-power coefficient, not an unnormalized Gaussian.

## Absolute interchange supplied by the half-plane

The proof uses the actual Dirichlet series for `riemannZeta` at
$\operatorname{Re}(s_v)=\sigma>1$. The contour summands have norms

\[
Z^\sigma\exp(\sigma^2)(n+1)^{-\sigma}\exp(-v^2).
\]

Gaussian integrability proves integrability of each summand. The convergent
positive-natural-number $p$-series at $\sigma>1$ supplies the sum of integrated
norms, justifying actual sum–integral interchange. Termwise inversion then
uses the proved normalized Gaussian formula at the positive argument
$(n+1)/Z$. The resulting profile series is summable. The desired interchange
and signal representation are not assumed inputs.

The profile-summability theorem needs only $Z>0$: its proof chooses
$\sigma=2$ internally. The contour equality retains $\sigma>1$. At
$\sigma=Z=1$, the actual sequence of integrated summand norms is a strictly
positive Gaussian factor times the harmonic sequence and is not summable.
The negative control rejects using that weaker half-plane data as the strict
premise. This is an obstruction to the specified absolute interchange
supplier, not a disproof of every possible continued contour formula.

This is an ordinary-zeta consumer of the analytic structure used in OpenAI's
Gaussian completion source. That upstream detector has its own cubic-ideal
pair indices, coefficient bounds, masks and corrections. This theorem does
not admit that surrounding arithmetic machinery or replace its hypotheses.
No contour shift through $\sigma=1$, analytic continuation, new zero-free
region or RH supplier is asserted.

The [dyadic Gaussian reconstruction](gaussian-dyadic.md) is an actual consumer
of this profile sum and contour. It supplies the smooth natural-scale annulus
partition, product-series summability and finite fixed-scale inner sums.
Its scale-coverage premise and native receipt are separate from this
convergent-half-plane interchange.

## Source, verification and credit

The [source](../../../../GRWTSK/NumberTheory/LSeries/GaussianContour.lean),
[positive controls](../../../../GRWTSK/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean),
native receipt (artifact:gitblob:ba815da9becda026d0ae449ac209318b39548fae)
and integration evidence (artifact:gitblob:6a035620ded59ca16560bc21098b70ca8c5e12a0)
retain exact statements, bytes and verification scope. Pinned Lean 4.33.0
checks fresh selected local objects at trust zero with fatal warnings and a
complete owned-declaration/transitive-axiom census permitting only `propext`,
`Classical.choice` and `Quot.sound`. Pinned dependency objects are reused and
fingerprinted, without rebuilding their sources. Correlated source/model
review is not independent validation.

OpenAI's [GaussianCompletion source](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianCompletion.lean)
and its [RowInterchange source](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/RowInterchange.lean)
supply the pinned research context. Apache-2.0 and individual Lean/Mathlib
author credit remain retained in source and NOTICE. Human direction:
grwtsk contributors; local formalization/checking assistance: OpenAI Codex.
No mathematical novelty, whole-library admission or operational cache
refinement is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/LSeries/GaussianContour.lean`](../../../../GRWTSK/NumberTheory/LSeries/GaussianContour.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 11 |
| Theorem/lemma commands | 9 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
