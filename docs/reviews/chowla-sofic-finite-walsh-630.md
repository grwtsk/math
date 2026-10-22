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

**Evidence:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
NOT_TRUST_AUDITED / NO_ARITHMETIC_SUPPLIER`.
