# Signed traces on a conjugate quartic

For real parameters $a,t$, retain the four-entry list
\[
R(a,t)=[t+ia,t-ia,-t+ia,-t-ia].
\]
The real quartic is
\[
Q(X)=((X-t)^2+a^2)((X+t)^2+a^2)
=X^4+2(a^2-t^2)X^2+(a^2+t^2)^2.
\]
`quartic_expansion` proves this polynomial identity and `quartic_eval_roots`
proves that every listed entry evaluates to zero. The list retains four
occurrences when roots repeat; no analytic multiplicity is inferred.

For the actual real polynomial $p(X)=c_0+c_1X+c_2X^2$, `signedTrace`
evaluates $p$ over the complex numbers at each list entry and sums $p(r)^2$.
`signedTrace_quadratic` proves that the result is the complex embedding of
\[
4c_0^2+4(t^2-a^2)(c_1^2+2c_0c_2)
+4(t^4-6a^2t^2+a^4)c_2^2.
\]
Thus the real part used by `quadraticTrace` is the whole trace, with zero
imaginary part. It is not a sum of squared moduli.

## A single test including height zero

For $p(X)=X^2+aX+a^2-t^2$, `witnessTrace_eq` gives
\[
H(a,t)=-4a^2(a^2+3t^2).
\]
The strict sign theorem `witnessTrace_neg` requires only $a\ne0$; $t$ may be
zero. Consequently `witnessTrace_nonneg_iff` proves $H(a,t)\ge0\iff a=0$.
`quadraticTrace_nonneg_iff` strengthens this to nonnegativity for every real
quadratic test if and only if $a=0$. When $a=0$, the general form equals
$4(c_0+t^2c_2)^2+4t^2c_1^2$.

The even test without the linear term has trace $-16a^2t^2$ and cannot detect
$a\ne0$ at height zero. At $(a,t)=(1,0)$ the single witness has signed trace
$-4$, whereas the sum of its four squared moduli is $4$. Both values and
the repeated-root list are checked consumer fixtures.

## Sources and verification

[Library source](../../../../GRWTSK/Algebra/Polynomial/ConjugateQuartic.lean),
[consumer contracts](../../../../GRWTSK/Algebra/Polynomial/Checks/Positive/ConjugateQuartic.lean),
[zero-height rejection control](../../../../GRWTSK/Algebra/Polynomial/ConjugateQuartic/Checks/Negative/ZeroHeight.lean),
and the selected replay receipt (artifact:gitblob:7f988915e1b12d45aacd2b9aabcf2d14e8e473c0)
bind the checked bytes. Lean 4.33.0 with the repository's pinned Mathlib is
used at trust zero with fatal warnings, fresh selected project objects, and
the repository's complete owned-declaration/transitive-axiom audit. Pinned
dependency objects are reused; neither Mathlib source nor the whole repository
is rebuilt. This is native verification, with no independent review claim.
The integration record (artifact:gitblob:51ed88a59cf8a29ed80b971376e413523f285ae1)
separately retains the pre-existing repository-wide layout and documentation failures.

[Nathanson's Hermite–Sylvester note](https://arxiv.org/abs/1911.01745)
provides the classical context: its Hermite quadratic form is the signed sum
of polynomial squares over roots with multiplicity, and its nonnegativity
characterizes real-rootedness. This module checks an explicit quartic family;
it does not formalize the full general theorem.
The [zeta consumers](../../NumberTheory/Zeta/Riemann/trace-and-height-criteria.md)
retain the missing positivity premise.

## Credit

Human mathematical direction and the single quadratic witness: grwtsk contributors, supplied GRL-RH-1 / 0.4.0 specification. Lean formalization and source
research assistance: OpenAI Codex. The classical Hermite–Sylvester context
retains its attribution; no novelty claim is made. Local source is MIT;
Mathlib retains upstream authorship and Apache-2.0 licensing.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Algebra/Polynomial/ConjugateQuartic.lean`](../../../../GRWTSK/Algebra/Polynomial/ConjugateQuartic.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 16 |
| Theorem/lemma commands | 10 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
