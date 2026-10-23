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
No real global quadratic-character homomorphism, finite
`SourceBitsMatch`, unconditional rank bound, Sarnak
disjointness, BSD or RH theorem is obtained here.

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
