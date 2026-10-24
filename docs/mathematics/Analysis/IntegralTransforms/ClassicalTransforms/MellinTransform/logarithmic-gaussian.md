# Mellin transform of a logarithmic Gaussian

For $b,s\in\mathbb C$ with $\operatorname{Re}(b)>0$, define

\[
f_b(x)=\exp(-b(\log x)^2),\qquad
G_b(s)=(\pi/b)^{1/2}\exp(s^2/(4b)).
\]

The power is the complex power used by Mathlib. The source proves actual
`MellinConvergent f_b s` and

\[
\operatorname{mellin}(f_b,s)=G_b(s)
\]

for every complex coordinate $s$. Only the positive half-line enters the
Mellin integral. The width condition is strict and concerns its real part.

## Proof and actual reuse

The substitution $x=e^{-u}$, with its absolute Jacobian, converts the full
Mellin kernel into $\exp(-bu^2-su)$. Mathlib's complete complex quadratic
Gaussian integrability and integral formulas establish convergence and the
stated value directly. The proof supplies the actual integrable kernel rather
than assuming holomorphy and extending an identity from a smaller set.

At $b=\pi$, the source reuses the previous
[logarithmic Gaussian definitions](reverse-inversion.md). It proves their
transform identity and convergence at every complex $s$, extending the earlier
checked identity on the zero-real-part line. An actual consumer proves that
this particular Mellin transform is never zero, using the exact exponential
formula. This nonvanishing statement concerns the specified Gaussian transform;
it supplies no zeta or Dirichlet zero-free result.

The [normalized Gaussian pair](normalized-gaussian.md) is an actual consumer
at width $b=1/4$, paying its exact principal-root scalar coefficient and
proving the contour-inversion inputs. Its OpenAI profile, normalization and
native receipt are separate from this general formula and its $b=\pi$ consumer.

## Why strict decay remains

At width $b=0$, the actual profile is the constant one function. The checked
counterexample proves that its Mellin integral does not converge at $s=0$,
using the previous log-profile theorem and infinite real volume. Thus
$\operatorname{Re}(b)\ge0$ cannot replace the strict decay premise in the
convergence theorem. The separately compiled counterexample and intended
negative consumer retain this precise distinction; no argument relies on
values assigned to nonintegrable Bochner integrals.

## Source, verification and credit

The [source](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean),
[positive consumers](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean)
and native receipt (artifact:gitblob:ce8c6324f4c930c3b0005c9a3d0955d6d2000b79)
bind exact hypotheses and bytes. The complete local closure and accepted
controls are compiled from fresh project objects with pinned Lean 4.33.0,
trust zero, fatal warnings and the complete owned-declaration/transitive-axiom
census. Only `propext`, `Classical.choice` and `Quot.sound` are permitted.
Generated project objects and reused pinned dependency objects are fingerprinted
and rechecked; dependency sources are not rebuilt.

The integration record (artifact:gitblob:53529ed11f0287f62093ce9833d42c0131187b31)
and source review (artifact:gitblob:fbc1e3bce835faa9c07724c319825019ef67dcd0)
retain precise source identities and normalization differences. OpenAI's selected
inverse-Gaussian sources and the lognormal-moment reference are related context;
they are not asserted to have this identical formula or to supply its inputs.
Mathlib credits Sébastien Gouëzel for the complete Gaussian formula, Lawrence Wu
for the Mellin change of variables, and David Loeffler for Mellin definitions.
The imported reverse-inversion module retains OpenAI credit. Apache-2.0 terms
remain on this module. Human direction: grwtsk contributors. Local formalization
and checking assistance: OpenAI Codex. No mathematical novelty, independent
validation, whole-library admission, arithmetic supplier or RH proof is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/LogarithmicGaussian.lean`](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 12 |
| Theorem/lemma commands | 10 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
