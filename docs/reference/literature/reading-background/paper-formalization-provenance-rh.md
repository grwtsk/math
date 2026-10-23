# Paper-to-Lean provenance: Weil positivity and canonical square-tent RH work

**Reviewed 2026-10-23. Status: source-provenance audit, NOT a new Lean verification receipt.**
This human-maintained ideas-documentation supplement is linked from the
[reading-background index](README.md). It does not rewrite the generated
[unpublished idea–formalization map](idea-formalization-map.md) or assert a
reading date, influence, priority, or owner-attributed idea without evidence.
Titles, authors, years, and identifiers below identify cited *published*
work. Paper results and local Lean trust status are distinct assertions.

## Required record for future paper-derived source

For every use of a paper in a formalization, add or update a record **in the
same source-integration increment**, with:

1. **Citation:** exact title, printed authors, year/edition, stable DOI, arXiv ID,
   archival URL, or publisher URL; section, theorem, formula or page locator.
2. **Theorem or method actually consumed:** exact conclusion *and hypotheses*,
   including domain, smoothness/support, convergence/summation order,
   sign, normalization and exceptional cases. Distinguish the part encoded
   locally from the whole cited theorem.
3. **Formal consumer:** exact Lean module, fully qualified declaration(s),
   immutable `grwtsk/math` commit, Git blob, and source path (line permalink
   when useful). Describe whether this is a repository-derived proof script,
   a formal assumption/record, an imported theorem, or an analogy.
4. **Verification evidence at that exact commit:** warning-clean build result
   and exit code, fresh kernel result, declaration/type audit, transitive axiom
   and generated/native/unsafe closure, and independent replay receipt.
   If not run or not found, write `NOT_RUN` / `NO_RECEIPT`, **not** `PASS`.
5. **Unresolved comparison:** every missing premise or non-preserved test,
   transform, signed form, moment, zero divisor, normalization, or dense
   extension. A claimed paper-derived bridge is `PROVED_BRIDGE` only if
   its **exact** local hypotheses and conclusion are proved and the stated
   verification evidence actually covers that declaration and commit.

Relationship labels used here:

- **DIRECT_HYPOTHESIS_ENCODING** — a precisely delimited clause of a source
  theorem is represented by typed Lean objects; not its whole theorem.
- **REPOSITORY_DERIVED_SOURCE_DRAFT** — a Lean proof script derives a
  source-specific or elementary result; successful elaboration/kernel trust
  is *not* established until a matching replay receipt exists.
- **CONDITIONAL_INTERFACE_ONLY** — a theorem-direction/transport record
  requires a proof field and has **no source-proved inhabitant**.
- **ANALOGY_ONLY** — useful mathematical comparison, but no formal
  source-to-repository implication or transfer has been proved.
- **UNRESOLVED_PREMISE** — an explicit mathematical requirement still missing.

