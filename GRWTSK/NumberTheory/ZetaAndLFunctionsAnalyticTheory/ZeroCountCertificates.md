# ZeroCountCertificates: declaration-level provenance

2026-11-11 · grwtsk contributors · coordination: [math issue 1806](https://github.com/grwtsk/math/issues/1806).

**FORMAL_SOURCE_CANDIDATE.** Source publication is not successful elaboration, kernel replay, an axiom audit, arithmetic certification, or independent review.

Canonical source: [ZeroCountCertificates.lean](ZeroCountCertificates.lean). Source SHA-256: `c067927445a5984d42620899d95d781dbd37da440b6071ff1293314284d79628`.
Inspected canonical base: `6cab1fb0725c00a9d06b112ffc215e3523396c50`. Required existing toolchain: `leanprover/lean4:v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Root dependencies/imports are unchanged.

## Source identity and scope

Primary mathematical source: grwtsk contributors, *ZCERT-1: Program 6 backward from Dirichlet GRH*, authored 2026-11-10, [pinned research note](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/b8c773f7847126518bcc20f3e37d1223af889cf4/research/06-weil-spectral/certified-zero-counts/README.md), SHA-256 `5d04f2e5ef684592884fba349171b33d5b3fca21136c18f83f74a67c117220f3`. Each record below gives its exact section/lemma locator. This is locally authored written research, not a peer-reviewed paper or an upstream Lean adaptation.
The source-preserving [Rouché correction](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/8b37baad8279af3c539579487dbfaa53f0ff964f/artifacts/reproducibility/zero-certification/2026-11-10/receipts/integration-42982783204.json) is retained. Neither the original unqualified meromorphic equal-zero-count wording nor a Rouché theorem is formalized here.
The originating monograph is grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, November 10, 2026, section 20.2, printed pp. 43–44 / PDF pp. 52–53, SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. Its RP-OC-06 specifies a research target, not a proved arithmetic certificate theorem. The declarations below formalize local ZCERT-1 consequences and conditional interfaces, not a newly attributed monograph theorem.
The argument-principle/Hermite ingredients are standard prior mathematics. No novelty is claimed. Canonical-repository code search was incomplete, so no absence of existing declarations is inferred. The pinned mathlib Lagrange and complex-polynomial sources were inspected as possible later dependencies; no interpolation theorem is claimed completed by this increment.

## Verification and publication boundary

The declarations have authored proof bodies and no added proof placeholders or axioms. A source-text scan checked that claim only; it did not parse or elaborate Lean. No Lean executable is available locally. Canonical proof-automation skill lookup at `grwtsk/noeaaeue@0126ba445446dea25047a89884df1adf6b10251a`, path `workflows/research/orchestration/skills/noe-proof-automation/SKILL.md`, and its parent directory returned 404. No dependent proof automation was launched.
Elaboration/typechecking: `NOT_RUN`. Fresh kernel replay: `NOT_RUN`. Transitive axiom audit: `NOT_RUN`. Independent analytical review: `NOT_RUN`. Independent reproduction: `NOT_RUN`. Arithmetic L-function contour computation: `NOT_RUN`. No theorem is promoted to verified status. Exact publication identities are recorded in issue 1806 rather than self-referential commit fields.
Remaining scope: Argument principle and residue theorem, rigorous arithmetic evaluators with all remainders, exact analytic orders, zero-free boundaries, completed Dirichlet-family source identification, and universal all-conductor/all-height saturation remain unformalized.
Lean-source ownership is only grwtsk/math; the research repository receives references, not copied Lean. The documentation view uses relative links to these same maintained bytes.

## Individual theorem records

### `GRWTSK.ZeroCountCertificates.FiniteDivisor.realCount_le_totalCount`

Source locator: ZCERT-1 §5, count saturation. Classification: **Local finite-count consequence**.

**Exact scope.** For every positive finite divisor, realCount <= totalCount.

**Analytical argument.** Each real-count summand is either the full multiplicity or zero; sum the termwise inequalities.

**Consumer.** Bounds a certified lower real count by the complete weighted count.

### `GRWTSK.ZeroCountCertificates.FiniteDivisor.allReal_of_count_saturation`

Source locator: ZCERT-1 §5, Lemma ZCERT-1.C2. Classification: **Direct core consequence**.

**Exact scope.** Equality of real and total multiplicity counts forces every support point to be real. Positive multiplicity at each support point is essential.

**Analytical argument.** A nonreal support point would omit a strictly positive summand from realCount while no other summand increases, giving a strict inequality.

**Consumer.** Finite bounded-window reality; requires independently established count data.

### `GRWTSK.ZeroCountCertificates.FiniteDivisor.count_saturation_of_allReal`

Source locator: ZCERT-1 §5, count saturation. Classification: **Local converse**.

**Exact scope.** All support locations real implies equality of the two weighted counts.

**Analytical argument.** Every conditional real-count summand is the corresponding multiplicity.

**Consumer.** Exact equivalence for a finite divisor, with repetitions represented by weights.

### `GRWTSK.ZeroCountCertificates.FiniteDivisor.allReal_iff_count_saturation`

Source locator: ZCERT-1 §5, count saturation. Classification: **Composed local equivalence**.

**Exact scope.** AllReal iff realCount=totalCount for this finite positive divisor.

**Analytical argument.** Combine the previous two implications.

**Consumer.** The finite algebraic target for the count-saturation route.

### `GRWTSK.ZeroCountCertificates.FiniteDivisor.allReal_of_lower_bound_saturation`

Source locator: ZCERT-1 §5, Lemma ZCERT-1.C2. Classification: **Conditional count consumer**.

**Exact scope.** A natural lower bound <= realCount equal to totalCount forces reality. Disjointness and actual sign/interval proofs must be used by the caller to obtain that lower bound.

**Analytical argument.** Antisymmetry squeezes realCount between the equal lower and total counts; apply saturation.

**Consumer.** Consumes certified disjoint real-zero lower bounds without assuming their numerical sum is sound.

### `GRWTSK.ZeroCountCertificates.FiniteDivisor.allReal_of_totalCount_eq_one`

Source locator: ZCERT-1 §5, Lemma ZCERT-1.C1. Classification: **Direct finite-divisor consequence**.

**Exact scope.** Conjugation-closed support and total multiplicity one force all support points real.

**Analytical argument.** A nonreal point and its distinct conjugate both have positive multiplicity. Erase one point and bound the remaining sum by the conjugate contribution, contradicting total one.

**Consumer.** Count-one localization without a simplicity premise.

### `GRWTSK.ZeroCountCertificates.FiniteDivisor.multiplicity_eq_one_of_totalCount_eq_one`

Source locator: ZCERT-1 §5, Lemma ZCERT-1.C1. Classification: **Direct finite-divisor consequence**.

**Exact scope.** At any support point, totalCount=1 implies its multiplicity is 1.

**Analytical argument.** The positive multiplicity is at most the total finite sum, so it is squeezed to one.

**Consumer.** Simplicity as a consequence in the supplied divisor. Analytic order identification remains separate.

### `GRWTSK.ZeroCountCertificates.FiniteDivisor.source_reality_of_saturation`

Source locator: ZCERT-1 §5, count saturation and source-return requirement. Classification: **Conditional interface**.

**Exact scope.** Exact support equivalence z in support iff z in D and f(z)=0, together with count saturation, puts every source zero in D on the real axis.

**Analytical argument.** Use the exact equivalence to place each source zero in the real finite support.

**Consumer.** Returns a finite count statement to a specified function and region, not a label.

### `GRWTSK.ZeroCountCertificates.FiniteDivisor.imaginaryPair_counterexample`

Source locator: ZCERT-1 §5, count-two hostile test. Classification: **Local negative control**.

**Exact scope.** The synthetic divisor {i,-i}, both multiplicity 1, has total count 2 and conjugation symmetry but is not AllReal.

**Analytical argument.** Calculate its two summands and conjugates, then use Im(i)=1.

**Consumer.** Prevents extending the count-one lemma to count two.

### `GRWTSK.ZeroCountCertificates.pole_corrected_count_of_isolated_integer`

Source locator: ZCERT-1 §4, Lemma ZCERT-1.B at k=0. Classification: **Conditional arithmetic consumer, not the residue theorem**.

**Exact scope.** For natural zero/pole counts, an exact signed-count equality and an enclosure isolating the integer w imply zeros=w+poles in integers. Negative winding is allowed.

**Analytical argument.** Cast zeros-poles to the reals, place that integer inside the interval, use uniqueness and rearrange.

**Consumer.** Consumes a separately proved argument-principle count; never rounds an unconstrained midpoint.

### `GRWTSK.ZeroCountCertificates.not_isolatesInteger_of_two_integers`

Source locator: ZCERT-1 §4, integer enclosure condition. Classification: **Local negative guard**.

**Exact scope.** An interval containing two distinct integers cannot isolate any single integer.

**Analytical argument.** The proposed isolator identifies both distinct integers with the same w, contradiction.

**Consumer.** Rejects ambiguous count enclosures.

### `GRWTSK.ZeroCountCertificates.arithmeticCoordinate_re`

Source locator: ZCERT-1 §2, coordinate s=1/2+i*z. Classification: **Direct coordinate identity**.

**Exact scope.** Re(1/2+i*z)=1/2-Im(z).

**Analytical argument.** Expand complex multiplication and the real part of i.

**Consumer.** Exact sign and coordinate convention.

### `GRWTSK.ZeroCountCertificates.arithmeticCoordinate_spectralCoordinate`

Source locator: ZCERT-1 §2, coordinate convention. Classification: **Local inverse identity**.

**Exact scope.** The arithmetic map composed with -i*(s-1/2) is the identity on C.

**Analytical argument.** Compute real and imaginary parts and simplify.

**Consumer.** Ensures the all-source-zero quantifier is not restricted to an unproved image.

### `GRWTSK.ZeroCountCertificates.arithmeticCoordinate_on_line_iff`

Source locator: ZCERT-1 §2, target G_D. Classification: **Direct coordinate equivalence**.

**Exact scope.** The arithmetic coordinate lies on Re(s)=1/2 iff Im(z)=0.

**Analytical argument.** Use arithmeticCoordinate_re and rearrange the real equality.

**Consumer.** Transfers exact reality, not approximate proximity.

### `GRWTSK.ZeroCountCertificates.allZerosReal_iff_criticalLine`

Source locator: ZCERT-1 §2, exact-source target. Classification: **Conditional source-coordinate interface**.

**Exact scope.** For every supplied arithmetic-plane function f, all zeros of f(1/2+i*z) are real iff every zero of f lies on Re(s)=1/2.

**Analytical argument.** One direction uses the explicit inverse coordinate; the other uses the real-part equivalence.

**Consumer.** A completed-source bridge only. Applying it to uncompleted L-functions would include trivial zeros.

### `GRWTSK.ZeroCountCertificates.allZerosReal_iff_window_reality`

Source locator: ZCERT-1 §3 and 7, cofinal reduction. Classification: **Conditional quantified interface**.

**Exact scope.** For a family F and windows covering every source zero, all-zero reality iff reality in every window of every family member.

**Analytical argument.** Place any zero in a covering window for the reverse implication; restriction proves the forward implication.

**Consumer.** Preserves the all-character/all-window quantifiers; not supplied by a finite run.

### `GRWTSK.ZeroCountCertificates.stripWindow_covers`

Source locator: ZCERT-1 §7, rectangles D_chi,j. Classification: **Local geometric consequence with source-strip premise**.

**Exact scope.** If T(c,n)>=n and every source zero has |Im(z)|<1, the open rectangles |Re(z)|<T(c,n), |Im(z)|<1 cover every zero.

**Analytical argument.** Choose a natural integer exceeding |Re(z)| and use the height lower bound.

**Consumer.** Cofinality only; no analytic strip theorem or zero-free boundary certificate is proved.

### `GRWTSK.ZeroCountCertificates.allZerosReal_of_cofinal_saturation`

Source locator: ZCERT-1 §3, 5 and 7, backward count route. Classification: **Composed conditional source-return theorem**.

**Exact scope.** For every family member and window, exact support identification and finite count saturation, together with complete coverage, imply all-zero reality.

**Analytical argument.** Apply source_reality_of_saturation windowwise, then the coverage equivalence.

**Consumer.** The formal backward count route. Constructing all arithmetic certificates remains open.

### `GRWTSK.ZeroCountCertificates.offLineZero_of_enclosed_moments`

Source locator: ZCERT-1 §2 and 8, exact-source negative return. Classification: **Composed conditional source-return theorem**.

**Exact scope.** If every listed spectral node is proved a zero of f under the exact coordinate, nonnegative weights, exact moment enclosures and a strict negative margin imply an actual zero s of f with Re(s)!=1/2.

**Analytical argument.** The moment consumer supplies a nonreal node; the source premise supplies its zero equation; the coordinate iff supplies off-line separation.

**Consumer.** Finite arithmetic-witness consumer. No instance for an actual Dirichlet source is constructed.
