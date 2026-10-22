# Finite Walsh patterns and labeled boundary support (math#630)

**Research date:** 2026-10-21  
**Base inspected:** grwtsk/math main at 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c  
**Subject:** finite probability, Boolean Fourier analysis, symbolic dynamics  
**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NO ANALYTIC SUPPLIER

## 1. Narrow result and credit

The finite mathematical content is classical Walsh/Fourier analysis on a
Boolean cube and elementary finite root-set partitioning. It is *not* a new
proof of a Chowla estimate. The source proof draft uses upstream
Mathlib's `Finset.prod_one_add`, `Finset.sum_comm`, and finite-sum
identities. The referenced Mathlib powerset proof and this source draft use
classical decidability; a separate constructive/choice-free reproof would be
required before advertising an axiom-of-choice-free formalization.

This increment formalizes proposed declarations in:

- `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean`.

The public library root is not changed. The source has not been elaborated,
kernel checked, inspected for axioms, or independently replayed.

## 2. Exact finite interface

Let `R` be a **finite set of root identities**, `I` a finite set
of coordinates, `x : Nat -> I -> Bool` Boolean source labels, and
`a : I -> Bool` a selected target pattern. The Lean source actually
uses an ambient coordinate type and a `Finset` `I`; it imposes
no injectivity or shift arithmetic.

Put `s(false) = -1`, `s(true) = +1`. For any root `n`, define

```text
indicator(n,a) = product_(i in I) 1_[x(n,i)=a(i)].
Q_raw(R,I,a)  = sum_(n in R) indicator(n,a).

C_raw(R,S,a)  = sum_(n in R) product_(i in S) s(x(n,i))*s(a(i)).
```

The finite Boolean identity is

```text
1 + s(b)*s(c) = 2*1_[b=c].
```

Multiplying over all `i` and expanding with the finite powerset
identity gives the **exact, unconditional identity**

```text
2^|I| * Q_raw(R,I,a) = sum_(S subset I) C_raw(R,S,a).
```

The empty subset is INCLUDED; its contribution is exactly `|R|`.
Dropping it destroys normalization.

For `|R|>0`, divide by `|R|`:

```text
2^|I| * P_R,I(a) = sum_(S subset I) C_R,S(a).
```

These are the precise signatures of `rawWalsh_patternCountOn`
and `empiricalPattern_walsh`. Neither assumes Liouville,
all-orders Chowla, a finite automaton, or a sofic approximation.

## 3. Exact finite boundary interface

Let `E subset R` be an explicitly identified exceptional set. If
two labeled windows `x,y` agree in **every coordinate of I**
for all roots of `R \ E`, then

```text
Q_raw(R,I,a;x) - Q_raw(R,I,a;y)
    = Q_raw(E,I,a;x) - Q_raw(E,I,a;y).
```

This is `patternCount_difference_supported`. It follows by
partitioning each full count into `R\E` and `E`, and applying exact
agreement on `R\E`. A naked unlabeled graph-neighborhood isomorphism
does not imply this source-label equality. The equation is an exact
support statement and should not be confused with an operator
comparison or a spectral theorem.

## 4. Further elementary consequences: written mathematics, NOT Lean results

Set `k = |I|`. Let `m(S) = |R|^{-1} sum_(n in R)
product_(i in S) s(x(n,i))`, so `m(empty)=1`.
For `chi_S(a)=product_(i in S) s(a(i))`, the previous identity says

```text
P(a) = 2^(-k) * sum_(S subset I) chi_S(a)*m(S).
```

Orthogonality of Walsh characters over all `2^k` patterns gives

```text
sum_a (P(a)-2^(-k))^2
   = 2^(-k) * sum_(nonempty S subset I) m(S)^2.
```

Consequently, with `U_k` uniform and `Energy =
sum_(nonempty S) m(S)^2`,

```text
chiSquared(P || U_k) = Energy,
TV(P,U_k) <= (1/2)*sqrt(Energy).
k*log(2) - ShannonEntropy(P) <= log(1+Energy).
```