**Trust baseline:** `grwtsk/math` pins Lean `leanprover/lean4:v4.33.0`
and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.
[Verification issue #100](https://github.com/grwtsk/math/issues/100)
reports a qualified *older* twelve-target snapshot at
`16851ad6be948a1467baf7d029f2a8a65e308b31`. That receipt does
**not** verify any later, changed or separately unimported module here.
At this review, these selected commit-status lookups returned **zero
status contexts**; no fresh same-commit warning-clean compilation,
`leanchecker --fresh` replay, or full transitive axiom receipt was
provided for the declarations below. `SOURCE_DRAFT / NO_RECEIPT` is
therefore their local status, **not a theorem-failure verdict**.

## Primary paper used: Bombieri's official Weil formulation

**Citation BOMB-CLAY-V:** Enrico Bombieri,
*Problems of the Millennium: the Riemann Hypothesis*, Clay Mathematics
Institute official problem description (2000; also in *The Millennium
Prize Problems*, 2006), **`V. Further evidence: the explicit formula`**,
printed pp. 8–9 (PDF pages 8–9 if counting from zero: 7–8).
Stable source: https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf
([Clay's canonical problem page](https://www.claymath.org/millennium/Riemann-Hypothesis/)).

**Exact source hypotheses/method:** Bombieri specifies complex functions
`g` on the positive half-line in a class `W`: piecewise `C¹` with
specified one-sided averaging at finitely many first-kind singularities,
and some `δ>0` with `O(x^δ)` at zero and `O(x^(-1-δ))` at infinity.
Its Mellin transform uses measure `dx/x`. Section V's Weil explicit
formula carries all prime-power, archimedean, pole and symmetrically
summed nontrivial-zero contributions. The *criterion specialization*
uses a multiplicative autocorrelation of `g` (as printed, including
complex conjugation), requires **both**
`∫₀∞ g(x) dx/x = 0` and `∫₀∞ g(x) dx = 0`, and states RH via
**negativity of the explicit-formula right-hand side** on all such
tests. That sign is not silently identified with the positive diagonal
of the repository's differently normalized Hermitian record.

**Correspondence status:** `DIRECT_HYPOTHESIS_ENCODING` for **only**
the two displayed zero-moment equations, followed by
`REPOSITORY_DERIVED_SOURCE_DRAFT` elementary proofs about the
repository's *actual* normalized square tents. The whole class `W`,
Mellin convention, autocorrelation, zeta explicit-formula pairing,
global quantifier and sign conversion are **not** imported/proved.

Pinned source declarations (fully qualified common namespace prefix
`GRWTSK.NumberTheory.Zeta.Riemann.`):

| Actual declaration(s) and purpose | Source at an immutable commit | Trust state |
| --- | --- | --- |
| `CanonicalSquareTentBombieriMomentObstruction.BombieriZeroMomentConditions`; `canonicalTentReal_ordinaryMoment_pos`; `no_bombieriScaledCanonicalTentRealization` — encode two moments, show positive ordinary moment and exclude literal nonzero scalar-rescaled tents | [`4a9285c99de5b08772e974cda933d350b52332dd`](https://github.com/grwtsk/math/blob/4a9285c99de5b08772e974cda933d350b52332dd/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean#L93), blob `cc9ed5b34159242ac69eb569f80e1ea7b420fa53` | SOURCE_DRAFT / NO_RECEIPT |
| `CanonicalSquareTentBombieriMomentRankObstruction.twoTentMomentDeterminant_pos`, `combination_eq_zero_of_bombieriMoments`, `no_nondegenerateTwoTentMomentCorrectedPair` — two independent moments give trivial kernel on the first *two* tents | [`86c291a2c3c3bffb35380bd9c0998d51fc197897`](https://github.com/grwtsk/math/blob/86c291a2c3c3bffb35380bd9c0998d51fc197897/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean#L328), blob `e522772381075f125453ef2ba6b30e63d2873910` | SOURCE_DRAFT / NO_RECEIPT |
| `CanonicalSquareTentThreeTentMomentCorrection.correctedThreeTent_zeroMoments` and `exists_nonzero_threeTent_zeroMoments` — stage 2/3/4 *actual source* tents, two cofactor cancellations, nonzero determinant and nonzero witness at x=20 | [`7c1dfad87b9f4ea3ee4fd8502b48391c485224ad`](https://github.com/grwtsk/math/blob/7c1dfad87b9f4ea3ee4fd8502b48391c485224ad/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean#L142), blob `47508e138cbabff332793205f0918fa9764e6554` | SOURCE_DRAFT / NO_RECEIPT |
| `CanonicalSquareTentCorrectedArithmeticGram.correctedSourceDiagonal_eq_weighted_sum`, `correctedFiniteDiagonal_error_le`, `correctedTailBudget_vanishes` — recompute **arithmetic** source Gram and fixed-vector finite-height error after cofactor correction | [`bb384f85ee1b5fcf7dc39adc8c67f93ea67d14ce`](https://github.com/grwtsk/math/blob/bb384f85ee1b5fcf7dc39adc8c67f93ea67d14ce/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean#L100), blob `f9143686688af9187799d0560a3f8f7e51a9b58a` | SOURCE_DRAFT / NO_RECEIPT |
| `CanonicalSquareTentThreeTentMomentKernelLine.physicalTwoMoments_iff_cofactor_line` and `twoMomentVectors_share_line` — kernel of both *physical* moments on the first three tents is exactly the **one-complex-dimensional** cofactor line | [`8dc0f86dbabf3a9598925306b3bf1f736db28a2d`](https://github.com/grwtsk/math/blob/8dc0f86dbabf3a9598925306b3bf1f736db28a2d/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean#L208), blob `2b9d613a7cef0428754fdceab226907407ad5467` | SOURCE_DRAFT / NO_RECEIPT |

These are **repository-derived consequences** of a limited paper hypothesis,
not results asserted to appear as those theorems in Bombieri's paper.
The two-moment cofactor construction does **not** prove membership in
the full `W` class, preserve its convolution form, or produce the
classical signed Weil criterion. Even the original arithmetic basis
Gram must be recomputed after changing coefficients. The first
three-tent correction gives only a **one-dimensional** coefficient
kernel, not a dense or injective three-dimensional classical test family.

## Primary paper supplying the Weil-form criterion context

**Citation BOMB-LINCEI-2000:** Enrico Bombieri,
*Remarks on Weil's quadratic functional in the theory of prime numbers, I*,
*Rendiconti Lincei. Matematica e Applicazioni*, series 9, **11** (2000),
no. 3, pp. 183–233. Stable archival identifier
[MR1841692](https://mathscinet.ams.org/mathscinet-getitem?mr=1841692);
[Digitized publisher/archive record](https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0).

**Exact theorem/method used as context:** The paper studies Weil's
quadratic functional and its compact-support `L²` minimization;
its abstract identifies positive semidefiniteness of the **particular
Weil functional** as equivalent to RH, and positivity for sufficiently
small support parameters. Validity depends on the specific source
form, test space, sign and normalization. This equivalence is **not**
imported as a kernel-checked theorem into this repository.

**Formal interface — `CONDITIONAL_INTERFACE_ONLY`:**
`GRWTSK.RiemannHypothesis.WeilPositivityImpliesRH`,
`WeilPositivityIffRH` and `PositiveNormalizationTransport` are
source-binding proof **records**; they are not inhabited by any
Bombieri criterion supplied in this work.
[`WeilCriterion.lean` at `033be4864f9363b391a0991eae3aa3e71e6dfa69`](https://github.com/grwtsk/math/blob/033be4864f9363b391a0991eae3aa3e71e6dfa69/GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean#L107),
blob `29d8c4f1c741ab25f6abd136a3c3c2eb900da69a`.
`CanonicalSquareTentWeilTransportObstruction.distinct_basis_cross_zero`
and `no_exactSourceBoundTransport_of_nonzeroCross` establish
*conditional* consequences of an assumed exact positive-scale,
all-pairs transport, not existence of that transport:
[`033be4864f9363b391a0991eae3aa3e71e6dfa69`](https://github.com/grwtsk/math/blob/033be4864f9363b391a0991eae3aa3e71e6dfa69/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean#L139),
blob `2c25cac04fe5575ac0242349a2dcc5592d19f0bb`.
**Actual status:** source statements found; no current same-commit
build/kernel/axiom receipt for either module. No classical Weil-form
positivity-to-RH bridge is accepted in this chain.

## Closest recent proved external method — analogy, not imported

**Citation ALPOEGE-FURMAN-2026:** Levent Alpöge and Ralph Furman,
*More than two thirds of the zeta zeros are simple and on the critical
line* (2026), [arXiv:2608.13637](https://arxiv.org/abs/2608.13637).
External Lean companion:
[Anthropic `Zeta23`](https://github.com/anthropics/formal-math/tree/main/zeta23).

**Theorem/method and hypotheses:** Unconditional proportions of
nontrivial zeta zeros that are simple/on the critical line or
distinct, counted with the paper's analytic multiplicity and
height-asymptotic conventions. The Montgomery–Taylor window sharpens
the bounds. The method applies the Weil explicit formula to a
specified compactly supported test family, uses the zero-counting and
prime-sum analytic inputs, then employs finite Hermitian compression,
rank–trace inequalities and Sylvester inertia for **off-line** zero
pairs. It does **not** prove every zero lies on the critical line.

**Local relation — `ANALOGY_ONLY`:** Compare the signed Hermitian
pairing against `CanonicalSquareTentPolarization.sourcePolarizedForm`
and `CanonicalSquareTentWeilTransportObstruction.distinct_basis_cross_zero`
[at `033be4864f9363b391a0991eae3aa3e71e6dfa69`](https://github.com/grwtsk/math/blob/033be4864f9363b391a0991eae3aa3e71e6dfa69/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean#L139),
blobs `f33d5f402160bc141115c450f1488c103e9cf131` and
`2c25cac04fe5575ac0242349a2dcc5592d19f0bb`.
**No** Alpöge–Furman rank–trace theorem, zero-density result, test
mapping, or external `Zeta23` declaration is imported or replayed
against the pinned local Lean/Mathlib version. External Lean
formalization is **author-reported**; it is not a `grwtsk/math` kernel
acceptance receipt.

## Closure and finite-to-global analogies — not formal imports

**Citation BAEZ-DUARTE-2002:** Luis Báez-Duarte,
*A strengthening of the Nyman–Beurling criterion for the Riemann
Hypothesis* (2002), [arXiv:math/0202141](https://arxiv.org/abs/math/0202141),
Theorem 1.1. With `χ=1_(0,1)` and Beurling generators
`ρ_a(x)={1/(a x)}`, RH is equivalent to `χ` belonging to the
closure in the paper's `L²(0,∞)` Hilbert space of the span
with **natural-number** `a≥1`. This is a *specific global closure
criterion*, not mere positivity or finite-dimensional approximation.
**Local correspondence — `ANALOGY_ONLY`:** `CanonicalSquareTentFiniteUniformTail.finite_test_tail_uniform`
[at `f70b6e236a88eb81c6007435d77705d12c788dca`](https://github.com/grwtsk/math/blob/f70b6e236a88eb81c6007435d77705d12c788dca/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean#L44),
blob `e3c5f5bc52e26d57b0c0bd09f854758922e18d80`,
proposes a single tail cutoff **only over a finite specified family**;
`movingSpike_no_global_cutoff` exhibits the pointwise-to-global
quantifier obstruction. There is no local Beurling generator,
`L²`-density theorem, or transport of that closure. Local
verification: SOURCE_DRAFT / NO_RECEIPT.

**Citation LI-1997:** Xian-Jin Li,
*The Positivity of a Sequence of Numbers and the Riemann Hypothesis*,
*Journal of Number Theory* **65**(2) (1997), 325–333,
[DOI:10.1006/jnth.1997.2137](https://doi.org/10.1006/jnth.1997.2137).
The source proves an RH criterion in terms of **nonnegativity of
an entire specified sequence** of coefficients associated to
Dedekind zeta functions (specializing to the Riemann zeta case).
Its arithmetic normalization, coefficient definition and universal
quantifier are integral to the criterion.
**Local correspondence — `ANALOGY_ONLY`:** the same
[`CanonicalSquareTentFiniteUniformTail.lean` at `f70b6e236a88eb81c6007435d77705d12c788dca`](https://github.com/grwtsk/math/blob/f70b6e236a88eb81c6007435d77705d12c788dca/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean#L44)
shows only finite-family control and why a universal positivity
conclusion needs extra proof. No Li coefficients, formula, or
Li→Weil conversion have been constructed, and no local Lean proof
of Li's criterion has been checked. This is a logical analogy.

## Open obligations, prohibited promotions and acceptance evidence

- **UNRESOLVED_PREMISE — test class:** verify a
  moment-corrected actual function in the *entire* source admissible
  `W` (including piecewise smoothness, endpoint and decay rules), not
  just its two moments. Prove a source-faithful injective corrected
  **family**, not merely one nonzero test on a one-dimensional line.
- **UNRESOLVED_PREMISE — form and sign:** identify the complete
  zero/prime-power/gamma/pole/trivial-zero distribution at the
  exact source test and summation order, define the classical
  Hermitian pairing, and prove an **all-pairs** identity with the
  recomputed corrected arithmetic form and correct sign/scale.
- **UNRESOLVED_PREMISE — density/continuity:** demonstrate density of
  the corrected source family in the *actual* classical test topology
  and continuity/closedness of the relevant diagonal positivity
  condition; pointwise fixed-test tails do not give uniform
  all-tests control automatically.
- **UNRESOLVED_PREMISE — RH criterion:** inhabit a provenance-bound
  source criterion direction or equivalence, proving that its
  domain, zero multiplicities and normalization equal the repository
  proposition. A formal record accepting such a proof as a field
  is not itself a proof.
- **VERIFICATION GATE:** each new source commit must receive real
  `lake build --wfail` exit status, fresh `leanchecker --fresh -v`,
  declaration-specific transitive axiom/native/generated audit and
  an immutable external receipt. Pending requests in
  [`grwtsk/noeaaeue#291`](https://github.com/grwtsk/noeaaeue/issues/291)
  are **requests**, not checking results; [math #100](https://github.com/grwtsk/math/issues/100)
  distinguishes older qualified commits from present source drafts.
  No routine merge, matching blob or import statement upgrades
  `SOURCE_DRAFT` to `KERNEL_CHECKED`.

**Nothing in this ledger claims RH, global classical Weil positivity,
or intellectual influence beyond the cited, source-reviewed mathematical
correspondence.**
