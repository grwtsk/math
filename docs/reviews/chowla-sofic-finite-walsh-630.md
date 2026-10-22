# Finite Walsh patterns and labeled boundary support (math#630)

**Research date:** 2026-10-21  
**Base inspected:** grwtsk/math main at 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c  
**Subject:** finite probability, Boolean Fourier analysis, symbolic dynamics  
**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NO ANALYTIC SUPPLIER

## 1. Narrow result and credit

The finite mathematical content is classical Walsh/Fourier analysis on a
Boolean cube and elementary finite root-set partitioning. It is *not* a new
proof of a Chowla estimate. The source proof draft uses upstream
Mathlib's \`Finset.prod_one_add\`, \`Finset.sum_comm\`, and finite-sum
identities.

This increment formalizes proposed declarations in:

- \`GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean\`.

The public library root is not changed. The source has not been elaborated,
kernel checked, inspected for axioms, or independently replayed.

## 2. Exact finite interface

Let \`R\` be a **finite set of root identities**, \`I\` a finite set
of coordinates, \`x : Nat -> I -> Bool\` Boolean source labels, and
\`a : I -> Bool\` a selected target pattern. The Lean source actually
uses an ambient coordinate type and a \`Finset\` \`I\`; it imposes
no injectivity or shift arithmetic.

Put \`s(false) = -1\`, \`s(true) = +1\`. For any root \`n\`, define

\`\`\`text
indicator(n,a) = product_(i in I) 1_[x(n,i)=a(i)].
Q_raw(R,I,a)  = sum_(n in R) indicator(n,a).

C_raw(R,S,a)  = sum_(n in R) product_(i in S) s(x(n,i))*s(a(i)).
\`\`\`

The finite Boolean identity is

\`\`\`text
1 + s(b)*s(c) = 2*1_[b=c].
\`\`\`

Multiplying over all \`i\` and expanding with the finite powerset
identity gives the **exact, unconditional identity**

\`\`\`text
2^|I| * Q_raw(R,I,a) = sum_(S subset I) C_raw(R,S,a).
\`\`\`

The empty subset is INCLUDED; its contribution is exactly \`|R|\`.
Dropping it destroys normalization.

For \`|R|>0\`, divide by \`|R|\`:

\`\`\`text
2^|I| * P_R,I(a) = sum_(S subset I) C_R,S(a).
\`\`\`

These are the precise signatures of \`rawWalsh_patternCountOn\`
and \`empiricalPattern_walsh\`. Neither assumes Liouville,
all-orders Chowla, a finite automaton, or a sofic approximation.

## 3. Exact finite boundary interface

Let \`E subset R\` be an explicitly identified exceptional set. If
two labeled windows \`x,y\` agree in **every coordinate of I**
for all roots of \`R \ E\`, then

\`\`\`text
Q_raw(R,I,a;x) - Q_raw(R,I,a;y)
    = Q_raw(E,I,a;x) - Q_raw(E,I,a;y).
\`\`\`

This is \`patternCount_difference_supported\`. It follows by
partitioning each full count into \`R\E\` and \`E\`, and applying exact
agreement on \`R\E\`. A naked unlabeled graph-neighborhood isomorphism
does not imply this source-label equality. The equation is an exact
support statement and should not be confused with an operator
comparison or a spectral theorem.

## 4. Further elementary consequences: written mathematics, NOT Lean results

Set \`k = |I|\`. Let \`m(S) = |R|^{-1} sum_(n in R)
product_(i in S) s(x(n,i))\`, so \`m(empty)=1\`.
For \`chi_S(a)=product_(i in S) s(a(i))\`, the previous identity says

\`\`\`text
P(a) = 2^(-k) * sum_(S subset I) chi_S(a)*m(S).
\`\`\`

Orthogonality of Walsh characters over all \`2^k\` patterns gives

\`\`\`text
sum_a (P(a)-2^(-k))^2
   = 2^(-k) * sum_(nonempty S subset I) m(S)^2.
\`\`\`

Consequently, with \`U_k\` uniform and \`Energy =
sum_(nonempty S) m(S)^2\`,

\`\`\`text
chiSquared(P || U_k) = Energy,
TV(P,U_k) <= (1/2)*sqrt(Energy).
k*log(2) - ShannonEntropy(P) <= log(1+Energy).
\`\`\`

The total-variation bound uses Cauchy--Schwarz. The entropy
bound uses the order-two Renyi / Jensen inequality.
All three are valid finite mathematical deductions, but
**these bounds are not declarations proved by this source increment**.
Their exact nonempty-subset and probability-normalization scopes remain
the next Lean obligations.

For the exception identity, coupling both distributions by choosing
the SAME uniformly random root gives

\`\`\`text
TV(P_x,P_y) <= |E|/|R|.
\`\`\`

This finite inequality also remains to be formalized. In particular,
one must not infer total-variation control merely by looking at a
single pattern's count without summing the resulting coupling event.

## 5. Cyclic model and distinct-shift hypotheses

For a sign sequence \`z : Nat -> {+1,-1}\`, take a window
of distinct offsets \`H = {h_1,...,h_k}\`, and let \`r=max H < N\`.
The ordinary labeling at root \`n=0,...,N-1\` reads \`z(n+h_i)\`;
the cyclic labeling reads \`z((n+h_i) mod N)\` from the first \`N\`
symbols. Both agree for \`0<=n<N-r\`. The only possible
exception roots are the final \`r\` roots. Thus the written
coupling consequence is

\`\`\`text
TV(P_cycle,U_k)
  <= (1/2)*sqrt(Energy_ordinary) + r/N.
\`\`\`

This is not a theorem that a target group action is sofic in a
specified sense. \`Z\` is a sofic group and its cycle models are
standard finite permutation approximations. A sofic GROUP,
a finite-state SOFIC SHIFT, and a labeled local graph limit are
different categorical objects.

When \`r\` grows proportionally to \`N\`, the boundary cost need
not tend to zero. Quantitative Chowla cancellation is still required
on all nonempty subsets of a growing window.

## 6. Hostile example: pairwise does not imply threewise

The local source fixture uses four equally weighted samples of

\`\`\`text
A    B    C=A*B
+    +      +
-    +      -
+    -      -
-    -      +
\`\`\`

Each individual moment and every two-coordinate product moment
averages to zero. The triple product is constantly \`+1\`.
The fixture \`parity_pairwise_not_threewise_fixture\` records all
seven exact unnormalized sums: six are zero, the seventh is four.

A related stationary process may be constructed by independent
Rademacher pairs \`A_j,B_j\` in three-coordinate blocks
\`(A_j,B_j,A_j B_j)\`, followed by a uniformly random phase in
\`{0,1,2}\`. All distinct pairs remain independent, yet three
consecutive signs have expectation \`1/3\`. This is a **written
counterexample**, not a declaration in the Lean source. The
stationarity proof and infinite-process construction are open
formalization tasks.

The finite fixture already demonstrates why two-point cancellation
cannot be substituted for all-order Walsh cancellation.

## 7. Dependency and evidence ledger

| Edge | Scope | State |
|---|---|---|
| Boolean indicator -> finite Walsh powerset identity | Any finite roots and coordinates | SOURCE_DRAFT, not compiled |
| Finite labeled agreement outside E -> exact support identity | All selected coordinates agree | SOURCE_DRAFT, not compiled |
| Walsh identity + orthogonality -> TV, chi-square, entropy | All nonempty coefficients | Written derivation; Lean supplier OPEN |
| Labeled boundary support + coupling -> TV error <= |E|/|R| | Written derivation; Lean supplier OPEN |
| Fixed-order Chowla -> corresponding fixed-window Bernoulli law | All nonempty subsets, correct averaging | Conditional arithmetic adapter |
| Full Chowla -> Liouville Bernoulli genericity | Every distinct fixed-shift tuple and all orders | Conditional; not supplied by this PR |
| Cycle approximation -> zeta GUE microscopic gaps | Requires spectral/arithmetic identification, not local limits alone | NO PROOF EDGE |
| Prime powers -> modular / Sato--Tate -> pi identities | Requires a new exact arithmetic observable and modular identity | NO PROOF EDGE |

**Connected repository issues:** #630 owner; #441 arithmetic quantifiers;
#121 exact source-labeled finite boundary; #168 macroscopic-vs-microscopic
spectral obstruction; #571 RH-E02 square-modulus/AP bridge; #15 canonical
RH target (NOT a direct consumer of this finite theorem).

**Selected literature:** Nikos Frantzikinakis,
*Ergodicity of the Liouville system implies the Chowla conjecture*,
arXiv:1611.09338 (Chowla's Bernoulli-genericity interpretation).
For the wider Bernoulli/sofic program, see Lewis Bowen's work on
sofic entropy and Bernoulli shifts. Literature supplies background
and comparison, not admitted Lean premises.

## 8. Exact next work and rejection controls

Next finite Lean increment: orthogonality for the complete
\`Finset\` of Boolean patterns; the resulting chi-squared energy
identity; and the TV and exception-coupling inequalities.
Keep this separate from arithmetic rates.

Reject any proof or summary that (1) omits the empty subset from
the exact Walsh identity, (2) treats pairwise moments as complete
finite-pattern independence, (3) ignores exceptional-root identities,
(4) replaces fixed shifts with unbounded growing shifts without
uniform estimates, (5) turns source-level declarations into
kernel-audited proofs, (6) treats a local spectral-measure limit
as GUE microscopic universality, or (7) treats this optional leaf
as an unconditional RH supplier.