The total-variation bound uses Cauchy--Schwarz. The entropy
bound uses the order-two Renyi / Jensen inequality.
All three are valid finite mathematical deductions. The original source
increment did not draft their formal proofs. The subsequent source-only
Parseval increment (#10 below) now drafts the exact chi-square identity,
while total-variation and entropy remained separate obligations at that
stage. The later fourth increment (#11) now source-drafts both TV bounds.
Shannon entropy remains open, and no module is kernel audited.

For the exception identity, coupling both distributions by choosing
the SAME uniformly random root gives

```text
TV(P_x,P_y) <= |E|/|R|.
```

The fourth increment (#11) now source-drafts this finite inequality
using a complete categorical mass sum. In particular, a bound on one
pattern's count alone does not establish total-variation control;
every category must be included.

## 5. Cyclic model and distinct-shift hypotheses

For a sign sequence `z : Nat -> {+1,-1}`, take a window
of distinct offsets `H = {h_1,...,h_k}`, and let `r=max H < N`.
The ordinary labeling at root `n=0,...,N-1` reads `z(n+h_i)`;
the cyclic labeling reads `z((n+h_i) mod N)` from the first `N`
symbols. Both agree for `0<=n<N-r`. The only possible
exception roots are the final `r` roots. Thus the written
coupling consequence is

```text
TV(P_cycle,U_k)
  <= (1/2)*sqrt(Energy_ordinary) + r/N.
```

This is not a theorem that a target group action is sofic in a
specified sense. `Z` is a sofic group and its cycle models are
standard finite permutation approximations. A sofic GROUP,
a finite-state SOFIC SHIFT, and a labeled local graph limit are
different categorical objects.

When `r` grows proportionally to `N`, the boundary cost need
not tend to zero. Quantitative Chowla cancellation is still required
on all nonempty subsets of a growing window.

## 6. Hostile example: pairwise does not imply threewise

The local source fixture uses four equally weighted samples of

```text
A    B    C=A*B
+    +      +
-    +      -
+    -      -
-    -      +
```

Each individual moment and every two-coordinate product moment
averages to zero. The triple product is constantly `+1`.
The fixture `parity_pairwise_not_threewise_fixture` records all
seven exact unnormalized sums: six are zero, the seventh is four.

A related stationary process may be constructed by independent
Rademacher pairs `A_j,B_j` in three-coordinate blocks
`(A_j,B_j,A_j B_j)`, followed by a uniformly random phase in
`{0,1,2}`. All distinct pairs remain independent, yet three
consecutive signs have expectation `1/3`. This is a **written
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
| Walsh identity + orthogonality -> Parseval / chi-square | Full finite cube; all nonempty coefficients; positive root count | Parseval and chi-square SOURCE_DRAFT; not compiled |
| Finite energy + Cauchy--Schwarz -> TV (squared rational and real square-root forms) | Complete finite cube, positive sample size | SOURCE_DRAFT; NOT_RUN |
| Labeled boundary support + categorical coupling -> TV error <= exception cardinality / root cardinality | All labels agree off a counted subset of the same roots | SOURCE_DRAFT; NOT_RUN |
| TV/chi-square to Shannon entropy | Full empirical law and a log/Jensen theorem | OPEN; written derivation only |
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

The orthogonality supplier is now **source-drafted** in
`FiniteWalshOrthogonality.lean`, at the same review/evidence level as
the parent module. No algebraic or analytic theorem is accepted until
independent Lean elaboration and trust inspection.

The Parseval / chi-square energy supplier is now additionally
**source-drafted** in `FiniteWalshParseval.lean` (see #10). It remains
NOT_RUN / NOT_KERNEL_AUDITED, and is not a compiled theorem.

The finite Cauchy--Schwarz TV and exception-coupling bounds are now
source-drafted in `FiniteWalshTotalVariation.lean` and
`FiniteLabeledBoundaryTV.lean` (see #11). Neither is elaborated or
kernel audited.

Next distinct mathematical obligations: a typed triangle inequality
composing both finite TV estimates, a cyclic-shift model with an exact
exception-set cardinality bound, and the finite-coordinate subtype
adapter. Keep these separate from arithmetic rates, sofic limits,
spectral results and RH.

Reject any proof or summary that (1) omits the empty subset from
the exact Walsh identity, (2) treats pairwise moments as complete
finite-pattern independence, (3) ignores exceptional-root identities,
(4) replaces fixed shifts with unbounded growing shifts without
uniform estimates, (5) turns source-level declarations into
kernel-audited proofs, (6) treats a local spectral-measure limit
as GUE microscopic universality, or (7) treats this optional leaf
as an unconditional RH supplier.

## 9. Source-only second increment: complete Boolean-character orthogonality

**Date:** 2026-10-22. **Direct parent:** original #630 PR #638 head
`dc276722903ba77173e89c7e3e7288d10bbc569a`.

**New subject source:** `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean`.
This imports the earlier `FiniteWalshPatterns` module; it leaves that
module's statements untouched.

For a **finite entire coordinate type** `ι`, all assignments
`a : ι -> Bool`, and subsets `S,T : Finset ι`, put

```text
chi_S(a) := prod_(i in S) sign(a(i)).
Ncube := cardinality(ι -> Bool) = 2 ^ cardinality(ι).
```

The exact finite theorem now proposed in Lean is

```text
sum_(a : ι -> Bool) chi_S(a) * chi_T(a)
   = if S = T then Ncube else 0.
```

**Proof derivation:** Each sign squares to one, so the diagonal is
one for every assignment. When `S != T`, set extensionality gives
some coordinate `j` whose membership in `S` and `T` differs.
Write both characters as products over all coordinates, with factor
one on unselected coordinates, and apply the finite
`Fintype.prod_sum` factorization:

```text
sum_(a:ι->Bool) prod_(i:ι) f_i(a_i)
    = prod_(i:ι) sum_(b:Bool) f_i(b).
```

At the differing coordinate the local factor is `sign(b)`; its
two-point sum is `(+1)+(-1)=0`. The entire product vanishes.
At the diagonal, every coordinate factor is one for each assignment.
This also covers the empty-coordinate case, where exactly one
Boolean assignment exists and the sole character is the empty one.

**Seven source theorem heads:**

- `boolSign_square`
- `walshCharacter_square`
- `walshCharacter_diagonal`
- `walshCharacter_orthogonal`
- `walshCharacter_orthogonality`
- `signedMomentOn_factor`
- `empiricalMoment_factor`

The two new plain mathematical definitions are `walshCharacter` and
`plainMomentOn`. In particular,

```text
signedMomentOn(R,S,x,a) = plainMomentOn(R,S,x)*chi_S(a).
```

This is necessary because the parent module's signed moment already
contains the pattern character, while the Chowla correlation energy
must sum squares of the **plain source moments**, independent of
which output pattern was tested.

**Scope guard:** This module assumes `[Fintype ι]` and ranges over
*all* `ι -> Bool` patterns. The parent's arbitrary
`I : Finset ι` living in a potentially infinite ambient coordinate
type can later be handled by an explicit restriction/reindexing to
the finite subtype `{ i // i ∈ I }`. Such reindexing is not
claimed by this increment.

The user-facing correlation bound

```text
TV(P,U) <= (1/2)*sqrt(sum_(nonempty S) |C_S|^2)
```

remains a written classical consequence, **not** a new Lean theorem
in this increment. There is no Liouville-specific adapter or
spectral operator, and no fixed-to-growing-shift quantifier exchange.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
The new source is enumerated in the updated passive target; its
declarations still require independent Lean type checking, axiom
inspection, and clean-checkout replay. No execution receipt is
represented by this document.

## 10. Source-only third increment: exact Parseval and Pearson chi-square

**Date:** 2026-10-22. **Direct parent:** PR #638 exact head
`6a20d7d5b694d3a8d6cc0f59618a322b11b46740`.

**Subject source:** `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean`.
It imports `FiniteWalshOrthogonality` and therefore preserves the
source identity and order of the two preceding finite modules.

For any finite coordinate type `ι`, finite **nonempty** root set `R`,
and an arbitrary Boolean label function `x:R×ι→Bool`, put

```text
q := |ι→Bool| = 2^|ι|
P(a) := (1/|R|) ∑_(n∈R) 1_[x(n,·)=a]
m(S) := (1/|R|) ∑_(n∈R) ∏_(i∈S) sign(x(n,i))
E(R,x) := ∑_(S⊆ι, S≠∅) m(S)^2.
```

Define `scaledPatternDeviation(a) = q P(a)-1`. The parent
Walsh expansion and the fact `m(∅)=1` give

```text
scaledPatternDeviation(a)
   = ∑_(S⊆ι, S≠∅) m(S) χ_S(a).
```

**First theorem (generic finite Parseval):** for ANY finite set `K`
of distinct subset characters and rational coefficients `c(S)`,

```text
∑_(a:ι→Bool) (∑_(S∈K) c(S)χ_S(a))^2
    = q * ∑_(S∈K) c(S)^2.
```

Its written proof expands the product of finite sums, switches
the three finite summations, and applies the previously drafted Gram
orthogonality. All off-diagonal coefficients disappear, while each
diagonal entry contributes `q`.

**Second theorem (empirical exact finite chi-square):**

```text
∑_(a:ι→Bool) (q P(a)-1)^2 = q * E(R,x)

χ²(P || U) := (1/q)∑_a(q P(a)-1)^2 = E(R,x).
```

The definition is exactly Pearson's chi-square divergence with respect
to the uniform mass `U(a)=1/q`. It is not the absolute correlation
energy, the maximum correlation, a two-point truncation, or a
probabilistic limit. No `sqrt` or `log` theorem is claimed.

**Seven new proposed theorem heads:**

- `walshPolynomial_parseval`
- `sourceCorrelation_empty`
- `sourceCorrelation_empty_sample`
- `booleanCube_card`
- `scaledPatternDeviation_walsh`
- `scaledPatternDeviation_parseval`
- `chiSquareAgainstUniform_eq_energy`

**Five new definitions:** `walshPolynomial`, `sourceCorrelation`,
`nonemptyCorrelationEnergy`, `scaledPatternDeviation`,
`chiSquareAgainstUniform`.

**Critical hostile controls.** `0 < R.card` must be an input to the
empirical theorem; arithmetic over rationals can otherwise define
`0/0=0` without yielding a probability law. The explicit empty-root
fixture checks this distinction. The empty character contributes one
and is then removed EXACTLY once. The full Boolean cube, not a
sample-dependent subfamily of patterns, supports orthogonality and
the cardinal factor. The plain source moment `m(S)` is independent
of output pattern `a`; retaining `χ_S(a)` inside the squared
coefficient would be a type/scope error.

**Current review boundary:** This is a source-only PROPOSED proof body.
No Lean/Lake or native execution was requested, and no compilation,
type elaboration, transitive axiom audit, or kernel check occurred.
Static declaration inventory and finite mathematical enumeration
provide strictly weaker review evidence.

**Next separate supplier:** first prove
`TV(P,U) ≤ (1/2) sqrt(E(R,x))` using finite Cauchy--Schwarz and
nonnegative real casts; separately prove that exact label agreement
outside exceptional root set `E⊆R` implies
`TV(P_x,P_y) ≤ |E|/|R|` via common-root coupling.
Only a subsequently proved quantitative arithmetic estimate can
drive either error small as windows grow.

## 11. Source-only fourth increment: finite total variation and labeled boundary coupling

**Date:** 2026-10-22. **Direct parent:** PR #638 exact head
`918154b70139e801161b701ec694a86e7aa9f8a8`.

The increment adds two independent finite probability layers:

- `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean`.
- `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean`.

Both belong in pure mathematical source. Neither defines or executes a sofic
action, Lean job, Git mutation, native test, or arithmetic estimate.

### 11.1 Quantitative Walsh-to-Bernoulli estimate

Retain all the exact notation of #10, especially the positive finite
sample cardinality `n=|R|>0`, complete Boolean cube cardinality
`q=|ι→Bool|>0`, and the **nonempty** energy `E(R,x)`.
Set `D(a) = q P(a)-1`. The standard total variation distance is

```text
TV(P,U) := 1/(2*q) * sum_(a:ι→Bool) |D(a)|.
```

The source first applies the finite Cauchy--Schwarz inequality
`sq_sum_le_card_mul_sum_sq`, located at the inspected pinned
`Mathlib/Algebra/Order/Chebyshev.lean`, to the **nonnegative**
absolute discrepancies:

```text
(sum_a |D(a)|)^2 <= q * sum_a D(a)^2
                 = q^2 * E(R,x).
```

Dividing by the positive factor `q^2` supplies the rational
squared-TV statement:

```text
(2*TV(P,U))^2 <= E(R,x).
```

An explicitly cast real-valued consequence uses
`Real.le_sqrt_of_sq_le` from the pinned
`Mathlib/Analysis/Real/Sqrt.lean`:

```text
(TV(P,U) : Real) <= sqrt((E(R,x) : Real))/2.
```

This is a bound for finite patterns only. It does NOT establish
that `E(R,x)` is small for any Liouville or Möbius sequence.
Because the Boolean cube is finite and always inhabited, the
`q>0` denominator needs no assumption that the coordinate type
itself is inhabited. Conversely `n>0` is mandatory.

**One new definition:** `totalVariationFromUniform`.
**Six proposed theorem heads:** `boolCube_card_pos`,
`totalVariationFromUniform_nonneg`,
`scaledDeviation_l1_sq_le_card_mul_l2`,
`scaledDeviation_l1_sq_le_energy`,
`two_mul_totalVariation_sq_le_energy`, and
`totalVariation_le_half_sqrt_energy`.

### 11.2 Labeled exceptional-root coupling

For a *finite categorical label type* `β` and two labelings
`x,y : Nat→β` of the SAME selected root set `R`, define

```text
mass(R,x,a) = sum_(n∈R) 1_[x(n)=a]
TV_R(x,y) = 1/(2*|R|) * sum_(a:β) |mass(R,x,a)-mass(R,y,a)|.
```

Assume a genuine `B⊆R` and
`∀ n∈R, n∉B -> x(n)=y(n)`. Exactly partition the root
set, then use the nonnegative exceptional category counts:

```text
mass(R,x,a)-mass(R,y,a)
  = mass(B,x,a)-mass(B,y,a)

|mass(R,x,a)-mass(R,y,a)|
  <= mass(B,x,a)+mass(B,y,a).
```

By summing over **every** category and using
`sum_a mass(B,x,a)=|B|=sum_a mass(B,y,a)`,

```text
sum_a |mass(R,x,a)-mass(R,y,a)| <= 2*|B|.
TV_R(x,y) <= |B|/|R|    (|R|>0).
```

The bound is sharp: one root and opposite Boolean labels give
`TV=1`. A separate hostile fixture demonstrates that source-label
disagreement on the sole *good* root cannot satisfy the required
off-boundary matching hypothesis with `B=∅`.

The finite Boolean-word adapter is exact: for any complete word
`b,a : ι→Bool`,

```text
prod_(i:ι) 1_[b(i)=a(i)] = 1_[b=a].
```

Consequently, the earlier `patternCountOn` equals the new
`categoricalPatternCount` when `I=univ`. It is therefore the
actual full Boolean pattern marginal, not an unlabeled-graph
surrogate. Restriction from arbitrary ambient `I : Finset ι`
to the finite subtype remains a distinct adapter.

**Two new definitions:** `categoricalPatternCount`,
`categoricalTotalVariation`.
**Fourteen proposed theorem heads:** `categoricalPatternCount_nonneg`,
`categoricalPatternCount_total`, `categoricalPatternCount_split`,
`categoricalPatternCount_agree_off`,
`categoricalPatternDifference_supported`,
`categoricalPatternDifference_abs_le`,
`categoricalPatternL1_le_twice_exception`,
`categoricalTotalVariation_le_exception`,
`coordinateIndicator_eq_pattern`,
`fullCubePatternCount_eq_categorical`,
`fullCubeEmpirical_eq_categorical`, `fullCubeBoundaryTV_le`,
`missing_label_agreement_fixture`, `one_root_sharp_tv_fixture`.

### 11.3 Composed mathematical theorem and remaining proof boundaries

The **written**, finite triangular composition is

```text
TV(P_model,U) <= TV(P_model,P_source)+TV(P_source,U)
             <= |B|/|R| + 0.5*sqrt(E(R,x)).
```

At this fourth-increment checkpoint, the two inequalities were
separately source-drafted; the explicit triangle was still open.
The subsequent fifth increment (#12) source-drafts the typed finite
triangle. Cyclic-index root comparison and the arithmetic-specific
correlation supplier remain **OPEN**. In particular,
there is no proof that the full Liouville Chowla correlations tend
to zero or that the microscopic GUE gap process is determined
by a labeled sofic limit.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
NO_ANALYTIC_SUPPLIER. The passive target lists each theorem for
subsequent *actual* clean-checkout elaboration and transitive
axiom/trust inspection. No public-root import, build, merge,
or independent replay was performed.

## 12. Source-only fifth increment: typed Walsh/boundary TV triangle

**Date:** 2026-10-22. **Exact parent branch head:**
`bfcb93241df2d164e62e750637d81bf983808dd5`.
**Source:** `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean`.
**Source blob:** `000196df6397930e95b72f792c325a7043c2e1b8`.

This increment supplies a *single finite mathematical comparison* consuming
the earlier, separately source-drafted total-variation and labeled-boundary
interfaces. It does not create new randomness, an arithmetic estimate, or an
infinite sofic system.

### 12.1 The actual typed seam

Let `ι` be a finite coordinate type. Fix one nonempty finite root set
`R : Finset Nat`, and let `source,model : Nat → ι → Bool` be complete
labelings on those SAME roots. Let `B⊆R` be a counted exceptional set,
with `∀n∈R, n∉B → source(n)=model(n)`.

Take `q=|ι→Bool|`, `n=|R|>0` and define

```text
D_source(a) = q*P_source(a)-1
D_model(a)  = q*P_model(a)-1
E_source    = sum_(S⊆ι, S≠∅) m_source(S)^2.
```

A direct algebraic identity (`scaledDeviation_change`) shows that

```text
D_model(a) = (q/n)*(count_model(a)-count_source(a))
             + D_source(a).
```

This is *exact* for every complete Boolean word `a`. No Liouville
cancellation or model symmetry enters. Apply `abs_add_le`, sum over
the full Boolean cube and divide by `2*q>0`:

```text
TV(model, uniform)
  <= TV(model, source) + TV(source, uniform).
```

The theorem `uniformTV_le_boundaryTV_add_sourceTV` uses the exact
`categoricalTotalVariation` for `TV(model,source)`; the source
and model categorical counts were already proved equal to the
corresponding full-cube Walsh pattern counts in the parent module.
There is no unproved measure-space comparison.

Finally, `finiteWalshBoundary_return` composes this finite triangle with

```text
TV(model,source) <= |B|/|R|
TV(source,uniform) <= sqrt(E_source)/2
```

to obtain

```text
TV(model,uniform) <= |B|/|R| + sqrt(E_source)/2.
```

The signed arithmetic energy is always the energy of the SOURCE
labeling, not the model. Both terms remain visible and nonnegative.
No inference is made that `E_source` is small.

### 12.2 Declaration inventory and negative controls

**Three new proposed theorem heads:**

- `scaledDeviation_change`
- `uniformTV_le_boundaryTV_add_sourceTV`
- `finiteWalshBoundary_return`

No new definitions were introduced. The passive verification target
now requires six isolated modules with **45 theorem heads and
18 definitions** across the entire optional source-only packet.

Required rejection cases:

- source and model sampled from *different* root sets;
- incomplete or coarsened Boolean labels, even if local unlabeled
  neighborhoods agree;
- replacing the model-to-source TV term by zero without proving label
  agreement outside `B`;
- discarding the `1/2` TV normalization or counting `B` twice;
- replacing the source energy by the model energy without a comparison;
- claiming the cyclic `r/N` boundary cost without a constructed
  root-to-cycle map and exact exceptional-set cardinality theorem;
- treating finite source equations or numerical checks as
  Lean kernel-accepted proofs.

### 12.3 Remaining obligations

The immediate next *pure-mathematics* increment identified at this
historical checkpoint was the cyclic-window model. This has now been
source-drafted in #13, retaining exact finite offsets, the last-r
exceptional collar, and the typed comparison. It still requires
actual Lean elaboration and kernel/trust audit.

The above route is not a construction of full Chowla estimates, sofic
operator convergence, microscopic GUE spacing or RH. A quantitative
growing-window Chowla theorem remains a separately typed arithmetic
supplier, with all nonempty subset correlations and shift uniformity
visible.

**Evidence state:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
No Lean/Lake, native build, CI qualification, transitive axiom audit,
public-root import, merge or independent replay is represented here.

## 13. Source-only sixth increment: arithmetic versus cyclic finite windows

**Date:** 2026-10-22. **Direct exact parent head:**
`bc40a07d5a15e904e7226694749a60f3622c2d71`.

**New pure-mathematics source:**
`GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean`.
**Source blob:** `fbbdc11ef2ad8987e3dfd3e25d7e92af1b477e55`.

This supplies the previously missing *finite cyclic-window model* consumed
by the typed `finiteWalshBoundary_return` theorem. It neither invokes
a number-theoretic estimate nor constructs an infinite sofic action.

### 13.1 Exact arithmetic labels and cycle labels

Let `H : Finset Nat` be a **finite set of nonnegative offsets**. Define

```text
r := cyclicMaxOffset(H) := H.sup(id)
ι := {h : Nat // h ∈ H}.
ordinaryWord(n)(h) := z(n + h)
cyclicWord(N,n)(h) := z((n + h) mod N)
R := Finset.range N = {0,...,N-1}
B := Finset.Ico (N-r) N = {N-r,...,N-1}.
```

For the empty offset set, `r=0` and `B=∅`. Repeated offsets do not
create repeated coordinates: `Finset` represents a set, not a
multiset. Every `h∈H` satisfies `h≤r` by `Finset.le_sup`.

The **consumer hypothesis** is `r<N`, so in particular `N>0`.
Modular reduction is only interpreted as a finite cyclic law when
`N>0`; the stand-alone `Nat.mod` expression does not license
a probability interpretation for `N=0`.

### 13.2 Exact collar and complete-word agreement

The newly drafted theorem `cyclicWrapCollar_card` proves, from
`r≤N` (weaker than the consumer's `r<N`),

```text
|B| = N-(N-r) = r.
```

The other collar lemma establishes `B⊆R` using the strict
right endpoint `n<N`. For every root `n∈R\B`,
`n<N-r`; therefore every coordinate `h∈H` has
`n+h<N`. The standard `Nat.mod_eq_of_lt` identity
proves the exact **function equality** of ordinary and cyclic
complete Boolean words at that root. No unlabeled approximation
hypothesis is substituted for this label equality.

The prior `finiteWalshBoundary_return` can consequently be
instantiated on the *same* roots, the *same* finite coordinate
subtype, the ordinary source and the cyclic model, yielding the
source-drafted theorem `cyclicWalshTV_bound`:

```text
TV(P_cyclic, U_H)
    <= r/N + (1/2)*sqrt(E_ordinary(H,N))
```

where

```text
E_ordinary(H,N)
  = sum_(nonempty S subset H)
      ((1/N) sum_(n=0)^(N-1) prod_(h in S) sign(z(n+h)))^2.
```

The energy uses the ordinary arithmetic window `z(n+h)`;
neither modulo reduction nor the exception set changes the source
correlations in this definition.

### 13.3 Declaration inventory, scope, and nonclaims

**Four proposed definitions:** `cyclicMaxOffset`,
`ordinaryShiftWord`, `cyclicShiftWord`, `cyclicWrapCollar`.

**Six proposed theorem heads:** `offset_le_cyclicMaxOffset`,
`cyclicWrapCollar_subset_range`, `cyclicWrapCollar_card`,
`ordinary_eq_cyclic_off_collar`,
`empty_offsets_zero_collar`, `cyclicWalshTV_bound`.

The selected passive target therefore includes **seven isolated
mathematical modules**, **51 theorem heads**, and **22 definition
heads**, all remaining pending Lean elaboration and kernel review.

This theorem does **not** say that the boundary loss `r/N`
vanishes without the additional assumption `r=o(N)`, or that
the full correlation energy tends to zero. When `r` is comparable
to `N`, the finite bound can be vacuous. For actual Liouville
signs, a separately sourced, all-order quantitative Chowla
supplier would be needed to obtain small energy, especially when
`H` grows with `N`.

A sharp boundary example exists at `N=4`, `H={1}`, and
`z(n) := (n≤2)`: the ordinary four sampled signs are
`(+,+,-,-)`, whereas the cyclic ones are `(+,+,-,+)`.
Thus `E_ordinary=0`, `TV(P_cyclic,U)=1/4=r/N`.
This is a *finite mathematical fixture*, not an additional
Lean declaration in this increment.

The new module is a finite **cycle approximation** only.
It does not prove a general graph is sofic; identify a
continuous spectral measure; establish microscopic GUE
spacing; or imply the Riemann hypothesis.

**Next mathematical interfaces:** (a) arbitrary finite coordinate
subsets inside an infinite ambient type, retaining exact shift
identities; (b) a source-appropriate all-order Chowla
supplier with fixed-versus-growing-window uniformity; and
(c) optional probability/entropy inequalities without a
spectral universality upgrade. A clean external Lean replay
with an exact axiom/declaration audit must precede promotion
of any source drafts to verified mathematical declarations.

**Independent finite checks (NOT Lean):** exact integer enumeration
covered **37,448** cases across all offset subsets and all Boolean
source words for `N=1,...,5`, plus **2,604** additional deterministic
pseudorandom cases for `N=6,...,36`; no discrepancies in the collar
count, full-word no-wrap identity, or squared form of the composite
TV bound. The exhaustive tests included **1,364 empty-offset** and
**1,364 singleton zero-shift** cases. A hostile oversized-shift
fixture `N=4, H={5}` produces only four collar roots despite
`r=5`, showing why the exact-cardinality lemma requires `r≤N`.
A sharp finite boundary witness is documented above.
These checks are evidence about bounded integer cases, never proof-term
acceptance.

**Evidence:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
NOT_TRUST_AUDITED / NO_ARITHMETIC_SUPPLIER`.

## 14. Source-only seventh increment: uniform all-order Chowla envelope and exponential cost

**Date:** 2026-10-22. **Direct parent exact head:**
`fbe3bc2b651fd24edd7eb40ed4276b8b0041bbc1`.

**New subject source:**
`GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean`.
**Source blob:** `6cddcb08c60dafff9ec36def5167a60f4c87212c`.

This advances one missing *conditional arithmetic-supplier interface*: it
specifies the quantifiers required to turn a uniform higher-order ordinary
Chowla estimate into a usable finite Walsh energy bound, without constructing
or admitting such an estimate.

### 14.1 Exact supplier and finite implication

Let `H : Finset Nat` be a selected set of `k=|H|` distinct offsets,
`N>0`, and `z : Nat→Bool`. For each **nonempty** subset
`S⊆H`, define the ordinary finite correlation

```text
C_N(S) = (1/N) * sum_(n=0)^(N-1)
           prod_(h∈S) sign(z(n+h)).
```

The new proposition `OrdinaryAllOrderChowlaAtScale N H z epsilon`
requires **one nonnegative rational epsilon, common to every nonempty
subset at the exact SAME N and for the exact SAME H**, such that

```text
for all nonempty S⊆H: |C_N(S)| <= epsilon.
```

The analytic premise is NOT supplied. In particular, a theorem
`∀ fixed S, ∃ C_S` with form-dependent constants is not an inhabitant
of this interface for a growing family `H_N` without a separately
proved uniformity theorem. Nor do two-point estimates establish all
orders, or logarithmically averaged estimates supply ordinary averages.

The exact cardinality identity is

```text
# { S⊆H : S != empty } = 2^k - 1.
```

A finite termwise square comparison and sum give

```text
E_N(H) := sum_(nonempty S⊆H) C_N(S)^2
       <= (2^k - 1) * epsilon^2.
```

The conditional cyclic return now composes with the prior theorem,
retaining the independent collar cost:

```text
TV(P_cyclic(H,N),U_H)
  <= r/N + (1/2)*sqrt((2^k-1)*epsilon^2)
   = r/N + (1/2)*sqrt(2^k-1)*epsilon
```

for `r=max H<N` and `epsilon>=0`. The new Lean source drafts the
first expression with rational epsilon and an explicit cast to real
before applying monotonicity of the square root. The simplified right
side is a written elementary equality, not a separate Lean declaration.

This makes the sufficient growing-window scope completely explicit:

```text
r_N / N -> 0
and
(2^k_N - 1) * epsilon_N^2 -> 0
    ==> TV(P_cyclic(H_N,N), U_H_N) -> 0.
```

All assertions involving `N→∞` here are **written conditional
deductions**, not convergence declarations or a claimed proof of
Chowla. If a genuinely uniform quantitative rate were
`epsilon_N <= C*(log N)^(-A)` with fixed `C,A>0`, then a sufficient
growth regime would be
`k_N <= (2A-eta)*log_2(log N)` for fixed `eta>0`.
For a hypothetical uniform `epsilon_N <= C*N^(-delta)`, it would
suffice to have `k_N <= (2*delta-eta)*log_2(N)`.
These are elementary **rate comparisons**, not imported arithmetic
results, and require `r_N=o(N)` independently.

### 14.2 An independent finite-support obstruction (written mathematics)

A sample of size `N` can realize at most `N` distinct Boolean words
among the `q=2^k` possible patterns. If `A` is the empirical support,

```text
TV(P_N,U_q) >= U_q(A^c)
            = 1 - |A|/q
            >= 1 - N/q.
```

Thus `q/N→∞` prevents total-variation convergence to the fair
Bernoulli law, regardless of a hypothesized cancellation mechanism.

The existing finite chi-square identity also gives an exact algebraic
version of the same obstruction. If `c_a` counts each observed word,
then `sum_a c_a=N`, `c_a^2>=c_a`, and

```text
E_N(H) = (q/N^2) * sum_a c_a^2 - 1
       >= q/N - 1.
```

This is a nontrivial *necessary feasibility boundary* for growing
windows. It is a **paper derivation, not yet a Lean theorem**; do not
misreport it as part of the new source.

### 14.3 Sharp multiplicity fixture and hostile controls

The exponential factor `2^k-1` cannot be replaced by `k` using
pointwise bounds alone. For `k=2` and `N=8`, take four patterns with
counts `(5,1,1,1)`. Every nonempty Walsh correlation has absolute
value `1/2`. Hence

```text
epsilon = 1/2, E_N = 3/4
        = (2^2-1)*epsilon^2
        > 2*epsilon^2.
```

The bound is therefore attained by an actual finite sample. This
fixture and the support obstruction are source-independent finite
mathematics and are not being attributed to an arithmetic sequence.

Mandatory review rejections:

- dropping any nonempty subset, including 3-point and higher correlations;
- replacing the exponential number of characters by only `k`;
- deriving a common `epsilon_N` from form-dependent constants without
  a uniformity argument;
- changing ordinary averaging to logarithmic averaging;
- inferring a nontrivial growing-window Bernoulli limit with `2^k≫N`;
- interpreting a finite sign-pattern limit as a GUE or RH theorem.

### 14.4 Source and evidence inventory

The **two new definitions** are `AllOrderCorrelationEnvelope` and
`OrdinaryAllOrderChowlaAtScale`. The **five new theorem heads** are
`nonemptyCharacterCount`, `nonemptyCharacterCount_rat`,
`energy_le_characterCount_mul_envelope_sq`,
`energy_le_exponential_envelope_sq`, and
`cyclicTV_le_allOrderEnvelope`.

The passive verification target expands to **eight isolated modules,
56 theorem heads and 24 definitions**. No existing mathematical
source, root import, dependency pin or verification runtime changed.

Independent exact-integer evaluation checked **11,774**
exhaustive/sample cases of the energy/count and finite-support
inequalities (including the zero-dimensional cube) without
discrepancy. The sharp `(5,1,1,1)` fixture realizes equality in
the exponential envelope. These finite checks are NOT Lean proof
elaboration, kernel acceptance, or analytic evidence for Liouville.

**Evidence state:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
NOT_TRUST_AUDITED / GROWING_SHIFT_ALL_ORDER_ESTIMATE_OPEN.

**Exact next obstruction:** constructing (or identifying a legitimate
external theorem with) an all-order ordinary Chowla estimate whose
constants are uniform across the selected growing shift sets, while
respecting the finite-sample feasibility boundary. Until then, no
new unconditional distribution theorem follows from this adapter.

## 15. Independent arithmetic leaf: genuine Liouville dyadic affine reindexing

**Date:** 2026-10-22. **Direct parent head:**
`8e5293cde7d1ff8bc0f588a31ba600b6b81b1691`.

The eight generic finite Walsh modules remain source-drafts and retain
their source blobs unchanged. A separate subject-owned arithmetic source
leaf has now been added:

- `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean`;
- standalone review note
  `docs/reviews/chowla-sofic-liouville-dyadic-affine-630.md`;
- standalone passive target
  `verification/liouville-dyadic-affine-630-v0.1.toml`.

The source uses the **actual pinned Mathlib Liouville function**, not an
arbitrary Boolean label or a hypothetical analytic axiom. Its two finite
mathematical endpoints are:

```text
for all n>0: lambda(n) * lambda(2*n) = -1;
for all M>0:
  (1/M) sum_(n=0)^(M-1) lambda(n+1) lambda(2n+2) = -1.
```

This refutes the false "all affine pairs" version of Chowla and proves
the indispensable nonproportionality restriction at a concrete arithmetic
source. Mathlib defines `lambda(0)=0`, so the positivity guard remains
explicit.

The **positive** reindexing is the exact even-cutoff binary additive
identity

```text
sum_(n=0)^(2M-1) lambda(n+1)lambda(n+2)
  = -sum_(m=0)^(M-1) lambda(m+1)lambda(2m+1)
    -sum_(m=0)^(M-1) lambda(m+1)lambda(2m+3).
```

The two right-hand pairs are **fixed nonproportional affine forms**
with coefficient determinants `-1` and `+1`. Hence externally
supplied, properly scoped bounds for each fixed pair can return an
estimate for the adjacent additive binary correlation. The published
OpenAI Result 007 from September 24, 2026 reports exactly this fixed
nonproportional ordinary scope, but this repository increment does
**not import or prove its cancellation theorem**.

The 14 arithmetic theorem declarations and five definitions have their
own isolated review target, keeping uncompiled arithmetic and
uncompiled generic-probability modules independent. The original
eight-module target remains at 56 theorem heads and 24 definitions;
do not silently add the arithmetic leaf to its transitive source list.

The new leaf does not prove all-order Chowla, uniformity over a
growing family of offsets, a sum of squares over all shifts, the
RH-E02 dyadic/maximal supplier or RH. It *does* identify a precise
binary arithmetic reuse seam and one provable source-specific
obstruction to incorrect affine generalization.

For full statements, evidence boundaries, external scope and a
separate transitive trust/verification target, read the standalone
review note linked above.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_BINARY_ADAPTER_OPEN /
ALL_ORDER_GROWING_SHIFT_CHOWLA_OPEN.

## 16. Independent arithmetic continuation: every fixed positive additive shift

**Research date:** 2026-10-22. **Direct parent head:**
`2857898617903e29d46baca3c25016a23acdee13`.

A new arithmetic leaf now extends the preceding adjacent-shift
identity to **each fixed positive additive shift h**:

`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean`

For `h=2j+1`, the paired correlation of
`lambda(n+1)lambda(n+1+h)` is the negative of two
fixed affine-form correlations with nonproportionality
determinants `h` and `h`. For `h=2j>0`, it is
the positive sum of two fixed affine correlations with
determinants `4j` and `j`. The excluded `h=0` case
has identically positive correlation, with prefix exactly
equal to its sample size. Both parity signs are essential.

The endpoint adapter explicitly uses the identity

```text
sum_(m=0)^M F(m) = F(0) + sum_(m=1)^M F(m).
```

It thereby supplies the exact `Finset.Icc 1 M`
index convention of the pinned external OpenAI Result 007
fixed-form comparator. The two initial affine terms remain
visible in both the exact source theorem and the absolute
triangle inequalities; a further odd sample is also
separately identified.

**External proof provenance correction:** the pinned OpenAI
`ComparatorChallenges/OrdinaryTwoPointCorrelations.lean`
contains intentional placeholder proof bodies, but the same
repository also contains a separate
`OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean`
solution entrypoint, importing its own
`OAI/NumberTheory/TwoPoint/Main.lean`. The directly
inspected solution files have source theorem bodies.
Neither their full transitive trust/axiom audit nor
their independent kernel replay has been performed here.
In addition, OpenAI's Lean 4.34.1 / Mathlib d13f23...
must be explicitly transported to grwtsk/math's
Lean 4.33.0 / Mathlib db584cd... before any local
import claim.

No external analytic theorem or `ℤ→ℂ` affine-sum
adapter was constructed in this incremental source
package. For a fixed `h`, valid independent
fixed-form saving estimates would imply the
corresponding ordinary **binary** additive-shift
saving with constants dependent on `h`; the
full-order growing-window energy remains open.

**Independent artifacts:**

- `docs/reviews/chowla-sofic-fixed-shift-affine-630.md`:
  exact identities, external source/version differences,
  finite checks and negative controls.
- `verification/liouville-fixed-shift-affine-630-v0.1.toml`:
  an isolated two-module arithmetic target, listing
  32 theorem and 10 definition heads, including the
  14-theorem arithmetic parent.
- The original eight-module generic Walsh target and
  the parent-only arithmetic target remain separate.

**Evidence:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
OPENAI_SOLUTION_SOURCE_PRESENT / TRANSITIVE_AUDIT_OPEN /
CROSS_VERSION_PORT_OPEN / HIGHER_ORDER_CHOWLA_OPEN`.
No public-root import, toolchain change, Lean/Lake build,
merge, RH theorem, or issue closure.

## 17. Direct complex fixed-form supplier: no dyadic penalty for each fixed shift

**Date:** 2026-10-22. **Exact parent source head:**
`f1c70d8c4020f7dda97f92bad21bbfbde9d6a277`.

One new independent arithmetic module,
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean`
(blob `028a65364fbc3d5365a813eac2212f26739b61fc`),
shows the **direct** finite comparison for a fixed positive
additive shift `h`:

```text
sum_(n=0)^(N-1) lambda(n+1)*lambda(n+1+h)
  = sum_(m in Finset.Icc 1 N) lambda(m)*lambda(m+h)
  = an integer-to-Complex cast of the direct (1,1,0,h) affine sum.
```

The determinant of the direct pair `(m,m+h)` is `h`,
so the forms are nonproportional for `h>0`.
Their positive-index sum requires **no** dyadic parity
split, extra head/tail term, or factor-of-two normalization.
The previous dyadic reductions remain optional arithmetic
identities, but they are NOT a prerequisite for applying a
properly proved fixed-nonproportional source theorem.

The module defines a proof-relevant
`FixedNonproportionalAffineLogSaving : Prop` with the
full public theorem quantifiers: one absolute exponent
`c>0`, positive affine slopes, nonzero determinant,
one positive implied constant `C` for each fixed affine
tuple, all real `X>=3`, `Finset.Icc 1 (floorNat X)`,
Complex norm and `Real.rpow`. The new
`fixedShift_liouville_logSaving_of_affine` theorem
**conditionally** specializes this premise to each fixed
`h>0`, retaining the original exponent and a
possibly h-dependent constant. No premise proof is
constructed or imported.

External `openai/math` source uses Lean 4.34.1 /
Mathlib d13f23..., while grwtsk/math uses Lean 4.33.0 /
Mathlib db584cd.... The independent source-typed
solution and its challenge comparator must not be
conflated. Neither an external transitive axiom audit
nor a cross-pin port was performed.

**New acceptance artifact:**
`verification/liouville-direct-fixed-form-complex-630-v0.1.toml`
tracks the independent THREE-module arithmetic chain,
with 40 proposed theorem heads and 13 definitions.
The complete mathematical, source-provenance and
negative-control review is at
`docs/reviews/chowla-sofic-direct-fixed-form-complex-630.md`.
The eight generic Walsh module source files and their
passive 56-theorem target remain unchanged.

Even acceptance of a fixed-h ordinary binary estimate
would **not** give a common constant for growing `h_N`,
three-point or higher products, the complete Walsh
energy supplier, GUE universality, or RH.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXTERNAL_FIXED_FORM_SOURCE_OPEN / HIGHER_ORDER_CHOWLA_OPEN.

## 18. Exact external Result 007 source-import precondition

**2026-10-22.** Before attempting to instantiate the local
`FixedNonproportionalAffineLogSaving` proposition from
`openai/math`, a bounded source review identified an actual
import-provenance gap in the external solution chain:

```text
OAI.TwoPointCorrelations.FinalMain
  -> OAI.TwoPoint.Main
  -> OAI.TwoPoint.MainWithMRTInputs
  -> OAI.TwoPoint.PartiallyDischargedMain
  -> OAI.TwoPoint.Bounds.PrimeReciprocalTheorem
     -> PrimeNumberTheoremAnd.Erdos970.MertensClassical
        [source path absent from nominal pinned package]
```

The pinned PNT dependency DOES have a mathematical
Mertens-second-theorem candidate at
`PrimeNumberTheoremAnd.IEANTN.Mertens`,
with `Mertens.sum_prime_div_eq_log_log`.
A three-line exact-scope external patch proposal
has been stored **without applying it** at
`verification/openai-result007-prime-reciprocal-import-630-v0.1.patch`.

The source evidence, SHA-pinned candidate and
qualification gates are in
`docs/reviews/chowla-sofic-openai-fixed-form-prime-import-630.md`.
The existing passive three-module arithmetic target now rejects
promotion unless the pinned external import path is resolved,
the candidate is elaborated under a proper provider environment,
and its theorem's full transitive axioms and eventual local
cross-version import are checked.

This is an **obstruction and possible source correction**, NOT
a Lean compiler or kernel failure receipt. No external module,
analytic estimate, or third-party source was changed. The
generic Walsh probability target remains unchanged.

**Evidence:** SOURCE_REVIEWED / PINNED_IMPORT_UNRESOLVED /
INERT_REPAIR_PROPOSED / NOT_RUN / NOT_KERNEL_AUDITED /
ALL_ORDER_CHOWLA_OPEN.

## 19. An exact sublinear fixed-to-growing shift quantifier obstruction

**Date:** 2026-10-22. **Direct inspected parent head:**
`28e070b53d87b73f1d765c97de9061350fba28af`.

A new independently isolated mathematical source file,
`GRWTSK/NumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean`
(blob `3416af4f7e2e4228e01f9b4b8ee5dd8a50540e45`),
now drafts an exact theorem **refuting the abstract quantifier
exchange** from fixed-form decay to growing-shift uniform decay.

Define an abstract rational source error

```text
F(N,h) = if N=h*h then 1 else 0.
```

For every fixed h, the family is IDENTICALLY zero after
N>h². More strongly, with a SINGLE power exponent one,

```text
for all N,h: |F(N,h)| <= (h²+1)/(N+1).
```

The bound permits an h-dependent constant `C_h=h²+1`,
analogous to the form-dependent constants in the published
fixed-form Liouville two-point theorem.

Yet for each k≥1, on the genuine SUBLINEAR window

```text
N_k = k², H_k = {1,...,k}, r_k=k,
r_k/N_k = 1/k -> 0,

F(N_k,k)=1.
```

Thus no eventual bound `epsilon<1` can hold
simultaneously for all `h∈H_k`, even while the
finite-sofic seam cost tends to zero. The proposed Lean
theorem `fixed_power_saving_does_not_imply_sublinear_uniformity`
states this nonimplication at a fixed threshold 1/2.

**Critical scope:** F is an ABSTRACT counterexample to
logical implication; it is not presented as any actual
Liouville/Möbius correlation, and does not refute the
arithmetic possibility of growing-shift cancellation.
It proves precisely that a separate positive arithmetic
supplier is necessary. Two-point fixed-form bounds cannot
be promoted by quantifier exchange to the all-order
growing-window Walsh energy interface.

Standalone note:
`docs/reviews/fixed-shift-uniformity-obstruction-441.md`.
Standalone passive target:
`verification/fixed-shift-uniformity-obstruction-441-v0.1.toml`,
8 proposed theorem heads, 2 definitions, and strict
source-to-kernel guards.

Independent integer checks covered 62,073 pointwise
horizon/shift pairs and 320 square-scale growing windows,
without discrepancies. These are NOT Lean proof checks.
No new root import, source-theorem promotion, external
proof adoption, analytic cancellation or RH claim occurred.

**Evidence:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ABSTRACT_FIXED_TO_GROWING_NONIMPLICATION /
GROWING_SHIFT_ALL_ORDER_CHOWLA_OPEN`.

## 20. Actual positive-index Liouville supplied to the finite Walsh interface

**Date:** 2026-10-22. **Direct inspected parent PR head:**
`72c6d2d9d72c20daa0145ad6bf10e50d1bc7f9a7`.

The finite Walsh/Parseval/cyclic-boundary development now has an
EXACT arithmetic-source adapter, not just an abstract Boolean
input. The new subject-owned source is

`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean`
(blob `0b2cf1223268ae50399119dda7295d9f16729e6d`).

Using the actual pinned `ArithmeticFunction.liouville`, the
source encodes `lambda(n+1)` in a Boolean with exact sign
recovery; the `+1` is mandatory because `lambda(0)=0`.

For each `S⊆H`, without missing or duplicating shifts,

```text
sourceCorrelation(range N,S,ordinaryShiftWord(H,lambdaBool))
  = (1/N)*sum_(n<N) prod_(h∈S) lambda(n+h+1).
```

The equality is algebraic over rationals for every N; the
empty coefficient equals 1 only for N>0. Summing squares
over ALL nonempty shift subsets yields exact equality of
the arithmetic all-order energy with the existing
`nonemptyCorrelationEnergy`.

Consequently the conditional finite cyclic result now
specializes to actual arithmetic sign patterns:

```text
r := max(H), r<N

TV(P_cyclic(lambda(1..N),H), uniform_H)
  <= r/N + 0.5*sqrt(
    sum_(nonempty S⊆H)
      ((1/N)*sum_(n<N) prod_(h∈S) lambda(n+h+1))²
  ).
```

A separate source-specific ALL-ORDER ordinary envelope
proposition is defined and proved equivalent to the
generic interface. It is a premise, **not a proved
Liouville cancellation estimate**. Its conditional
finite TV return retains the full `2^|H|−1` character
count and one error budget common to all subsets.

The new source adds **10 theorem heads and four definitions**.
Its separate passive clean-replay target
`verification/liouville-walsh-arithmetic-source-630-v0.1.toml`
selects all TEN dependency modules (eight generic finite
modules, one arithmetic sign parent, and the new arithmetic
adapter): 80 theorem heads and 33 definitions, source-blob
bound and NOT kernel audited. The original eight-module
Walsh verification target is not replaced.

Full mathematical details, finite checks and exact
nonclaims are recorded in
`docs/reviews/chowla-sofic-liouville-walsh-source-630.md`.

**Next true supplier:** show that the actual all-nonempty-subset
Liouville correlation energy tends to zero at the required
ordinary scale with any relevant growing-window uniformity.
The fixed-binary OpenAI result and the separate
fixed-to-growing-quantifier counterexample do not provide
this analytical theorem. The earlier pinned external
Mertens import-source preflight remains independently open.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SOURCE_IDENTITY_ONLY / ALL_ORDER_CHOWLA_OPEN /
GUE_RH_NONCLAIM.

## 21. Dyadic odd-lifted Liouville recurrence with residual energy

**Research date:** 2026-10-22. **Exact direct parent head:**
`e85c3fe10cac688f782ff52a95fe9f67d5870687`.

The first exact source-driven arithmetic recurrence is now
source-drafted over **all orders** without hiding the
odd-root correlation supplier:

`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean`
(blob `0c8813fd24fb5be3bcc0ea0ded8ab79d231505c2`).

For every original finite shift set H and subset S⊆H,
lift each shift to `2h+1` and sample the actual
positive-index Liouville function. The first half of
roots is exactly reducible by complete multiplicativity:

```text
lambda(2m+2h+2) = -lambda(m+h+1).
```

The other half contributes the distinct, UNESTIMATED
odd-affine product `lambda(2m+2h+3)`. Therefore

```text
C_lifted(2M,2S+1)
  = ( (-1)^|S| C_ordinary(M,S)
       + C_oddResidual(M,S) ) / 2
```

for M>0, preserving the exact factor `1/2` and
the full selected-subset cardinality.

A sharp finite convexity argument, summed over every
nonempty shift subset, yields

```text
E_lifted(M,H)
 <= (E_ordinary(M,H)+E_oddResidual(M,H))/2.
```

There is NO unconditional decay: for `M=1,H={0}`
the source mean is `lambda(1)=1`, the odd residual
is `lambda(3)=-1`, the lifted mean is `-1`,
and both sides of the energy inequality equal one.
Even if the smaller-scale source energy were small,
the odd-residual energy remains an independent arithmetic
supplier. Multiplicativity cannot discard it.

The new module has eight definitions and ten theorem
heads, including a conditional bound consuming TWO
separately provided energy estimates. A new isolated
11-module passive verification target
`verification/liouville-odd-lift-dyadic-recurrence-630-v0.1.toml`
selects all 90 theorem and 41 definition heads,
retaining the earlier ten-module source target unchanged.
The detailed math, sharpness, and remaining obligation
are in
`docs/reviews/chowla-sofic-liouville-odd-lift-recurrence-630.md`.

One *separate finite transport* is still needed to
identify energy indexed by the original subtype H
with the canonical `liouvilleAllOrderEnergy(2M,H')`
where `H'={2h+1|h∈H}`. No automatic subtype/image
identity is asserted. The substantive analytic
obligation is a small odd-residual higher-order
ordinary correlation energy under the requested
growing-window quantifiers.

Independent finite integer checks: 768 H/M cases,
5,824 subset correlation identities and 768 complete
nonempty energy comparisons with zero discrepancies,
including many NONZERO odd residuals. None establishes
Lean/Lake compilation, kernel trust, external replay,
higher-order Chowla, sofic/GUE, or RH.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ODD_RESIDUAL_ESTIMATE_OPEN /
CANONICAL_ODD_LIFT_IMAGE_ADAPTER_OPEN /
NO_ARITHMETIC_CANCELLATION_OR_RH_RESULT.


## 22. Canonical odd-lifted image, all-subset reindexing and arithmetic TV return

**2026-10-22.** Direct parent PR #638 research head:
`4995e170bcfb0ce989bdcbd2090ac009156b842f`.

The prior all-order dyadic recurrence had an exact
source-driven moment identity, but indexed odd-lifted
products using the ORIGINAL finite coordinate subtype
of H. That prevented an auditable direct comparison
to the canonical `liouvilleAllOrderEnergy(2M,H')`
whose subtype is determined by the lifted shift set.

A new separate source
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean`
(blob `f0b7812e767098bf99fb9a885da9b5e05933c017`)
constructs the correct **bijective coordinate and
powerset transport**, with `H'={2h+1|h∈H}`.

It proves at the SOURCE-DRAFT level that the map is
injective, `|H'|=|H|`, the subtype equivalence sends
each old coordinate to precisely `2h+1`, and its
`Equiv.finsetCongr` maps EVERY selected subset
bijectively, preserving the empty/nonempty
character criterion.

The exact raw product identity

```text
prod_(h∈S) lambda(n+2h+2)
  = prod_(j∈liftSubset(S)) lambda(n+j+1)
```

then gives the exact canonical source-energy equation

```text
oddLiftedAllOrderEnergy(M,H)
  = liouvilleAllOrderEnergy(2M,H').
```

The previous sharp convexity estimate now supplies

```text
M>0:
E_lambda(2M,H')
  <= [E_lambda(M,H) + E_oddResidual(M,H)]/2.
```

The fully canonical cyclic-pattern consumer additionally
requires `max(H')<2M` and returns

```text
TV(P_cyclic(lambda(1..2M),H'), uniform_H')
  <= max(H')/(2M)
     + 0.5*sqrt(
         [E_lambda(M,H)+E_oddResidual(M,H)]/2).
```

The residual is NOT shown small, and M=1,H={0}
attains equality in the energy bound with all
three energies equal to one. No contraction,
fixed-point contradiction, full Chowla or
RH theorem has been inferred.

**New passive acceptance target**
`verification/liouville-odd-lift-canonical-transport-630-v0.1.toml`
includes twelve source-only modules with 101
theorem heads and 44 definitions. Full detailed
review:
`docs/reviews/chowla-sofic-canonical-odd-lift-transport-630.md`.
The previous eleven-module target and proof-source
blobs remain preserved.

Independent integer/finite-real checks: twelve
shift families, 768 H/M configurations,
5,824 complete subset correspondences,
768 canonical energy equalities and bounds,
and 737 canonical cyclic TV cases satisfying
the lifted strict-collar hypothesis; zero
discrepancies. These checks are not Lean builds
or kernel proof-term evidence.

**Next genuine mathematical supplier:** an
all-order ordinary Liouville estimate for
the odd-affine residual and the smaller source
energy, valid at any required growing-shift
scope. Source-level reindexing has no power
to create this cancellation.

**Evidence:** SOURCE_DRAFT / NOT_RUN /
NOT_KERNEL_AUDITED / CANONICAL_SUBTYPE_IMAGE_DRAFTED /
ODD_RESIDUAL_SUPPLIER_OPEN / NO_GUE_OR_RH_EDGE.

## 23. Exact signed dyadic Liouville interaction and antipodal-pair criterion

**2026-10-22.** The canonical odd-lifted arithmetic
energy comparison now has a signed exact refinement:

```text
H'={2h+1 | h∈H}, M>0
X(M,H) := sum_(nonempty S⊆H) (-1)^|S| C_S(M) R_S(M).

4 E_lambda(2M,H') =
   E_lambda(M,H) + E_oddResidual(M,H) + 2 X(M,H).
```

This new source-only arithmetic result lives in
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean`,
blob `c7b4feffad2c7f7fdfc06ba79e0f9295ad831d90`,
adding seven proposed theorem heads and two definitions.
It preserves the entire finite subtype powerset and
the exact factor `(-1)^|S|`, one minus sign
per selected shift.

Unlike the preceding convexity upper bound,
this identity displays cancellation between
a smaller-scale source and an odd-affine
residual. The concrete finite Liouville
fixture `M=2,H={1},H'={3}` has
`E_source=E_residual=1`,
`X=-1`, and `E_lifted=0`.
At `M=1,H={0}`, the signed interaction is
positive and all three energies equal one:
there is no unconditional contraction.

A new UNINHABITED `DyadicSignedMixedBudget`
requires the exact combination
`E_source+E_residual+2X≤4 epsilon`.
Its conditional cyclic-TV consumer retains
the strict lifted collar `max(H')<2M`
and outputs `max(H')/(2M)+sqrt(epsilon)/2`.
This repackages the **same difficult arithmetic
energy estimate** and does not prove it.

A second mathematical interpretation
is derived on paper: with `q=2^|H|`, let
`A` count ordered source/odd-residual
pairs whose signs are **opposite at every
coordinate**. Then

```text
X = q A/M² - 1.
```

This yields a necessary obstruction
`E_lifted≥(E_source+E_residual-2)/4`.
Neither the antipodal count nor this lower
bound has been declared as a Lean theorem
in the present increment. They are explicit
follow-up arithmetic/combinatorial suppliers,
not evidence of general Chowla cancellation.

Independent passive thirteen-module target:
`verification/liouville-dyadic-signed-pairing-630-v0.1.toml`
selects 108 theorem and 46 definition heads.
Full note:
`docs/reviews/chowla-sofic-dyadic-signed-pairing-630.md`.
Bounded exact-integer tests: 768 configurations,
5,056 nonempty Walsh character identities and
1,073,280 ordered antipodal pairs, zero
discrepancies. They cannot replace a kernel audit.

**Remaining genuine arithmetic supplier:**
small canonical all-order odd-lifted
Liouville energy at the selected
growing shift/sampling scope, potentially
via signed interaction and antipodal collisions,
not merely finite reindexing.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SIGNED_MIXED_CANCELLATION_OPEN / ANTIPODAL_COUNT_PAPER_ONLY /
NO_GUE_OR_RH_EDGE.
