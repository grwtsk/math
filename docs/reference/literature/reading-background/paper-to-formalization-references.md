# Paper-to-formalization references and proof boundaries

**Maintained ideas documentation.** First intake: 2026-10-23. This ledger is
for mathematical provenance, **not** for machine-execution receipts, priority
claims, assertions of reading, or claims that source-level Lean code has passed
the kernel.

The existing [idea–formalization map](idea-formalization-map.md) keeps its
version-bound manuscript identities and earlier assessments. This companion
ledger records *externally identifiable publications, primary data records,
and formal source developments* used or compared in repository mathematics.
Do not merge differently sourced results because they have a similar name.
An external upstream theorem, a local source proof candidate, a verified
local theorem, and an analogy are four different statuses.

**Related ideas records:** the detailed [paper-to-Lean provenance ledger](paper-to-lean-provenance.md)
and [RH source-provenance supplement](paper-formalization-provenance-rh.md)
retain their own reviewed papers, exact code identities and open
obligations. This page is a cross-case index and entry contract,
not a replacement for those ledgers or the version-bound
[unpublished idea map](idea-formalization-map.md). A later
documentation commit does not automatically supersede an earlier
source version or verification record.

## Required entry for every paper-derived increment

Add or update an entry here **in the same main-branch change** that introduces
a paper-derived mathematical statement (or link the complete entry from the
relevant ideas documentation). Every entry must have these fields:

| Required field | Recording rule |
| --- | --- |
| Source identity | Exact **title**, authors/byline as printed, year and event type (publication, preprint, announcement, version, or source-code snapshot), DOI/arXiv version/stable URL; don't fabricate unknown bibliographic fields |
| Exact result used | Theorem/lemma/proposition or section/page/algorithm locator; its mathematical conclusion; only the source assumptions actually needed; notation/model/normalization and exceptional cases |
| Import or relationship | `direct-import`, `local-proved-bridge`, `source-proof-candidate`, `conditional-interface`, `finite-certificate`, `methodological-analogy`, or `unresolved`; **multiple classifications** when different edges have different status |
| Formal destination | Fully qualified Lean declaration(s), owning module path, exact **math Git commit** containing each source and preferably the blob; distinguish definitions and assumptions from theorem proofs |
| Premise ledger | Imported and independently verified facts; assumptions appearing in Lean types; required but unbuilt source maps; bad/good reduction, denominators, torsion, convergence and scope hypotheses; hostile counterexamples |
| Verification evidence | The **actual** checked commit/tree and pinned Lean/Mathlib, commands, exit codes, kernel replay, transitive axiom result and receipt URL if any; otherwise say `NOT_RUN / NOT_KERNEL_AUDITED` and report which preflights were merely finite or source-level |
| Nonclaims | State stronger conclusions not implied by the entry: e.g. exact rank, unconditional global theorem, zero-distribution statement, historical influence or originality |

A **local-proved-bridge** label is reserved for a declaration whose exact
type and hypotheses have been freshly kernel checked, whose relevant
transitive axioms have been audited, and whose source and toolchain match a
usable execution receipt. Lean text ending in `by`, `decide`, or `rfl`;
successful finite arithmetic; a Git merge; an upstream README; and a queued
verification request **cannot** meet that definition. A conditional theorem
may be kernel-trusted while its explicit mathematical hypotheses remain
undischarged; record both aspects separately.

If the source title, authors, year, theorem locator or import identity is
unresolved, write `not established` and keep the idea `unresolved`.
For revised papers, pin the exact version, and distinguish review from
historical influence. External formal projects are identified as code
sources, **not falsely classified as journal papers**.

## Case R4239-01 — source record of 32 rational points

