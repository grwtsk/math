# Uniform Fourier moments of Gaussian windows

Let $G(Z,j)$ be the actual compact Gaussian Schwartz window. For every real
$a$ and natural $J$, there is one $C>0$, chosen before $Z>0$ and natural
$j$, such that

\[
\int_{\mathbb R}(1+|t|)^J\left|\widehat{G(Z,j)}(t)\right|\,dt
\le C(2^j/Z)^{-a}.
\]

The actual weighted Fourier norm is integrable at each positive scale.
The transform uses Mathlib's pinned forward $2\pi$ normalization. This
is a theorem about the existing actual window, not an assumed Fourier
evaluation or moment envelope.

## Actual finite source family and cancellation

Set $r=2^j/Z>0$, and let $p$ be Lebesgue measure's `integrablePower`.
The finite family

\[
\{(0,i),(p,i):0\le i\le J+p\}
\]

is supplied to the [uniform Gaussian seminorm estimate](gaussian-window-seminorms.md).
Multiplying the actual source-pair bounds by $r^a$ and proving positive-real
power cancellation gives one nonnegative budget independent of $Z,j$.
The separately proved [Fourier-moment transfer](../HarmonicAnalysis/FourierAnalysis/schwartz-moments.md)
then gives the displayed bound. Its integrability helper applies to the
actual Gaussian Schwartz map.

## Scale boundaries and verification

Strict positivity is retained for $Z$ and hence for $r$. The controls
separate a missing source-pair premise from failure of the positive-scale
power-cancellation identity. They check the actual Gaussian Fourier
moment's integrability and a finite positive-scale bound. At $Z=0,j=0$
the totalized ratio is zero, and at $a=1$ the proposed cancellation
$0^1 0^{-1}=1$ is false. The sole negative consumer attempts to supply
$0\le0$ as $0<0$. This cancellation counterexample at zero does
not by itself assert a zero-scale Schwartz constructor, nonsmoothness,
or a counterexample to the complete Fourier-moment theorem.

The [source](../../../../GRWTSK/Analysis/MellinTransform/GaussianFourierMoments.lean),
[positive controls](../../../../GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianFourierMoments.lean),
joint native receipt (artifact:gitblob:4f955ffd30fe196f05ebac36a19e42c254103cf2)
and integration record (artifact:gitblob:185f6422584772dac23d61dbc65da3699a11ee39)
bind the exact selected local closure, including the generic Fourier
supplier and both control modules. Pinned Lean 4.33.0 checks trust zero,
fatal warnings and all owned declarations/transitive axioms, allowing only
`propext`, `Classical.choice` and `Quot.sound`. Clean pinned dependency
objects are reused and fingerprinted; their sources and the whole umbrella
are not rebuilt by this selection. The analytic census is shared with
the generic supplier and is not counted twice.

The generic proof comes from OpenAI's pinned
[LogProfiles](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Mellin/LogProfiles.lean);
its actual Gaussian finite-family application is a local formalization
contribution. Apache-2.0 terms, OpenAI project credit and individual Mathlib
Fourier, Schwartz, power and Gaussian author credits remain retained.
Human direction: grwtsk contributors; adaptation/formalization/checking:
OpenAI Codex. Correlated review is not independent validation.

The original log-window density has a different definition and still needs
its actual flow, logarithmic window and Fourier-density identification.
Its arithmetic, Hecke, calibration, physical-row and RH suppliers remain
open. No whole-library, novelty or operational cache-refinement claim is made.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/GaussianFourierMoments.lean`](../../../../GRWTSK/Analysis/MellinTransform/GaussianFourierMoments.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 9 |
| Theorem/lemma commands | 7 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
