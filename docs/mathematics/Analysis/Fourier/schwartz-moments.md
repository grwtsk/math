# Fourier moments from Schwartz derivative seminorms

Let $g:\mathbb R\to\mathbb C$ be an actual Schwartz map, let $J$ be natural,
and write $p$ for the pinned Lebesgue measure's `integrablePower`. Suppose
$q,C\ge0$ and, for every natural $i\le J+p$,

\[
q\bigl(p_{0,i}(g)+p_{p,i}(g)\bigr)\le C.
\]

The actual Fourier transform has an integrable weighted norm
$(1+|t|)^J|\widehat g(t)|$, and

\[
q\int_{\mathbb R}(1+|t|)^J|\widehat g(t)|\,dt
\le 2^J\bigl(B_0(C)+B_J(C)\bigr),
\]

where the source defines

\[
v_p=2^p\int_{\mathbb R}(1+|t|)^{-p}\,dt,\qquad
B_J(C)=v_p\bigl(v_pC+2^{J+p}(J+p+1)v_pC\bigr).
\]

These are Mathlib's actual Schwartz seminorms, Lebesgue integral and
Fourier transform, with forward phase $e^{-2\pi ixt}$. The generic transfer
has no compact-support premise. It requires the actual source-pair evidence
through derivative order $J+p$.

## Actual derivative, integral and moment suppliers

The proof uses the pinned derivative-integral Fourier estimate, specialized
to the zeroth derivative of the transform. The actual weighted derivatives
of $g$ are integrable. Their integrals are bounded by the paired source
seminorms with constant $v_p$, giving bounds for the Fourier seminorms.
The actual zeroth and $J$th norm moments then give the one-plus moment by
polynomial domination. Integrability is proved from actual Schwartz
Fourier moments, rather than inferred from a bound on a totalized integral.

The [Gaussian-window consumer](../MellinTransform/gaussian-fourier-moments.md)
supplies the finite source family and its actual bounds. Missing evidence
for that family cannot be replaced by a nonnegative budget alone; the
positive controls establish an actual nonzero-window obstruction before
the intended negative use. They also prove arbitrary-order integrability
and the zero-budget bound for the actual zero Schwartz map. A nonzero
Schwartz value forces the index-zero source pair to exceed zero, and the
actual Gaussian value at $Z=1,j=0,y=3/4$ supplies that witness. This refutes
the zero source budget, without asserting a full moment counterexample or
sharpness of the derivative range.

The [compact logarithmic Gaussian-window consumer](../MellinTransform/gaussian-log-window.md)
also supplies the full source-pair family. It constructs the actual compact
window from the entire logarithmic flow, produces a support box, and defines
the actual density as its Fourier transform. Its positive-scale power bound
is separate from the dyadic Gaussian-window family above.

## Source, verification and credit

The [source](../../../../GRWTSK/Analysis/Fourier/SchwartzMoments.lean),
[positive controls](../../../../GRWTSK/Analysis/Fourier/Checks/Positive/SchwartzMoments.lean),
joint native receipt (artifact:gitblob:4f955ffd30fe196f05ebac36a19e42c254103cf2)
and integration record (artifact:legacy-artifact-unavailable:12de0dfc0f4e7105b3bb195db4312c9050cc52ce99c8033d0b5851d5e86ab6c1)
bind exact fresh selected local sources, the actual Gaussian consumer and
both sets of controls. Pinned Lean 4.33.0 checks trust zero, fatal warnings
and the complete owned-declaration/transitive-axiom census, allowing only
`propext`, `Classical.choice` and `Quot.sound`. The two analytic libraries
share one census, which is not counted twice. Clean pinned dependency
objects are reused and fingerprinted, without rebuilding their sources.
The whole umbrella is not replayed by this selection.

The exact generic proof slice is adapted from OpenAI's pinned
[LogProfiles](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Mellin/LogProfiles.lean).
Apache-2.0 terms, OpenAI project credit and individual imported Mathlib
Fourier/Schwartz author credits remain retained. Human direction:
grwtsk contributors; adaptation/formalization/checking: OpenAI Codex.
Correlated review is not independent validation. No surrounding arithmetic,
density/physical detector, RH, novelty, whole-library or operational cache
refinement is admitted by this result.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Fourier/SchwartzMoments.lean`](../../../../GRWTSK/Analysis/Fourier/SchwartzMoments.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | Unavailable |
| Theorem/lemma commands | Unavailable |

Source-command totals are unavailable for this primary source.

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
