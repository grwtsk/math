# The normalized Gaussian Mellin pair

Define the exact profile used by the pinned OpenAI source:

\[
P(x)=\frac{1}{2\pi}\,\pi^{1/2}
       \exp\bigl(-\operatorname{Log}(x)^2/4\bigr),
\]

where the argument is coerced to $\mathbb C$ and the half-power is Mathlib's
principal complex power. For every $s\in\mathbb C$, the source proves actual
Mellin convergence and

\[
\operatorname{mellin}(P,s)=\exp(s^2).
\]

In particular, $\int_0^\infty P(x)\,dx/x=1$. The normalization is the Mellin
value at coordinate zero.

## Actual inputs and every real contour

The proof uses the [general logarithmic Gaussian](logarithmic-gaussian.md) at
width $b=1/4$. Equality of profiles is used on $x>0$. The source pays the exact
principal-root coefficient identity

\[
\left(\frac{1}{2\pi}\pi^{1/2}\right)(\pi/(1/4))^{1/2}=1.
\]

For each real $\sigma$, it proves continuity and integrability on the actual
vertical line using
$|\exp((\sigma+iv)^2)|=\exp(\sigma^2)\exp(-v^2)$.
It also proves continuity of the exact profile at every positive argument.
Mathlib's Mellin inversion theorem then gives, for every real $\sigma$ and
$x>0$,

\[
\operatorname{mellinInv}(\sigma,s\mapsto\exp(s^2),x)=P(x).
\]

The source recovers the exact upstream inverse integral, with its explicit
$1/(2\pi)$ factor and contour parameter $\sigma+iv$. Convergence, vertical
integrability and continuity are proved inputs, rather than supplied
representation assumptions. No equality between real and complex logarithms
at arbitrary arguments is used; the needed profile correspondence retains
$x>0$.

## Normalization control

The actual unnormalized quarter-width profile has Mellin value at zero equal
to $(4\pi)^{1/2}$, which is not one. The accepted positive control proves this
counterexample. The negative consumer attempts to omit the normalizing
coefficient and must fail at the intended type. Mellin convergence alone does
not supply that missing coefficient identity.

## Source, verification and credit

The [source](../../../../GRWTSK/Analysis/MellinTransform/NormalizedGaussian.lean),
[positive consumers](../../../../GRWTSK/Analysis/MellinTransform/Checks/Positive/NormalizedGaussian.lean)
and native receipt (artifact:gitblob:9af23a4c5912be70435f70c47aa2cb3c718b55e2)
bind exact statements, bytes and controls. Pinned Lean 4.33.0 checks fresh
selected local objects at trust zero with fatal warnings and the complete
owned-declaration/transitive-axiom census; only `propext`, `Classical.choice`
and `Quot.sound` are permitted. Generated project objects and reused pinned
dependency objects are fingerprinted and rechecked. Dependency sources are
not rebuilt.

The integration record (artifact:gitblob:35112d78aee4df5fb5cabc68bbac10813d9bc84b)
and source review (artifact:gitblob:4329ef704c097fd92992c907e2849e0fca0bfc04)
preserve the exact [OpenAI source](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianMellin.lean),
normalization, author credit and comparison limits. The local proof supplies a
forward transform and recovers the selected inverse identity through an actual
consumer of the previously accepted Gaussian. It does not import the
surrounding detector or its arithmetic hypotheses.

The [zeta Gaussian contour](../../NumberTheory/LSeries/gaussian-contour.md)
is a separate actual consumer for $\sigma>1$ and $Z>0$. It discharges
absolute sum–integral interchange from the positive-natural-number
$p$-series before using this inversion termwise. Its coefficient-one zeta
series and native receipt are separate from the normalized Mellin pair.

The [compact Gaussian window](compact-gaussian-window.md) is another actual
consumer of this exact profile:
$G(Z,j,y)=A(y)P(2^j y/Z)/(\sqrt y:\mathbb C)$, with $A$ the smooth dyadic
annulus. Its compact support holds for every real $Z$; for $Z>0$, its proved
smoothness supplies an actual Schwartz map. At $y>0$, multiplying by
$(\sqrt y:\mathbb C)$ recovers $A(y)P(2^j y/Z)$, independently of $Z$.
The window guide binds its separate source, controls and native receipt.

Apache-2.0 terms remain retained. OpenAI supplies the upstream profile and
selected inverse statement. Mathlib credits Sébastien Gouëzel for Gaussian
integration, Lawrence Wu for Mellin inversion and David Loeffler for Mellin
definitions. Human direction: grwtsk contributors. Local formalization/checking
assistance: OpenAI Codex. No mathematical novelty, independent validation,
whole-library admission, arithmetic supplier or RH proof is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/NormalizedGaussian.lean`](../../../../GRWTSK/Analysis/MellinTransform/NormalizedGaussian.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 13 |
| Theorem/lemma commands | 11 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
