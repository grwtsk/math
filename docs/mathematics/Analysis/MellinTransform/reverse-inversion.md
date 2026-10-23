# Reverse Mellin inversion

Let $\sigma\in\mathbb R$, $f:\mathbb R\to\mathbb C$ and
$F:\mathbb C\to\mathbb C$. Assume all four conditions:

- `MellinConvergent f (σ : ℂ)`;
- $y\mapsto F(\sigma+2\pi yi)$ is integrable on $\mathbb R$;
- that same function is continuous;
- for every $x>0$, $f(x)=\operatorname{mellinInv}(\sigma,F,x)$.

Then, for every real $y$,

\[
\operatorname{mellin}(f,\sigma+2\pi yi)=F(\sigma+2\pi yi).
\]

The auxiliary log-profile theorem derives integrability of
$u\mapsto e^{-\sigma u}f(e^{-u})$ from actual Mellin convergence. The proof
changes variables by $x=e^{-u}$ and applies Fourier inversion with Mathlib's
$2\pi$ normalization. Values of $f$ outside the positive half-line do not
enter the Mellin integral.

## A concrete nonzero consumer

Define

\[
f(x)=\exp(-\pi(\log x)^2),\qquad F(s)=\exp(s^2/(4\pi)).
\]

The source proves Mellin convergence at $\sigma=0$, integrability and continuity
of $F(2\pi yi)=\exp(-\pi y^2)$, and the actual inverse representation for every
$x>0$. It then uses the reverse-inversion theorem to prove
$\operatorname{mellin}(f,2\pi yi)=F(2\pi yi)$. The input function is nonzero:
$f(1)=1$. The theorem here proves the identity on the zero-real-part line;
the complex expression defining $F$ alone is not a proved Mellin identity at
all complex arguments.

The later [logarithmic Gaussian calculation](logarithmic-gaussian.md) proves
convergence and the transform formula at every complex coordinate by direct
Gaussian integration. It has a separate source and native receipt. The
reverse-inversion receipt on this page retains its original zero-line
Gaussian consumer and generic four-premise contract.

## Why the continuity premise remains

The checked point-spike example uses $f=0$ and $F(s)=1$ at $s=0$, zero elsewhere.
The line function is integrable and its inverse Mellin integral is zero, since
changing one point leaves the integral unchanged. At $y=0$ its pointwise value
is nevertheless one. Thus the other three premises cannot establish the
pointwise conclusion. The separately compiled and audited negative-source prefix verifies this
counterexample before the negative control attempts to replace continuity with integrability and must
fail at the intended type.

## Source, verification and credit

The [source](../../../../GRWTSK/Analysis/MellinTransform/ReverseInversion.lean),
[positive consumers](../../../../GRWTSK/Analysis/MellinTransform/Checks/Positive/ReverseInversion.lean)
and native receipt (artifact:gitblob:4380fb4b7d89141fbe4f53deedaefdd07c20aa90)
bind exact hypotheses and bytes. Fresh selected project objects are checked
using pinned Lean 4.33.0, trust zero, fatal warnings and the complete
owned-declaration/transitive-axiom census, permitting only `propext`,
`Classical.choice` and `Quot.sound`. Pinned dependency objects are reused and
fingerprinted, rather than rebuilt from source.

The integration evidence (artifact:gitblob:64cdb4600fba2f06782f1f0db0b54318df74d4ea)
and bounded source review (artifact:gitblob:8b20b50d13784e06d5022afb8b78b460a343c0a9)
retain source identities, normalization, attribution and verification limits.
The generic first two declarations adapt [OpenAI's pinned source](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/ContinuationInversion.lean).
OpenAI's Apache-2.0 terms remain on this module. The log-profile change of
variables follows Mathlib's Mellin inversion proof, credited to Lawrence Wu;
Fourier and Gaussian APIs retain their upstream authors and licenses.
Human direction: grwtsk contributors. Local adaptation, concrete consumers and
checking assistance: OpenAI Codex. No mathematical novelty, independent review,
whole-library admission, arithmetic supplier or RH proof is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/ReverseInversion.lean`](../../../../GRWTSK/Analysis/MellinTransform/ReverseInversion.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 12 |
| Theorem/lemma commands | 10 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