**Source identity and type.** *Elliptic Curve Rank Leaderboard: curve #4239*;
mathematical construction credited to **Noam D. Elkies, Zev Klagsbrun and
Samuel Li**, 2026, ICARM research announcement / online record,
[permanent curve number #4239](https://elliptic-rank.icarm.cloud/curve/4239).
Submission timestamp on the record: 2026-10-15; the record names
`zevklagsbrun` as the submitting account, not as the sole mathematical
author. Independent record-history attribution:
[Dujella's rank-record history](https://dujella.github.io/tors/rankhist.html).
This is a **data/announcement source, not a paper theorem imported into Lean**.
The source verifier is
[ICARM `src/verify.ts`](https://github.com/icarm/elliptic-rank/blob/main/src/verify.ts).

**Exact method/data used.** The integral model
`y²+xy=x³−A*x+B`, its two exact integer coefficients, the 32 explicitly
listed rational points, and the source-listed rank **lower-bound** claim.
Our finite packet separately checks each equation, nonsingularity,
`X=36*x+3` for the short-model coordinate, 32 character labels and their
1024 finite values. Neither the leaderboard's displayed regulator nor
its lower-bound field is a Lean proof of independence.

**Formal declarations and exact source commits.** Under
`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239`:

- `A`, `B`, `pointX`, `pointY`, `OnRecordModel`,
  `points_on_record_model`, `shortXInt_eq` in
  [`Record4239Curve.lean`](../../../../GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean):
  introduction `ebb7aced88c99748b61031e0c26787a746cccfe1`,
  arithmetic source repair `a32e72e010b49ea511ad9e1fda44b3a7ab0713a9`.
- `characterMatrix`, `dualMatrix`, `dual_mul_character`,
  `localBit_eq_characterMatrix` in
  [`Record4239FiniteCharacterMatrix.lean`](../../../../GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteCharacterMatrix.lean):
  introduction `ebb7aced88c99748b61031e0c26787a746cccfe1`,
  subsequent change `645cc45f0d7abb6f19d26637370cdd1a29e9131c`.
- `RecordIntegralOrder`, `recordOrderReduction`,
  `sourceOrderLocalElement_reduction` in
  [`Record4239IntegralOrderReduction.lean`](../../../../GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean):
  `cb193ac9bf378df4def6a5ff0a0d3391b480a9e0`.
- `sourceLocalizingProduct`, `sourceLocalReduction`,
  `sourceLocalSquareClassBit_eq_sourceQuadraticBit` in
  [`Record4239FiniteSourceLocalization.lean`](../../../../GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean):
  `03d177bd005cdd1cb897e1e94d4de925fead21a3`.

**Relationship:** `finite-certificate` plus
`source-proof-candidate`. The last localization applies to precisely
the 32 published points; its selected denominator product is **not**
a universal local factorization for all of `E(ℚ)`.

**Verification:** finite, exact Python/BigInt replays are reported in
[math #1049](https://github.com/grwtsk/math/issues/1049) (32 point
equations, 1024 bits, inverse matrix, 17 exceptional derivative cases);
those are **not** native Lean/kernel receipts. The formal declarations
remain `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED` for the relevant
unverified modules. No unconditional `rank E(ℚ) ≥ 32` theorem is
established in the repository.

## Case R4239-02 — published finite good-prime independence method

**Publication.** **J. E. Cremona**, *On the Computation of Mordell–Weil and
2-Selmer Groups of Elliptic Curves* (2002), *Rocky Mountain Journal of
Mathematics* **32**(3), 953–967.
DOI [10.1216/rmjm/1034968425](https://doi.org/10.1216/rmjm/1034968425);
[author-hosted paper](https://johncremona.github.io/papers/filter.pdf).
Method locator: **§2.1, §2.2**, pp. 2–4 of the hosted PDF, including
**Lemma 2.1**. Cremona explicitly credits a prior communication by
Armand Brumer; Brumer is **not** a coauthor of this 2002 paper.

**Exact theorem/method and hypotheses used.** Work with an elliptic
curve `Y²=f(X)`, `f∈ℤ[X]` a nonsingular cubic, a model minimal at odd
primes, and **good primes** `p∤6*disc(f)`. For a simple root `θ∈𝔽_p`,
the finite local character evaluates the square class of `x−θ`;
at `x=θ` its value uses `f'(θ)`, and the identity point maps to
zero in the additive bit convention. For rational
`X=u/w²`, the representative is `u−θ*w²`, with the derivative
branch when the ordinary residue vanishes. For three distinct roots,
the characters satisfy a product-one constraint and only two are
independent. Section 2.1 constructs a **homomorphism**
`E(ℚ)/2E(ℚ) → (ℤ/2ℤ)^M` through good reduction; §2.2 uses linear
independence of its evaluation vectors to certify independence of
points (with the actual Mordell–Weil group and torsion accounted for).
The **homomorphism property, exceptional branch, denominators and
native point-model identification are part of this method**, not
consequences of a full-rank matrix by themselves.

**Exact Lemma 2.1 and its quantifier.** In the author-hosted
paper's §2.1, printed p. 4 (PDF page 4), Lemma 2.1 states that
for **each** `P ∈ E(ℚ) ∖ 2E(ℚ)`, **some** good prime `p`
detects `P`: `ε_p(P) ≠ 0`. The argument considers the
quartic whose roots are x-coordinates of halves `Q` of `P`,
and obtains a prime where the quartic has no root.
This is an existence-of-detection result, **not** a claim that
any arbitrarily chosen list of primes detects the whole quotient.
Section **2.2**, printed p. 4, is the separate finite-vector
independence argument, which requires enough detecting primes.
Moreover a nonzero class modulo 2 does not automatically have
infinite order: e.g. a point of `ℤ/2ℤ` has a nonzero mod-2
class and is torsion. The repository therefore demands the
**separate** assumption `∀ x, (2 : ℤ) • x = 0 → x = 0`
in `GRWTSK.LinearAlgebra.ModTwoIndependenceDescent.linearIndependent_of_even_relations`
(source revision `62b33f5917133d187bcf70532354be4f23268c84`).
Neither a finite character matrix nor Lemma 2.1 alone supplies
that no-two-torsion hypothesis.

**Corresponding local Lean declarations and commits:**

- `Record4239.localBit`, `localBit_eq_characterMatrix`,
  `rootLabels_valid`, `goodPrimeLabels` — matrix file above,
  source change `645cc45f0d7abb6f19d26637370cdd1a29e9131c`.
- `Record4239.residueUnitBitHom`,
  `residueSquareClassBitHom`, `sourceQuadraticBit`,
  `SourceBitsMatch` — [`Record4239LocalSquareClass.lean`](../../../../GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean),
  source `c5a8e5852b2c0d4f4c0854dbb15560befd94e8bb`,
  repair `fcf80a85e518b2a9c60f830f14d83d0d57927878`.
- `Record4239.linearIndependent_of_sourceColumnCharacters`,
  `composedDescentCharacter`,
  `linearIndependent_of_descentFactorization` —
  [`Record4239SquareClassBridge.lean`](../../../../GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean),
  source `2e2e21aaddf4cd53429c5d5f6560bea9d79e583d`,
  revision `19bc3a06deae02a710438ca4fd13b7d25d026601`.
- `Record4239.NativeDescentEvidence`,
  `nativePoints_linearIndependent_of_descent`,
  `nativeCurve_finrank_ge_32_of_descent` —
  [`Record4239NativeConditionalRank.lean`](../../../../GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean),
  commit `0ee99b434b940066e7fcc61935d8f5f2bad88086`.

**Relationship:** `source-proof-candidate` for finite computations;
`conditional-interface` for source-to-group character and the rank
criterion; **not `local-proved-bridge`**. The stored matrix is
`M(pointIndex, characterIndex)`: the correct relation uses
`Mᵀ * (coeff mod 2) = 0`. This matrix orientation is explicit, not
inferred from paper notation.

**Missing premises:** genuine `E(ℚ)` to global étale square-class
descent `μ`; its valuation-normalized local specializations,
denominator/infinity/exceptional-zero compatibility for every
relevant point; equality of all 1024 genuine character outputs with
the source bits; proof of `SourceBitsMatch` and
`QuadraticEulerAgreement`; finite-generation and final native
group/rank transport. A standalone finite matrix or ring reduction
does **not** supply these maps.

**Verification:** historical finite replays are recorded, but these
Lean theorem candidates have **no successful fresh kernel/axiom
receipt** at the audited scope. The verification request is
[math #1049](https://github.com/grwtsk/math/issues/1049); the
external manual-run queue is
[Noeaaeue #381](https://github.com/grwtsk/noeaaeue/issues/381)
and [#382](https://github.com/grwtsk/noeaaeue/issues/382).
`SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`.

## Case R4239-03 — external formal Lean machinery (not a paper import)

**Source type.** **Michael Stoll**, *Elliptic Curves* (Lean 4
formalization / source repository, **snapshot 2026**; **not** assigned
a journal-publication date).
[Exact source snapshot](https://github.com/MichaelStollBayreuth/EllipticCurves/tree/bad38e242a187dea006fc302a0ef0fd53eedd4ba),
commit `bad38e242a187dea006fc302a0ef0fd53eedd4ba`,
2026-10-15; Lean **4.35.0**, distinct from this project's **4.33.0**.
The upstream README describes its development as sorry-free; that
is an upstream project statement, **not a local replay receipt**.

**Specific imported-candidate methods and hypotheses:**

- `WeierstrassCurve.Affine.μ : Multiplicative W.Point →* W.M`,
  `ker_μ_eq` and weak Mordell–Weil, in
  [`WeakMordellWeil.lean`](https://github.com/MichaelStollBayreuth/EllipticCurves/blob/bad38e242a187dea006fc302a0ef0fd53eedd4ba/EllipticCurves/WeakMordellWeil.lean)
  (kernel equality at approximately line 762). The `x−T` map is
  constructed for the actual rational point group of a specified
  nonsingular Weierstrass cubic, with its algebraic square-class
  codomain; **do not replace this map by a table of bits**.
- `WeierstrassCurve.Affine.fg_point_of_numberField`, in
  [`MordellWeil.lean`](https://github.com/MichaelStollBayreuth/EllipticCurves/blob/bad38e242a187dea006fc302a0ef0fd53eedd4ba/EllipticCurves/MordellWeil.lean),
  is finite generation over number fields; its more general
  source assumes a Dedekind fraction-field setup, Northcott-style
  height finiteness and class-group/unit hypotheses in the cubic's
  integral-closure factors, plus an admissible model change.
- `WeierstrassCurve.Affine.isAddTorsionFree_of_coprime_natCard_red`,
  in [`InfiniteOrder.lean`](https://github.com/MichaelStollBayreuth/EllipticCurves/blob/bad38e242a187dea006fc302a0ef0fd53eedd4ba/EllipticCurves/InfiniteOrder.lean)
  (around line 93), uses actual finite good-reduction maps,
  torsion-injective specialization, ramification requirements and
  coprime finite point counts. Two numerical counts alone do not
  instantiate its hypotheses.

**Destination declarations:** `Record4239.composedDescentCharacter`,
`Record4239.linearIndependent_of_descentFactorization` in
`Record4239SquareClassBridge.lean` (revision
`19bc3a06deae02a710438ca4fd13b7d25d026601`);
`Record4239.nativeNoTwoTorsion` in
`Record4239NativeTwoTorsion.lean` (repair
`fcf80a85e518b2a9c60f830f14d83d0d57927878`);
and `Record4239.NativeDescentEvidence` in
`Record4239NativeConditionalRank.lean`
(`0ee99b434b940066e7fcc61935d8f5f2bad88086`).

**Relationship:** `conditional-interface` plus
`unresolved`. **No Stoll declaration is imported by these
Record4239 files.** Prove version-compatible import/backport,
native group and variable-change identity, local map constructions,
actual source values and finite generation **before** calling this
a formal bridge. `NOT_RUN / NOT_KERNEL_AUDITED` locally.

## Case SIGNED-01 — analogy to zeta zero finite-form/inertia methods

**Paper.** **Levent Alpöge and Ralph Furman**, *More than two thirds
of the zeta zeros are simple and on the critical line*, 2026,
arXiv [2608.13637](https://arxiv.org/abs/2608.13637)
(preprint, August 2026). The abstract's unconditionally obtained
simple-critical-line proportion uses a **finite compression of Weil's
Hermitian form**, a rank–trace inequality and **Sylvester inertia**
to control noncritical/off-line pairs. The proof also requires
arithmetic second-moment/explicit-formula inputs; it does not
presuppose RH in place of these estimates. The optimized window
gives the paper's stated improvement to approximately 67.25%.

**Theorem locator and actual external inputs.** The cited
[arXiv:2608.13637](https://arxiv.org/abs/2608.13637)
states in **Theorem A** unconditional limiting proportions
at least `2/3` for simple zeros on the critical line and
`5/6` for distinct zeros, improved by the
Montgomery–Taylor window to approximately `0.67250`
and `0.83625`. **Theorem B** extends this to each fixed
primitive Dirichlet `L`-function. Its argument also depends
on the correct Weil explicit formula, the Riemann–von
Mangoldt zero count, short-interval zero bounds,
gamma-factor estimates, Chebyshev–Mertens second moments
and the Montgomery–Vaughan inequality, in addition to
the finite-form rank–trace/inertia analysis. None of these
analytic ingredients, the exact source-normalized Weil form,
or a zero-divisor comparison follows from the local theorem
`negativeWitness_forces_comparisonError`. The paper reports
a Lean 4 formalization; this repository has **not imported
or audited that upstream formalization**. No particular
local PDF byte identity/version has been authenticated here:
the stable arXiv work identifier does not itself verify
the exact bytes of a quoted version.

**Corresponding (much narrower) local declarations:**
`GRWTSK.LinearAlgebra.SignedWeilComparisonGate.PositiveGramComparison`,
`negativeWitness_forces_comparisonError`,
`positive_of_arbitrarily_small_comparisonError`,
`signed_not_positive_from_positive_metric` in
[`SignedWeilComparisonGate.lean`](../../../../GRWTSK/LinearAlgebra/SignedWeilComparisonGate.lean);
source commit `5992de3e67da004c9e3ccf77a06ea38ac11e1c48`,
revision `19bc3a06deae02a710438ca4fd13b7d25d026601`.

**Exact local hypotheses:** for a finite positive coordinate Gram
energy `G(x) ≥ 0`, an independently specified source value
`q(x) ≤ −μ` with `μ ≥ 0`, and the **assumed** comparison
`|q(x)−G(x)| ≤ ε(x)`, the local theorem candidate states
`μ ≤ ε(x)`. A separate negative-sector finite vector rejects
orientation inference from Gram positivity. No zeta zeros,
Weil explicit-formula source identity or asymptotic averaging
occur in these local theorem types.

**Relationship:** `methodological-analogy` **only**, with a local
`source-proof-candidate` for the elementary inequality. **There
is no formal import of the Alpöge–Furman theorem or proof that the
finite signed construction is a Weil-form compression.** The
arithmetically normalized explicit formula, signed source
identification, off-line zero contributions, limit/trace control
and zero-density conclusion remain **unresolved**.

**Verification:** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`
locally. No RH or proportion-of-zeros theorem is claimed.


## Case R4239-04 — Farey/quintic envelope, a repository-derived construction

**Primary mathematical data and bibliography.** Use the
original **2026 ICARM curve #4239** and its 32 rational points
from **Elkies, Klagsbrun and Li**,
https://elliptic-rank.icarm.cloud/curve/4239
(as already recorded in **R4239-01**).
The Farey mediant and determinant-one rational neighbours are
classical notions. The specifically named `ResolvableEye`
and `rank32Quintic` are **repository definitions**,
not propositions imported from the ICARM source or from
a separately identified paper. For these *derived*
constructions, a second paper's title, authors, year,
DOI and theorem locator are **not established**; do
not invent bibliographic credit. A fuller independently
reviewed record is in
[paper-to-lean-provenance.md](paper-to-lean-provenance.md#icarm-curve-4239-research-data-not-a-paper-proof).

**Exact local method, domains and hypotheses.**
For the published `ℚ`-curve
`y²+xy = x³−Ax+B`, completing the square gives
`(2y+x)² = c(x)`, with
`c(x)=4x³+x²−4Ax+4B`.
The polynomial factor `q(x)=x²+1` is **strictly
positive at every rational x**. Therefore the new
quintic `q(x)c(x)` has the **same rational zeros
and signs** as `c(x)`. Its exact natural degree
five is a separate claim requiring that `q,c ≠ 0`
and their degrees are **2** and **3**.

A Farey `Cell` has natural-number endpoint numerators,
**positive** denominators `b,d`, and determinant-one
relation `b*c=a*d+1`. The
`ResolvableEye p I` predicate means only that the
polynomial evaluates **nonpositively** at the left
endpoint and **nonnegatively** at the right endpoint.
A mediant step yields an exact rational root at the
mediant **or** an oriented sign-resolving child.
This does **not** establish that a rational root exists,
that repeated refinement converges, or that the
quintic implies any statement about Mordell–Weil rank.

**Exact Lean declarations, source identities and revisions.**

- `GRWTSK.NumberTheory.Farey.Cell`, `ResolvableEye`,
  `resolvableEye_refine`,
  `polynomialResolves_mul_iff_of_pos_at_endpoints`,
  `quadratic_mul_cubic_natDegree` in
  [`GRWTSK/NumberTheory/Farey/ResolvableQuintic.lean`](../../../../GRWTSK/NumberTheory/Farey/ResolvableQuintic.lean):
  integrated `a569494ac6a119db34c5fd0630145477f90acfdf`,
  revision `9aef104465dfb242812bc9a0ea7a821492cae99d`,
  reviewed Git blob `7caef4b022e35202eef471aae2730dff6b518f70`.
- `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.FareyQuintic.completedSquareCubic`,
  `rank32Quintic`,
  `rank32Quintic_at_published_point`,
  `resolvableEye_rank32Quintic_iff`,
  `rank32Quintic_natDegree` in
  [`Record4239QuinticFareyBridge.lean`](../../../../GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean):
  integrated `101e6a661a7befc77aa05baee53eaa0e840ebd49`,
  revision `1b2d9cce6299e2f0ddef4ae107e0b4d05829b5e0`,
  reviewed Git blob `665105c6e0ad86bbb8647bc89f0980bfc735aae8`.

**Relationship and status.** `source-proof-candidate`
for the elementary polynomial/sign/point identities;
`finite-certificate` for source-data point arithmetic;
not `direct-import` of a paper theorem and **not a
`local-proved-bridge`** to analytic number theory or
elliptic rank. The files remain
`SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`.
The earlier 19-module validation target
`698b694747a0b62f4126caf5475601b073ebcd9e`
predates these files and **cannot** verify them.
Tracked separately in
[Farey #1086](https://github.com/grwtsk/math/issues/1086),
[bridge verification #1088](https://github.com/grwtsk/math/issues/1088),
and [integration gate #1089](https://github.com/grwtsk/math/issues/1089).
A separately pinned, **queued but unexecuted** [current-source five-module validation request](https://github.com/grwtsk/noeaaeue/issues/386) targets math `f3fac5a7e8f373d8efdbfd5a961e7fcf971011a3`; this request does not supersede any prior checked theorem because no relevant Lean receipt exists.
No real global quadratic-character homomorphism, finite
`SourceBitsMatch`, unconditional rank bound, Sarnak
disjointness, BSD or RH theorem is obtained here.

## Case DYN-SQRT2-01 — Sarnak's deterministic-flow conjecture versus sparse √2 digests

**Publication and version.** **Peter Sarnak**,
*Three Lectures on the Mobius Function: Randomness and Dynamics*,
**2011** (IAS lecture-note year, **not** a refereed journal
publication date). Stable [IAS institutional record](https://publications.ias.edu/sarnak/paper/506),
[IAS 12-page PDF](https://publications.ias.edu/sites/default/files/MobiusFunctionsLectures%282%29_0.pdf).
No DOI or arXiv ID is established for this **cited version**.
Further bibliographic evidence and the earlier source binding are
maintained in [paper-to-lean-provenance.md](paper-to-lean-provenance.md#mobius-disjointness-lecture-notes-and-the-finite-2-sampling-interface).

**Exact source method and hypotheses.** On the cited PDF,
**equation (6), printed p. 2 (PDF page index 1)** asserts
the intended ordinary-average orthogonality
`∑_{1≤n≤N} μ(n) ξ(n) = o(N)` for a bounded sampling
sequence `ξ`. **Definition 3, printed p. 4 (PDF index 3)**
defines Möbius orthogonality to a flow as orthogonality to
**every sequence realized by that flow**.
**Conjecture 4, printed p. 4 (PDF index 3)** asks this for
**every deterministic flow**. The paper defines a flow
as a compact metric `X` with continuous `T:X→X`,
a sampling sequence as `ξ(n)=f(Tⁿx)` for `f∈C(X)`,
and a deterministic flow by **zero topological entropy**.
This is a conjecture **at the stated generality**, not a
proved source theorem imported by this repository.
The existence of one arithmetic sequence with a special
denominator recurrence does not establish an embedding as
such a flow, let alone the required entropy and cancellation.

**Exact local mathematical fragment.** The *repository* sets
the square-root-of-two continued fraction's partial quotients to
`aₙ=2`, with natural denominator continuants
`q₀=1, q₁=2, qₙ₊₂=2qₙ₊₁+qₙ` and bounded-step ratio
`qₙ₊₁≤3qₙ` (used to show its **arithmetic-exponent**
limsup `limsup log(qₙ₊₁)/qₙ=0`). The local definition
`finiteLogCorrelation N arithmeticWeight orbitObservable`
is the finite sum
`∑_{0≤n<N} (n+1)⁻¹ arithmeticWeight(n+1) orbitObservable(qₙ)`;
`normalizedLogCorrelation N` divides the `N+1`
such summands by the **finite harmonic normalizer**
`∑_{0≤n≤N} (n+1)⁻¹`. Both weight and observable are
**arbitrary real functions**; neither is identified with
`μ` or with a dynamical orbit, and the sample times are
`qₙ`, **not** consecutive `n`. Zero arithmetic
exponent is **not** topological entropy zero or Sarnak
disjointness. No infinite-limit cancellation theorem is
proved in this local source candidate.

**Corresponding exact Lean declarations and commits.**

- `GRWTSK.NumberTheory.ContinuedFractions.SqrtTwoLogDigest.sqrtTwoPartialQuotient`,
  `sqrtTwoDenominator`, `sqrtTwoDenominator_recurrence`,
  `sqrtTwoDenominator_arithmeticExponent_zero`,
  `finiteLogCorrelation`, `finiteLogCorrelation_add_right`,
  `harmonicNormalizer`, `normalizedLogCorrelation` in
  [`SqrtTwoLogDigest.lean`](../../../../GRWTSK/NumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean):
  introduction `ade50aa25ea1d68d51866b772c9adac968b1dab6`,
  later source repair `1b2d9cce6299e2f0ddef4ae107e0b4d05829b5e0`,
  reviewed Git blob `b290af8fb37a5d76ce532c3567f7621d9c4527a5`.
- The imported repository supplier
  `GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator`,
  `denominator_pos`, `denominator_tendsto`,
  `denominator_le_succ`,
  `arithmeticExponent_zero_of_bounded_ratio` lives in
  [`ScheduledDenominators.lean`](../../../../GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean),
  reviewed Git blob `cde88cc3cd37a327f64b117fa0ccc058b2bb24a7`.
  Its shared namespace is **not** the `SqrtTwoLogDigest`
  namespace, and its recurrence/limsup theorem is
  algebraic/asymptotic input, not a Möbius theorem.
- The source-only formalization was inspected at math
  `4ca07594f5c944ba36cd1b14e44f4482cc5d94e8`.
  The repository is pinned to Lean `v4.33.0`,
  Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Relationship:** `source-proof-candidate` for continuants,
finite linear identities and the conditional bounded-ratio
arithmetic exponent argument; **`methodological-analogy`**
to Sarnak's **Conjecture 4**;
`unresolved` for a zero-entropy dynamical realization,
time-index identification, genuine Möbius weight,
uniform estimates and the ordinary asymptotic sum.
No `direct-import` or `local-proved-bridge`
to Sarnak's conjecture is claimed.

**Actual verification:** `SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED` for the listed local modules.
An independent finite integer preflight can check
`[1,2,5,12,29]`; this does **not** establish
the limsup theorem in Lean or any Möbius result.
Existing component [#1087](https://github.com/grwtsk/math/issues/1087)
and integration [#1089](https://github.com/grwtsk/math/issues/1089)
request actual pinned compilation, fresh kernel checking,
transitive axioms and source-bound receipts. The existing
Record4239 19-module validation target predates this
√2 module, so it **cannot** count as verification.
A fresh [five-module verification request #386](https://github.com/grwtsk/noeaaeue/issues/386)
is explicitly pinned to `f3fac5a7e8f373d8efdbfd5a961e7fcf971011a3` (tree `e678194110a6268ece125c7ca18dfbfa6c602161`), with the source blobs, commands, kernel and axiom checks listed; **QUEUED / NO LEAN EXECUTION**. Exact BigInt source preflight covers 32/32 curve and completed-square identities and 33 finite bounded-ratio steps, but none supplies an infinite correlation limit or native kernel acceptance.

## Current verification boundary for these entries

Source review snapshot: `grwtsk/math` commit
`763e5581487a6321be999d1e948a305a86a60f48`
(2026-10-23), Lean `leanprover/lean4:v4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
At this snapshot **zero GitHub combined statuses and zero
associated workflow runs** were returned. Separately, the earlier
19-module verification pin
`698b694747a0b62f4126caf5475601b073ebcd9e`
also has **no executed build/kernel/axiom receipt**.
Some newer source modules, including finite source localization,
were introduced *after* that immutable validation pin and must be
included in any future full-module verification target.

The following distinctions are mandatory:

- **Finite arithmetic replay**: earlier Python/BigInt check outputs
  and hostile controls, with their own inputs; *not* elaboration.
- **Source-level Lean proof candidate**: a declaration written with
  `by`/Mathlib imports, not necessarily typechecked.
- **Kernel checking**: actual `lake env lean --trust=0 --wfail`
  and fresh `leanchecker` on the **exact** code and its dependencies;
  no current receipt has been returned.
- **Transitive axiom audit**: actual declaration-level allowed-axiom,
  sorry/native, private/generated and imported environment closure;
  the 238-named diagnostic is not itself complete audit acceptance.
- **Mathematical premise**: e.g. global `μ`, `SourceBitsMatch`,
  `QuadraticEulerAgreement`, source-local specialization,
  `NativeDescentEvidence` inhabitance and finite generation.
  Kernel acceptance of a conditional theorem would **not**
  discharge these inputs.

The effectful runner and receipt store belong to
[Noeaaeue #381](https://github.com/grwtsk/noeaaeue/issues/381)
and [#382](https://github.com/grwtsk/noeaaeue/issues/382).
Ideas documentation retains source identifiers, formal target commits,
relationships and open obligations; it does **not** store or
manufacture execution receipts. Do not infer an unconditional
Mordell–Weil rank-32 statement, exact rank, BSD, GRH or RH.


## Case FAREY-GMD-WALK-01 — finite Gaussian/modular/Dirichlet Farey-word bridge (repository construction)

**Source identity and paper status.** A **2026 repository-derived finite
algebraic composition**, under the mathematical direction credited in the
source to grwtsk contributors, with OpenAI formalization assistance. **This is
not a theorem imported from an identified paper**, and no publication
title/authors/theorem locator are claimed. Its exact mathematical supplier
identities are the prior GRWTSK Farey/Gaussian/Dirichlet files and the
following pinned upstream Mathlib **code** sources (not journal papers):
[Gaussian integers](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/Zsqrtd/GaussianInt.lean),
[finite additive characters](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Complex/CircleAddChar.lean),
and [Dirichlet character orthogonality](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/DirichletCharacter/Orthogonality.lean).
Mathlib revision: `db584cd6d46c92f209a44c0f1c829460d327499d`;
Lean `leanprover/lean4:v4.33.0`. Historical influence and separate
paper metadata are **not established**. Earlier classical identities
were used through local named declarations, not inferred from similarity.

**Exact theorem/method and hypotheses used.** For a natural Farey cell
`I` with positive denominators and `b*c = a*d + 1`, its orientation-correct
integral matrix frame is `[[c,a],[d,b]]`; the Gaussian product
`(a+i*b)*(c-i*d)` has the same imaginary part as the frame determinant,
namely one. For each **finite chronological word** of actual left/right
mediant shears, `frame (walk I w) = frame I * wordUnit w`, retaining
the exact order. Reduction into `ZMod q` works for any natural `q`;
the normalized additive projector and Dirichlet-character comparison
separately require `[NeZero q]`. Additive detection is a *congruence*,
not unbounded integer equality. A polynomial eye asserts only
`p.eval J.left ≤ 0` and `0 ≤ p.eval J.right` for the reached cell
`J = walk I w`. The quintic/cubic eye comparison assumes the extra
polynomial factor is **strictly positive at both reached endpoints**.

For the nonunit obstruction, `¬ IsUnit (J.rightNum : ZMod q)` is
an **additional explicit premise at J**, not inferred from determinant one
and not asserted invariant under every turn. At that nonunit,
every ordinary multiplicative `DirichletCharacter ℂ q` and every
finite linear combination of such characters vanishes, whereas the
normalized additive-character average at residue-minus-itself is one.
Therefore no *pure finite multiplicative-character sum* is the exact
delta selector of that nonunit. The existing cell `1/2 < 2/3` at
modulus four instantiates the generic scope. No restriction to a
specific nonzero polynomial degree is present in that obstruction.

**Formal destination and exact source identity.**
[GRWTSK/NumberTheory/Farey/GaussianModularDirichletWalk.lean](../../../../GRWTSK/NumberTheory/Farey/GaussianModularDirichletWalk.lean),
introduced directly on **main** in commit
[`4ca07594f5c944ba36cd1b14e44f4482cc5d94e8`](https://github.com/grwtsk/math/commit/4ca07594f5c944ba36cd1b14e44f4482cc5d94e8),
Git blob `54583ff703940dc4fe3fe72b981fdd4cb898cea5`.
Fully qualified names all begin `GRWTSK.NumberTheory.Farey.`:

- `gaussian_cross_im_eq_frame_det`,
  `gaussian_cross_im_eq_word_frame_det`,
  `gaussian_modular_walk_certificates`, `walk_mediant_projectors`;
- `gaussianModularEye_mul_iff_of_endpoint_pos_on_walk`;
- `PureDirichletRightSelectorRepresentation` (a **definition of a
  proposal**, not an established representation);
- `nonunit_right_dirichlet_zero`,
  `nonunit_right_pure_dirichlet_sum_zero`,
  `right_additive_selector`,
  `nonunit_right_pure_dirichlet_indicator_impossible`,
  `gaussianModularEye_nonunit_obstruction_on_walk`, and
  `nonunitEye_no_pure_dirichlet_right_selector`.

The bridge consumes, without changing their statements,
`GRWTSK.NumberTheory.Farey.gaussian_cross_im_eq_one`,
`modularDet_eq_one`, `gaussianModularEye_iff`,
`mediant_numerator_projector`,
`mediant_denominator_projector`,
`nonunitEye_right_nonunit`;
`GRWTSK.NumberTheory.Farey.GroupSuperwalk.frame_walk`,
`frame_det`,
`quintic_eye_on_walk_iff_of_endpoint_pos`;
`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterAverage_eq_indicator`;
and Mathlib `MulChar.map_nonunit`.
See [mathematical scope note](../../../mathematics/NumberTheory/Farey/gaussian-modular-dirichlet-walk.md)
and the prior bridge issue [#1093](https://github.com/grwtsk/math/issues/1093).

**Relationship classifications.** **`source-proof-candidate`** for the
local exact algebra, matrix/word comparison, finite additive detection,
nonunit obstruction and predicate transport; **`conditional-interface`**
for the combined reached-cell theorem, whose endpoint-sign and nonunit
premises remain explicit; **`obstruction-at-scope`** only to a pure
finite Dirichlet-character representation; **not**
`local-proved-bridge`, `direct-import` of an outside paper theorem,
or an analytic/spectral theorem. The upstream Mathlib facts are
**code dependencies**, not a claim to have audited their transitive axioms
in this repository.

**Verification and unresolved premises.** GitHub source readback at
`4ca07594f5c944ba36cd1b14e44f4482cc5d94e8` confirmed two direct
imports, one definition, eleven authored theorems, and no literal source
declaration `sorry`, `admit` or `axiom`. The commit has no combined
GitHub status in the lookup. The available local container has no
`lean` or `lake`, and `git ls-remote` cannot resolve github.com.
**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**:
build exit status **not obtained**, fresh kernel check **not obtained**,
transitive axiom/unsafe audit **not obtained**, and no verified theorem
receipt exists. The source is deliberately unimported from
`GRWTSK.lean`. Full source/dependency replay is queued in [#1096](https://github.com/grwtsk/math/issues/1096),
pinned to `ecfda6e1b7ea98925de3cbbf8e86bf258b8b8e9c`, separately from
upstream #1093 and #1094. The queue is not a verification receipt.

**Nonclaims.** No automatic nonunit property of all Farey words,
spectral decomposition of the native Farey action, full Dirichlet
L-function exclusion, analytic continuation, prime cancellation,
Sarnak Möbius disjointness, RH/GRH, uniqueness/existence of rational roots,
quintic solvability, or elliptic-curve rank is derived. A finite
Gaussian/Dirichlet obstruction does not constitute those missing bridges.

## Native replay repair: finite zeta enclosures and contraction (2026-10-23)

**Source identity and classification.** The imported mathematical source is the Mathlib community's Lean source snapshot `db584cd6d46c92f209a44c0f1c829460d327499d` (2026 verification snapshot), [mathlib4](https://github.com/leanprover-community/mathlib4/tree/db584cd6d46c92f209a44c0f1c829460d327499d). This is a source-code snapshot, not a newly attributed paper. Local bylines remain grwtsk contributors (research direction) and OpenAI/ChatGPT (formalization assistance), exactly as the files state. The present repair supplies no evidence identifying an additional paper or historical influence. Relationship: **direct-import** of Mathlib analytic facts and **local-proved-bridge** only to the extent of the exact native checks recorded below; source acceptance of the concrete zero packet remains a **conditional-interface / unresolved premise**. No finite numerical evidence is promoted to an analytic theorem.

**Exact methods and hypotheses.** `GRWTSK.Analysis.Complex.ContractiveZeroDisk.exists_unique_zero` uses an actual closed-disk all-point differentiability/derivative-defect bound, nonzero approximate inverse, positive radius, contraction factor in [0,1), residual bound and self-map inequality; it constructs no zero without these premises. `GRWTSK.Analysis.Real.RationalLogEnclosure.log_bounds`, `.DyadicInput.bounds` and `.DyadicInput.error_tendsto_zero` use the imported odd-power logarithm bounds, mantissa at least one and exact dyadic factorization; the geometric rate additionally fixes a mantissa at most two and a fixed exponent. `GRWTSK.Analysis.Complex.FiniteExponentialEnclosure.expPolynomial_error` uses Mathlib `Complex.exp_bound'` for the complete Taylor remainder under the explicit radius/degree guard. `GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation.hasDerivAt_negative_power`, `.hasDerivAt_terminalFactor`, `.zeta_sub_approximation`, and `.analyticAt_cellPrefix` retain the exact source identity, nonzero pole denominator and half-plane premises. The Euler–Maclaurin source is the maintained `CubicZetaIdentity` dependency; no additional publication provenance has been inferred.

**Verification scope.** Visible macOS Terminal command in the retained pinned external workspace: `lake build +GRWTSK.Analysis.Complex.ContractiveZeroDisk +GRWTSK.Analysis.Real.RationalLogEnclosure +GRWTSK.Analysis.Complex.FiniteExponentialEnclosure +GRWTSK.NumberTheory.Zeta.Riemann.FiniteCubicZetaApproximation`; exit 0, 3204 jobs. External log `filename-review/dependency-repairs-pass3.log` is retained under mission `mission-20261021-propagation-proof`; it is not an execution artifact committed here. Existing warnings remain visible. The additional Newton dependency closure (`lake build +GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonRegularPart:deps`) passed with 3802 jobs in `filename-review/newton-dependency-repairs-pass18.log`; the candidate itself (`lake build +GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonRegularPart`) passed with 3802 jobs in `filename-review/newton-candidate-repairs-pass1.log`. Current integration checkout at base `556862fc7c9cee3a075230cc08610ab4f76cca4c` plus these exact repair blobs passed `lake build GRWTSK` (exit 0, 9304 jobs), external log `filename-review/proof-repaired-current-main-full-library.log`, SHA-256 `e09306d1e7c0a9486390b5cdc15435c885124e9955e8e96139fb52dbad5b1515`. Renamed-file validation remains PENDING. The prior public-umbrella 9303-job pass is distinct evidence. No fresh exhaustive transitive axiom/unsafe audit is asserted.

**Exact repaired blobs.** Starting source commit `d40d8b1d876f2bd8ae8e88515a6138c15365f676`; repaired file blobs (content-addressed, to be bound by the containing commit):

- `GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean`: Git blob `d8ff4917bdece9995d48460556563e79837688e3`; SHA-256 `f53fe9012144f562310c38c7030a0ebfd7854f178c0536b78185184e6ecd6290`.
- `GRWTSK/Analysis/Complex/FiniteExponentialEnclosure.lean`: Git blob `49d75339b4d350ef5fe33f9bb5ab52a6596d69ac`; SHA-256 `4d7b26dc4de21ad93b5f744075fb2f755d5c09ed599a3dcd816fbc21ed24dbf7`.
- `GRWTSK/Analysis/Real/RationalLogEnclosure.lean`: Git blob `013a6ae3db0a30332d0c3e58d95e31804b0c5e4e`; SHA-256 `03a4af7a44718d63640710e5ef62b838c9f087f5cc1d58fa95e14c32b1f5efd5`.
- `GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean`: Git blob `0cf8527fb39b5c787d6fb7f106b681e99e23a1fb`; SHA-256 `41d83dc33dba54d5c45b5bf8ab9f07aa4773f78b978fb2f8f17e0517e9bd91a2`.

**Missing bridges and nonclaims.** The original concrete packet source-acceptance premise remains OPEN. These generic analytic bridges do not certify externally computed values, choose a zero family, establish a global regular part, supply a contour/winding count, prove RH, or discharge unrelated paper-to-formalization obligations. This record concerns proof replay of unchanged statements, not priority, historical influence or completed library-wide filename/placement review.

**Additional replay identities.** The following proof/API repairs retain their declaration statements and conditional premises. They cover rational/complex casts, norm identities, rounded arithmetic, finite zeta evaluation and conditional Newton localization/boundary estimates. No source acceptance is discharged. Starting integration commit: `556862fc7c9cee3a075230cc08610ab4f76cca4c`.

- `GRWTSK/Analysis/Complex/ContractiveLogDerivativeRemainder.lean`: Git blob `173ab1ada82abae4fa9130ed11ee95f8cc8ae32d`; SHA-256 `7b297bd4c746c6e979fe3692b62144558379c787f7f09911491cb522263e3803`.
- `GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean`: Git blob `d8ff4917bdece9995d48460556563e79837688e3`; SHA-256 `f53fe9012144f562310c38c7030a0ebfd7854f178c0536b78185184e6ecd6290`.
- `GRWTSK/Analysis/Complex/DyadicExponentialEnclosure.lean`: Git blob `54bbc48c0a474eca2681f567c55c660fd7377438`; SHA-256 `42f2afe828a98fadcf389c32ff5fe6a31217599ca9b9e5c8eb28a45972479ac7`.
- `GRWTSK/Analysis/Complex/DyadicRoundedSquaring.lean`: Git blob `d0f8b2e8a7282def656d3a22ecf9b12492fdf899`; SHA-256 `6ac0aade0c0c1d3ab2156d8a99a2172c73ef2a81c4b1c39bb1cbc65c21272a08`.
- `GRWTSK/Analysis/Complex/FiniteExponentialEnclosure.lean`: Git blob `49d75339b4d350ef5fe33f9bb5ab52a6596d69ac`; SHA-256 `4d7b26dc4de21ad93b5f744075fb2f755d5c09ed599a3dcd816fbc21ed24dbf7`.
- `GRWTSK/Analysis/Complex/RationalComplexQuotient.lean`: Git blob `4671cdf296e1e8945c375a1fb0d27f20de2cb20f`; SHA-256 `a4505c2a3a4705b377cfb6f8a74c80143abaa49e6a646f4f605d620416ef29b8`.
- `GRWTSK/Analysis/Complex/RationalRoundedArithmetic.lean`: Git blob `8064984d79de11d47bea46cd541ca0731c8d626a`; SHA-256 `8ed38be97e900cd98d046bec6a81c7251e75b16491474238a2ffd91d930b23a1`.
- `GRWTSK/Analysis/Complex/TentKernelEnclosure.lean`: Git blob `c4de7a7a1673069055f978a71cc06e1d56d5da09`; SHA-256 `f2ab3fd56ad8cb2bbf7009b8ade54e00f6be91b743c6d0ab288f2edffed87295`.
- `GRWTSK/Analysis/Real/RationalLogEnclosure.lean`: Git blob `013a6ae3db0a30332d0c3e58d95e31804b0c5e4e`; SHA-256 `03a4af7a44718d63640710e5ef62b838c9f087f5cc1d58fa95e14c32b1f5efd5`.
- `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean`: Git blob `b957ca84e2b93bb0dd8e42b3a96a28a1a32b9be1`; SHA-256 `27bc4d6032507b46ba7c31862f7a609dd88eaa82e4a8104a306b596c5aa87238`.
- `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean`: Git blob `6b2166b2145fb0fac7840428c291b8cce23b772f`; SHA-256 `941ddfbcac7705144e5b2bd529aae4e8dc439d4b64bfdd5e3c86ccf99d430cbf`.
- `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean`: Git blob `307ae683ec02b7a181247011efcae61b4739bcc7`; SHA-256 `4895f879205d60e8e975baae0a558ec607c30bed81821f998b0f78339e920d44`.
- `GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean`: Git blob `0cf8527fb39b5c787d6fb7f106b681e99e23a1fb`; SHA-256 `41d83dc33dba54d5c45b5bf8ab9f07aa4773f78b978fb2f8f17e0517e9bd91a2`.
- `GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean`: Git blob `319104d2b7b7367333614258b19bbb4838ce41c2`; SHA-256 `c8daeeafa52caa12cc02148d9a6ebf5b2a887e4236276ff9e8dbb27f9f5d3cfb`.
- `GRWTSK/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean`: Git blob `fe0c1a2d441cb4dabd6cb51626486458dff86bd2`; SHA-256 `4bb54b762a3cc4c3959a1e23b92655bf074f200df4a125a5e0222d5871b78dd0`.
- `GRWTSK/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean`: Git blob `d7f6c169e798781178ee714401115c47056a5eef`; SHA-256 `7c3ebd552129345a1684e70c20728c807585590fb274f5a956c9677b12ce6374`.
- `GRWTSK/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean`: Git blob `6ac246873d0a2cac42640c8c00c84dde2f5597f5`; SHA-256 `14cad7338ac9117fc82f0943aa68e66d725f5fcd97c7cdf832926af9be1b5ca5`.
- `GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean`: Git blob `fe39d3884be54c62a10d9feaaae9830e3150e59f`; SHA-256 `c10c2b2eb94a1bc804db68f54c959495cbca89d774f6526ec67751289beb44b4`.
- `GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean`: Git blob `aef28825d449cdef620ea94fdb0b4a7dc2e08b77`; SHA-256 `127e80b7c87f9d8319544302cb6810487445e1c8f0e0d38b12db9cb0f32383bc`.
- `GRWTSK/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean`: Git blob `4e055f3f0f7c453145a37d27558f2d8cd1321ec9`; SHA-256 `decff5756a21975407c79f16012647da638a6f06c20c2f0738b1f31b08d0bfb6`.
