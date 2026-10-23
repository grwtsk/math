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

### Later main repair: source-bound three-tent proof identities (2026-10-23)

**Primary cited method:** Enrico Bombieri, *Problems of the Millennium:
the Riemann Hypothesis*, Clay Mathematics Institute, **2000** (collected
edition 2006), **§V, pp. 8–9**.
Stable source: https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf.
The *only* paper conditions used by the following local source
derivations are the two moments on the **same** complex test function
`g`: `∫₀∞g(x)dx=0`, `∫₀∞g(x)dx/x=0`. The full test class
`W`, piecewise regularity/decay, autocorrelation, complete signed
explicit formula, and global Weil criterion **are not imported**.

**Actual repository source history:** The two original main
introductions remain historically pinned above. Later, one routine
non-force [repair commit
`e5de97a20b9c7d40c215fd72240aa3289629f76a`](https://github.com/grwtsk/math/commit/e5de97a20b9c7d40c215fd72240aa3289629f76a)
modified only the following two **proof scripts**. These repaired
blobs also appear at the inspected later main commit
[`b1c3aa98de2d2bff50c821f9c24e6608ffbcb2f5`](https://github.com/grwtsk/math/commit/b1c3aa98de2d2bff50c821f9c24e6608ffbcb2f5),
tree `0c6d7194ea3745d8c316d6c5be2ec0648020f96a`.

| Exact local Lean object | Original introduction and Git blob | Repair commit and current Git blob | Exact change |
| --- | --- | --- | --- |
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection.correctedThreeTent_ordinaryMoment_eq`, `correctedThreeTent_multiplicativeMoment_eq`, `correctedThreeTent_zeroMoments`, `exists_nonzero_threeTent_zeroMoments` | `7c1dfad87b9f4ea3ee4fd8502b48391c485224ad`; `47508e138cbabff332793205f0918fa9764e6554` | [repaired source](https://github.com/grwtsk/math/blob/e5de97a20b9c7d40c215fd72240aa3289629f76a/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean#L98), blob `644be0606ac195f35c8409f8877a707edb2aa457` | In both actual Lebesgue moment proofs, name `integral_add` equalities, simplify `Pi.add_apply`, then rewrite; keep same canonical tents and both moment conditions |
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram.correctedSourceDiagonal_eq_weighted_sum`, `correctedFiniteDiagonal_error_le`, `correctedTailBudget_vanishes` and `correctedFiniteDiagonal_comparison_vanishes` | `bb384f85ee1b5fcf7dc39adc8c67f93ea67d14ce`; `f9143686688af9187799d0560a3f8f7e51a9b58a` | [repaired source](https://github.com/grwtsk/math/blob/e5de97a20b9c7d40c215fd72240aa3289629f76a/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean#L100), blob `4ce2dc2dc3bcf1c651d88a315a3b0cbb9d589` | State the exact `VanishesAtInfinity (fun N => pairError N …)` goal with `change`, then call `pairError_vanishes`; same recomputed arithmetic Gram and complete signed tail source |

**Actual preflight evidence:** Direct reads of both old/new Git
blobs and source-level comparisons found the nine selected theorem
headers **textually unchanged** (five in the moment-correction
module; four in the corrected-Gram module). The downstream
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine.physicalTwoMoments_iff_cofactor_line`
[source at `8dc0f86dbabf3a9598925306b3bf1f736db28a2d`](https://github.com/grwtsk/math/blob/8dc0f86dbabf3a9598925306b3bf1f736db28a2d/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean#L208),
blob `2b9d613a7cef0428754fdceab226907407ad5467`,
imports the repaired dependency transitively. Its own unchanged
blob does **not** transfer old kernel evidence across that import.

**Verification state: `SOURCE_PRESENT / NOT_RUN / NO_RECEIPT`
for this repaired import closure.** No `lake build --wfail`,
fresh `leanchecker --fresh -v`, or transitive axiom/generated/native
audit has been run against these repaired blobs in this review.
Locally `lean`, `lake`, and `elan` version checks exit **127**;
GitHub shell DNS exits **2** and git remote lookup exits **128**.
The existing [older immutable request](https://github.com/grwtsk/noeaaeue/blob/cc2d929ec6b31eb75bdea9f996591995256529b2/verification/math/20261023-main-bb384f85-corrected-arithmetic-gram-validation.json)
is pinned to the **old** `f914368…` blob; it cannot
certify `4ce2dc…`. A current acceptance receipt must pin both
repaired source blobs, the unchanged downstream file, Lean
`v4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`,
and actual command outputs/exits.

**Relationship:** `DIRECT_HYPOTHESIS_ENCODING` for Bombieri's
two displayed moments and `REPOSITORY_DERIVED_SOURCE_DRAFT`
for the cofactor, exact integrals, one-dimensional kernel and
recomputed **arithmetic** Gram. The formalized moments are
**not** a `PROVED_BRIDGE` to classical Weil positivity. Missing:
full classical test membership, polarized all-pairs form
normalization/sign comparison, a genuinely injective corrected
family, density/continuity, and the RH criterion direction.


### Additional candidate: prime-17 strict corrected arithmetic supplier (not Lean-formalized)

**Bibliography and exact borrowed hypotheses:** Enrico Bombieri,
*Problems of the Millennium: the Riemann Hypothesis* (**2000**;
collected edition 2006), **§V, printed pp. 8–9**,
[primary stable PDF](https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf).
Only the *two displayed zero moments* are borrowed; the
prime-17 arithmetic calculation below is **not a paper theorem**.
The full class `W`, its Mellin normalization, signed Weil
explicit formula and RH criterion are not imported.

**Source-specific candidate:** The repository's actual corrected
coefficient vector `correctedCoordinates : Combination 2`
has nonzero third entry equal to the positive two-tent
moment determinant `Δ`. Its already-declared **arithmetic**
Gram is `∑ i : Fin 3, ‖u_i‖² squareTentMangoldt (i+2)`.
The stage-four window `(16,25]` contains prime 17 with
`squareWeight 4 17=2/9`; with all terms nonnegative this gives

\[
\texttt{correctedSourceDiagonal}\geq
\frac29\Delta^2\log17>0.
\]

The exact finite source evaluation also yields
`squareTentMangoldt 4 = (2/9) log 17 + (2/3) log 19 + (4/9) log 23`;
prime-power 25 is at zero tent weight. The **complete elementary
proof and intended Lean supplier signatures** are in
[the strict arithmetic source-witness note](../../../mathematics/NumberTheory/Zeta/Riemann/canonical-square-tent-strict-arithmetic-witness-219.md)
([pinned note commit `e2c6b6adb704c8d87db00ce769e663edef483dbe`](https://github.com/grwtsk/math/commit/e2c6b6adb704c8d87db00ce769e663edef483dbe)).
The note's Git blob is
`50f2f0c2c57943a91077ddad4250b12f7f52dd0b`.

**Exact consumer and source commit:** Existing
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.no_classicalDiagonalFactorization_of_exactTransport`
is [source-bound at
`12d66674a317f5503bce3a424a0246c880b7671c`](https://github.com/grwtsk/math/blob/12d66674a317f5503bce3a424a0246c880b7671c/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean),
blob `9a2435d9c74b89ce1434c45bade1aa9beaa6cead`.
It currently takes `hsource : 0 < correctedSourceDiagonal`
as an **explicit argument**, in addition to an actual
`ExactSourceBoundTransport` record. No Lean declaration
`correctedSourceDiagonal_pos` has been committed in this
increment. Supporting extant local declarations and repaired
source blobs are enumerated in the linked note.

**Status:** `REPOSITORY_DERIVED_MATHEMATICAL_SUPPLIER_UNFORMALIZED`;
exact rational prime-power arithmetic checked independently
with Python 3/Sympy, **exit 0**. `LEAN_NOT_RUN`,
`FRESH_KERNEL_NOT_RUN`, `TRANSITIVE_AXIOMS_NOT_AUDITED`,
`NO_RECEIPT`. The previously queued kernel replay of the
affected source dependency chain remains outstanding. This
strict arithmetic source calculation does **not** construct
the classical Weil target, signed all-pairs form comparison,
or any unconditional RH result.

### Proposed coefficient reconstruction from both Bombieri moments and one source coordinate

**Paper source and exact borrowed hypotheses:** Enrico Bombieri,
*Problems of the Millennium: the Riemann Hypothesis*, Clay Mathematics
Institute **2000** (collected **2006**), Section V, printed pp. 8–9,
[official source](https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf).
Use **both** displayed vanishing moments
`∫₀∞g(x)dx=0` and `∫₀∞g(x)dx/x=0` of the same complex test
function. The explicit inverse below is *local finite linear
algebra*, **not** an imported theorem or method asserted in
Bombieri's paper. Classical `W` membership, form/involution,
normalization, zero head/tail and RH criterion are separate.

**Actual current formal declaration:** At
[`grwtsk/math@16e1b6d2c78ffc157e3453c6b9832f9da1b1a0b2`](https://github.com/grwtsk/math/commit/16e1b6d2c78ffc157e3453c6b9832f9da1b1a0b2),
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss.thirdCoordinateReadout`
and `thirdCoordinateReadout_augmented_separates` are in
[`CanonicalSquareTentThirdCoordinateInformationLoss.lean`](https://github.com/grwtsk/math/blob/93468e369390b8ec75e7fd6a031ada2ae92223b0/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean#L39),
introduced at `93468e369390b8ec75e7fd6a031ada2ae92223b0`,
Git blob `1ff8c00eac7c167abc4c5456924312bf6f95bf74`.
`CanonicalSquareTentBombieriMomentInformationLoss.bombieriMomentProfile`
has blob `9a2435d9c74b89ce1434c45bade1aa9beaa6cead`.
`CanonicalSquareTentBombieriMomentRankObstruction.twoTentMomentDeterminant_pos`
has blob `e522772381075f125453ef2ba6b30e63d2873910`.
The existing standalone sources and transitive imports remain
**SOURCE_ONLY / NOT_KERNEL_AUDITED** in this review.

**Next exact mathematical supplier, NOT YET A LEAN DECLARATION:**
Let the genuine stage 2/3/4 ordinary/reciprocal moment columns be
`(A₀,A₁,A₂)` and `(B₀,B₁,B₂)`. The existing rank source
has `D=A₁B₀−A₀B₁>0`. The pair of moments plus the
actual third coefficient `t=u₂` is represented by the matrix
`[[A₀,A₁,A₂],[B₀,B₁,B₂],[0,0,1]]`, whose determinant
is `−D≠0`. It has an explicit coefficientwise inverse:
`q₀=m₀−A₂t`, `q₁=m₁−B₂t`,
`u₀=(A₁q₁−B₁q₀)/D`,
`u₁=(B₀q₀−A₀q₁)/D`, `u₂=t`.
This would prove
`Function.Injective (augmentedProfile bombieriMomentProfile thirdCoordinateReadout)`
**only on the actual three-dimensional coefficient carrier**.
The existing augmentation theorem proves separation of a selected
pair, **not** that global injection. It is not a map of
the full classical test space.

**Mathematical note:** [exact matrix/source identities and Lean
supplier proposals](../../../mathematics/NumberTheory/Zeta/Riemann/canonical-square-tent-augmented-moment-reconstruction-219.md),
integrated at `grwtsk/math@42d52cb5908f462eff0db002a4023387eeb7ec40`,
documentation blob `77c34dc66127dbf146ab53f9a6d07db10ad9b290`.
Independent Sympy exact matrix left/right inverse and
60-digit complex-vector reconstruction checks passed, Python
exit **0**, script checksum
`f3af7883bf9dfc7bcfc8e862a682e76653a4afce6e1e3895484fc538e5a70545`.
This is `REPOSITORY_DERIVED_UNFORMALIZED_MATHEMATICAL_SUPPLIER`,
**NOT** `PAPER_TO_LEAN_BRIDGE_PROVED`,
`LEAN_COMPILED`, `FRESH_KERNEL_REPLAYED` or
`TRANSITIVE_AXIOMS_AUDITED`. No source-exact signed
classical Weil comparison or RH consequence follows.

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


**Additional exact paper consequence (conditional finite inertia, NOT a
local theorem):** Bombieri's 2000 paper also constructs Fourier-side
finite truncations of its **particular** Weil quadratic form. In the
hypothetical case that **RH is false but only finitely many nontrivial
zeros are off the critical line**, the paper states that, for
sufficiently large truncation, the number of **negative eigenvalues**
is exactly **one half the number of zeros failing RH** (under the
paper's zero-count and truncation conventions). See the [publisher
abstract and article](https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0).
This is a conditional, eventual-in-truncation **inertia theorem**;
it does **not** assume all truncations are positive, does not say that
finitely many off-line zeros actually exist, and does not imply RH.
No theorem number or multiplicity translation has been independently
certified in this provenance review; those details must be checked
against the identified paper before theorem-level porting.

**Precise local comparison:** `GRWTSK.RiemannHypothesis.WeilHermitianForm`
and `negativeWitness_of_not_rh`
([WeilCriterion.lean at
`033be4864f9363b391a0991eae3aa3e71e6dfa69`](https://github.com/grwtsk/math/blob/033be4864f9363b391a0991eae3aa3e71e6dfa69/GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean#L62-L192),
blob `29d8c4f1c741ab25f6abd136a3c3c2eb900da69a`)
supply an **abstract form record** and a **conditional criterion
contrapositive**; neither constructs Bombieri's finite truncation
operator or counts its negative eigenvalues.
`CanonicalSquareTentWeilTransportObstruction.distinct_basis_cross_zero`
is another conditional form identity, not Sylvester inertia.
**Relationship: ANALOGY_ONLY / UNRESOLVED_PREMISE.**
Required suppliers: exact Bombieri test-space/truncation realization,
zero multiplicity and reflection-orbit accounting, eigenvalue-sign
convention, finite-dimensional inertia, and the signed comparison with
the repository's arithmetic Gram. **Actual local verification:
NOT_FORMALIZED / NO_RECEIPT** for this conditional inertia statement.

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


**Exact external Lean comparator identity (additional source audit;
no local import):** At the inspected Anthropic
[`anthropics/formal-math@e1a4e6508154ea59f030480661590a9fe3018011`](https://github.com/anthropics/formal-math/tree/e1a4e6508154ea59f030480661590a9fe3018011/zeta23),
`zeta23/Solution.lean` has Git blob
`bd5dd641b10983884cafb0a4d7d964a10de32d11` and binds the
following *headline* declarations to their source `Zeta23` suppliers:

- [`two_thirds_simple_on_critical_line` (source line 60)](https://github.com/anthropics/formal-math/blob/e1a4e6508154ea59f030480661590a9fe3018011/zeta23/Solution.lean#L60):
  for **every** `ε>0` there exists a cutoff `T₀` such that for
  all `T≥T₀`, `(2/3−ε) Ncount(T,2T) ≤ N0simple(T,2T)`.
  This is an **asymptotic proportion**, not a universal statement
  about each nontrivial zero.
- [`five_sixths_distinct` (line 68)](https://github.com/anthropics/formal-math/blob/e1a4e6508154ea59f030480661590a9fe3018011/zeta23/Solution.lean#L68):
  the analogous bound `(5/6−ε) Ncount(T,2T) ≤ Ndist(T,2T)`.
- [`montgomery_taylor_simple_on_critical_line_mult` (line 82)](https://github.com/anthropics/formal-math/blob/e1a4e6508154ea59f030480661590a9fe3018011/zeta23/Solution.lean#L82):
  replaces `2/3` by `2−1/cMT`, with `cMT` exactly defined by
  the companion formalization's Montgomery–Taylor window.
  All three statements preserve their own `∀ ε>0, ∃ T₀, ∀ T≥T₀`
  quantifier order; no implicit RH hypothesis is added.

External **source/toolchain pin**: Lean
`leanprover/lean4:v4.33.0-rc2` (toolchain blob
`c084c7fbe586b0276863b66f16d2955a43bc3fc6`),
Mathlib `51e6992efd06126df61a496bebf8f49482a4e129`,
`comparator.json` blob
`0fc12ebb8b21a74de5d30fd598e1f1ad1094ca2e`
(17 named headline comparison targets), and
`scripts/PrintAxioms.lean` blob
`3c379361166b431bc47332df88479706857e5d81`.
The project's [`AUDIT.md`](https://github.com/anthropics/formal-math/blob/e1a4e6508154ea59f030480661590a9fe3018011/zeta23/AUDIT.md)
(blob `a5baf29bd4cc8d9833feec7a4d4438338e400594`)
**reports** source-bound builds, comparator and headline axioms
`propext`, `Classical.choice`, `Quot.sound`. It is an
**external published audit record**, not a verification executed
in this review.

**CI evidence boundary at that exact external head:** the
[successful GitHub Actions run 37411656515](https://github.com/anthropics/formal-math/actions/runs/37411656515)
was inspected, including its jobs; the verification job was
**`verify (3sum-apsp)`**, not `zeta23`. It must **not** be cited
as a fresh same-head `zeta23` replay. Historical successful
`Zeta23 CI` runs exist, e.g.
[33978477836](https://github.com/anthropics/formal-math/actions/runs/33978477836)
on an older source commit. Their evidence may be cited only for
the exact source and job they checked. No new Lean build/kernel or
transitive axiom census for these *external or local* modules was
run in this provenance update.

**Local relationship: ANALOGY_ONLY** for the
`grwtsk/math` form; these are **actual named external Lean
statements**, but there is **no locally proved import,
normalization equivalence, zero-divisor identification or
rank–trace transfer** across the different Lean/Mathlib pins.
`ELABORATED`, `KERNEL_CHECKED`, and `TRUST_AUDITED` remain
**NOT_ESTABLISHED** for any local paper-to-Lean bridge.

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

## Recent papers, formalized foundations and closed conjectures — exact comparison ledger

These are **additional citations for previously discussed connections**, not new
paper-to-Lean theorem imports. Each record gives the actual theorem/method and
hypotheses in the *external* source, the exact local declaration consulted,
and the local verification state. A paper can report a proved mathematical
result or an author-verified external formalization without thereby giving
a source-faithful, checked `grwtsk/math` theorem.

For the following exact local source references, `grwtsk/math` revision
[`0c9de2badc62537764c3d09ebed7650267ea99b9`](https://github.com/grwtsk/math/commit/0c9de2badc62537764c3d09ebed7650267ea99b9)
is the **source-inspected snapshot**, not the original introduction commit or
a fresh build receipt. Full file SHA-1 Git blobs are given individually.
This snapshot uses Lean `v4.33.0` and pinned Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.

### Formalized foundations: Loeffler–Stoll (2025)

**Bibliography:** David Loeffler and Michael Stoll, *Formalizing zeta and
L-functions in Lean*, *Annals of Formalized Mathematics* **1** (2025),
43–56, published July 15, 2025.
[DOI:10.46298/afm.15328](https://doi.org/10.46298/afm.15328);
[arXiv:2503.00959](https://arxiv.org/abs/2503.00959).

**Exact external method/hypotheses:** formalization in Mathlib of
the Riemann zeta function and character Dirichlet `L`-functions, including
Dirichlet's theorem that every reduced residue class modulo a positive
integer contains infinitely many primes (the residue is coprime to the
modulus). The work also **states** the Riemann Hypothesis in Lean;
it does **not prove RH**. The zeta and `L` functions retain their
analytic domains/continuations and character conventions; none of these
may be replaced by a finite Dirichlet polynomial without a comparison.

**Formal binding:** `GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis.Statement`
and `statement_eq_mathlib` [at this pin](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/Hypothesis.lean#L17-L22),
blob `6fe545d161e3166d4fd7b2a5dc5cb117c418e261`,
identify the local RH proposition with `_root_.RiemannHypothesis`.
`GRWTSK.RiemannHypothesis.CanonicalZeroDivisor.multiplicity`
and `heightHead` [are source declarations](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean#L55-L109)
(blob `7dcaef4040533a9b3f76d1cf46b2bba88622fdad`).
They consume repository/Mathlib zeta notions; the paper's Dirichlet
progression theorem is **not** a new locally proved RH supplier.

**Relationship:** `LOCAL_IDENTITY_SOURCE_CANDIDATE` for the source-level
local RH proposition identity; Mathlib foundational dependency is distinct
from `PAPER_TO_LEAN_BRIDGE_PROVED` for a new analytic result, which is
**not asserted** here. `SOURCE_PRESENT / LOCAL_FRESH_BUILD_NOT_RUN /
LOCAL_FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOMS_NOT_AUDITED /
NO_SAME_COMMIT_RECEIPT` in this review. Mathlib's published development
does not qualify every downstream local theorem.

### Alternative unconditional critical-line method: Lamzouri (2026)

**Bibliography:** Youness Lamzouri, *A new proof that more than
2/3 of the zeros of the Riemann zeta function are simple and on the
critical line*, posted September 2, **2026**,
[arXiv:2609.02882](https://arxiv.org/abs/2609.02882).

**Exact external theorem/method:** unconditionally more than 67.25% of
nontrivial zeros, counted with the paper's height/multiplicity convention,
are simple and on `Re(s)=1/2`; at least 83.62% are distinct. The paper
also obtains the 88.76% lower bound for zeros that are **simple or on
the line**. Its shorter argument replaces the finite Hermitian
compression/rank–trace device of Alpöge–Furman with a **Hilbert-space
inequality**, using the unconditional pair-correlation result of
Baluyot–Goldston–Suriajaya–Turnage-Butterbaugh. It does **not**
assume Montgomery's *full conjectural* pair correlation nor prove
that **every** zero lies on the critical line.

**Local declarations/comparison:** source-bound test/form records
`GRWTSK.RiemannHypothesis.WeilHermitianForm` and
`WeilPositivityImpliesRH`, [`WeilCriterion.lean`](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean#L62-L115),
blob `29d8c4f1c741ab25f6abd136a3c3c2eb900da69a`;
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.distinct_basis_cross_zero`,
[source line 139](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean#L139),
blob `2c25cac04fe5575ac0242349a2dcc5592d19f0bb`.

**Relationship:** `ANALOGY_ONLY` — no locally defined Lamzouri
Hilbert-space functional or inequality and no local proof of any
zero proportion. Exact test, zero-counting asymptotics and any
Weil-form sign conversion are `UNRESOLVED_PREMISE`.
Local `SOURCE_INSPECTED / BUILD_NOT_RUN / KERNEL_NOT_RUN /
AXIOMS_NOT_AUDITED / NO_RECEIPT`. No external Lean formalization
of this particular proof is established in this repository.

### Pair correlation conjecture as a hypothesis: Goldston–Lee–Schettler–Suriajaya (2025)

**Bibliography:** Daniel A. Goldston, Junghun Lee, Jordan Schettler,
and Ade Irma Suriajaya, *Pair Correlation Conjecture for the zeros of
the Riemann zeta-function I: simple and critical zeros*, first posted
March 19, **2025**, [arXiv:2503.15449](https://arxiv.org/abs/2503.15449).

**Exact external theorem/hypotheses:** **assuming Montgomery's Pair
Correlation Conjecture** for the nontrivial zeta zeros, with its
specified near-mean-spacing statistics and height-asymptotic counting
conventions, asymptotically 100% of the zeros are both simple and on
`Re(s)=1/2`, **without separately assuming RH**. The *conditional*
PCC hypothesis cannot be deleted. A density-zero exceptional set
is still compatible with this conclusion, so it is not the
universal RH statement.

**Local declarations/comparison:** actual zero identity,
analytic multiplicity and finite height-head counting:
`GRWTSK.RiemannHypothesis.CanonicalZeroDivisor.multiplicity`,
`heightHead` and `heightCount`,
[`CanonicalZeroDivisor.lean`](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean#L55-L156),
blob `7dcaef4040533a9b3f76d1cf46b2bba88622fdad`;
`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis.Statement`
[`Hypothesis.lean`](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/Hypothesis.lean#L17),
blob `6fe545d161e3166d4fd7b2a5dc5cb117c418e261`.

**Relationship:** `ANALOGY_ONLY`. Neither pair-correlation statistics,
PCC hypotheses nor a density-one implication are locally formalized.
The local finite height-head and universal RH predicate are **not**
an imported proof of pair correlation or a bridge from density one
to every zero. `SOURCE_INSPECTED / BUILD_NOT_RUN /
FRESH_KERNEL_NOT_RUN / AXIOMS_NOT_AUDITED / NO_RECEIPT`.

### One-sided heat-flow result: Rodgers–Tao (2018/2020)

**Bibliography:** Brad Rodgers and Terence Tao, *The de Bruijn–Newman
constant is non-negative*, first arXiv posting **2018**,
*Forum of Mathematics, Pi* **8** (2020), e6.
[DOI:10.1017/fmp.2020.6](https://doi.org/10.1017/fmp.2020.6);
[arXiv:1801.05914](https://arxiv.org/abs/1801.05914).

**Exact external statement/hypotheses:** for the standard
de Bruijn–Newman family `H_t` obtained by heat deformation of the
Riemann-xi Fourier kernel, its reality threshold `Λ` satisfies
`Λ≥0` unconditionally. The defining theorem says all zeros of
`H_t` are real exactly for `t≥Λ`, and RH is equivalent to the
*additional opposite inequality* `Λ≤0`. The analytic zero dynamics,
entire-function normalization, heat parameter and zero-gap estimates
are essential to this external method; it is not a positivity theorem
about arbitrary Hermitian forms.

**Local declarations/comparison:** the universal terminal proposition
`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis.Statement`
[at this pin](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/Hypothesis.lean#L17),
blob `6fe545d161e3166d4fd7b2a5dc5cb117c418e261`;
`GRWTSK.RiemannHypothesis.WeilPositivityImpliesRH`,
[`WeilCriterion.lean`](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean#L107),
blob `29d8c4f1c741ab25f6abd136a3c3c2eb900da69a`.

**Relationship:** `ANALOGY_ONLY` for the logical obstruction:
one proved inequality/positivity direction does not discharge the
complementary RH direction. **No** local de Bruijn–Newman `Λ`,
`H_t` or heat-flow zero-dynamics declaration is supplied here;
no link of the classical heat family to `WeilHermitianForm` is
proved. `SOURCE_INSPECTED / LOCAL_LEAN_NOT_RUN / NO_RECEIPT`.

### Separate zero-free-region method and Lean scope: OpenAI (2026)

**Bibliography:** OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free
Half-Plane Re(s)>7/8*, preprint dated September 30, **2026**,
stable release identifier
`OAI:The-Quasi-Riemann-Hypothesis-September-30-2026`,
[official paper](https://github.com/openai/math/blob/main/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026/paper.pdf),
[formalization scope](https://github.com/openai/math/blob/main/lean/docs/003.md).

**Exact external theorem/hypotheses:** the released formalization
reports the zeta zero exclusion `Re(s)>7/8` and a uniform
Dirichlet-character analogue; the Hecke analogue concerns
finite-order characters over `Q(√−3)`. The Dirichlet and Hecke
principal-character poles at `s=1` require explicit exclusion.
The *classical meromorphic pole* of zeta at 1 is separate from
Mathlib's assigned total-function value at 1. The strict boundary
`Re(s)=7/8` is not included. The formalization also gives a
uniform logarithmic real-zero exclusion for primitive nonprincipal
real Dirichlet characters, with a positive **unspecified** constant;
that is a separate conclusion, not RH.

**Local declarations/comparison:** 
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort.CanonicalQuarticComparison`
and `riemannHypothesis_of_canonicalSpectralComparison`,
[source lines 119–163](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean#L119),
blob `32e1bf3064601486ea3385fe9e5e76bf1de14962`;
`GRWTSK.RiemannHypothesis.CanonicalZeroDivisor.point_mem_strip`,
[`CanonicalZeroDivisor.lean`](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean#L82),
blob `7dcaef4040533a9b3f76d1cf46b2bba88622fdad`.

**Relationship:** `ANALOGY_ONLY` for an infinite-region
zero-exclusion supplier; no official `OAI` theorem term was
imported or replayed in `grwtsk/math` and no 7/8→1/2
comparison was proved. **External formalization is
publisher-reported, not a fresh local certificate**.
Local `SOURCE_INSPECTED / LEAN_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_AUDITED / NO_RECEIPT`.

### Disproved determinant generalization: OpenAI (2026)

**Bibliography:** OpenAI, *A Counterexample to the Group-Ring
Determinant Conjecture*, released September 23, **2026**,
stable official release path/identifier
`OAI:A-Counterexample-to-the-Group-Ring-Determinant-Conjecture-September-23-2026`,
[official paper](https://github.com/openai/math/blob/main/preprints/A-Counterexample-to-the-Group-Ring-Determinant-Conjecture-September-23-2026/paper.pdf),
[Lean scope and comparator](https://github.com/openai/math/blob/main/lean/docs/197.md).

**Exact external theorem/hypotheses:** for some finitely generated
group `G` and `n≥1`, an integer `n×n` group-ring matrix `A`
is invertible over `Q[G]`, and its induced invertible
left-regular operator on `ℓ²(G)^n` has Fuglede–Kadison determinant
strictly between 0 and 1. This refutes the previously proposed
general bound `det_FK≥1` **for arbitrary groups**.
The external formalization covers the invertible-operator
`trace log(T* T)` determinant result; the separate
**spectral-measure integral** conclusion of the manuscript is
**not** part of that checked statement.

**Local declarations/comparison:** the **source arithmetic**
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization.sourcePolarizedForm_self_re_nonnegative`,
[`CanonicalSquareTentPolarization.lean`](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean#L505),
blob `f33d5f402160bc141115c450f1488c103e9cf131`;
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.no_exactSourceBoundTransport_of_nonzeroCross`,
[`CanonicalSquareTentWeilTransportObstruction.lean`](https://github.com/grwtsk/math/blob/0c9de2badc62537764c3d09ebed7650267ea99b9/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean#L209),
blob `2c25cac04fe5575ac0242349a2dcc5592d19f0bb`.

**Relationship:** `ANALOGY_ONLY`. The failure of a group-ring
operator determinant bound is **not** a theorem about Riemann
zeta zeros or a refutation of a local Weil-form transport.
No group-ring, Fuglede–Kadison trace or von Neumann algebra
operator is identified with the local arithmetic source.
Local `SOURCE_INSPECTED / NO_LEAN_RUN / NO_AXIOM_AUDIT /
NO_SAME_COMMIT_RECEIPT`; the external publisher's Lean
scope does **not** qualify these local declarations.


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
