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
elliptic rank. Historical source comments retain
`SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`. Subsequent verification of
`ResolvableQuintic` is recorded in **FAREY-VALIDATION-20261023** below; this
scoped update does not infer analytic or rank bridges from those checks.
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

**Relationship classifications and actual verification.** The source-pinned
run in **FAREY-VALIDATION-20261023** below supersedes the earlier local
`NOT_RUN / NOT_KERNEL_AUDITED` observation for the eight named files only.
The finite local identities are now **kernel-verified bridges at their stated
scope**; reached-cell sign/nonunit assumptions remain **conditional interfaces**,
and the pure finite Dirichlet representation is refuted only at nonunits.
Upstream Mathlib supplies imported mathematics through named code dependencies,
not through a newly attributed outside paper. Strict compilation and fresh
trust-zero transitive axiom checking passed; independent external replay and
analytic premises remain unestablished. The source stays outside `GRWTSK.lean`.
Historical queue [#1096](https://github.com/grwtsk/math/issues/1096) is a request,
not an execution receipt; actual commands, immutable blobs and local receipt
paths are recorded in the dated entry below.

**Nonclaims.** No automatic nonunit property of all Farey words,
spectral decomposition of the native Farey action, full Dirichlet
L-function exclusion, analytic continuation, prime cancellation,
Sarnak Möbius disjointness, RH/GRH, uniqueness/existence of rational roots,
quintic solvability, or elliptic-curve rank is derived. A finite
Gaussian/Dirichlet obstruction does not constitute those missing bridges.

## Case FAREY-VALIDATION-20261023 — finite Farey algebra and selected return channel

**Source identity and classification.** These eight modules are 2026 repository
constructions under the source-credited mathematical direction of grwtsk contributors, with OpenAI formalization assistance. They are not imports of an
identified external paper: a separate paper title, byline, version, DOI or theorem
locator is **not established**. Their upstream mathematical suppliers are the
pinned Mathlib code sources linked in FAREY-GMD-WALK-01 and its matrix notation,
determinant, and real-square-root libraries. No historical influence is inferred.
The local finite identities below are **kernel-verified bridges at their stated
scope**; the reached-cell sign/nonunit premises remain **conditional interfaces**.
The rational and mod-four witnesses are exact **finite evidence**, not analytic
estimates or evidence of RH. The proposed pure Dirichlet representation is a
refuted interface at nonunits, not a supplied theorem. Spiral/analytic analogies
and unresolved extension premises are not promoted to proved bridges.

**Exact declarations and hypotheses.** Fully qualified declarations:

- `GRWTSK.NumberTheory.Farey.Cell.left_lt_right`, `GRWTSK.NumberTheory.Farey.resolvableEye_refine`,
  `GRWTSK.NumberTheory.Farey.polynomialResolves_mul_iff_of_pos_at_endpoints`, and
  `GRWTSK.NumberTheory.Farey.quadratic_mul_cubic_natDegree`: natural endpoints, positive denominators,
  determinant one; strict positivity at the two endpoints for bidirectional
  sign transport; nonzero factors and degrees two and three for degree five.
- `GRWTSK.NumberTheory.Farey.polynomialResolves_mul_of_nonneg_at_endpoints` and
  `GRWTSK.NumberTheory.Farey.exists_endpoint_positive_factor_with_extra_rational_root`: nonnegative
  endpoint factors suffice for forward sign transport, but even strict endpoint
  positivity does not imply equality of rational zero sets (extra root 1/4).
- `GRWTSK.NumberTheory.Farey.gaussian_cross_im_eq_one`, `GRWTSK.NumberTheory.Farey.modularDet_eq_one`,
  `GRWTSK.NumberTheory.Farey.gaussianModularEye_refine`, and
  `GRWTSK.NumberTheory.Farey.nonunitEye_gaussian_modular_dirichlet_obstruction`: actual Gaussian product,
  determinant modulo arbitrary q, and additive selectors for `[NeZero q]`;
  the concrete right numerator two modulo four is a nonunit.
- `GRWTSK.NumberTheory.Farey.GroupSuperwalk.frame_walk`, `GRWTSK.NumberTheory.Farey.GroupSuperwalk.wordUnit_append`, and
  `GRWTSK.NumberTheory.Farey.GroupSuperwalk.quintic_eye_on_walk_iff_of_endpoint_pos`: finite chronological
  positive shear words act on the right of the actual integral Farey frame;
  no action of all inverse group elements on positive cells is asserted.
- `GRWTSK.NumberTheory.Farey.gaussianModularEye_nonunit_obstruction_on_walk` and
  `GRWTSK.NumberTheory.Farey.nonunit_right_pure_dirichlet_indicator_impossible`: endpoint signs and
  nonunit status at the reached cell remain explicit, with nonzero modulus.
- `GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition.unitCharacterSum_eq_totient_mul_selector`,
  `GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition.scaled_selector_channels`, and
  `GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition.farey_nonunit_channel_certificate`: the character
  orthogonality selector requires a unit target; the totient scale and additive
  residual on nonunits are retained exactly.
- `GRWTSK.NumberTheory.Farey.GroupSpectralChannel.commutant_is_scalar` and
  `GRWTSK.NumberTheory.Farey.GroupSpectralChannel.native_invariant_projector_trivial`: the native complex
  two-coordinate matrices commuting with both opposed shears are scalar;
  an additional idempotence premise gives zero or identity.
- `GRWTSK.NumberTheory.Farey.ReturnSpectralChannel.returnProjector_idempotent`,
  `GRWTSK.NumberTheory.Farey.ReturnSpectralChannel.returnProjector_eigen`,
  `GRWTSK.NumberTheory.Farey.ReturnSpectralChannel.expandingProjector_iterate`, and
  `GRWTSK.NumberTheory.Farey.ReturnSpectralChannel.exists_proper_return_channel`: the selected return is
  LR=[[1,1],[1,2]]. The algebraic projector uses s²=5 and s≠0; s=√5 supplies
  those premises and the expanding eigenvalue (3+√5)/2. This projector commutes
  with the single return, not both generators; repeated returns act by λⁿ.

**Immutable source pin.** All eight files below are under
`GRWTSK/NumberTheory/Farey/` at repair commit
[`55fe9dbc34a784cb15782c9dfb0d371a55c6f988`](https://github.com/grwtsk/math/commit/55fe9dbc34a784cb15782c9dfb0d371a55c6f988).
The transitive local source closure contains 120 files; SHA-256 snapshots and
execution logs are outside canonical mathematics in the receipt directory below.

| Module | Git blob |
|---|---|
| `FareyResidueChannelDecomposition` | `a44f3cf92d0d3c05ff09ac66b43b3d078918982b` |
| `GaussianModularDirichletBridge` | `01c1b429ef064208469282ba0c7d8e537d26b120` |
| `GaussianModularDirichletWalk` | `fcabf4db6518485b54ff92025d083d930bf53fa8` |
| `GroupSpectralChannel` | `4c643e9c728d7a0052dab7c7a1353e0ef97233cd` |
| `GroupSuperwalk` | `281df5e34fdc5ee557642993b95c10e544d62b99` |
| `ResolvableQuintic` | `7caef4b022e35202eef471aae2730dff6b518f70` |
| `ResolvableQuinticEndpointControls` | `28d8456db1dc7c6243b51275b8216e3f1ff89c71` |
| `ReturnSpectralChannel` | `de3d52cd221bdf2334bcacccff43fafde4d52db9` |

**Actual verification.** Lean `leanprover/lean4:v4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`. The following commands returned
exit status zero against the source bytes pinned above:

```sh
lake build GRWTSK.NumberTheory.Farey.GaussianModularDirichletWalk GRWTSK.NumberTheory.Farey.ReturnSpectralChannel GRWTSK.NumberTheory.Farey.FareyResidueChannelDecomposition GRWTSK.NumberTheory.Farey.ResolvableQuinticEndpointControls --wfail
lake build --wfail
lake env lean --trust=0 -t 0 /Users/local/Documents/ChatGPT/math-branch-integration-20261022/farey-all-audit.lean
```

Strict module/dependency build: 8,825 jobs. Public-root build: 9,304 jobs.
Fresh kernel replay: 3,077 transitive GRWTSK declarations; all use only
`propext`, `Classical.choice`, and/or `Quot.sound` (or none), with no `sorryAx`
or additional axioms. All 289 Farey-owned declarations, including
private/generated declarations, have reconciled type inventories and are safe.
All 99 authored theorem/lemma headers are unchanged from the pre-repair source.
The import path, natural-number cast proof, scalar-entry proof, unused simp
arguments, and accidental nested-comment text were repaired without changing
mathematical hypotheses or conclusions.

Receipts: external directory
`/Users/local/Documents/ChatGPT/math-branch-integration-20261022/`, files
`farey-final-build.log`, `farey-public-build.log`, `farey-all-audit.lean`,
`farey-all-audit.log`, `farey-validated-snapshot.json`, and
`farey-completion-result.json`. Earlier failed build logs remain diagnostic
records, not acceptance receipts. This is local kernel/axiom verification;
independent external replay and CI acceptance are **not claimed**. Historical
`SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED` comments remain unchanged as source
provenance; this dated, source-pinned entry records the subsequent actual run.
The eight standalone modules remain outside `GRWTSK.lean`.

**Precise missing bridges and excluded scope.** No rational-root existence or
search completeness, general quintic solution, infinite-volume spectral gap,
canonical global angular character, analytic continuation, Dirichlet L-function
zero-free region, Möbius cancellation, Sarnak disjointness, elliptic rank, or RH
consequence follows. The finite return projector is not a simultaneous
projector for both shears. This run does not validate concurrently added
`EndpointInformationLoss`, `InvariantProjectorInformationLoss`, or
`ReturnAngularChannel`; those retain their own pending evidence state.

## Rational Riesz correction and full-family reconstruction obstruction (#189, #966)

**Source identities and status (2026-10-23).** This increment is a
`local-proved-bridge` from existing Lean sources, not a newly attributed paper
or a claim of historical influence. The local source-code snapshots are
“Source-bound first-Riesz second differences” and “Explicit reconstruction of
the visible anchor-3 cell at every large scale,” copyright grwtsk contributors,
formalization assistance OpenAI, 2026, at
[math b9c830170615ea5fc92ea988252891a1808ea074](https://github.com/grwtsk/math/commit/b9c830170615ea5fc92ea988252891a1808ea074).
The `direct-import` is Mathlib's “Integral over an interval,” authors Yury
Kudryashov, Patrick Massot, Sébastien Gouëzel, copyright 2020, source snapshot
[db584cd6d46c92f209a44c0f1c829460d327499d](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean).
The exact imported methods are interval-integral linearity, congruence,
adjacent-interval addition with interval integrability, and the support
restriction identity. No external publication or unverified source theorem
is substituted for these imports.

**Formal destinations and exact hypotheses.** All three new source files are
pinned to [math 9e15b32dd6b0ea23a3fc77ba1cfec5a9294d8de5](https://github.com/grwtsk/math/commit/9e15b32dd6b0ea23a3fc77ba1cfec5a9294d8de5):

- [RationalRieszPrimitive.lean](https://github.com/grwtsk/math/blob/9e15b32dd6b0ea23a3fc77ba1cfec5a9294d8de5/GRWTSK/Analysis/Real/RationalRieszPrimitive.lean):
  `GRWTSK.Analysis.Real.RationalRieszPrimitive.rationalRieszPrimitive`
  is the independent integral `-∫ t in a..x, (x-t)*rationalDensity t`.
  `GRWTSK.Analysis.Real.RationalRieszPrimitive.rationalRieszPrimitive_second_difference`
  proves its second difference equals `h*rationalTentCorrection x h`, for
  `1<a`, `0<h`, `a≤x-h`.
  `GRWTSK.Analysis.Real.RationalRieszPrimitive.rationalRieszPrimitive_change_base`
  proves the explicit affine base-change formula for `1<a≤b≤x`; its two
  coefficients are actual integrals of the rational density and of `t`
  times that density. The base value is proved zero. Integrability and
  tent support are discharged on the stated domain; the primitive is not
  defined as an arithmetic discrepancy.
- [RieszCorrectionNormalization.lean](https://github.com/grwtsk/math/blob/9e15b32dd6b0ea23a3fc77ba1cfec5a9294d8de5/GRWTSK/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean):
  `GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization.correctedRieszSourceDefect_second_difference`
  removes the actual source curvature for `1<a`, `0<h`, `a≤x-h`, `x+h≤N`.
  `GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization.correctedRieszSourceDefect_midpoint`
  proves the midpoint equation for `1<a≤u<v≤N`.
  `GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization.firstRieszPrefix_stable`
  proves prefix stability when `N≤M` and `x≤N`.
  The fully qualified declarations
  `GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization.correctedRieszSourceDefect_two`
  and
  `GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization.correctedRieszSourceDefect_three`
  give the exact normalization data for `N≥2` and `N≥3`, retaining the
  actual full canonical zero values and correction integral.
- [CanonicalFourFamilyFullRestrictionResidual.lean](https://github.com/grwtsk/math/blob/9e15b32dd6b0ea23a3fc77ba1cfec5a9294d8de5/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyFullRestrictionResidual.lean):
  `GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullRestriction_residual_ge_one_of_anchorFive_zero`
  proves `1≤q` for every `X≥3` if a reconstruction's anchor-5 coordinate is
  zero on every input and its relative squared-energy residual estimate
  holds on the full genuine coordinate-restriction difference family.
  The witness is an actual retained anchor-5 cell with centered Möbius
  amplitude `-1` and source energy one; its provenance and membership are
  proved, not assumed from arbitrary finite support.
  `GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalVisibleReconstruction_full_residual_ge_one`
  instantiates this obstruction for the earlier anchor-3 operator at all
  `X≥3`, despite its proved uniform reconstruction-energy bound.

**Verification evidence.** At source commit `9e15b32dd6b0ea23a3fc77ba1cfec5a9294d8de5`,
Lean 4.33.0 and clean Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`,
`lake build --wfail` on the public root, twelve previously qualified
standalone consumers, and the three new standalone modules (sixteen
targets total) completed with exit 0, 9,415 jobs.
The three new modules passed exact-module kernel replay, exit 0, three
modules and zero failures. The unchanged source/object hashes match the
qualified baseline `b9c830170615ea5fc92ea988252891a1808ea074`; this is
incremental kernel qualification, not a fresh replay of every imported
proof. The full 709-module project closure passed the axiom audit with
22,620 logical declarations and zero disallowed axioms, the coverage
census with 6,776 explained native-only entries and zero unexplained
entries, and the runtime-helper audit with twelve helpers and zero
failures. The audit source commands were `lake env lean --trust=0
-DwarningAsError=true` on each of `FullAxiomAudit.lean`,
`FullCoverageAudit.lean`, and `FullRuntimeAudit.lean`, and `lake env lean
--run KernelAffectedClosure.lean`, all exit 0. These runners and the
source/object bindings are outside math under
`/Users/local/Desktop/noeaaeue/.codex-runtime/math-riesz-primitive-full-frame/`.
All 709 committed source blobs were checked against the audited hashes.
The issue updates in [#189](https://github.com/grwtsk/math/issues/189) and
[#966](https://github.com/grwtsk/math/issues/966) carry the pinned scope;
they are not substitutes for kernel qualification.

**Precise missing bridges and nonclaims.** Global real-affineness of the
corrected source defect still needs its regularity/interval argument;
the two exact boundary values do not by themselves prove that argument.
Identification of the resulting coefficients with classical zeta
constants, all endpoint and unsmoothing limits, and the raw pointwise
zero tail remain unresolved. On #966 the obstruction concerns the stated
operator class and the full coordinate-restriction family. It does not
exclude a different operator reconstructing the missing coordinates,
prove a full RH application-family estimate, bound the signed omitted
source terms, or imply RH or its negation.


## Case R4239-05 — normalized residue-squareclass supplier for the native rank criterion

**Identity and scope.** The source point data are from **Noam D. Elkies,
Zev Klagsbrun and Samuel Li**, *Elliptic Curve Rank Leaderboard: curve
#4239* (ICARM online record, **2026-10-15**),
https://elliptic-rank.icarm.cloud/curve/4239. The relevant *method* is
**J. E. Cremona**, *On the Computation of Mordell–Weil and 2-Selmer
Groups of Elliptic Curves* (2002), **§2.1–§2.2**, especially the
finite good-prime characters and their point evaluations,
https://doi.org/10.1216/rmjm/1034968425.
**Michael Stoll**, *Elliptic Curves* (Lean source snapshot
`bad38e242a187dea006fc302a0ef0fd53eedd4ba`, **2026**, not a journal
publication), https://github.com/MichaelStollBayreuth/EllipticCurves/tree/bad38e242a187dea006fc302a0ef0fd53eedd4ba,
gives a separate x−T/weak Mordell–Weil formalization in Lean **4.35**.
That source is **not imported** or backported in this project. The
`NormalizedResidueDescentEvidence` record and the following lemma names
are **repository-derived adapters**, not named external paper theorems.

**Mathematical content and exact hypotheses.** At each of the 32
source-labelled prime/root pairs `(p_j, theta_j)` with `p_j>3`, good
reduction and a simple root, the existing
`sourceLocalReduction j : SourceLocalRing j →+* ZMod (primeLabel j)`
takes the localized, branch-corrected source unit to its true residue.
The new `sourceReducedSquareClass j i` is its **genuine unit-squareclass**
image, and `sourceReducedQuadraticBit_eq_sourceQuadraticBit` is the
structural character-transport comparison. It does **not** prove the
quadratic character's equality to the finite Euler table.

The new `NormalizedResidueDescentEvidence C` has **four explicit
unproved suppliers**:

1. `mu : Multiplicative nativeCurve.toAffine.Point →* C`, a point-group
   homomorphism whose intended arithmetic identity with global x−T
   descent is not established merely by its type;
2. `normalize j : C →* UnitSquareClasses (ZMod (primeLabel j))`,
   a homomorphic **valuation-normalized** specialization at each
   good prime/root. It must justify denominators, local valuations,
   infinity and simple-root derivative exceptional branches; it is
   *not* induced by an impossible unital map `ℚ →+* ZMod p`;
3. `sourceComparison j i`, all **1024 equalities** between the actual
   specialized published-point classes and
   `sourceReducedSquareClass j i` (not a chosen table of arbitrary signs);
4. `quadraticEuler : QuadraticEulerAgreement`, separately identifying
   the Mathlib quadratic character with the source Euler bit.

For the numerical finrank conclusion,
`Module.Finite ℤ nativeCurve.toAffine.Point` is an **additional
external hypothesis**. The native no-two-torsion argument is imported
as a local *source proof candidate*, not re-assumed; the 32×32
matrix inversion and the point-first / character-second orientation
are preserved. The name `localQuadraticCharacter` denotes an actual
composition of `residueSquareClassBitHom` with the **assumed**
`normalize`; construction of the character does not construct
normalization or global descent.

**Formal source identity.** All declarations belong to
`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239`,
new module
[`Record4239NormalizedResidueCriterion.lean`](../../../../GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean),
math source commit **`d7e0991e5a136938d23ac44ad3717357605ebccb`**,
source Git blob **`272ec3d79e816176fe68f37dad3f9ea2e83558c1`**.
Fully qualified declarations are the namespace prefix above followed by:

- `sourceReducedSquareClass`, `sourceReducedQuadraticBit`,
  `sourceReducedQuadraticBit_eq_sourceQuadraticBit`;
- `NormalizedResidueDescentEvidence`,
  `NormalizedResidueDescentEvidence.localQuadraticCharacter`,
  `NormalizedResidueDescentEvidence.localQuadraticCharacter_point`,
  `NormalizedResidueDescentEvidence.toNativeDescentEvidence`;
- `nativePoints_linearIndependent_of_normalizedResidue`,
  `nativeCurve_finrank_ge_32_of_normalizedResidue`.

**Import/proof status.** The pre-existing Mathlib
`residueSquareClassBitHom` and source-local quotient maps are
reused; the added lemmas are **source-proof-candidates** and the native
linear-independence/finrank statements are
**conditional interfaces**. The global arithmetic source maps and
point-value identities remain **unresolved**. Only static source checks
(no literal `sorry`, `admit` or new `axiom`; three import declarations,
namespace/end present), remote Git-blob readback, and exact
source-commit identity were completed. These are **not Lean checks**.

**Verification:** math `lean-toolchain` at this source commit is
`leanprover/lean4:v4.33.0`, `lake-manifest.json` locks Mathlib at
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The commands `lake build --wfail GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NormalizedResidueCriterion`,
`lake env lean --trust=0 --wfail GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean`,
`lake env leanchecker --verbose GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NormalizedResidueCriterion`
and transitive `#print axioms` / declaration-environment review have **not**
been executed. Actual process exit codes, independent kernel acceptance,
private/generated/imported/transitive axiom closure and trusted theorem
type checks are **NOT_RUN / NOT_KERNEL_AUDITED**. The external pinned
execution queue in `grwtsk/noeaaeue` must be issued separately, not
mistaken for a receipt.

**Nonclaims.** No unconditional `rank E(ℚ) ≥ 32`, exact rank, BSD,
global x−T descent, construction of the normalizations,
`SourceBitsMatch`, regulator, RH or GRH is proved. A theorem statement
with `NormalizedResidueDescentEvidence` is **not** evidence the record
can be inhabited.


## October 23 2026: Farey Hodge, Guth–Maynard density and CM/Goldfeld comparisons

**Evidence:** SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED on all new
Lean modules. Static GitHub readback is not a kernel proof. The detailed
scope/nonclaim ledger is at
[docs/mathematics/NumberTheory/Farey/hodge-density-three-quarter-comparison.md](../../../mathematics/NumberTheory/Farey/hodge-density-three-quarter-comparison.md).
This reference entry is a mathematical provenance ledger, not a
verification receipt or a source attribution for repository-authored identities.

### Guth–Maynard 3/4 zero-density theorem

**Paper:** Larry Guth and James Maynard, *New large value estimates for
Dirichlet polynomials*, **2026 journal publication** (Annals of Mathematics
203(2), pp. 623–675), DOI
[10.4007/annals.2026.203.2.6](https://doi.org/10.4007/annals.2026.203.2.6).
Manuscript [arXiv:2405.20552](https://arxiv.org/abs/2405.20552);
the DOI is the stable cited published version. **Exact use: Theorem 1.2**:
for the zeta zero count by multiplicity, with Re(rho)>=sigma and
|Im(rho)|<=T, the pointwise exponent is
15(1-sigma)/(3+5 sigma) (and the uniform exponent is 30(1-sigma)/13),
with the paper's o(1) asymptotic quantifiers. At sigma=3/4 these are
exactly 5/9 and 15/26, respectively. The source's actual Dirichlet
polynomial large-value estimate is **not** ported.

**Local candidate:** [grwtsk/math@d1d14de848aa84bcd3ed9cd8bb74a03627b9f362](https://github.com/grwtsk/math/commit/d1d14de848aa84bcd3ed9cd8bb74a03627b9f362),
GRWTSK/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean,
blob 319552d047092d7e13e96e950ea7e26263898482,
namespace GRWTSK.RiemannHypothesis.ThreeQuarterDensityHodgeComparison.
Declarations include guthMaynardPointwiseExponent,
pointwiseExponent_threeQuarters, uniformExponent_threeQuarters,
bothSignZeroCount, positiveHeightZeroCount,
positiveHeightZeroCount_le_bothSignZeroCount,
GuthMaynardBothSignThreeQuarter, PositiveThreeQuarterDensity,
positiveDensity_of_guthMaynard,
bothSignZeroCount_zero_right_of_sevenEighths,
positiveHeightZeroCount_zero_at_low_seed, density_and_sevenEighths_band,
naive_gradedFourier_strictly_misses_threeQuarters,
distinct_threeQuarter_exponents. The full both-sign counter consumes
the repository's exact CanonicalZeroDivisor.heightHead and analytic
multiplicity, NOT a fabricated list; positiveHeight is a subset.
**Relationship:** LOCAL_IDENTITY_SOURCE_CANDIDATE for exponent arithmetic
and finite count comparison, CONDITIONAL_REDUCTION for the actual
Guth--Maynard infinite-height estimate. There is **no** local constructor
of GuthMaynardBothSignThreeQuarter, no analysis of large values,
and no proved port of Theorem 1.2. The earlier
CriticalStripThreeQuarterSeed.lean bound is on |Im(s)| <=3/4, not
Re(s)>=3/4.

**Verification:** GitHub source/blob readback only. Pinned Lean
leanprover/lean4:v4.33.0, Mathlib
db584cd6d46c92f209a44c0f1c829460d327499d.
No lake build, direct elaboration, fresh kernel replay, transitive
#print axioms or generated/unsafe audit; all are NOT_RUN.
Acceptance depends on the exact target and transitive import closure.

### OpenAI seven-eighths zero-free result: comparison, NOT port

**Source:** OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane
Re(s)>7/8*, **September 30, 2026 preprint**, stable repository revision
[openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a](https://github.com/openai/math/tree/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026).
The precise external Lean declaration identified in
lean/docs/003.md is OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re:
Re(s)>7/8 implies riemannZeta s != 0 (in its exact imported universe).
The corresponding local proposition is
GRWTSK.RiemannHypothesis.SevenEighthsZeroFree in
GRWTSK/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean.
The present density comparison consumes it as an **explicit premise**,
giving a reflected real-part band 1/8<=Re(s)<=7/8.
**Relationship:** ANALOGY_ONLY to the external proof mechanism,
CONDITIONAL_REDUCTION at the terminal zero-free proposition;
LOCAL_ADMISSION_BLOCKED pending toolchain, dependency, trust and
proof-transport alignment in OpenAISevenEighthsPort.lean.
This cannot prove RH or the nonlinear 7/8 -> 3/4 arithmetic contraction.

### OpenAI CM Hodge paper; two meanings of Hodge remain separated

**Paper:** OpenAI, *The rational Hodge conjecture for CM abelian
varieties*, **revised preprint October 6, 2026**,
[immutable OpenAI repository revision](https://github.com/openai/math/tree/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/The-rational-Hodge-conjecture-for-CM-abelian-varieties-October-6-2026).
Exact manuscript fragments inspected: build/sections/02-tensors.tex
(odd CM sign rows, four-factor balance, rational trace descent) and
05c-cm-types.tex (Hecke idempotents, good-reduction crystalline
Frobenius and weak-admissibility slope/filtration comparison).
Main theorem thm:cm asserts surjectivity of
CH^p(A)_Q -> H^(2p)(A,Q) intersection H^(p,p)(A) for each complex
CM abelian variety A and each p>=0; **not imported locally**.
Existing GRWTSK declarations:
GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance.fourBalance_twoTwoSignProfile,
GRWTSK.AlgebraicGeometry.Hodge.CMCoordinateHodge.hodgePieces_isCompl,
GRWTSK.AlgebraicGeometry.Hodge.ComplementaryWeakAdmissibility.component_equalities,
GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorAlgebraicity.realizeAlgebraicCycle_of_descentData
(the last requires an explicit algebraicity supplier).
No local constructor for a general rational cycle-class surjection is
asserted. **Relationship:** finite Hodge TYPE identities and
conditional scalar descent, not algebraic-cycle realization.

**New distinct finite-graph source:**
GRWTSK/NumberTheory/Farey/CyclicResidueHodge.lean,
[grwtsk/math@7c966ff78bc79530d15c4410a1d7c8c5b726b35a](https://github.com/grwtsk/math/commit/7c966ff78bc79530d15c4410a1d7c8c5b726b35a),
blob 449c566c6366b9732ba719d6485ad299b29473c2.
Declarations: cyclicIncidence, cyclic_energy_nonneg,
cyclic_laplacian_nonneg, cyclic_laplacian_kernel, unitPart,
nonunitPart, unit_add_nonunit, unitPart_idempotent,
nonunitPart_idempotent, unit_nonunit_counting_orthogonal,
fareyNonunitPointMass_eq_indicator,
farey_unit_projector_not_translation_equivariant.
This uses real finite cellular Hodge (delta*delta) and demonstrates
failure of translation-invariance for the arithmetic unit projector;
it is **not** a rational-Hodge (p,p) theorem. A functorial geometric
comparison to CM cohomology is UNRESOLVED_PREMISE.

**Ramanujan/cyclic Fourier companion:**
GRWTSK/NumberTheory/Farey/RamanujanFourierHodge.lean, **current repaired
source** at
[grwtsk/math@8460baa69c35110348dcb3498f7051cc49762aa4](https://github.com/grwtsk/math/commit/8460baa69c35110348dcb3498f7051cc49762aa4),
blob 9d85c0b82c5643e14ee48df4b3becd7a873a680d.
Declarations: additiveMode_shift, additiveMode_shift_back,
cyclicDifferenceStar_difference_eq_laplacian,
additiveMode_laplacian_eigen, primitiveRamanujanSum,
nonprimitiveFrequencySum, fullFrequency_eq_primitive_add_nonprimitive,
characterAverage_primitive_nonprimitive.
This is a **repository-authored finite Fourier identity**, not a
paper-exact formalization of a video. The divisor reconstruction
sum_(d|q) c_d(n) = q*indicator(q|n) is NOT proved in this increment.
Matching real Hodge matrix and complex Laplacian after scalar extension
remains open. No classical Ramanujan historical attribution is claimed
from a video whose exact argument was not checked.
**Verification:** both modules SOURCE_ONLY / NOT_RUN for all kernel,
compiler and transitive axiom/unsafe checks. Same pinned Lean/Mathlib.

### Quadratic Gaussian CM prime density and ordinary reduction

**Mathematical background:** Joseph H. Silverman,
*Advanced Topics in the Arithmetic of Elliptic Curves*, **1994**,
Chapter II (Complex Multiplication), Springer GTM 151,
[DOI 10.1007/978-1-4612-0851-8](https://doi.org/10.1007/978-1-4612-0851-8).
The exact location/theorem number for the Deuring ordinary/supersingular
criterion on E:y^2=x^3-x is **UNRESOLVED** here; no passage is
paper-ported. A separate classical Dirichlet/Chebotarev source is
needed to prove natural relative densities 1/2 for primes p mod4=1,
p mod4=3. Neither theorem has been supplied as a Lean proof.

**Local candidate:** GRWTSK/NumberTheory/ArithmeticGeometry/
QuadraticCMPrimeDensity.lean,
[grwtsk/math@16336be883567229fff9ebc64be555d21ed6d403](https://github.com/grwtsk/math/commit/16336be883567229fff9ebc64be555d21ed6d403),
blob 6178e018686b0e329479cfae8293b343fbd2b42e.
Declarations: oddPrimeWindow/oddPrimeCount/splitPrimeCount/inertPrimeCount,
HasRelativePrimeDensityHalf, QuadraticPrimeDensitySupplier,
QuadraticCMReductionProfile, ordinaryPrimeCount,
supersingularPrimeCount, ordinaryPrimeCount_eq_splitPrimeCount,
supersingularPrimeCount_eq_inertPrimeCount,
ordinaryPrimeDensity_half, supersingularPrimeDensity_half,
ordinary_and_supersingular_density_half, ramified_two_excluded.
The exact classification and BOTH density halves are independent
unconstructed supplier fields. Local theorem types transport
finite-count equalities to the two asymptotic density conclusions;
they do NOT establish these density inputs.
**Relationship:** conditional arithmetic/geometric transport,
not imported Deuring/Chebotarev or CM Hodge algebraicity theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED; no receipt.

### Goldfeld half densities do not imply mean rank without a tail

**Paper:** OpenAI, *Goldfeld's analytic density conjecture and the
2-converse for elliptic curves*, **October 7, 2026 preprint**,
[openai/math at immutable source](https://github.com/openai/math/tree/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/Goldfelds-analytic-density-conjecture-and-the-2-converse-for-elliptic-curves-October-7-2026).
Exact cited theorem **thm:main-density** in
build/sections/00-introduction.tex: for every elliptic curve E/Q and
j in {0,1}, density 1/2 of analytic rank j quadratic twists among
D(X)={d integer: 0<|d|<=X, d squarefree}. The 2-converse
**thm:main-converse** assumes FULL 2-infinity Selmer corank 0 or 1
and concludes analytic rank = Mordell--Weil rank = Selmer corank,
plus finite Sha. Section 11 lemma **lem:squarefree-density** assumes
a squareclass-invariant property and 2 delta X+o(X) signed integer
count. The introduction explicitly states that a separate mean-rank
paper/tail estimate is needed; the two half densities alone do not
bound unbounded analytic ranks on an exceptional density-zero set.

**Local source:** GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/
GoldfeldTwistDensityComparison.lean,
[grwtsk/math@cd4f6d91aca5be0c95baa55be1149b6b7014bb58](https://github.com/grwtsk/math/commit/cd4f6d91aca5be0c95baa55be1149b6b7014bb58),
blob 9fd9e6663bda0adba4bfd887045604e05adcaded.
Declarations: TwistRankFamily, eligibleTwists (symmetric signed window),
rankZeroMass, rankOneMass, highRankMoment, fullRankMoment,
rank_moment_pointwise, fullRankMoment_eq_one_add_high,
meanRank_eq_one_fraction_add_high,
GoldfeldZeroOneHalfDensities, HighRankMomentNegligible,
GoldfeldMeanHalf, mean_half_of_density_and_high_tail.
The family adapter is NOT instantiated with a curve, source-exact
squarefree predicate or analytic L-function order. The finite moment
identity and mean inference are **LOCAL_IDENTITY_SOURCE_CANDIDATE**
and **CONDITIONAL_REDUCTION**. No Goldfeld density theorem, converse,
BSD statement, rank-32 independence or mean-rank theorem is imported.
No claimed kernel/axiom receipt.

### Actual verification and trust status for this entire group

All five source modules were added through routine non-force main
commits and independently read back by exact Git blob. Static checks
found no new declaration-level sorry, admit or axiom tokens. Environment
toolchain: leanprover/lean4:v4.33.0; Mathlib locked at
db584cd6d46c92f209a44c0f1c829460d327499d.
The local container has no lean/lake executable, and an attempted
git ls-remote failed host resolution (exit 128). No Railway or other
declined remote executor was used. **Compiler builds, direct
elaboration, independent fresh kernel replay, transitive #print axioms
and unsafe/generated declaration audits are all NOT_RUN.**
The external manuscripts' own proof or kernel claims are not local
receipts. No proof accepted into GRWTSK.lean public root, no
unconditional density or zero-free theorem and no asserted
PAPER_TO_LEAN_BRIDGE_PROVED. Add exact commit-bound issue links and
real execution receipts only after an authorized executor runs them.

## Case FAREY-ANGULAR-02 — oriented return phase, not a global spectral character

**Bibliography and attribution.** These are **2026 repository-derived
constructions**, credited in the source to mathematical direction by
**grwtsk contributors** with formalization assistance from **OpenAI**.
There is **no identified external paper** whose exact theorem or method
asserts this mod-three Farey angular construction. Consequently an
additional external paper title, authors, publication year, DOI/arXiv
identifier and theorem locator are **not established**, and none is
invented. Its stable, citable **code-source identities** are
[the angular implementation at `ffe99332d6129ddeddd57cbf2f8b2e97ce2e1e36`](https://github.com/grwtsk/math/commit/ffe99332d6129ddeddd57cbf2f8b2e97ce2e1e36)
and [the projective obstruction at `94ea7f741c162ff60d93e47e54124845f29e2764`](https://github.com/grwtsk/math/commit/94ea7f741c162ff60d93e47e54124845f29e2764).
The preceding exact matrix and return eigensector constructions were
integrated at `367a4a4d7ca24eeb506e9bcaad118a66ee0cb0ad` and
`5c9a0b1d418daef930367d3537a83f1b0ec66ff2`,
with the later proof repair and qualified parent source at
`55fe9dbc34a784cb15782c9dfb0d371a55c6f988`.

**Exact statements, method and hypotheses.**
The source `GRWTSK.NumberTheory.Farey.GroupSuperwalk` restricts to
a **positive chronological** two-letter Farey word
`[Turn.left, Turn.right]`, acting by the genuine shears
`L=[[1,0],[1,1]]`, `R=[[1,1],[0,1]]` on the right
of the original determinant-one Farey frame with positive denominators;
inverse shears are **not** claimed to preserve positive Farey cells.
The selected return is `H=L*R=[[1,1],[1,2]]`.
The parent real channel uses the explicitly constructed proper idempotent
for `s=√5>0`, `s²=5`, and
`λ₊=(3+√5)/2>1`, with `H^n P₊=λ₊^n P₊`.
It commutes with the selected **return**, not necessarily each
generator: the earlier simultaneous-commutant no-go therefore remains intact.

The next local construction interprets the **same** source return
over `ZMod 3`: `H₃²=-I`, `H₃⁴=I`, with
`H₃²≠I`. Starting at the actual vector `v₀=(1,0)`,
its four distinct states are `(1,0),(1,1),(2,0),(2,2)`.
The **chosen** complex observable takes values `1,i,-1,-i`,
so `φ(H₃ v)=i φ(v)` **on this finite selected orbit**.
The independently chosen product readout is
`z_n=(λ₊ i)^n`, `‖z_n‖=λ₊^n`, and
`z_(n+4)=λ₊⁴ z_n`. This is a *discrete sampled observation*,
not a continuous spiral embedding or a global
`SL₂(ℤ)` one-dimensional character.

The projective no-go has **two necessary, explicitly formalized
premises** on any putative extension
`f : (Fin 2 → ZMod 3) → ℂ`:
`SignGaugeInvariant f := ∀ v, f(-v)=f(v)`;
`AgreesWithOrbitPhase f := ∀ j : Fin 4,
f(residueOrbit j)=orbitPhase j`. Because the *actual* pairs
`v₂=-v₀` and `v₃=-v₁` carry opposite, distinct
phases, no `f` satisfies both conditions. The statement does
**not** forbid sign-invariant *different* observables or
projective two-state characters (e.g. a separately constructed
squared-phase channel). It also does not negate the oriented readout.

**Exact Lean declarations, commits and blobs.**

- `GRWTSK.NumberTheory.Farey.ReturnAngularChannel.modThreeWord_return`,
  `modThreeReturn_square`, `modThreeReturn_fourth`,
  `modThreeReturn_square_ne_one`, `modThreeReturn_orbit`,
  `modThreeReturn_orbit_iterate`, `orbitPhase_next`,
  `orbitPhase_iterate`, `simultaneous_return_channels`,
  `discreteSpiral_formula`, `discreteSpiral_norm`,
  `discreteSpiral_four_returns` in
  [`ReturnAngularChannel.lean`](../../../../GRWTSK/NumberTheory/Farey/ReturnAngularChannel.lean);
  first source commit `d8f689c45e3c51988a1699e0f42c4fb4f1c9d1a0`,
  orbit-iterate revision `ffe99332d6129ddeddd57cbf2f8b2e97ce2e1e36`,
  integrated scope pin `ab80341e288db86f8b79b19e959bc2694e4c5472`,
  exact source Git blob `df4c90661a7f0a6897d274604de22850b703d38b`.
- `GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction.SignGaugeInvariant`,
  `AgreesWithOrbitPhase`, `residueOrbit_two_eq_neg_zero`,
  `residueOrbit_three_eq_neg_one`, `orbitPhase_two_ne_zero`,
  `no_sign_invariant_orbit_phase`,
  `no_projective_selected_phase_extension` in
  [`ReturnAngularProjectiveObstruction.lean`](../../../../GRWTSK/NumberTheory/Farey/ReturnAngularProjectiveObstruction.lean),
  introduced at `94ea7f741c162ff60d93e47e54124845f29e2764`,
  documentation pin `8c48a9d8f2e3efca28d86b652dda4e9a23b6b374`,
  Git blob `08c7754c5116d7885613caf56e6b2005ab9a7167`.
- Exact imported repository suppliers:
  `GRWTSK.NumberTheory.Farey.ReturnSpectralChannel.expandingProjector_iterate`
  and `expandingProjector_eigen`, blob
  `de3d52cd221bdf2334bcacccff43fafde4d52db9`;
  `GRWTSK.NumberTheory.Farey.GroupSpectralChannel.native_invariant_projector_trivial`,
  blob `4c643e9c728d7a0052dab7c7a1353e0ef97233cd`;
  `GRWTSK.NumberTheory.Farey.GroupSuperwalk.frame_walk`,
  blob `281df5e34fdc5ee557642993b95c10e544d62b99`.
  The immutable qualified parent source identity for these three
  dependencies is stated in FAREY-VALIDATION-20261023 above.

**Relationship and actual verification.** The finite matrix/real
return parent modules are **`local-proved-bridge` only at their
finite algebraic scope** as recorded above at
`55fe9dbc34a784cb15782c9dfb0d371a55c6f988`:
the ledger gives the executed local `lake build` and
`lean --trust=0` exit-zero commands, transitive axiom
results and external local receipt paths. This provenance update
does **not** independently re-run those commands or assert external
CI replay. **Both new angular and projective leaf modules remain
`source-proof-candidate`, `SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED`**: zero valid new-leaf compiler,
fresh kernel or transitive axiom receipts are established in the
current review. Finite modular, radical and orbit calculations are
`finite-certificate` only. Their distinct immutable verification
requests are [#1100](https://github.com/grwtsk/math/issues/1100)
and [#1102](https://github.com/grwtsk/math/issues/1102).
They remain outside the public `GRWTSK.lean` import.

**External-paper relationship and unresolved premises.** Sarnak's
**Peter Sarnak (2011)** *Three Lectures on the Mobius Function:
Randomness and Dynamics*,
[IAS source](https://publications.ias.edu/sarnak/paper/506),
**Definition 3** and **Conjecture 4** (printed p. 4), are already
identified under DYN-SQRT2-01. The local finite angular return is
**`methodological-analogy` only**, not an instance of that
conjecture: no compact metric zero-entropy dynamical realization,
all-continuous-observables quantifier, genuine Möbius weight or
ordinary-average `o(N)` cancellation is supplied. A
nonperiodic Farey/continued-fraction return, a source-preserving
gauge/phase lift and an actual observation comparison remain
**`unresolved`**. No continuous geometric spiral,
Sturmian spectrum, zeta determinant, RH or arithmetic
zero-distribution result follows.

## Case FAREY-HODGE-01 — cyclic residue Hodge and nonunit equivariance failure

**Bibliography/source type.** This is a **2026 repository-derived
finite graph and residue construction** credited in the source to
mathematical direction by **grwtsk contributors** and formalization
assistance by **OpenAI**. An outside paper with exact title,
authors, year/version and DOI/arXiv theorem locator that this file
formally instantiates is **not established**. The stable
mathematical/code sources, *not publication-theorem imports*, are
[the new source commit `7c966ff78bc79530d15c4410a1d7c8c5b726b35a`](https://github.com/grwtsk/math/commit/7c966ff78bc79530d15c4410a1d7c8c5b726b35a),
`GRWTSK.Geometry.Hodge.FiniteGraphCellular`
(Git blob `8443dddddc00f3c8e5c79c110381c7fa2d58ad6e`),
`GRWTSK.Geometry.Hodge.FiniteMatrixHodge`
(blob `1299a222b0e8bd5f6ac25d8508fab8ac3d548b7b`),
and the previously recorded finite Dirichlet/additive
`FareyResidueChannelDecomposition`
(blob `a44f3cf92d0d3c05ff09ac66b43b3d078918982b`).
These are code dependencies in pinned Mathlib/GRWTSK, not a
proof of the algebraic Hodge conjecture.

**Exact source theorem/method, hypotheses and normalizations.**
For a natural modulus `q` with **`[NeZero q]`**, the
cyclic finite incidence object on `ZMod q` has source `x`
and target `x+1`, so the degree-zero real coboundary is
`δf(x)=f(x+1)-f(x)`. With finite vertex/edge sets and
the original standard real counting pairing, its
energy `∑ (δf)^2` and Laplacian quadratic form
`⟨f,δ*δf⟩` are nonnegative, with
`ker(δ*δ)=ker δ` under the source's finite-dimensional
linear-algebra hypotheses. The separate complex
`ZMod q → ℂ` unit/nonunit coordinate cutoffs
`unitPart` and `nonunitPart` are **complementary
idempotents**, with zero pointwise products and
zero counting-pairing cross term; this does **not**
imply invariance under translation or under the
finite Hodge Laplacian.

The exact `q=4` Farey witness is the right numerator
**2** of the previously defined cell `1/2<2/3`.
It is a **nonunit modulo four**. Its additive-residue
selector `f(x)=1_{x=2}` remains meaningful despite the
multiplicative Dirichlet-character obstruction.
For `translateUp f(x)=f(x+1)`, the unit cutoff
does **not** commute with translation: evaluation
at `x=1` gives `unitPart(translateUp f)(1)=1`
but `translateUp(unitPart f)(1)=0`.
The target residue and nonunit status are not
asserted for arbitrary Farey coordinates or all moduli.

**Exact Lean declarations, source commit/blob and hypotheses.**
In [`GRWTSK/NumberTheory/Farey/CyclicResidueHodge.lean`](../../../../GRWTSK/NumberTheory/Farey/CyclicResidueHodge.lean),
first integrated on **main** by
`7c966ff78bc79530d15c4410a1d7c8c5b726b35a`,
source blob `449c566c6366b9732ba719d6485ad299b29473c2`,
namespace `GRWTSK.NumberTheory.Farey.CyclicResidueHodge`:

- `cyclicIncidence`, `cyclic_coboundary_apply`,
  `cyclic_energy_nonneg`, `cyclic_laplacian_nonneg`,
  `cyclic_laplacian_kernel`: finite oriented real
  coboundary/Laplacian statements with `[NeZero q]`
  and source finite-module requirements.
- `unitPart`, `nonunitPart`, `unit_add_nonunit`,
  `unitPart_idempotent`, `nonunitPart_idempotent`,
  `unit_nonunit_pointwise_zero`,
  `unit_nonunit_counting_orthogonal`: finite complex
  residue-space decomposition, again with
  `[NeZero q]`.
- `translateUp`, `fareyNonunitPointMass`,
  `fareyNonunitPointMass_eq_indicator`,
  `farey_unit_projector_not_translation_equivariant`:
  exact mod-four selected nonunit arithmetic witness,
  not a statement of translation noncommutation for
  every q or every input.

**Relationship and evidence.** The import
`GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition.farey_nonunit_channel_certificate`
is part of the eight-module scope locally
`local-proved-bridge`-qualified in
FAREY-VALIDATION-20261023, at the precise source
blob stated there. The *new* cyclic Hodge application is
**`source-proof-candidate`, `SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED`**, not covered by that older
eight-module execution or a separate complete compiler/axiom
receipt in this review. Finite `q=4` sample arrays and energy
calculations are `finite-certificate` only. The
standalone verification request [#1103](https://github.com/grwtsk/math/issues/1103)
pins math `c788f9c92a3681ebe2ffb68b96dbf745e6edcf1a`
with Lean `v4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`,
target modules, exact dependencies, build,
fresh kernel and transitive axiom commands. It is
a **queue**, not an executed receipt.

**Missing bridge, analogy/nonclaim.** A Hodge
nonnegative energy or an orthogonal unit/nonunit
coordinate decomposition does **not** imply
dynamical invariance, Dirichlet L-function spectral
claims, a Siegel-zero theorem, a density estimate,
the Hodge conjecture, analytic continuation or RH.
The missing map from the finite cyclic graph
to a named analytic spectral/operator family and its
frequency-dependent comparison remains
**`unresolved`**. The phrase "Hodge" here denotes
the exact finite graph coboundary/adjoint algebra,
not imported algebraic-geometric Hodge theory.



**Pinned verification requests for this source group (all OPEN/PENDING):**
[finite Farey Hodge/Ramanujan #1104](https://github.com/grwtsk/math/issues/1104),
[CM/Goldfeld density #1105](https://github.com/grwtsk/math/issues/1105),
[canonical Guth–Maynard / 3/4 zeta comparison #1106](https://github.com/grwtsk/math/issues/1106).
All target the unchanged mathematical source blobs at immutable main
commit 74a1937e01d7dc220e2c78d35a448b830afc3e0f; none is an actual
compiler, kernel, or axiom-audit acceptance receipt.

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
