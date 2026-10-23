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

**External formalization/source-binding audit at the exact SIGNED-01 scope.**
At [`grwtsk/math@3bad8ab04c3b4c79dedb563f0bade7b8906713a9`](https://github.com/grwtsk/math/blob/3bad8ab04c3b4c79dedb563f0bade7b8906713a9/GRWTSK/LinearAlgebra/SignedWeilComparisonGate.lean),
the existing `GRWTSK.LinearAlgebra.SignedWeilComparisonGate` file has
blob `6f81cabc4b5c9a7fc60c3a9a742588dc6ac0399f`;
the earlier historical source introduction `5992de3e67da004c9e3ccf77a06ea38ac11e1c48`
does not identify that current blob. Its finite inequalities require
a source-supplied negative margin, positive comparison Gram and a
**separately ASSUMED** error bound; no actual zeta signed-form port.

For comparison only, the **external** Lean project at
[`anthropics/formal-math@e1a4e6508154ea59f030480661590a9fe3018011`](https://github.com/anthropics/formal-math/tree/e1a4e6508154ea59f030480661590a9fe3018011/zeta23)
has `zeta23/Solution.lean` blob `bd5dd641b10983884cafb0a4d7d964a10de32d11`.
Its `two_thirds_simple_on_critical_line` (line 60),
`five_sixths_distinct` (line 68) and
`montgomery_taylor_simple_on_critical_line_mult` (line 82)
are quantified `∀ε>0,∃T₀,∀T≥T₀` over counts in `[T,2T]`,
not an assertion about every zero. The external pinned toolchain is
Lean `v4.33.0-rc2`, Mathlib `51e6992efd06126df61a496bebf8f49482a4e129`
and `zeta23/comparator.json` blob
`0fc12ebb8b21a74de5d30fd598e1f1ad1094ca2e`.
The project's `AUDIT.md` reports external build/comparator/axiom checks,
but the [successful Actions run 37411656515](https://github.com/anthropics/formal-math/actions/runs/37411656515)
at that SHA checked **3sum-apsp**, not zeta23; historical successful
Zeta23 CI was run on **different pinned commits**. These are
external-source and author-reported verification facts, not local
kernel acceptance, explicit-formula identity or imported
Alpöge–Furman density theorem. `methodological-analogy` and
`source-proof-candidate / NOT_RUN` remain disjoint categories.



## Case BOMBIERI-MOMENTS-WEIL-20261023 — exact test moments versus unproved classical form

**Paper, author/byline, date and stable identifier.** **Enrico Bombieri (E. Bombieri)**, *Problems of the Millennium: the Riemann Hypothesis* (Clay Mathematics Institute **2000** problem description; **2006** collected edition), **§V, printed pp. 8–9**: https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf . The paper attributes the classical explicit formula and positivity/negativity criterion to **André Weil**; do not conflate those authorships or infer the owner's reading, historical influence, priority or originality from a thematic idea match.

**Exact paper method/hypotheses; scope of the actual import.** Bombieri's source class `W` consists of complex-valued functions on `ℝ₊`, continuous and piecewise `C¹` with finitely many first-kind exceptional points and values prescribed by one-sided averages, and some `δ>0` with `f(x)=O(x^δ)` at 0 and `f(x)=O(x^(−1−δ))` at ∞. Mellin normalization: `\tilde f(s)=∫₀∞ f(x)x^s dx/x`, with `−δ<Re(s)<1+δ`. The explicit formula includes the **symmetrically height-summed** nontrivial zeros, pole/Mellin terms, prime-power `Λ` terms and archimedean terms. For the RH-equivalent specialization, take the source multiplicative **conjugate** correlation `f(x)=∫₀∞g(xy)·conj(g(y))dy` for one `g∈W` satisfying BOTH `∫₀∞g(x)dx=0` and `∫₀∞g(x)dx/x=0`. Bombieri's criterion requires **negativity of the signed classical explicit-formula right-hand side on all such tests**. The local development encodes only the two moment conditions and consequences for the literal normalized square-tent coefficients; it **does not import the full W, correlation, explicit formula, signed form or RH criterion**.

**Immutable source inspection:** `grwtsk/math@3bad8ab04c3b4c79dedb563f0bade7b8906713a9`, tree `c3b296aa29bc36dd1d6c8c1849becd0ceadd8b72e`; all listed Lean source blobs unchanged through the later documentary-only main review. Lean `leanprover/lean4:v4.33.0`, toolchain blob `025e59548e48cf71f2744154e2890beefe30a258`; Mathlib revision `db584cd6d46c92f209a44c0f1c829460d327499d`, manifest blob `1f2e3e2d66253933a410e981eb359a9b454aae0b`. These are **fully qualified local declarations**, source commits and exact Git file objects, **not** accepted proof artifacts:

| Edge | Fully qualified Lean declarations | Source blob and relevant source versions | Exact relationship, hypotheses and actual verification |
| --- | --- | --- | --- |
| B1 | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction.BombieriZeroMomentConditions`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction.canonicalTentReal_ordinaryMoment_pos`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction.no_bombieriScaledCanonicalTentRealization` | [source](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean#L93) blob `cc9ed5b34159242ac69eb569f80e1ea7b420fa53`; 4a9285c99de5b08772e974cda933d350b52332dd | `direct-hypothesis-encoding` + `source-proof-candidate`; literal nonzero square tents have positive ordinary moment; full W unproved; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT at this pin** |
| B2 | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction.twoTentMomentDeterminant_pos`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction.no_nondegenerateTwoTentMomentCorrectedPair` | [source](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean#L328) blob `e522772381075f125453ef2ba6b30e63d2873910`; 86c291a2c3c3bffb35380bd9c0998d51fc197897 | `source-proof-candidate` / finite obstruction: D=A₁B₀−A₀B₁>0 from real support separation at endpoint 9; no nonzero two-tent kernel; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT at this pin** |
| B3 | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection.correctedThreeTent_zeroMoments`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection.exists_nonzero_threeTent_zeroMoments` | [source](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean#L147) blob `644be0606ac195f35c8409f8877a707edb2aa457`; introduced 7c1dfad87b9f4ea3ee4fd8502b48391c485224ad; repaired e5de97a20b9c7d40c215fd72240aa3289629f76a | `source-proof-candidate`; actual three-tent cofactor cancellation, third coefficient D≠0, witness at x=20; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT at this pin** |
| B4 | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram.correctedSourceDiagonal_eq_weighted_sum`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram.correctedSourceDiagonal_nonnegative`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram.correctedTailBudget_vanishes` | [source](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean#L100) blob `4ce2dc2dc3bcf1c651d88a315a3b0cbb9d589`; introduced bb384f85ee1b5fcf7dc39adc8c67f93ea67d14ce; repaired e5de97a20b9c7d40c215fd72240aa3289629f76a | `source-proof-candidate`; corrected positive ARITHMETIC Gram and fixed-vector finite tail, NOT classical Weil; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT at this pin** |
| B5 | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine.actualThreeTentFunction_ordinaryMoment_eq`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine.actualThreeTentFunction_reciprocalMoment_eq`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine.physicalTwoMoments_iff_cofactor_line` | [source](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean#L176) blob `a534923a97e826d487b0fae02398556733c45b81`; introduced 8dc0f86dbabf3a9598925306b3bf1f736db28a2d; integral-linearity proof repair c70c70da17f1aca19da26947d34c3d3da3cc4263 | `source-proof-candidate`; two actual integral equations characterize a ONE-complex-dimensional kernel in Fin 3→ℂ; 10 source headers textually unchanged, not elaborated; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT at this pin** |
| B6 | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.bombieriMomentProfile_not_injective`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.no_classicalDiagonalFactorization_of_exactTransport` | [source](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean#L70) blob `9a2435d9c74b89ce1434c45bade1aa9beaa6cead`; introduced 12d66674a317f5503bce3a424a0246c880b7671c | `source-proof-candidate` + `conditional-interface`; classical conclusion ASSUMES exact all-pairs transport and 0<correctedSourceDiagonal, neither proved by the moment collision; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT at this pin** |
| B7 | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge.bombieriFactorsThrough_iff_generic`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge.bombieri_not_factorsThrough_generic` | [source](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentInformationLossBridge.lean#L34) blob `6872d5305e9ce50387434fde6a92784866896783`; source-inspected on this exact math snapshot | `source-proof-candidate`; a separating readout is a visible hypothesis, not a classical Weil observation; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT at this pin** |
| B8 | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss.augmentedThreeMomentProfile_injective`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss.any_source_readout_factorsThrough_augmentedThreeMoments` | [source](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean#L88) blob `ebfa664d3b8fb4ecd3f70c3ee6a989c3d14e485f`; initial 93468e369390b8ec75e7fd6a031ada2ae92223b0; source extension 37781e9ee1872edf41d275c9a67f82118a194313 | `source-proof-candidate`; both moments + the actual stage-four coefficient recover ONLY Fin 3→ℂ by a classical, not effective/continuous, decoder; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT at this pin** |
| B9 | `GRWTSK.RiemannHypothesis.WeilPositivityImpliesRH`; `GRWTSK.RiemannHypothesis.WeilPositivityIffRH`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.ExactSourceBoundTransport` | [source](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean#L107) blob `29d8c4f1c741ab25f6abd136a3c3c2eb900da69a`; [transport](https://github.com/grwtsk/math/blob/2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean#L100) blob `2c25cac04fe5575ac0242349a2dcc5592d19f0bb`; source-inspected 033be4864f9363b391a0991eae3aa3e71e6dfa69a; unchanged here | `conditional-interface` / `unresolved`: records demand correctly normalized classical test form and positive-scale ALL-PAIRS comparison; no source criterion proof field inhabited; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT at this pin** |
| B10 | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.stageFour_ordinary_zero`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.stageFour_reciprocal_zero`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.stageFive_ordinary_zero`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.stageFive_reciprocal_zero`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.fourTentKernelWitnesses_independent`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.scaled_decomposition_of_zero_rows`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.twoMomentRows_zero_iff_two_cofactors`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.actualFourTent_ordinaryMoment_eq`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.actualFourTent_reciprocalMoment_eq`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane.physicalTwoMoments_iff_two_cofactors` | [new isolated source](https://github.com/grwtsk/math/blob/96bcaa9ccfa806c0b1a39eb38b0d4e02cc6f271e/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean#L79), introduction `96bcaa9ccfa806c0b1a39eb38b0d4e02cc6f271e`, tree `10f776b2582a4a91f1d90e5b851c37a2ad08a342`, blob `1f8eb172b1b5315cdc4d4eca44aafaf408a80bcc`; four true normalized stages, `Combination 3=Fin 4→ℂ`, Mathlib/Lean pins unchanged | `direct-hypothesis-encoding` for Bombieri's two displayed moments + `source-proof-candidate` for two independent scaled cofactors and both actual integrals + `finite-certificate` for independent Sympy/75-digit fixture; no full W/classical signed form/density/RH; **NOT_RUN / NOT_KERNEL_AUDITED / NO_RECEIPT**, root does not import this leaf |

**Imported mathematics separated from formal bridges.** Mathlib provides algebra, integral/measure lemmas, function extensionality and `ArithmeticFunction.vonMangoldt` used by the local source arithmetic; these are `imported-foundations` and must be checked as transitive dependencies, NOT a `direct-import` of a paper theorem. The generic source-only supplier `GRWTSK.Logic.InformationLoss.factorsThrough_iff_fiberConstant_of_nonempty_source` is in `GRWTSK/Logic/InformationLoss/FactorizationFiberCompleteness.lean`, blob `13e934c9c8b477474bda909a5e689710795154bd`. Its classical decoder is set-theoretic, not constructive or a bounded analytic inverse. No paper-exact `local-proved-bridge` is identified in this Bombieri chain.

**Mathematical advance while kernel checking remains pending — finite evidence, not new Lean source.** Let `t_j` be the actual normalized stage-`(2+j)` tent for j=0,1,2,3, with `A_j=∫t_j(x)dx`, `B_j=∫t_j(x)dx/x` and source determinant `D=A₁B₀−A₀B₁>0`. The three-tent kernel is only a **one-dimensional** complex coefficient line. In the **four-tent** span (stages 2–5), for each j=2,3 define `vʲ_j=1`, the other extra coordinate 0, and `vʲ₀=(A_j B₁−A₁B_j)/D`, `vʲ₁=(A₀B_j−A_jB₀)/D`. Both source moment rows vanish for each `vʲ`, and the two extra coordinates form an identity matrix; hence these vectors are **independent**, and the moment-map kernel has complex dimension **two**. Their actual physical tent combinations are distinct: stage 4 is `8/9` at x=20 (all other stages zero there), and stage 5 is `10/11` at x=30 (all other stages zero). This algebraic construction uses the source pivot and actual integration identities, not a zeta-zero hypothesis. It **does not construct a dense classical Weil test family** or a strict classical Hermitian inequality.

Independent off-kernel replay actually executed in the authoring environment:
`python3 /tmp/grwtsk_four_tent_moment_preflight_20261023.py`, **exit 0**, SHA-256 `6c68d1e7504bdaf70318a7c58af734cec52d4dac8c62f1ae396aa9353b0ba226`. SymPy checked **both moment cancellations for each of two vectors**, the full 4×4 augmented matrix determinant `−D`, and both matrix inverse products. Exact rational x=20/30 evaluations passed; 70-digit independent quadrature matched analytic ordinary/reciprocal moments for eight integrals; `D≈0.672032302701581828703256895490815061`. This is `finite-certificate` from the original finite-only preflight. **Subsequently**, the four-tent source draft B10 was authored at `96bcaa9ccfa806c0b1a39eb38b0d4e02cc6f271e` as a standalone, uncompiled Lean leaf; no explicit analytic classical decoder or source test-space density has been constructed. Operational script and any future receipts must remain **outside** the math repository.

**B10 bounded formal source advance and precise unchanged obligations.** The [FourTentMomentKernelPlane.lean](https://github.com/grwtsk/math/blob/96bcaa9ccfa806c0b1a39eb38b0d4e02cc6f271e/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean) file was added to existing `grwtsk/math` main at commit `96bcaa9ccfa806c0b1a39eb38b0d4e02cc6f271e`, blob `1f8eb172b1b5315cdc4d4eca44aafaf408a80bcc`, **303 physical source lines**. It imports the historical repaired three-tent kernel (blob `a534923a97e826d487b0fae02398556733c45b81`). Source declarations B10 propose exact null-moment rows for cofactor vectors with source determinant `cofactorTwo≠0`, scalar-combination independence, coefficient-plane characterization, actual four-stage ordinary/reciprocal integral equalities, and the physically integrated moment criterion. None is proven to elaborate until the pinned Lean toolchain accepts it. No `GRWTSK.lean` import, completed Lean build, kernel certificate, transitive axiom receipt or analytic Weil comparison was added. The prior four-tent preflight record is retained separately.

**Independent new-source preflight:** `python /tmp/four_tent_bombieri_preflight.py`, SHA-256 `1a12d7b273781fa103b1af23969f954864a05a47a1746a2fd0d80012d90cf2af`, exit **0**: exact symbolic cancellation of both moment rows for each witness; determinant `−D`; both coefficient elimination identities; eight actual positive-half-line ordinary/reciprocal integrals cross-checked by 75-digit quadrature against closed expressions; stage 4/5 source tent evaluations at x=20 and x=30 exactly `8/9`, `10/11`. This is **OFF-KERNEL FINITE EVIDENCE** and cannot be relabeled as a `local-proved-bridge`. The executing script/output and future immutable operational receipts remain outside canonical math custody.

**B10 requested isolated checking (NOT_RUN):** `lake build --wfail GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane`; `lake env leanchecker --fresh -v GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane`; fresh trust-zero `#print axioms` for the named B10 lemmas and complete generated/private/native/unsafe/transitive dependency audit at the exact new commit; additionally build transitive source parents. Root-only compilation is insufficient. Any proposed remote replay remains passive until separately authorized. The full classical Bombieri/Weil test class, signed form, all-pairs normalized transport, dense source family and RH criterion are **UNRESOLVED PREMISES**.

**Actual verification evidence and required commands.** At this source pin, `lean --version`, `lake --version`, `elan --version`, `leanchecker --version` each returned **127** (not installed); GitHub DNS query exit **2**, local Git remote exit **128**. Exact pinned Git source/blobs and selected theorem texts were inspected. GitHub reported **zero commit-status contexts** for this pin and the recent three-tent kernel repair; no matching fresh build/kernel/transitive axiom receipt was found. Thus **all B1–B9 source leaves are SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED at the audited pin**, and the public root's import of a few ancestors does not check its unimported leaf dependents. The qualified *older* math commit at [issue #100](https://github.com/grwtsk/math/issues/100) cannot qualify the later repaired source blobs.

Commands **specified for a separately authorized exact checkout, NOT EXECUTED**: `lake build --wfail GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge`; `lake env leanchecker --fresh -v GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine` and the same fresh checker for the third-coordinate leaf; `lake env lean --trust=0 --wfail /EXTERNAL/EXACT/PIN/axiom-audit.lean`. An acceptable receipt additionally requires **all transitive dependencies**, exact elaborated type comparison, full `#print axioms` census (not just spot probes) including generated/private/native/opaque/unsafe declarations, real command exit/stdout/stderr and hostile controls. Existing [Noeaaeue fixed kernel repair request](https://github.com/grwtsk/noeaaeue/blob/938f478a8c724f3e23e2b0226856624af245fb68/verification/math/20261023-main-ad6f63cf-3moment-kernel-proof-replay-delta.json) pins `ad6f63cf4c018b0eb6f2a517c6ce2cfdb487dfa5` and remains **REQUESTED_NOT_RUN**; the [third-coordinate comparison request](https://github.com/grwtsk/noeaaeue/blob/bb251e9d32a08c0d4c3c46fb64d584ebc5110a02/verification/math/20261023-main-46f71635-bombieri-reconstruction-delta.json) similarly remains pending. Do not claim either queued request is an executed receipt; do not transfer either to a later tree without fresh checkout/actual results.

**Precisely unresolved mathematical premises and stop/merge controls.** (1) Prove full `W`-class piecewise-regularity/endpoint-average and decay for every corrected physical test, not just two moments. (2) Build the source-exact multiplicative correlation and complete signed zeta explicit formula (poles, archimedean, primes, all zero multiplicities, symmetric truncation). (3) Derive ALL polarized classical cross terms and a correct sign/positive-scale comparison with the **recomputed** arithmetic Gram, not merely a diagonal or an arbitrary positivity record. (4) Establish an admissible **dense** family, continuity and uniform control of omitted zero tails; four independent finite coefficients do not imply density. (5) Inhabit the exact criterion direction on the same source test space before any RH conclusion. Preserve all existing **no-merge, no-root-promotion, stopping and previous remote-authorization constraints**; no Railway, no force push or dispatch of new remote execution without explicit authorization. The math tree stores source and static specifications only; operational execution and immutable receipts belong to `grwtsk/noeaaeue`.

**Relationship ledger:** `imported-foundations` = Mathlib dependencies (not a cited criterion theorem); `local-proved-bridge` = **NONE established for Bombieri's actual classical test/form**; `source-proof-candidate` = present in the nine records; `conditional-interface` = exact Weil-form and strict arithmetic premise; `finite-certificate` = independent four-tent arithmetic checks only; `methodological-analogy` = signed/Hodge/spectral motifs with no identified transfer; `unresolved` = full Weil analytic map, density/tails and RH. A thematic match is not evidence of historical influence.


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
source to R.A. Jacob Martone, with OpenAI formalization assistance. **This is
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
constructions under the source-credited mathematical direction of R.A. Jacob
Martone, with OpenAI formalization assistance. They are not imports of an
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
lake env lean --trust=0 -t 0 /Users/think/Documents/ChatGPT/math-branch-integration-20261022/farey-all-audit.lean
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
`/Users/think/Documents/ChatGPT/math-branch-integration-20261022/`, files
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
the visible anchor-3 cell at every large scale,” copyright R.A. Jacob Martone,
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
`/Users/think/Desktop/noeaaeue/.codex-runtime/math-riesz-primitive-full-frame/`.
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

Subsequent scoped verification: see **FAREY-REMAINING-VALIDATION-20261023**
below for the actual checked source blobs and commands. Historical NOT_RUN
observations in this section are superseded only for its explicitly listed
eight targets; paper analogies and other modules retain their original status.

**Bibliography and attribution.** These are **2026 repository-derived
constructions**, credited in the source to mathematical direction by
**R.A. Jacob Martone** with formalization assistance from **OpenAI**.
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

Subsequent scoped verification: see **FAREY-REMAINING-VALIDATION-20261023**
below for the actual checked source blobs and commands. Historical NOT_RUN
observations in this section are superseded only for its explicitly listed
eight targets; paper analogies and other modules retain their original status.

**Bibliography/source type.** This is a **2026 repository-derived
finite graph and residue construction** credited in the source to
mathematical direction by **R.A. Jacob Martone** and formalization
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

## Case FAREY-RECENT-OBSTRUCTIONS-20261023 — exact suppliers versus solved/open-paper analogies

Subsequent scoped verification: see **FAREY-REMAINING-VALIDATION-20261023**
below for the actual checked source blobs and commands. Historical NOT_RUN
observations in this section are superseded only for its explicitly listed
eight targets; paper analogies and other modules retain their original status.

**Source/publication identities and classification.** The four new
modules below are **2026 repository-original local mathematics**, under
source-credited mathematical direction by R.A. Jacob Martone and
formalization assistance from OpenAI, NOT purported paper theorem
imports. The detailed [scope and bibliography note](../../../mathematics/NumberTheory/Farey/recent-obstructions-formalization-2026.md)
binds every comparison to the exact original model and preserves the
necessary hypotheses.

Four external papers/formalizations provide precisely scoped *comparisons*
(and one underlying potential-model normalization):
1. **Ram Band, Siegfried Beckus, Raphael Loewy**, *The Dry Ten Martini
   Problem for Sturmian Hamiltonians*, **2024**, arXiv
   [2402.16703](https://arxiv.org/abs/2402.16703),
   **equation (1.1)** (Sturmian rotation-coded Schrödinger potential)
   and **Theorem 1.1** (**irrational frequency** and **nonzero coupling**,
   all labelled spectral gaps open). The already-authored
   `GRWTSK.LinearAlgebra.Sturmian` source identifies equation (1.1)
   and implements a scalar recurrence/transfer formula. The new exact
   conjugacy instead takes **zero coupling**, outside Theorem 1.1's
   hypotheses. No Dry Ten Martini theorem is imported.
2. **OpenAI**, *Unitarizability implies amenability for discrete
   groups*, **2026**,
   [Lean scope `251`](https://github.com/openai/math/blob/main/lean/docs/251.md).
   Its discrete-group theorem quantifies over **uniformly bounded
   Hilbert-space representations** and a bounded invertible similarity.
   The repository's new gauge comparison assumes a separately supplied
   height with submultiplicativity and **both forward and inverse**
   uniform gauge bounds; it constructs no unitarizer or amenability
   statement. **`methodological-analogy`, not imported theorem.**
3. **W. T. Gowers, Ben Green, Freddie Manners, Terence Tao**,
   *On a conjecture of Marton*, **2025**, DOI
   [10.4007/annals.2025.201.2.5](https://doi.org/10.4007/annals.2025.201.2.5),
   and the external [teorth/pfr Lean code](https://github.com/teorth/pfr).
   The characteristic-two small-doubling/polynomial quantitative
   structural hypotheses are not supplied by the local exact
   observation-fiber collision. The paper theorem is
   **`methodological-analogy` only**, particularly on source-bound
   hypotheses and generated/transitive axiom checks; no PFR theorem
   is imported.
4. **Larry Guth, Hong Wang, Joshua Zahl**, *A streamlined proof of
   the Kakeya conjecture in R3*, **2026**, as represented by
   [project-numina/kakeya-3d](https://github.com/project-numina/kakeya-3d).
   The conditional `KakeyaDimensionThree` requires the
   dimension-three `StickyKakeya.StickyFrostmanHypothesis`;
   the external separate unconditional linking formalization proves
   that supplier from a separately formalized Wang–Zahl theorem.
   Our source does not construct a Kakeya set, a Frostman/tube estimate,
   or that linking theorem. This is a **proof-dependency design
   analogy** and remains unrelated to the local numeric content.

Further comparisons only: **Peter Sarnak**, *Three Lectures on the
Mobius Function: Randomness and Dynamics* (**2011** IAS lectures),
[stable IAS record](https://publications.ias.edu/sarnak/paper/506),
**Definition 3 and Conjecture 4** (zero entropy/compact metric
flow, continuous observable, actual Möbius weight and ordinary-average
cancellation; **not** instantiated); **OpenAI**,
*Uniform exclusion of Landau–Siegel zeros* (**2026**),
[formalization scope](https://github.com/openai/math/blob/main/lean/docs/003.md)
(primitive nonprincipal real Dirichlet characters and a uniform
logarithmic real-zero gap, **not** a conclusion of finite nonunit-residue
algebra). All are **`methodological-analogy` or
`unresolved`**, never `direct-import` or
`local-proved-bridge` from these new source files. The
full algebraic Hodge conjecture and residual finiteness of
hyperbolic groups are also **not** formalized by these cases.

**Source-specific declarations, exact hypotheses, integration
commits and Git blobs.**

- **Fixed Farey–free Schrödinger intertwiner**:
  `GRWTSK.Spectral.FareySturmianFreeConjugacy` declarations
  `frameChange_mul_inverse`, `frameChange_inverse_mul`,
  `freeTransfer_ne_returnMatrix`, `farey_free_intertwines`,
  `farey_free_conjugate`, `farey_free_power_intertwines`,
  `sturmian_free_intertwines`,
  `sturmian_free_power_intertwines`,
  `free_energy_three_not_elliptic`.
  Source introduced on main at **`f7d8dd922f763c786b61d436f16dba5bf955865f`**,
  blob **`f854110d2c099b97094505063eee3e8399f35e2f`**,
  file `GRWTSK/Spectral/FareySturmianFreeConjugacy.lean`.
  Exact restriction: `H=LR=[[1,1],[1,2]]`,
  `T_0(3)=[[3,-1],[1,0]]`,
  `C=[[1,-2],[0,1]]`, `H*C=C*T_0(3)`,
  and all finite powers. Every `alpha,xi` and site parameter
  is permitted only because **coupling=0**.
  The source `Sturmian.zero_coupling_trace_iff` rejects
  the free elliptic trace bound at `E=3`.
  Classification: `source-proof-candidate` for a genuine
  finite-dimensional conjugacy, **not** Theorem 1.1 or an
  infinite-volume spectral bridge.

- **Projective Koopman obstruction and repair**:
  `GRWTSK.NumberTheory.Farey.ProjectiveKoopmanEigenvalue`
  declarations
  `eigenvalue_sq_one_of_gauge_two_step`,
  `selected_return_two_step_antipodal`,
  `farey_projective_eigenvalue_sq_one`,
  `no_projective_quarter_turn_eigenfunction`,
  `projectiveParityReadout`,
  `projectiveParityReadout_sign_invariant`,
  `projectiveParityReadout_on_orbit`,
  `projectiveParityReadout_selected_eigen`,
  `parityProfile`, `orbitPhase_not_factorsThrough_parity`,
  `squared_orbitPhase_factorsThrough_parity`.
  Introduction **`9872d0c70b2c16c4efefaa57060fd53875239606`**,
  blob **`f82dfdb4aa2cded519e6d06abefe25405144c030`**,
  file `GRWTSK/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean`.
  Explicit premises: a source two-step return equals an
  involutive gauge **at a chosen point**; sign-invariant observation;
  two-step eigen-relations; **nonzero** measured value. Then
  `omega²=1`. For the actual mod-three Farey matrix
  `H²=-I`, a global sign-invariant eigenfunction nonzero
  at the chosen vector cannot have eigenvalue `i`.
  A separate sign-invariant squared-phase readout has
  eigenvalue `-1` **only on the selected four-state orbit**.
  The original `i`-phase cannot be decoded from the parity
  quotient, whereas its square can, using the exact existing
  `FactorizationFiber` interface. Neither statement asserts a
  global projective Koopman eigenfunction on all vectors or a PFR
  quantitative reconstruction.

- **Bi-bounded cocycle height**:
  `GRWTSK.LinearAlgebra.BoundedGaugeHeight.height_triple_le`,
  `height_triple_of_bounded_ends`,
  `cocycle_gauge_height_sandwich`, source file
  `GRWTSK/LinearAlgebra/BoundedGaugeHeight.lean`,
  integration **`41a63bc678e1a1ede0915bfd03619a85385c9e26`**,
  blob **`26e1067482cfe6d6af732c7336b73f256e75e150`**.
  Hypotheses are `[Group G]`, source base dynamics `T`,
  `height:G→ℝ` **nonnegative and submultiplicative**,
  `0≤C`, and `height(B y)≤C`,
  `height((B y)⁻¹)≤C` **for every y**.
  The exact imported
  `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_gauge`
  supplies the endpoint identity. The conclusion compares
  both finite cocycle heights by `C²` for every natural n.
  Operator-norm instantiation and asymptotic exponent limits
  remain missing, so this is not Dixmier's theorem.

- **Heisenberg abelianization loses the central query**:
  `GRWTSK.GroupTheory.Words.HeisenbergObservationLoss.abelianized`,
  `abelianized_commutator_eq_identity`,
  `isIdentityFlag`, `central_flag_differs`,
  `identity_flag_not_factorsThrough_abelianization`,
  `commutative_character_kills_central_memory`,
  `commutative_character_cannot_separate`.
  File `GRWTSK/GroupTheory/Words/HeisenbergObservationLoss.lean`,
  integration **`d9b5736a739e00e7739c5c04fbf0d3055ce70924`**,
  blob **`1082ac7d954d2fcb1ba7fddd1a21343f0ee5d436`**.
  Explicit source group is the genuine integer
  Heisenberg group; `Z=[X,Y]≠1`, but the
  **Mathlib abelianization** sends `Z` to `1`.
  Therefore the identity query does not factor through
  abelianization, and every homomorphism to a
  **commutative** group kills `Z`. It does **not**
  say that every finite quotient kills `Z`; this
  is **not non-residual finiteness** and not a
  Heisenberg nilflow or Sarnak theorem.

**Verification, trust and unresolved bridges.** At this writing,
all four **new** modules are `SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED`, no fresh verified leaf compilation or
transitive axiom result is available. Independent SymPy symbolic
checks confirmed the matrix similarity, all powers `0..99`,
and the selected mod-three phase/antipodal fixtures; these are
**finite-certificate**, not Lean proof evidence. The earlier eight
Farey modules were locally kernel/audit-verified on their
**own immutable source blobs** at
`55fe9dbc34a784cb15782c9dfb0d371a55c6f988`,
as documented in FAREY-VALIDATION-20261023; do not silently
transfer this status to new leaf modules or an altered dependency
closure. Pinned Lean is `v4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`;
all new leaf builds, fresh native kernel replay and
complete generated/transitive axiom review are **pending**.
The two **queued** exact-source validation requests are
[Sturmian/projective #1107](https://github.com/grwtsk/math/issues/1107)
and [gauge/Heisenberg #1108](https://github.com/grwtsk/math/issues/1108),
both pinned to the integrated main snapshot
`8c83118c3441252c3d82c9a4a201356b6256a87b`
(tree `959d4d7db904d95cd1bc14c79393cfeaf33af321`).
They specify all named leaf/dependency modules and blobs,
actual proposed build/direct elaboration/fresh kernel
commands, generated/transitive axiom audit and hostile controls.
They are **NOT** executed Lean/kernel receipts.

There is **no proved paper-to-Farey spectral-tree
identification**, no nonzero-coupling spectral gap
theorem, no constructive Hilbert-space unitarizer,
no characteristic-two PFR quantitative theorem,
no Kakeya sticky estimate or dimension theorem,
no nonperiodic zero-entropy dynamical system with
Möbius cancellation, no Landau–Siegel zero estimate,
no analytic Hodge conjecture, no hyperbolic
non-residual finiteness theorem and no RH deduction.

## Native replay repair: finite zeta enclosures and contraction (2026-10-23)

**Source identity and classification.** The imported mathematical source is the Mathlib community's Lean source snapshot `db584cd6d46c92f209a44c0f1c829460d327499d` (2026 verification snapshot), [mathlib4](https://github.com/leanprover-community/mathlib4/tree/db584cd6d46c92f209a44c0f1c829460d327499d). This is a source-code snapshot, not a newly attributed paper. Local bylines remain R.A. Jacob Martone (research direction) and OpenAI/ChatGPT (formalization assistance), exactly as the files state. The present repair supplies no evidence identifying an additional paper or historical influence. Relationship: **direct-import** of Mathlib analytic facts and **local-proved-bridge** only to the extent of the exact native checks recorded below; source acceptance of the concrete zero packet remains a **conditional-interface / unresolved premise**. No finite numerical evidence is promoted to an analytic theorem.

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


## Case FAREY-WEIGHTED-CLOCK-20261023 — balanced source clock and limit-positivity gate

**Source identity (not an imported publication).** This bounded formalization is
a **repository-derived 2026 algebraic and conditional real-limit construction**,
credited in its source to mathematical direction by R.A. Jacob Martone and
formalization assistance by OpenAI. No distinct peer-reviewed paper or
preprint proves these exact Farey-specific constructions; therefore
an external paper **title, printed authors, year, DOI/arXiv or theorem
number are not established** and no historical influence is claimed.
The stable source reference is
[`grwtsk/math` commit `c50155b484dc5167ec8f67002a463cdc9ef4f8f4 (source introduction; compensation-proof revision `9851f75531b628e574a59703a172a37c88fd68e4`) (source introduction; compensation-proof revision `9851f75531b628e574a59703a172a37c88fd68e4`)`](https://github.com/grwtsk/math/commit/c50155b484dc5167ec8f67002a463cdc9ef4f8f4),
Git blob `6fb6857656d34b7b2e22e8ef3229be339cb526fc`.
The detailed [mathematical source note](../../../mathematics/NumberTheory/Farey/weighted-return-balance.md)
was introduced at `d3339cb4d298b6b73d12928671fafca63f4d5d0d`,
blob `9e75642cc3594c628fee3fc96516026ef7c78d2a`.

**Exact theorem/method and hypotheses.** The imported **repository** supplier
is the actual positive chronological Farey return `LR`, with real expanding
eigenvalue `λ=(3+√5)/2>1` and the same mod-three four-state
angular orbit `1,i,-1,-i`. The *definition* of the selected scalar
source observation is `discreteSpiral n=(λ i)^n`.
The raw four-term block is `1+λ i-λ²-λ³ i` and has real part
`1-λ²<0`, so alternating sign/phase does **not** cancel the
unequal expanding weights. The formal source's
`weightedFourPhase_eq_pair_defects` identifies the exact
two mismatches `w0-w2`, `w1-w3`; the norm is bounded by their
absolute-value sum. Equal antipodal weights are a **sufficient stated
premise**, not a consequence of fourfold phase.

A chosen, explicit inverse-eigenvalue compensator
`λ^{-n} discreteSpiral n` equals `i^n`, so its four
**consecutive compensated terms** cancel at each integer stage.
That is a theorem candidate only about this **selected** observation;
no arbitrary gauge/scale choice is being justified. A finite paired
signed sum also cancels term by term when the same weight and opposite
errors are actually supplied at each cell.

The **conditional limit-positivity theorem** requires all four suppliers:
(1) stage-uniform `margin ≤ energy n`; (2) exact
`cancel n=0` at every stage; (3) `residual → 0`
in `ℝ` as `n→∞`; (4) an actual limit of
`energy n + cancel n + residual n` to `limit`.
Its conclusion is only `margin ≤ limit`.
No source-specific arithmetic form, refining-partition construction,
tail estimate, limiting Weil-space identification or strict spectral
margin is synthesized by the conditional interface.

**Exact corresponding Lean declarations and source identity.**
Module `GRWTSK.NumberTheory.Farey.WeightedReturnBalance`
in [`WeightedReturnBalance.lean`](../../../../GRWTSK/NumberTheory/Farey/WeightedReturnBalance.lean),
introduced on existing `main` in
`c50155b484dc5167ec8f67002a463cdc9ef4f8f4`,
Git blob `6fb6857656d34b7b2e22e8ef3229be339cb526fc`.
Fully qualified declaration suffixes:
`weightedFourPhase`,
`weightedFourPhase_eq_pair_defects`,
`weightedFourPhase_zero_of_pair_balance`,
`weightedFourPhase_norm_le`,
`radialFourBlock`, `radialFourBlock_re`,
`radialFourBlock_ne_zero_of_one_lt`,
`discreteSpiral_first_four_eq_radialBlock`,
`discreteSpiral_first_four_ne_zero`,
`compensatedSample`, `compensatedSample_eq_phase`,
`four_unit_phases_cancel`, `compensated_four_consecutive_zero`,
`finite_paired_signed_sum_zero`,
`finiteSquareEnergy`, `finiteSquareEnergy_nonneg`,
`finite_balanced_energy_nonneg`,
`limit_lower_bound_of_balanced_partitions`,
`limit_nonneg_of_balanced_partitions`.
Imported exact repository source:
`GRWTSK.NumberTheory.Farey.ReturnAngularChannel`,
Git blob `df4c90661a7f0a6897d274604de22850b703d38b`,
itself depending on the Farey return and the real projector.
Pinned toolchain is Lean `4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**Relationship/status:** `source-proof-candidate` for the local
matrix-clock/weighted phase identities; `conditional-interface`
for the limit/positivity theorem; `finite-certificate` for independent
exact arithmetic fixtures; `unresolved` for identifying the chosen
compensator with a source-preserving admissible gauge and for an
arithmetic-to-Weil/Hodge/NS bridge. Not `direct-import` of an outside
paper or `local-proved-bridge` without a fresh kernel receipt.

**Actual verification:** `SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED`. In the available runtime `lean`, `lake` and
`leanchecker` are absent. The independent exact SymPy computation
passed 625 small integer-weight defects, exact
`1+λ i-λ²-λ³ i≠0`, the first eight compensated samples,
and 299 finite rational examples of the uniform-margin accounting
identity. The first floating-point trial triggered a strict-comparison
roundoff failure and was replaced by exact rational arithmetic; neither
test is Lean proof evidence. See the separately pinned
verification issue for exact main commit, module/Mathlib closure,
commands, exit statuses (presently unavailable), fresh kernel
replay and transitive axiom audit. Do not transfer a previous eight-Farey-
module receipt to this newly added leaf.

**Method comparisons and nonclaims.** The [Sarnak 2011 lectures](https://publications.ias.edu/sarnak/paper/506)
(printed p. 4, Definition 3 and Conjecture 4) are a previously
identified `methodological-analogy` **only**: the local arithmetic
clock proves neither an all-zero-entropy-flow Möbius theorem nor
cancellation with actual Möbius weights. Navier–Stokes forcing/balance,
finite Hodge centers, Schrödinger/Sturmian spectral limits,
Ramanujan character reconstruction, and Weil/Riemann positivity
require distinct **unresolved** source-preserving suppliers.
Irrationality of zeros and alternating signs are not substitutes
for those positive-operator and uniform-error premises.


## Case FAREY-PROJECTIVE-QUADRATIC-20261023 — actual quotient Koopman eigenfunction

**Source identity, authorship and exact bibliography.**
This is a **2026 repository-original finite-algebra construction**,
source-credited to mathematical direction by **R.A. Jacob Martone**
and formalization assistance from **OpenAI**. No separately
established paper theorem with an exact title, authors, publication
date and theorem locator constructs this `F₃²` quadratic
eigenreadout, so no such attribution is invented.
The actual stable primary source is
[`grwtsk/math@0783908183b27551088174e28703b9116bf2ada7`](https://github.com/grwtsk/math/commit/0783908183b27551088174e28703b9116bf2ada7),
file `GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean`,
Git blob **`b07cb18412f3e64f42d2916fea91b1e59b2228c2`**.
Its [scope note](../../../mathematics/NumberTheory/Farey/projective-quadratic-channel.md)
records the explicit quotient, identities, hypotheses, and hostile fixtures.

**Method and exact mathematical hypotheses.** The existing
`ReturnAngularChannel.modThreeReturn` is the *actual*
chronological Farey shears `H=LR=[[1,1],[1,2]]` over
`ZMod 3`; no moving-base frequency or abstractly assigned
cyclic action is substituted. For
`v=(x,y): Fin 2 → ZMod 3`, define
`Q(v)=x(x+y)`. The source identities use only
characteristic three and the explicit return coordinates:

- `Q(-v)=Q(v)`, `Q(Hv)=-Q(v)` for **every** one of
  the nine finite vectors, not only the previously fixed orbit.
- The explicitly defined `χ:ZMod 3→ℂ` sends `0↦0`,
  `1↦1`, `2↦-1`, with `χ(-u)=-χ(u)`. It is
  **not a ring homomorphism** between characteristics.
  `f(v)=χ(Q(v))` is nonzero at the source
  vector `(1,0)`, sign-invariant `f(-v)=f(v)`,
  and a **global full-vector** Koopman eigenreadout
  `f(Hv)=-f(v)`.
- The source explicitly defines `v∼w` iff
  `w=v` or `w=-v`. This is an equivalence relation
  whose quotient has five classes: a distinguished zero
  class and the four nonzero projective lines.
  The actual return descends by `Quotient.map`, and
  `f` descends by `Quotient.lift`.
  The descended function is a nonzero **`-1`**
  eigenfunction at every quotient class.
- On the existing source-selected four-state orbit,
  `f` equals the **square** of the original oriented
  `1,i,-1,-i` phase. The earlier `i` no-go
  (nonzero sign-invariant eigenfunction ⇒ `ω²=1`)
  is therefore **not contradicted**.
  The readout vanishes on the second projective
  two-cycle and on the zero class: no nowhere-zero
  eigenfunction is claimed.

**Formal destination and precise declaration names.**
Every following declaration is prefixed by
`GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel.`:
`Vec3`, `quadraticSignal`, `quadraticSignal_neg`,
`modThreeReturn_mulVec_zero`,
`modThreeReturn_mulVec_one`, `quadraticSignal_return`,
`ternaryComplexSign`, `ternaryComplexSign_neg`,
`projectiveQuadraticReadout`,
`projectiveQuadraticReadout_sign_invariant`,
`projectiveQuadraticReadout_return`,
`projectiveQuadraticReadout_nonzero`,
`projectiveQuadraticReadout_on_orbit`,
`signOrbitSetoid`, `SignOrbitQuotient`,
`signOrbitClass`, `modThreeReturn_mulVec_neg`,
`returnOnSignQuotient`, `descendedQuadraticReadout`,
`descendedQuadraticReadout_eigen`,
`descendedQuadraticReadout_nonzero`.

**Dependencies and source preservation.** Direct import:
`GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction`
blob `08c7754c5116d7885613caf56e6b2005ab9a7167`
plus `Mathlib.Tactic`; that leaf imports
`ReturnAngularChannel` blob
`df4c90661a7f0a6897d274604de22850b703d38b`,
and transitively the previously recorded Farey
group/return spectral construction. Source hypotheses,
group-word order, field characteristic, zero class and
original angular observation are preserved exactly.
The corresponding older issues [#1100](https://github.com/grwtsk/math/issues/1100)
and [#1102](https://github.com/grwtsk/math/issues/1102)
remain independent verification gates.

**External papers and their EXACT nonimported scope.**
**Ram Band, Siegfried Beckus and Raphael Loewy**,
*The Dry Ten Martini Problem for Sturmian Hamiltonians*
(**2024** preprint, [arXiv:2402.16703](https://arxiv.org/abs/2402.16703)),
**equation (1.1) / Theorem 1.1**, concern rotation-coded
Schrödinger operators, with **irrational frequency
and nonzero coupling** for the dry spectral-gap
theorem. Neither the operator nor these analytic
hypotheses is supplied by the finite sign quotient.
**Peter Sarnak**, *Three Lectures on the Mobius
Function: Randomness and Dynamics* (**2011** lecture
notes, [IAS record](https://publications.ias.edu/sarnak/paper/506)),
**Definition 3 and Conjecture 4** require actual
compact zero-entropy flow data, continuous samples,
a Möbius weight and asymptotic cancellation, none
of which occurs in the finite quotient.
Both connections are **`methodological-analogy` only**;
no paper theorem is being re-proved or imported.

**Actual verification classification.**
`source-proof-candidate` for all new Lean declarations;
`finite-certificate` for the independent complete
enumeration of the nine `F₃²` vectors and five
sign-orbit classes. **`NOT_RUN / NOT_KERNEL_AUDITED`**
for this new leaf: no demonstrated pinned-toolchain
elaboration, warning-clean module compilation,
fresh kernel replay, or transitive axiom/unsafe audit
has arrived. The earlier locally verified eight-module
Farey parent proof scope (referenced above at exact
commit `55fe9dbc34a784cb15782c9dfb0d371a55c6f988`)
cannot be transferred to this new leaf or its previously
unverified angular/projective dependency. Pinned Lean
`v4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The new exact-commit validation request is
[math #1111](https://github.com/grwtsk/math/issues/1111),
pinned to integrated main commit
`69bed07912614d448ecb013f2247a07c79d14f2a`
(tree `fc2f081be2d023e50e9d23828fe6b53778b1ebb2`),
source blob `b07cb18412f3e64f42d2916fea91b1e59b2228c2`.
Its module/dependency build commands, exact declarations,
hostile controls, fresh checker plan and transitive axiom
request are a **passive queue, not a verification receipt**.
Real exit statuses, outputs and accepted trust results
are required before any status upgrade.

**Missing bridges and nonclaims.** This is one finite
projective-sign-quotient eigenchannel, **not** a global
`SL₂(ℤ)` character, nonperiodic Farey/continued-fraction
cocycle, spectrum of a Sturmian Hamiltonian, continuous
geometric winding theorem, signed/tempered gauge
invariance in a noncompact limit, zero-free
Dirichlet `L`-function claim, Möbius disjointness,
Hodge conjecture or Riemann Hypothesis result.


## October 23, 2026: finite heat recovery, Newman sign and selected Farey compensation

**Epistemic/verification status:** SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED;
no accepted external theorem port or RH claim. Detailed
source/hypothesis/obstruction note:
[finite-heat-recovery-newman-normalization.md](../../../mathematics/NumberTheory/Zeta/Riemann/finite-heat-recovery-newman-normalization.md).

### Rodgers--Tao source: finite coefficient method comparison only

- **Paper and source identity:** Brad Rodgers and Terence Tao,
  *The de Bruijn--Newman constant is non-negative*, **2018** initial
  arXiv posting (18 January 2018), stable
  [arXiv:1801.05914](https://arxiv.org/abs/1801.05914).
  The mathematical method located in the arXiv abstract is
  the entire-function family
  H_t(z) = integral_0^infinity exp(t*u^2)*Phi(u)*cos(z*u) du,
  for real t with the paper's super-exponentially decaying source
  kernel Phi. Its Newman-constant conclusion, zero-dynamics, dynamics
  estimates and Montgomery pair-correlation contradiction are NOT
  imported. Exact original PDF theorem/page for the canonical
  H_0(z)=xi(1/2+i*z/2)/8 normalization is **UNRESOLVED** here;
  that normalization is recorded in source-labelled
  grwtsk/math issue #193, not independently paper-verified.
- **Precisely extracted fragment/hypotheses:** For an *arbitrary finite*
  index carrier I, real frequencies u_i and REAL coefficients a_i,
  define exp(t*u_i^2)*a_i. A separately defined finite diagonal
  positive Hodge heat has eigenvalues lambda_i=u_i^2. With t=-s,
  this coefficient equals exp(-s*lambda_i)*a_i; at t=+s it equals
  the finite **inverse** coefficient multiplier. The heat time sign
  and squared-frequency normalization are required. The actual
  source Phi, cosine integral, analytic continuation, differentiation
  under the integral, zero multiplicity and growing-window errors
  are NOT instantiated by the local proof scripts.
- **Formal binding:** first integrated at
  [grwtsk/math@882947685b51abdd0469acdd1515096be604a91a](https://github.com/grwtsk/math/commit/882947685b51abdd0469acdd1515096be604a91a),
  source
  GRWTSK/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean,
  blob **bd6219af4e929ff6b54bb5aef00821ebeb484060**.
  Declarations (namespace
  GRWTSK.RiemannHypothesis.FiniteHeatNewmanNormalization):
  squareFrequencies, squareFrequencies_nonneg,
  newmanFiniteCoefficients, newman_negative_time_eq_forward_heat,
  newman_positive_time_eq_inverse_heat,
  newman_zero_time, recover_newman_negative_time,
  newman_negative_time_squareEnergy_le,
  zetaOrdinateOfNewman, newmanVariableOfZetaOrdinate,
  ordinate_of_newman_of_ordinate,
  newman_of_ordinate_of_newman,
  threeQuarter_height_newman_variable,
  newman_height_threeHalves_is_zeta_threeQuarters.
- **Relationship:** METHOD_COMPARISON to the Rodgers--Tao integral;
  LOCAL_IDENTITY_SOURCE_CANDIDATE for finite scalar coefficients
  and factor-two arithmetic. NO paper-to-Lean theorem-equivalence or
  genuine entire-function/zero transfer. In particular t>=0
  is the **inverse coefficient direction**, whereas negative Newman
  t=-s with s>=0 is dissipative; the zeta ordinate gamma=z/2
  makes |gamma|<=3/4 correspond to |z|<=3/2.

### Exact finite Hodge source and inverse-information obstruction

- **Repository-authored identity source:** integrated on main at
  [grwtsk/math@a4ba792528d23732d9b0c4e62176a19df7e7df57](https://github.com/grwtsk/math/commit/a4ba792528d23732d9b0c4e62176a19df7e7df57).
  File GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean, current
  blob **fdcb3b9584eea3579af88ea13c48beda509482de**.
  Mathematical assumptions: arbitrary real diagonal modes, finite
  real t, with nonnegative eigenvalues and t>=0 separately required
  for contraction; finite index Fintype for the square-energy sum.
  The genuinely Hodge-facing chart HodgeSpectralChart requires an
  actual finite incidence graph, a linear equivalence, nonnegative
  eigenvalues, **isometric square-norm compatibility**, and exact
  diagonal intertwining with the repository's finite graph Laplacian.
  No chart constructor or growing-tower theorem is supplied.
- **Declarations** under
  GRWTSK.Geometry.Hodge.FiniteHeatRecovery:
  diagonalHeat, inverseDiagonalHeat,
  inverse_after_heat, heat_after_inverse, diagonalHeat_injective,
  diagonalHeat_add_time, diagonalHeat_abs_le,
  diagonalHeat_squareEnergy_le, diagonalHeat_zero_mode,
  inverse_gain_readout, UniformInverseBound,
  uniformInverseBound_iff_gain, HodgeSpectralChart,
  HodgeSpectralChart.heat, HodgeSpectralChart.recover,
  HodgeSpectralChart.recover_heat,
  HodgeSpectralChart.heat_squareEnergy_le,
  discarded_coordinate_is_not_injective,
  implicitEulerEncode, implicitEulerRecover,
  implicitEuler_exact, implicitEuler_no_uniform_inverse_bound.
  The latter obstruction is specifically for the implicit-Euler
  scalar x/(n+1), not the exact exponential semigroup. It demonstrates
  that stagewise exact inversion need not give a uniformly Lipschitz
  inverse across increasing stages. The coordinate-drop obstruction
  distinguishes true full-signal injectivity from lossy observation.
- **Relationship:** LOCAL_IDENTITY_SOURCE_CANDIDATE and
  CONDITIONAL_REDUCTION (chart existence). No Huffman finite-bit
  encoder, lossless compression rate, zeta source identification,
  uniform Hodge gap or arithmetic 7/8->3/4 transition is proved.

### Exact Farey return compensated by a chosen heat clock

- **Existing source, not an outside paper:** the genuine Farey LR
  expanding eigenvalue lambda=(3+sqrt(5))/2>1 and mod-three
  four-phase discreteSpiral(n)=(lambda*i)^n reside in
  GRWTSK.NumberTheory.Farey.ReturnSpectralChannel,
  ReturnAngularChannel and WeightedReturnBalance. The latter's
  source blob at this integration is
  6fb6857656d34b7b2e22e8ef3229be339cb526fc.
- **New mathematical hypothesis/normalization:** choose scalar
  heat eigenvalue **one** and a return-specific time
  s_n=n log(lambda). Then exp(-s_n)=(lambda^-1)^n and
  exp(-s_n)*discreteSpiral(n)=i^n. Four consecutive compensated
  values cancel exactly. The *uncompensated* selected sum is
  nonzero because Re(1+lambda*i-lambda^2-lambda^3*i)=1-lambda^2<0.
  This time schedule is an explicit selected gauge, not an
  isometric Hodge/Farey operator conjugacy or a canonical time on
  all Farey walks.
- **Formal binding:** main source integration
  [grwtsk/math@f23626b03ded1f45a4c6410231127e1b02024be7](https://github.com/grwtsk/math/commit/f23626b03ded1f45a4c6410231127e1b02024be7),
  GRWTSK/NumberTheory/Farey/HeatCompensatedReturn.lean,
  blob **4307d4c61f10d5a34777e7d34f3884fc94274cb4**.
  Declarations under
  GRWTSK.NumberTheory.Farey.HeatCompensatedReturn:
  returnHeatTime, returnHeatTime_nonneg,
  heatReturnCompensator, heatReturnCompensator_is_unit_heat,
  heatReturnCompensator_eq_inv_pow,
  heatNormalizedSpiral,
  heatNormalizedSpiral_eq_compensatedSample,
  heatNormalizedSpiral_eq_phase,
  heatNormalized_four_consecutive_zero,
  raw_return_four_not_zero.
- **Relationship:** REPOSITORY_SOURCE_IDENTITY_CANDIDATE
  (selected finite observation), not a
  PAPER_TO_LEAN_BRIDGE_PROVED claim. Finite source normalization
  does not imply arbitrary signed cancellation, Guth--Maynard
  large-value density, sofic/local-limit positivity, RH, GRH,
  Newman's constant, or irrationality/transcendence of zero heights.

### Validation and trust

All three new files were read from exact Git source blobs after their
routine non-force main integration. Declaration-head inspection found
no direct sorry/admit/axiom. Independently, off-kernel exact SymPy
algebra checked the Farey four-block cancellation for twelve start
indices, the first twelve compensated samples, and the nonzero raw
four-block real component. Such checks are FINITE_COMPUTATION_ONLY,
not proof of all n and not Lean evidence.

Pinned toolchain is leanprover/lean4:v4.33.0; Mathlib lock
db584cd6d46c92f209a44c0f1c829460d327499d.
Local \`lean\`, \`lake\` and \`elan\` executables were absent.
No warning-clean build, direct elaboration, fresh kernel replay,
trust-zero check, full transitive #print axioms, generated/opaque/unsafe
audit or external theorem admission was executed. All such checks
are **NOT_RUN / NOT_KERNEL_AUDITED**. No Railway, no force push.
A separate pinned issue is required before accepting or promoting
any of these source scripts. This work does not claim that a linked
private discussion was inspected or verified.

**Pinned verification requests (OPEN / NOT_RUN):**
[#1112 Hodge heat / Newman](https://github.com/grwtsk/math/issues/1112)
and [#1113 Farey heat-return normalization](https://github.com/grwtsk/math/issues/1113).
Both bind exact math-source blobs and the full dependency closure to
main commit [78ac3d9fe09d2437dac24d931302571183767887](https://github.com/grwtsk/math/commit/78ac3d9fe09d2437dac24d931302571183767887);
source-preserving proof identities remain SOURCE_ONLY until actual
compiler, fresh kernel and transitive axiom audit receipts arrive.

## Case FAREY-REMAINING-VALIDATION-20261023 — reconciled literature and remaining finite bridges

**Attribution, source and paper boundary.** These eight modules are 2026
repository constructions under the source-credited mathematical direction of
R.A. Jacob Martone, with OpenAI formalization assistance; upstream Mathlib
mathematics retains its own authorship. No separate paper title, byline, DOI,
year/version or theorem locator is established for these new finite constructions.
The stable sources are the commit and blobs below. Imported mathematics is the
pinned Mathlib matrix, character, finite-field and real/complex infrastructure,
plus the explicitly imported maintained GRWTSK declarations. Historical paper
comparisons and metadata in FAREY-ANGULAR-02, FAREY-HODGE-01 and
FAREY-RECENT-OBSTRUCTIONS-20261023 remain comparisons, not proof suppliers.

In particular, Ram Band, Siegfried Beckus and Raphael Loewy's *The Dry Ten Martini
Problem for Sturmian Hamiltonians* (2024), [arXiv:2402.16703](https://arxiv.org/abs/2402.16703),
equation (1.1), supplies the already-recorded potential-model comparison only.
Its Theorem 1.1 requires irrational frequency and nonzero coupling. The local
fixed intertwiner uses **zero coupling** and energy three and does not instantiate
that theorem. The Sarnak and algebraic Hodge comparisons remain analogies with
unresolved premises, not analytic consequences of the finite graph identities.
No historical influence is inferred from a mathematical match.

**Exact checked methods and hypotheses.**

- `GRWTSK.NumberTheory.Farey.exists_root_query_not_factorsThrough_endpointSignProfile`:
  two exact endpoint-sign predicates on an authentic Farey cell do not determine
  rational-root membership. It uses the actual positive-endpoint quadratic
  counterexample, not a claim about the globally positive factor X²+1.
- `GRWTSK.NumberTheory.Farey.GroupSpectralChannel.native_projector_erases_all_or_retains_all`
  and `GRWTSK.NumberTheory.Farey.GroupSpectralChannel.no_native_projector_with_partial_information`:
  a complex two-coordinate idempotent commuting with **both** native shears is
  zero or identity; the partial-information contradiction additionally assumes
  retained nonzero information and a changed input.
- `GRWTSK.NumberTheory.Farey.ReturnAngularChannel.simultaneous_return_channels`,
  `GRWTSK.NumberTheory.Farey.ReturnAngularChannel.discreteSpiral_formula`,
  `GRWTSK.NumberTheory.Farey.ReturnAngularChannel.discreteSpiral_norm`:
  the selected LR word has a mod-three four-vector orbit and the chosen phase
  1,i,−1,−i. The declared product observable has exact multiplier λi and modulus
  λⁿ. It is a discrete selected observation, not a global group character or
  continuous geometric spiral theorem.
- `GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction.no_projective_selected_phase_extension`:
  no globally sign-invariant vector readout agrees with that oriented phase at
  all four selected vectors. Sign invariance is only a necessary condition for
  projective descent; other observations are not ruled out.
- `GRWTSK.NumberTheory.Farey.ProjectiveKoopmanEigenvalue.farey_projective_eigenvalue_sq_one`
  and `GRWTSK.NumberTheory.Farey.ProjectiveKoopmanEigenvalue.squared_orbitPhase_factorsThrough_parity`:
  two-step antipodal return, sign invariance, eigen-relations and a **nonzero**
  observed value force ω²=1. The squared phase factors through parity and has
  the stated eigenlaw only on the selected orbit; no full-vector eigenlaw is
  inferred here.
- `GRWTSK.NumberTheory.Farey.CyclicResidueHodge.cyclic_laplacian_nonneg`,
  `GRWTSK.NumberTheory.Farey.CyclicResidueHodge.cyclic_laplacian_kernel`,
  `GRWTSK.NumberTheory.Farey.CyclicResidueHodge.farey_unit_projector_not_translation_equivariant`:
  for q nonzero, finite graph D*D is positive semidefinite and has the same kernel
  as D. Unit/nonunit coordinate projections are complementary and orthogonal,
  but the explicit mod-four Farey point mass disproves translation equivariance.
- `GRWTSK.NumberTheory.Farey.RamanujanFourierHodge.additiveMode_laplacian_eigen`
  and `GRWTSK.NumberTheory.Farey.RamanujanFourierHodge.characterAverage_primitive_nonprimitive`:
  exact finite cyclic eigenmodes and the **complete** primitive-plus-nonprimitive
  frequency sum, retaining 1/q normalization. The character rule is addition
  mapped to multiplication. No divisor-reindexing theorem or cancellation bound
  is supplied.
- `GRWTSK.Spectral.FareySturmianFreeConjugacy.farey_free_conjugate`,
  `GRWTSK.Spectral.FareySturmianFreeConjugacy.sturmian_free_power_intertwines`,
  `GRWTSK.Spectral.FareySturmianFreeConjugacy.free_energy_three_not_elliptic`:
  one fixed two-sided invertible matrix intertwines LR with the actual free
  Schrödinger transfer at energy three for all finite powers. Rotation/phase
  parameters are arbitrary because coupling is exactly zero; energy three is
  outside the free elliptic trace window. No nonzero-coupling spectral result.

**Immutable source identity.** Repair commit
[`9374e112a911a42b6e355127bbce529567006b70`](https://github.com/grwtsk/math/commit/9374e112a911a42b6e355127bbce529567006b70).
Module names below denote their corresponding `.lean` paths; the checked local
transitive closure contains 136 GRWTSK source files.

| Fully qualified module | Git blob |
|---|---|
| `GRWTSK.NumberTheory.Farey.EndpointInformationLoss` | `044a6f0b8a797a2927ad8766326d8e5342017fb9` |
| `GRWTSK.NumberTheory.Farey.InvariantProjectorInformationLoss` | `172a34e476149f3bdb0ec8abc7492d7be4ab9a80` |
| `GRWTSK.NumberTheory.Farey.ReturnAngularChannel` | `96af81229ee06c47b3bbb81740319d097d51f0e1` |
| `GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction` | `14419d94086337a48a1e99eb3ba1b0cf29ddcd62` |
| `GRWTSK.NumberTheory.Farey.ProjectiveKoopmanEigenvalue` | `bc61c3213e0c6e39c79d47bac35eb9d57d2363f1` |
| `GRWTSK.NumberTheory.Farey.CyclicResidueHodge` | `7ac7c83be9930c39c5956455ca706c05261bb763` |
| `GRWTSK.NumberTheory.Farey.RamanujanFourierHodge` | `c43b7e940050bd5ba095f21d10d26eb3d1233f71` |
| `GRWTSK.Spectral.FareySturmianFreeConjugacy` | `f854110d2c099b97094505063eee3e8399f35e2f` |

**Actual verification evidence.** Pinned Lean `leanprover/lean4:v4.33.0`,
Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.
All following commands exited zero against the recorded source bytes:

```sh
lake build GRWTSK.NumberTheory.Farey.EndpointInformationLoss GRWTSK.NumberTheory.Farey.InvariantProjectorInformationLoss GRWTSK.NumberTheory.Farey.ProjectiveKoopmanEigenvalue GRWTSK.NumberTheory.Farey.RamanujanFourierHodge GRWTSK.Spectral.FareySturmianFreeConjugacy --wfail
lake build --wfail
lake env lean --trust=0 -t 0 /Users/think/Documents/ChatGPT/math-branch-integration-20261022/farey-remaining-audit.lean
```

Strict build: 8,841 jobs, covering all eight named targets transitively. Public
root: 9,304 jobs. Fresh kernel replay checked 3,458 transitive GRWTSK
declarations; only `propext`, `Classical.choice` and `Quot.sound` (or none) occur,
with no `sorryAx` or additional axioms. All 129 target-owned declarations,
including private/generated declarations, have reconciled type inventories and
are safe. All 63 authored theorem/lemma headers are unchanged. Repairs are
limited to proof elaboration, character-law application, exact finite reductions,
conjugation notation and strict-build tactic/lint cleanup.

**Classification and receipts.** The local finite statements above are now
**kernel-verified bridges at their stated scope**; their explicit premises remain
premises. The named paper comparisons remain **analogies**, conditional analytic
interfaces remain **conditional**, and missing suppliers remain **unresolved**.
This dated evidence supersedes earlier NOT_RUN observations **only for the eight
listed source blobs and checked dependency closure**. Historical source-only
comments are retained as provenance. Independent external/CI replay and analytic
premise discharge are not claimed; standalone public imports are not added.
Actual logs/runners and source-hash snapshots remain outside canonical math in
`/Users/think/Documents/ChatGPT/math-branch-integration-20261022/`:
`farey-remaining-final-build3.log`, `farey-remaining-public.log`,
`farey-remaining-audit.lean`, `farey-remaining-audit.log`,
`farey-remaining-validated-snapshot.json`, `farey-remaining-completion-result.json`.
Earlier failed builds are diagnostics, not acceptance receipts.

**Preserved unresolved bridges.** No algebraic Hodge conjecture, infinite-volume
spectral gap, Dry Ten Martini theorem, globally descended quarter-turn character,
nonperiodic Möbius cancellation, L-function estimate, elliptic rank or RH is
proved. The distinct concurrently added `HeatCompensatedReturn` and unrelated
new density, gauge and group modules are outside this validation claim.

## Case HEAT-COMPRESSION-VALIDATION-20261023 — exact recovery and conditional accounting

**Paper provenance and limits.** Brad Rodgers and Terence Tao,
*The De Bruijn–Newman constant is non-negative* (2018 preprint; 2020 publication),
[arXiv:1801.05914](https://arxiv.org/abs/1801.05914), motivates a process/contradiction
analogy only: its heat deformation, zero dynamics and Λ≥0 proof are not imported.
David A. Huffman, *A Method for the Construction of Minimum-Redundancy Codes*
(1952), [DOI:10.1109/JRPROC.1952.273898](https://doi.org/10.1109/JRPROC.1952.273898),
is compared through exact decoding and prefix freedom only, without probabilities,
optimality or minimum expected length. These local definitions are repository
interfaces, not formalizations of those paper theorems.

The previously recorded OpenAI *The Quasi-Riemann Hypothesis: A Zero-Free
Half-Plane Re(s)>7/8* (2026),
[immutable release](https://github.com/openai/math/tree/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026),
with `OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re`, is an **unimported comparison**.
The strict 7/8 stage and every later analytic stage are explicit local premises.
Caroline Turnage-Butterbaugh's *Simple and critical zeros of the Riemann
zeta-function* (22 October 2026),
[Tao-hosted guest post](https://terrytao.wordpress.com/2026/10/22/simple-and-critical-zeros-of-the-riemann-zeta-function/),
is expository context only, distinguishing zero-free regions from zero proportions.
This verification does not independently verify those external publications or
infer historical influence. Full source identities and hypothesis records are in
[the source note](heat-flow-compression-sofic-zero-accounting.md) and
[finite recovery bridge note](finite-heat-compression-bridge.md).

**Exact formal scope.** In `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic`,
`LosslessPrefixCode.factorsThrough_encode`,
`readout_bound_to_process_of_huffmanLikeCover`, and
`no_huffmanLikeCover_of_process_collision` prove abstract exact-code factorization
and its collision obstruction. `SoficThrough` is relative to one supplied finite
state profile; `not_soficThrough_of_collision` refutes that presentation only.
`grh_zero_height_transcendental_of_nonsofic` retains separately supplied arithmetic
predicates, algebraic-height-to-soficity and non-soficity assumptions; its GRH
predicate contributes critical-line placement only. No actual zero height is
proved irrational or transcendental.

`ThreeQuarterRefinement.limit_zeroFree` requires valid analytic estimates at
**every** stage and cofinal boundaries above 3/4. It concludes only the strict
half-plane to the right of 3/4, excluding no endpoint zero. Its asymptotically
negligible overhead field does not supply any analytic estimate.

In `GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge`,
`factorsThrough_of_exactProcessRecovery` uses an actual left inverse;
`diagonalHeat_readout_bound` and `newmanFiniteCoefficients_readout_bound` instantiate
that identity for the exact real-valued diagonal channels.
`diagonalHeat_huffmanLikeCover_iff` and
`newmanFiniteCoefficients_huffmanLikeCover_iff` require independent existence of
a binary lossless prefix code on the signal space. They do not construct such a
code for an uncountable real space, prove finite-bit stability, or identify the
Rodgers–Tao integral. The two `*_not_soficThrough_of_state_collision` theorems
refute only a supplied colliding state profile. The new finite bridge statements
are repository constructions with source-credited direction by R.A. Jacob
Martone and OpenAI formalization assistance, not imported paper theorems.

**Source pin and actual verification.** At repair commit
[`5c8c45df9d092f9d5dc6de89d292e260348221f7`](https://github.com/grwtsk/math/commit/5c8c45df9d092f9d5dc6de89d292e260348221f7), Lean
`leanprover/lean4:v4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`:

| Module | Git blob |
|---|---|
| `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic` | `e08a6531e102dbf88fe7c157aed6915ac66be5ab` |
| `GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge` | `0c73a427fe3361802ffefa9bf7174cda087b2ebe` |
| `GRWTSK.Geometry.Hodge.FiniteHeatRecovery` | `5ce4d15f94aa0e260336c5e8cf7af25a3fb03160` |
| `GRWTSK.NumberTheory.Zeta.Riemann.FiniteHeatNewmanNormalization` | `bd6219af4e929ff6b54bb5aef00821ebeb484060` |

Executed commands, all exit zero:

```sh
lake build GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge --wfail
lake build --wfail
lake env lean --trust=0 -t 0 /Users/think/Documents/ChatGPT/math-branch-integration-20261022/pr1109-audit.lean
```

Strict leaf/dependency build: 8,716 jobs. Public root: 9,304 jobs. Fresh kernel
replay: 409 transitive GRWTSK declarations, only `propext`, `Classical.choice`
and `Quot.sound` (or none), no `sorryAx` or added axioms. All 97 target-owned
private/generated declarations have reconciled type inventories and are safe.
The eleven-file local dependency closure is source-hash pinned. The only source
repair removes an already-unreachable `ring` tactic in
`GRWTSK.Geometry.Hodge.FiniteHeatRecovery.implicitEuler_exact`; all 14 inherited
theorem/lemma headers and both new modules' source bytes remain unchanged.

**Evidence classification and missing bridges.** Exact local recovery and
factorization identities are **kernel-verified bridges at their stated scope**.
Prefix-code existence, arithmetic/sofic suppliers and analytic stage estimates
remain **conditional interfaces/unresolved premises**. Paper relationships remain
**analogies/expository context**, not imported analytic mathematics. Historical
source-only comments and pinned authoring statuses are retained; this dated run
supersedes NOT_RUN only for the listed checked sources. Independent external/CI
replay is not claimed. No Huffman optimality, full heat-integral theorem, actual
zero trace, genuine non-soficity, zero-height transcendence, improved zero-free
region or RH/GRH is supplied; the modules remain outside `GRWTSK.lean`.

Operational receipts stay outside canonical mathematics at
`/Users/think/Documents/ChatGPT/math-branch-integration-20261022/`:
`pr1109-rebuild.log`, `pr1109-public.log`, `pr1109-audit.lean`,
`pr1109-audit.log`, `pr1109-validated-snapshot.json`, `pr1109-completion-result.json`.
The earlier warning-failing build is a diagnostic, not an acceptance receipt.


## Case FAREY-TURNWISE-SCALAR-20261023 — scalar-return extension obstruction

**Original source identity and external-paper boundary.** This is a
2026 **repository-derived** finite representation theorem candidate,
source-credited to mathematical direction by **R.A. Jacob Martone**
and formalization assistance by **OpenAI**. It is **not**
a theorem imported from an independently identified paper;
there is no separate external publication title/author/year/
DOI/theorem locator asserted for this specific `ZMod 3`
Farey turnwise-scalar no-go. Stable source identity is
[`grwtsk/math@98bada8f6029c75df85402c9ba7f6b7ec00da111`](https://github.com/grwtsk/math/commit/98bada8f6029c75df85402c9ba7f6b7ec00da111),
`GRWTSK/NumberTheory/Farey/TurnwiseScalarObstruction.lean`,
Git blob **`ba99ad673f032e44eb14a4564f5488cfd31af0f1`**.
The [full mathematical scope note](../../../mathematics/NumberTheory/Farey/turnwise-scalar-obstruction.md)
contains the exact orbit and right-product order convention.

**Exact method, hypotheses and conclusion.** The source positive
Farey alphabet uses `L=[[1,0],[1,1]]`,
`R=[[1,1],[0,1]]` over `ZMod 3`;
the chronological word `[left,right]` is represented by
`H=LR=[[1,1],[1,2]]`, as an actual integer
Farey-frame right product reduced to `ZMod 3`.
For arbitrary **complex-valued**
`f:(Fin 2→ZMod 3)→ℂ`, scalar `a:ℂ`,
and SOURCE initial vector `v0=(1,0)`,
the generic new negative theorem retains **three separate
hypotheses**:
(1) `∀v,f(Lv)=a*f(v)`;
(2) `f(Hv0)=-f(v0)`;
(3) `f(v0)≠0`. The actual generator orbit
`v0=(1,0)→v1=(1,1)→v2=(1,2)→v0`
and `Hv0=Lv0=v1` force `a=-1` and
`a³=1`, a contradiction over `ℂ`.
No nonzero, root-of-unity, unitarity, boundedness,
positivity or character hypothesis is **assumed** on
`a`. Consequently the previously source-defined
`projectiveQuadraticReadout`, which has
`f(Hv)=-f(v)` globally and `f(v0)=1`,
cannot be a full-vector eigenfunction of **L**
alone, and cannot have fixed scalar eigenvalues
simultaneously for both L and R. This obstruction is
for the **specified return-`-1` observation
and nonzero source basepoint**; it does **not**
claim that no nonconstant matrix-valued or other
scalar observation could exist for the whole monoid.

**Correct arbitrary-word representation.** The positive
Farey matrix-word source `modThreeWord` admits
`M(u++v)=M(u)*M(v)` with fixed chronology,
and defines `wordState(w,x)=M(w).mulVec x`.
For a **fixed column** state,
`wordState(u++v,x)=wordState(u,wordState(v,x))`:
the **right** block is applied first to columns.
That is not the chronological application of
turns to Farey cells, whose **FRAME** acts on
the right. This source-distinction is explicit.
The corresponding `wordSignal(w,x)=f(wordState(w,x))`
satisfies the analogous concatenation formula
and is sign-invariant for ALL finite words,
but does **not** satisfy a universal scalar
letterwise product. The selected return retains
`wordSignal([left,right],x)=-f(x)`.

**Formal declarations, commit and precise source ownership.**
Every name below has prefix
`GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction.`:
`leftStep`, `rightStep`, `leftThird`,
`leftStep_zero`, `leftStep_one`,
`leftStep_two`, `returnStep_zero`,
`no_scalar_left_extension_of_negative_return`,
`quadraticReadout_no_scalar_left`,
`quadraticReadout_no_turnwise_scalars`,
`modThreeWord_append`, `wordState`,
`wordState_append`, `anyMatrix_mulVec_neg`,
`wordSignal`, `wordSignal_append`,
`wordSignal_sign_invariant`,
`wordSignal_selected_return`.
The exact introduction commit/blob is given above.
The direct repository dependency
`GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel`,
blob `b07cb18412f3e64f42d2916fea91b1e59b2228c2`,
provides the parent fully defined `F₃`
quadratic/projective readout and the actual source
word module; it imports the repaired
`ReturnAngularProjectiveObstruction` and
the full Farey/Mathlib closure.
A later source-validated parent snapshot
`9374e112a911a42b6e355127bbce529567006b70`
has `ReturnAngularProjectiveObstruction`
blob `14419d94086337a48a1e99eb3ba1b0cf29ddcd62`
and `ReturnAngularChannel` blob
`96af81229ee06c47b3bbb81740319d097d51f0e1`;
these **current source identities**, not obsolete blobs,
must be used by a fresh dependent replay.

**External named comparisons (not paper theorem ports).**
**Peter Sarnak**, *Three Lectures on the Mobius Function:
Randomness and Dynamics* (**2011**, IAS lectures),
[IAS stable record](https://publications.ias.edu/sarnak/paper/506),
**Definition 3 / Conjecture 4**, requires
a compact metric zero-entropy flow, continuous
observation and genuine Möbius ordinary-average
cancellation, none of which is supplied here.
**Ram Band, Siegfried Beckus and Raphael Loewy**,
*The Dry Ten Martini Problem for Sturmian Hamiltonians*
(**2024** preprint,
[arXiv:2402.16703](https://arxiv.org/abs/2402.16703)),
**equation (1.1) and Theorem 1.1**:
the paper's rotation-coded potential and its
irrational-frequency, **nonzero-coupling**
gap-opening theorem do not follow from the
finite matrix return or its `ZMod3` reduction.
These comparisons remain **`methodological-analogy`
or `unresolved`**, not
`direct-import` or `local-proved-bridge`.

**Actual verification and pending checks.**
This **new** source is `source-proof-candidate`,
`SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`.
Independent exact SymPy arithmetic checked **127**
positive L/R words of lengths 0..6,
**769** concatenation/source matrix-order splits,
**1,143** antipodal signal cases, and the
actual L three-cycle readout `1,-1,0,1`.
They are `finite-certificate`, **not Lean evidence**.
The prior eight-module finite Farey parent scope
was locally kernel-verified at immutable source
`55fe9dbc34a784cb15782c9dfb0d371a55c6f988`
and the distinct eight-module **remaining**
scope at `9374e112a911a42b6e355127bbce529567006b70`,
as separately documented above with actual
execution commands, exit-zero statuses and
external local receipts. **Neither source scope
covers this new leaf or its
`ProjectiveQuadraticChannel` parent**, which remains
independently pending [#1111](https://github.com/grwtsk/math/issues/1111).
No completed compilation, fresh kernel or
transitive generated/unsafe axiom audit has
been reported for this new leaf.
Pinned `leanprover/lean4:v4.33.0`,
Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.
Pending verification must use the *new exact
main commit and transitive source hashes*,
not a prior source scan or an unrelated
parent receipt.

**Missing supplier and nonclaims.**
No nonperiodic continued-fraction base rotation
is identified with this arbitrary finite-word
input; no infinite ordered-product limit,
analytic spectral observation, nilflow,
Möbius orthogonality, Sturmian spectral gap,
Dirichlet L-function zero region, Hodge
conjecture, elliptic rank bound or RH is
derived. A correct chronological
left-column cocycle must additionally
address the **right-multiplication frame
versus left-column product order**;
a matrix-state observation alone
does not automatically supply a
physical winding rate.


## Case INFORMATION-LOSS-RECONSTRUCTION-20261023 — repository-derived uniqueness, not an external paper import

**Source identity / attribution boundary.** The following is original repository mathematics, with formalization assistance credited in the Lean file headers to OpenAI. **No independently identified external paper** (title, authors, publication year, DOI/arXiv version, theorem locator) was used as a theorem supplier in these two increments; hence those bibliographic fields are **NOT APPLICABLE**, not guessed. Stable, versioned source identities are the exact Git commits and blobs below. A shared theme with information theory or inverse problems does **not** imply historical influence.

**Exact statements and hypotheses.** `GRWTSK.Logic.InformationLoss.decoder_eq_on_range` assumes arbitrary types `X,Y,Z`, maps `profile:X→Y`, `readout:X→Z`, two decoders `decode₁,decode₂:Y→Z` and **both exact** factorization equalities `readout = decodeᵢ ∘ profile`, and concludes `decode₁ y = decode₂ y` only for `y ∈ Set.range profile`. `decoder_unique_of_surjective` adds explicit `Function.Surjective profile` to deduce equality of total decoders. `observedProfile_decoder_unique` uses the actual subtype-valued observable to obtain decoder uniqueness without ambient surjectivity. `GRWTSK.Logic.InformationLoss.existsUnique_decoder_observedProfile_iff` asserts that existence of **exactly one** decoder `Set.range profile → Z` reconstructing `readout` is equivalent to `∀ x y, profile x = profile y → readout x = readout y`. Its existence implication uses the existing classically chosen `factorsThrough_observedProfile_iff`; uniqueness uses `observedProfile_decoder_unique`. The antecedent does not assert an effective, measurable, bounded, continuous or linear reconstruction.

**Formal source binding.** Fully qualified namespace for all four declarations is `GRWTSK.Logic.InformationLoss`. The first three declarations were integrated in `grwtsk/math` main commit [`6f19e8d19d8a24c30875c7caaaea726686ad2137`](https://github.com/grwtsk/math/commit/6f19e8d19d8a24c30875c7caaaea726686ad2137), `GRWTSK/Logic/InformationLoss/FactorizationDecoderUniqueness.lean`, Git blob `4c568562742645c0bb1b8ae8d9ef89968a32918a`. The fourth was integrated at [`d3c806a3596063ae85ef8357b42674eaf4fa0214`](https://github.com/grwtsk/math/commit/d3c806a3596063ae85ef8357b42674eaf4fa0214), `GRWTSK/Logic/InformationLoss/FactorizationUniqueReconstruction.lean`, blob `53916cc045ae969b09d86729f294cfd96561e6e6`. Dependency chain: `FactorizationDecoderUniqueness` → `FactorizationFiberCompleteness` blob `13e934c9c8b477474bda909a5e689710795154bd` → `FactorizationFiber` blob `3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd`; complete Mathlib closure **PENDING actual executor discovery**. Root `GRWTSK.lean` does not import these leaves.

**Separated relationships and evidence.** `source-proof-candidate` applies to all four new declarations. Existing completeness statements are also source candidates for this purpose; `local-proved-bridge` and `direct-import` of any external paper theorem are **NOT CLAIMED** here. A previously reported 1,537-case small finite-model enumeration for the unique reconstruction equivalence is `finite-certificate` only; this ledger does not claim its code or execution transcript is a kernel receipt. `conditional-interface` concerns any attempted downstream identification of these abstract profiles with actual Farey/RH or spectral observables; no such analytic realization is proved. `methodological-analogy` is possible only as a comparison, not source attribution. `unresolved` includes source-to-actual-analytic-observable maps, density/regularity and positivity hypotheses, fresh compilation, complete transitive axiom audit and kernel acceptance.

**Actual verification status / execution requests.** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED` for these two new leaves; confirmed Git blob readbacks and no GitHub commit statuses reported on their integration commits. Pinned Lean `leanprover/lean4:v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Immutable command text, exact declarations and requested fresh trust-zero kernel/axiom checks are filed in [#1114](https://github.com/grwtsk/math/issues/1114) and [#1115](https://github.com/grwtsk/math/issues/1115). Commands remain **QUEUED, NOT EXECUTED**; no successful compilation, `lake env lean --trust=0`, fresh checker or `#print axioms` receipt is available for these exact leaves. Runner scripts, mutable state and future receipts belong in `grwtsk/noeaaeue`, never this mathematics tree.

**Hostile boundary.** `X=Empty, Y=Unit, Z=Empty` permits a unique decoder from the **empty observed range** to `Empty`, not a total decoder `Unit→Empty`. This is why uniqueness on the actual image does not upgrade Farey endpoint signs to global rational root detection, a two-moment Bombieri readout to full information, a finite heat toy to an analytic Hodge spectral intertwiner, or any assertion of RH. Existing no-merge, no-root-promotion and independent verification gates remain operative.


## Seven unpublished ideas: first kernel-verified obligation bridges

Exact Lean source: `45cbbb6a85ae32c652839533b1db1ef3d444c1d6`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`; Lean 4.33.0.

Four optional/corrective obligations discharged, three conditional fragments implemented, 29 obligations unresolved. All seven manuscript-level claims remain unresolved. Both pairs of distinct PDF versions retain independent records. Earlier search-only reports remain unchanged.

Eight theorems elaborated successfully. The four-module `lake build … --wfail` and external `Audit.lean` commands (full commands in JSON) exited 0. `#print axioms` reports only `propext`, `Classical.choice`, `Quot.sound` for all eight: no `sorryAx`, and no claim of choice-free proofs. Runtime logs stay outside Git.

## Algebra

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

| Obligation | Result | Remaining scope |
|---|---|---|
| P1, PDF pp. 1, 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| P2, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P3, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P4, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.NumberTheory.Primes.primesBelow_contract`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L12); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_unique`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L17); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_step`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L24); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

| Obligation | Result | Remaining scope |
|---|---|---|
| B1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B3, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B4, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B6, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).


### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

| Obligation | Result | Remaining scope |
|---|---|---|
| S1, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S3, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S4, PDF pp. 2 | kernel-verified-conditional-fragment | For supplied paths on one finite channel type, nonnegative weights, 0≤r<1, weighted absolute column bound and vanishing net defect, weighted source-minus-model residual vanishes. Source construction, conditioning, bounds, readouts and changing channels remain missing. |
| S5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S6, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.source_residual_vanishes`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Analysis/ErrorBounds/SourceResidualConvergence.lean#L12); blob `8de6e01f7579920f28f4d21fefaaaa6f824cda96`.

## GeometryTopology

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

| Obligation | Result | Remaining scope |
|---|---|---|
| P1, PDF pp. 1, 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| P2, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P3, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P4, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.NumberTheory.Primes.primesBelow_contract`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L12); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_unique`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L17); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_step`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L24); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

| Obligation | Result | Remaining scope |
|---|---|---|
| B1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B3, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B4, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B6, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).


### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

| Obligation | Result | Remaining scope |
|---|---|---|
| S1, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S3, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S4, PDF pp. 2 | kernel-verified-conditional-fragment | For supplied paths on one finite channel type, nonnegative weights, 0≤r<1, weighted absolute column bound and vanishing net defect, weighted source-minus-model residual vanishes. Source construction, conditioning, bounds, readouts and changing channels remain missing. |
| S5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S6, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.source_residual_vanishes`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Analysis/ErrorBounds/SourceResidualConvergence.lean#L12); blob `8de6e01f7579920f28f4d21fefaaaa6f824cda96`.

## LogicAndComputation

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

| Obligation | Result | Remaining scope |
|---|---|---|
| P1, PDF pp. 1, 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| P2, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P3, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P4, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.NumberTheory.Primes.primesBelow_contract`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L12); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_unique`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L17); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_step`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L24); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

| Obligation | Result | Remaining scope |
|---|---|---|
| B1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B3, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B4, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B6, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).


### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

| Obligation | Result | Remaining scope |
|---|---|---|
| S1, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S3, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S4, PDF pp. 2 | kernel-verified-conditional-fragment | For supplied paths on one finite channel type, nonnegative weights, 0≤r<1, weighted absolute column bound and vanishing net defect, weighted source-minus-model residual vanishes. Source construction, conditioning, bounds, readouts and changing channels remain missing. |
| S5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S6, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.source_residual_vanishes`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Analysis/ErrorBounds/SourceResidualConvergence.lean#L12); blob `8de6e01f7579920f28f4d21fefaaaa6f824cda96`.

## NumberTheory

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

| Obligation | Result | Remaining scope |
|---|---|---|
| P1, PDF pp. 1, 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| P2, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P3, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P4, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.NumberTheory.Primes.primesBelow_contract`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L12); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_unique`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L17); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_step`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L24); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

| Obligation | Result | Remaining scope |
|---|---|---|
| B1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B3, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B4, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B6, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).


### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by R.A. Jacob Martone; printed byline: `['RA Jacob Martone']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

| Obligation | Result | Remaining scope |
|---|---|---|
| S1, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S3, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S4, PDF pp. 2 | kernel-verified-conditional-fragment | For supplied paths on one finite channel type, nonnegative weights, 0≤r<1, weighted absolute column bound and vanishing net defect, weighted source-minus-model residual vanishes. Source construction, conditioning, bounds, readouts and changing channels remain missing. |
| S5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S6, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.source_residual_vanishes`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Analysis/ErrorBounds/SourceResidualConvergence.lean#L12); blob `8de6e01f7579920f28f4d21fefaaaa6f824cda96`.

## Hypotheses and unresolved suppliers

Prime enumeration is an assistant-proposed finite specialization, with strict p < N; P1 bibliography binding and P4 analytic source/model estimates remain open. E3 retains a commutative coefficient ring, finite decidable square index type, two inverse identities and an actual intertwining equality; no representation, L-group transfer, infinite product, continuation or divisor comparison is constructed. K3 is a correction check in ℤ[q], not a KL theory. S4 retains nonnegative weights, a common fixed finite channel type, 0 ≤ r < 1, every weighted column estimate and vanishing net source/model defect. Positivity of weights alone does not give channel separation, and no actual arithmetic forcing or readout is supplied.

B1–B6 remain unresolved: compactification, cohomological comparison, completed zero detector, off-line-zero class, vanishing in the same degree/sheaf and their actual composition are missing. S1–S3 and S5–S6 retain exact version-binding, arithmetic error/rate, independence and noncircularity gaps from the original plan. Imported mathlib infrastructure and prior source-only candidates are not newly classified as source-specific suppliers.
 

## Case KALININ-LIVSIC-PERIODIC-20261023 — necessary periodic-data obstruction only

**Publication identity and version (independently checked against printed
journal pages).** **Boris Kalinin**, *Livšic Theorem for matrix cocycles*,
*Annals of Mathematics*, volume **173**, number 2 (**2011**), pp.
**1025–1042**, stable DOI
[10.4007/annals.2011.173.2.11](https://doi.org/10.4007/annals.2011.173.2.11),
[official journal article](https://annals.math.princeton.edu/2011/173-2/p11)
and [official 18-page PDF](https://annals.math.princeton.edu/wp-content/uploads/annals-v173-n2-p11-p.pdf).
The identified paper’s **Introduction, displayed condition (1.1),
printed p. 1025 (PDF index 0)** records *necessity* of identity
periodic products for a pure coboundary.
The paper’s distinct, much stronger **Theorem 1.1, printed
p. 1027 (PDF index 2)** proves the **sufficiency**
direction under its full dynamical/regularity hypotheses.
These are not interchangeable formal proof obligations.
The separate preprint is [arXiv:0808.0350v2](https://arxiv.org/abs/0808.0350v2),
revision March 2010; the theorem/source identity used
here is the **2011 published journal version**.
No independent historical influence on GRWTSK or an
unpublished manuscript follows from this idea correspondence.

**Paper theorem, its exact hypotheses, and the chosen fragment.**
Kalinin’s Theorem 1.1 assumes a **topologically transitive
homeomorphism `f:X→X` of a compact metric space `X`** with
the explicitly defined **closing property** and an
**`α`-Hölder `A:X→GL(m,ℝ)`**. Its hypothesis
`A(f^(n-1)p) ⋯ A(fp) A(p)=Id` holds for **every**
periodic pair `(p,n)` satisfying `f^n p=p`.
It concludes existence of an **`α`-Hölder**
`C:X→GL(m,ℝ)` satisfying
`A(x)=C(fx)C(x)⁻¹` for all `x`.
The local formalization does **NOT** prove or use
this sufficiency assertion. It formalizes only the
elementary **necessary implication** described
in the published **formula (1.1)**:
if a supplied `B` satisfies this exact coboundary
identity, its correctly ordered product telescopes
to `B(f^n x) B(x)⁻¹`, hence equals identity at any
explicitly provided periodic point.

The local Lean version deliberately generalizes
the **necessary algebra** to an arbitrary
carrier `S`, **any** self-map `T:S→S` and **any**
`[Group G]`. For the new necessary direction,
`S` need not be topological, `T` need not be
invertible or hyperbolic, and no matrix norm
or Hölder/closing hypothesis is needed.
Such generality is permitted only because the
conclusion is strictly weaker than Kalinin’s
Theorem 1.1: **no transfer function is constructed**.
The hypotheses that are instead **actually used**
are `IsPureCoboundary T A` (an **existentially
supplied** `B`), an explicit natural return
length `n`, and literal `T^[n] p=p`.
The contrapositive additionally requires an
**actual** nonidentity product witness, not a
putative density or average observation.

**Exact source normalization and fully qualified declarations.**
The existing `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct`
uses the same chronological **newest-left**
`A(T^[n-1]x) ⋯ A(Tx) A(x)` convention as
Kalinin’s (1.1). Its imported source definition
and `cocycleProduct_gauge` are in
`GRWTSK/LinearAlgebra/CocycleProduct.lean`,
Git blob **`464093299328bd804948a8959e603224418264f7`**,
with direct upstream dependency
`GRWTSK.LinearAlgebra.OrderedProductDeterminant`
and pinned Mathlib. The parent’s **gauge**
`A^B(x)=B(Tx)⁻¹ A(x) B(x)` is distinguished
from the **paper’s pure coboundary**
`A(x)=B(Tx)B(x)⁻¹`; they are linked through
the exact inverse gauge, not identified.

**New math source integrated on existing `main`:**
[`GRWTSK/LinearAlgebra/PeriodicCocycleData.lean`](../../../../GRWTSK/LinearAlgebra/PeriodicCocycleData.lean),
first source commit
[`153ee97c6f1a12b9e98a18f72e961f8d6227b2e7`](https://github.com/grwtsk/math/commit/153ee97c6f1a12b9e98a18f72e961f8d6227b2e7),
Git blob **`11ca2a896e8844dcb483ce9c910c1bb07ae857e1`**.
An exact mathematical exposition was integrated
at main commit **`84cb7607487d63b0117e482864d1f5e61cc58931`**,
[`docs/mathematics/LinearAlgebra/periodic-cocycle-data.md`](../../../mathematics/LinearAlgebra/periodic-cocycle-data.md),
Git blob **`9a163ead73c561b0a00bc3b80f7b16768b06f48d`**.

Full names with prefix
`GRWTSK.LinearAlgebra.PeriodicCocycleData.`:
`IsPureCoboundary` (**definition, not an existence theorem**);
`cocycleProduct_one`;
`pureCoboundary_product`;
`pureCoboundary_periodic_identity`;
`nontrivial_periodic_product_not_coboundary`;
`periodic_gauge_product_conjugate`;
`periodic_gauge_product_one_iff`;
`periodic_nontrivial_persists_under_gauge`;
`no_gauge_trivializes_nontrivial_period`.
Each is a **source proof candidate**, with its full
literal type/hypotheses to be recorded in the
pending compiler and axiom audit.
The last four lemmas additionally express the
correct **closed-orbit** gauge conjugacy and
gauge-invariance of the identity predicate.
They do not assert conjugation for a nonclosed
orbit, equality of noncentral group holonomies,
the existence of periodic points, or gauge
boundedness/temperedness.

**Provenance and logical classifications kept separate.**
`imported-mathematics`: pinned Mathlib group/tactic
infrastructure and the maintained
`CocycleProduct` source, **not** a direct import
of Kalinin’s complete paper proof.
`source-proof-candidate`: eight new Lean
theorems + explicit `IsPureCoboundary` definition.
`conditional-interface`: any theorem consuming
an **assumed** transfer `B`, periodic point
and/or nonidentity monodromy; none establishes
those witnesses for a source-defined irrational
Farey cocycle.
`finite-certificate`: exact independent exhaustive
noncommutative `S₃` sanity checks on
**46,656** three-step cocycle/gauge combinations,
**38,880** nonidentity obstruction cases,
and **216** explicit pure-coboundary cases,
all passed; local preflight script SHA-256
`12da87112c3b9bde1ccd97fb750aa604ec92acef50cf8f2ce5a26040b0a65048`.
This is **not Lean proof evidence** and the script
and actual runtime logs remain **outside `math`**.
`methodological-analogy`: applying the necessity
gate before a prospective Farey/continued-fraction
global cocycle; it is not a checked Farey-to-Kalinin
transport.
`unresolved`: all sufficiency, analytic, geometric
and actual nonperiodic dynamical suppliers named below.
**No `local-proved-bridge` or
`PAPER_TO_LEAN_BRIDGE_PROVED` label is assigned
to this new source.**

**Actual verification state — `SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED`.** Pinned `lean-toolchain`:
`leanprover/lean4:v4.33.0`; `lake-manifest.json`
pins Mathlib at
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The available runtime has no `lean`, `lake` or
`leanchecker` executable. No module build, direct
elaboration, fresh native kernel replay, or transitive
`#print axioms`/generated/private/unsafe/native
audit was executed for this source. In particular,
the following are **proposed future commands,
not past results**:

```sh
lake build --wfail GRWTSK.LinearAlgebra.CocycleProduct
lake build --wfail GRWTSK.LinearAlgebra.PeriodicCocycleData
lake env lean --trust=0 -DwarningAsError=true GRWTSK/LinearAlgebra/PeriodicCocycleData.lean
lake env leanchecker --help
# followed by the actual supported fresh checker invocation and
# the full #check / #print axioms / generated-declaration audit.
```

A source readback, noncommutative finite computation,
historical accepted source in another module, queued
issue, or import presence is not a substitute
for an actual checked-commit receipt. The specific
module/dependency/source hashes, full axiom closure,
executor commands, real exit statuses and receipt
locations are requested in [math #1119](https://github.com/grwtsk/math/issues/1119),
pinned to exact main commit
`2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63`
(tree `5dd9ba1505cbe46e4759fed10468724a661268b6`),
with a separate passive [noeaaeue #390](https://github.com/grwtsk/noeaaeue/issues/390)
authorization-gated execution/receipt handoff.
Both are **QUEUED, NOT_RUN** and no remote runner was dispatched.
Operational runners, mutable receipts and schedules
do **not** belong in this canonical mathematics repository.

**Precisely missing bridges.** (1) An actual
nonperiodic Farey or continued-fraction base
homeomorphism, with the correct right-frame /
left-column ordering and a specified group
matrix cocycle; (2) a proof relating its
periodic data to the finite `TurnwiseScalarObstruction`
source without identifying a column action with
the chronological Farey frame action;
(3) a compact metric topologically transitive
hyperbolic/closing system, `α`-Hölder `GL(m,ℝ)`
cocycle, and all-periodic-pair triviality,
if Kalinin’s **sufficient** direction is to be
invoked; (4) a constructed regular and
quantitatively admissible transfer, which is
**not** supplied by a one-sided unrestricted
gauge; (5) any infinite-volume Sturmian operator,
Sarnak Möbius cancellation, Dirichlet `L`-function
zero-free region, sofic approximation or RH
identification. No theorem here proves any of
those claims, nor any historical intellectual
priority relationship.



## Second implementation pass for the seven unpublished research ideas

New source commit: `8905b87faad4901de56d0dc770ae7877aa933182`. Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

Nine new theorems in four subject-based modules. The four previously completed optional/corrective obligations stay completed. Six conditional fragments and one corrective fragment remain partial; 25 obligations still have no implemented bridge. All seven manuscript-level claims remain unresolved.

Both pairs of distinct PDF versions remain separate. [Structured record](obligation-implementation-progress-v2.json) preserves all 36 original specifications, dependencies, acceptance checks, bibliographic fields, exact page anchors and page-text hashes; earlier implementation states are retained. [First implementation pass](obligation-implementation-progress.md) remains historical.

Verification: the exact four-module `lake build … --wfail` and external `Audit.lean` commands in the structured record both exited 0. `#print axioms` for all nine reports only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`. Runtime logs remain external under `MathematicsLibrary/.catalog/obligation-bridges-v2`. These are local Lean-verified bridges, with explicit conditional premises; imported mathlib results retain upstream attribution. Prior source candidates elsewhere are not newly claimed verified.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research: **R.A. Jacob Martone**. Printed byline: `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** On a supplied finite set of places with finite square matrices over a field, two-sided inverse intertwiners imply equality of products of inverse local determinants. Inversion is totalized, so the algebraic identity does not assert holomorphy at zero denominators. Actual good/bad/Archimedean factors, nonvanishing domains, conductors, convergence of infinite products, and continuation equality remain missing.

- [`GRWTSK.LinearAlgebra.Matrix.finite_inverse_local_product_eq`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/LinearAlgebra/Matrix/FiniteLocalProduct.lean#L10); blob `30972bdbca1a7b1f0b20205a5b9db56867cc8770`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E5 — unresolved.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.
- **E5 missing construction:** Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research: **R.A. Jacob Martone**. Printed byline: `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** On a supplied finite set of places with finite square matrices over a field, two-sided inverse intertwiners imply equality of products of inverse local determinants. Inversion is totalized, so the algebraic identity does not assert holomorphy at zero denominators. Actual good/bad/Archimedean factors, nonvanishing domains, conductors, convergence of infinite products, and continuation equality remain missing.

- [`GRWTSK.LinearAlgebra.Matrix.finite_inverse_local_product_eq`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/LinearAlgebra/Matrix/FiniteLocalProduct.lean#L10); blob `30972bdbca1a7b1f0b20205a5b9db56867cc8770`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E5 — unresolved.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.
- **E5 missing construction:** Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research: **R.A. Jacob Martone**. Printed byline: `['RA Jacob Martone']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**Other obligations retained:** K1 — unresolved; K2 — unresolved; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K1 missing construction:** Choose a Coxeter system and a parameter convention. For example, over ℤ[v,v⁻¹] set q=v² and require T_s²=(q−1)T_s+q together with the braid relations. Define the bar involution with v↦v⁻¹ and T_w↦(T_{w⁻¹})⁻¹.
- **K2 missing construction:** Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.
- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research: **R.A. Jacob Martone**. Printed byline: `['RA Jacob Martone']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**Other obligations retained:** K1 — unresolved; K2 — unresolved; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K1 missing construction:** Choose a Coxeter system and a parameter convention. For example, over ℤ[v,v⁻¹] set q=v² and require T_s²=(q−1)T_s+q together with the braid relations. Define the bar involution with v↦v⁻¹ and T_w↦(T_{w⁻¹})⁻¹.
- **K2 missing construction:** Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.
- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research: **R.A. Jacob Martone**. Printed byline: `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**B3, PDF pages 1 — kernel-verified-conditional-fragment.** For a supplied punctured integer-order factorization f(s)=(s−a)^k g(s), with g analytic at a and g(a)≠0, the scaled coefficient of −logDeriv f is uniquely −k. A continuous extension of logDeriv forces k=0; k≠0 excludes any such extension. Actual completed Λ, its factorization, exceptional/trivial-zero classification and geometric zero-to-class detector remain missing. No residue of Λ itself is identified.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.scaled_coefficient_unique`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean#L12); blob `2a3d63d126b4c121db5dcf86485f9105674b0203`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.order_eq_zero_of_continuous_extension`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean#L22); blob `2a3d63d126b4c121db5dcf86485f9105674b0203`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.no_continuous_extension_of_nonzero_order`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean#L40); blob `2a3d63d126b4c121db5dcf86485f9105674b0203`.

**Other obligations retained:** B1 — unresolved; B2 — unresolved; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B2 missing construction:** Construct the localization/excision triangle or long exact sequence. If a direct sum is needed, construct a splitting/projector and prove compatibility with Hecke actions; a set union does not produce a split cohomology decomposition.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research: **R.A. Jacob Martone**. Printed byline: `['RA Jacob Martone']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**S3, PDF pages 1, 2 — kernel-verified-correction-fragment.** Assistant-proposed counterexample: √n lies eventually below εn for each ε>0 but has no uniform real upper bound. This blocks promotion of a sublinear cumulative error to a uniform bound. No actual paper error sequence, claimed Fourier sum-to-product identity, O(√N) probability bound or O(log N) arithmetic estimate is supplied.

- [`GRWTSK.Analysis.ErrorBounds.sqrt_eventually_le_linear`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/SublinearUnbounded.lean#L10); blob `546753f8854ed37946c88d533f622f3e39f97d24`.
- [`GRWTSK.Analysis.ErrorBounds.sqrt_not_uniformly_bounded`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/SublinearUnbounded.lean#L25); blob `546753f8854ed37946c88d533f622f3e39f97d24`.

**S4, PDF pages 2 — kernel-verified-conditional-fragment.** Extends the previous finite-channel convergence result: nonnegative weights and positive weight at i let total mass control coordinate i and its convergence; supplied exact source/model readouts and absolute consumer coefficient bounds transport mass convergence to actual-minus-approximate convergence. Existing strict column bound and vanishing-forcing premises are unchanged. Actual source paths, positive conditioning, arithmetic forcing estimates, complete channel coverage and changing-channel comparisons remain missing.

- [`GRWTSK.Analysis.ErrorBounds.coordinate_le_channelMass`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean#L9); blob `4d6454d99dd7fd9cffff555bcd00294dfb2795c0`.
- [`GRWTSK.Analysis.ErrorBounds.coordinate_vanishes_of_mass`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean#L17); blob `4d6454d99dd7fd9cffff555bcd00294dfb2795c0`.
- [`GRWTSK.Analysis.ErrorBounds.readout_vanishes_of_mass`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean#L32); blob `4d6454d99dd7fd9cffff555bcd00294dfb2795c0`.

**Other obligations retained:** S1 — unresolved; S2 — unresolved; S5 — unresolved; S6 — unresolved.

- **S1 missing construction:** Bind each named January reference to an exact catalog SHA/version and exact theorem. Eight candidate versions of four title families were inspected; title matching alone does not prove that the status note invokes either particular version.
- **S2 missing construction:** Define each arithmetic sequence, its deterministic centering and e_n before choosing a target rate. Decide whether the needed claim is ∃C∀n |e_n|≤C, a variable envelope |e_n|≤C B(n), or a normalized o(n) statement.
- **S5 missing construction:** Define a probability space and exact measurable, square-integrable zero observables. State finite-family independence or a specified limiting-law independence theorem. Vanishing/decaying pair correlation alone is not that statement.
- **S6 missing construction:** Retain every RH/GRH hypothesis printed in the Resolution draft §4.3. If the desired downstream theorem is unconditional RH/GRH, replace that supplier by an independently proved result rather than using it circularly.

## NumberTheory

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research: **R.A. Jacob Martone**. Printed byline: `['RA Jacob Martone']`. PDF SHA-256 `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

**Other obligations retained:** P1 — unresolved; P2 — kernel-verified-optional-specialization; P3 — kernel-verified-optional-specialization; P4 — unresolved.

- **P1 missing construction:** Resolve each numbered Source 23/26/27/28/29 to a title, exact version and theorem/method, or explicitly leave the citation unresolved.
- **P4 missing construction:** For any proposed prime-distribution estimate, specify the actual counting/weighted source S(x), comparison M(x), domain x≥x0 and constants C≥0, then prove ∀x≥x0, |S(x)−M(x)|≤C B(x) for a named B. No bound B is supplied by this roadmap.

## Exact new hypotheses and trust boundaries

**Local order detector (B3):** complex functions f,g, center a and integer k; g analytic at a, g(a)≠0 and equality with (s−a)^k g(s) on a punctured neighborhood. Coefficient uniqueness additionally takes the stated scaled limit; extension obstruction assumes continuity of the proposed extension and equality with logDeriv on that same neighborhood. This does not prove the completed-function factorization or geometric realization.

**Finite local product (E4, both versions):** coefficient field K, finite decidable square index type n, finite supplied place set, scalar parameter at each place, UV=VU=1 and AU=UB at every selected place. Totalized inverses are algebraic expressions; use as analytic reciprocal Euler factors needs independent nonvanishing and all global continuation/convergence premises.

**Weighted residual consumers (S4):** one fixed finite channel type; nonnegative weights; a strictly positive weight for the selected coordinate; independently supplied vanishing mass. Readout convergence additionally requires two exact readout identities using the same coefficients and |coefficient|≤weight. The earlier source-residual theorem still needs 0≤r<1, all weighted column bounds and vanishing net forcing. No coercivity follows from nonnegative weights alone.

**Rate obstruction (S3):** for every real ε>0, a natural cutoff exists after which √n≤εn; no real C bounds √n for every n. This is an assistant-proposed logical counterexample, not finite evidence or a claimed source-specific arithmetic estimate. The cumulative-error obligation remains partial.

No historical influence, understanding date, effective source access, joint Gaussian law, cohomological splitting, geometric positivity-to-vanishing bridge, automorphic transfer or RH theorem is inferred.


## Case LINEAR-OBSERVABLE-KERNEL-20261023 — quotient-lifting connection, repository proof candidate

**Bibliography and paper boundary.** This is 2026 repository-derived mathematical source with OpenAI formalization assistance (per source header), **not** an import of a specific paper theorem. External title/authors/year/version/DOI/arXiv/theorem locator are **NOT APPLICABLE**; do not invent historical influence from its similarity to standard quotient-lifting mathematics. A precise independent published source and a paper-to-Lean proof map have **not been supplied**. The mathematically related Mathlib linear quotient constructions are background imported infrastructure, not a claimed port of a recent external theorem.

**Exact results, hypotheses and method.** For arbitrary field `K`, `K`-modules `V,Y,W,Z` carrying additive commutative groups, and linear maps `P:V→ₗ[K]Y`, `A:V→ₗ[K]W`, `R:V→ₗ[K]Z`, `pairedLinearObservation P A x=(P x,A x)`. `pairedLinear_zero_iff` says this pair equals zero exactly if both component values are zero. `linear_fiberConstant_iff_kernelContainment` equates `∀x y,P x=P y→R x=R y` with `∀h,P h=0→R h=0`. `linear_augmented_unique_reconstruction_iff` equivalently characterizes existence of a **unique set-theoretic decoder on the actual image** of `(P,A)` by `∀h,P h=0→A h=0→R h=0`. It consumes the earlier `existsUnique_decoder_observedProfile_iff`. The proof candidate is purely algebraic: no finite dimension, topology, norm, continuity, stability, linearity of constructed decoder, bounded inverse, Farey/Hodge physical realization, phase retrieval theorem, Kakeya theorem or RH.

**Formal binding.** Declarations `GRWTSK.Logic.InformationLoss.pairedLinearObservation`, `pairedLinear_zero_iff`, `linear_fiberConstant_iff_kernelContainment`, `linear_augmented_unique_reconstruction_iff`. Initial main commit [`103d6ddc1db28e53a35295c19d943916935ea50a`](https://github.com/grwtsk/math/commit/103d6ddc1db28e53a35295c19d943916935ea50a); `GRWTSK/Logic/InformationLoss/LinearObservationKernels.lean`, blob `7930d8b88199507019d800b05852a616719bfa12`. Direct imports `GRWTSK.Logic.InformationLoss.AugmentedRepairCriterion`, blob `fa60e69e2a170c8b588227aab97d359adf04586e`, and `Mathlib.LinearAlgebra.Basic`; full transitive imports to be captured by actual executor. Toolchain pins Lean `leanprover/lean4:v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Classification and real evidence.** `source-proof-candidate`: yes. `direct-import` of an external paper theorem: **no**. `local-proved-bridge`: **not yet**. `conditional-interface`: connecting this abstract linear observation to actual Farey/Bombieri/Hodge moments. `finite-certificate`: **none newly claimed** for this source. `methodological-analogy`: inverse-problem identifiability and quotient lifting; not historical influence. `unresolved`: transitive closure and any spectral/analytic representation, quantitative inverse bounds, minimal number of measurements, source-specific positivity, and all Lean/kernel/axiom acceptance. The exact commands and expected hostile controls are in [#1120](https://github.com/grwtsk/math/issues/1120). Actual status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**, Git blob read back and no GitHub commit status checks; **no** executed `lake build`, `--trust=0`, fresh independent checker or transitive `#print axioms` receipt exists for this leaf. Runners, logs and receipts belong exclusively to `grwtsk/noeaaeue`; keep the root import withheld.


## Third implementation pass for the seven unpublished research ideas

New Lean source commit `0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

Ten new theorems in three subject-based modules. **Four completed optional/corrective obligations, ten verified partial results, 22 unresolved obligations. All seven manuscript-level claims remain open.** The newly partial obligations are K1 in each of the two distinct KL PDF versions and S5. E4 in each exceptional-group PDF version and S3 also advance without being discharged.

[Structured record](obligation-implementation-progress-v3.json) retains all 36 original specifications, exact dependencies, bibliographic metadata, page anchors and page-text hashes, and full earlier states for changed obligations. [Previous pass](obligation-implementation-progress-v2.md) remains historical. Owner understanding dates remain unknown; no historical influence is inferred.

Verification: the exact three-module `lake build … --wfail` command and external `Audit.lean` command in JSON both exited 0. All ten `#print axioms` readbacks contain only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`. Logs remain external under `MathematicsLibrary/.catalog/obligation-bridges-v3`. New results are local kernel-verified fragments with the hypotheses below; upstream variance/product infrastructure retains Mathlib attribution. No finite computation or analogy is promoted to a manuscript claim.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** Advanced finite comparison to transport of HasProd for inverse local determinant factors, given actual two-sided intertwiners at every place. Independently convergent products have equal values in a Hausdorff coefficient field. HasProd remains an explicit premise: no convergence, nonvanishing domain, bad-place/Archimedean factors, completed-function equality or analytic continuation is constructed. Totalized inversion is not asserted to be holomorphic at zeros.

- [`GRWTSK.LinearAlgebra.Matrix.hasProd_inverse_local_factors`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean#L11); blob `acb378a8503fdc98b60105c247e8f6d252e69c54`.
- [`GRWTSK.LinearAlgebra.Matrix.local_product_limits_eq`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean#L26); blob `acb378a8503fdc98b60105c247e8f6d252e69c54`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E5 — unresolved.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.
- **E5 missing construction:** Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** Advanced finite comparison to transport of HasProd for inverse local determinant factors, given actual two-sided intertwiners at every place. Independently convergent products have equal values in a Hausdorff coefficient field. HasProd remains an explicit premise: no convergence, nonvanishing domain, bad-place/Archimedean factors, completed-function equality or analytic continuation is constructed. Totalized inversion is not asserted to be holomorphic at zeros.

- [`GRWTSK.LinearAlgebra.Matrix.hasProd_inverse_local_factors`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean#L11); blob `acb378a8503fdc98b60105c247e8f6d252e69c54`.
- [`GRWTSK.LinearAlgebra.Matrix.local_product_limits_eq`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean#L26); blob `acb378a8503fdc98b60105c247e8f6d252e69c54`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E5 — unresolved.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.
- **E5 missing construction:** Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `['RA Jacob Martone']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**K1, PDF pages 2 — kernel-verified-conditional-fragment.** Constructed the rank-one matrix model T(q)=[[0,q],[1,q−1]] over any commutative ring, with T²=(q−1)T+qI, unique coordinates aI+bT and closed multiplication. With qqinv=1, qinv(T−(q−1)I) is a two-sided inverse. With v vinv=1 and q=v², C=vinv(T+I) satisfies C²=(v+vinv)C. This is an assistant-proposed rank-one construction under the intended convention. Arbitrary Coxeter generators, braid relations, Laurent coefficient implementation, bar involution and comparison with the manuscript remain missing; K1 is not discharged.

- [`GRWTSK.Algebra.Hecke.rankOne_quadratic`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L15); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_inverse`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L22); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_square`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L30); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L39); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalForm_mul`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L47); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.

**Other obligations retained:** K2 — unresolved; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K2 missing construction:** Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.
- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `['RA Jacob Martone']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**K1, PDF pages 2 — kernel-verified-conditional-fragment.** Constructed the rank-one matrix model T(q)=[[0,q],[1,q−1]] over any commutative ring, with T²=(q−1)T+qI, unique coordinates aI+bT and closed multiplication. With qqinv=1, qinv(T−(q−1)I) is a two-sided inverse. With v vinv=1 and q=v², C=vinv(T+I) satisfies C²=(v+vinv)C. This is an assistant-proposed rank-one construction under the intended convention. Arbitrary Coxeter generators, braid relations, Laurent coefficient implementation, bar involution and comparison with the manuscript remain missing; K1 is not discharged.

- [`GRWTSK.Algebra.Hecke.rankOne_quadratic`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L15); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_inverse`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L22); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_square`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L30); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L39); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalForm_mul`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L47); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.

**Other obligations retained:** K2 — unresolved; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K2 missing construction:** Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.
- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); original blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**Other obligations retained:** B1 — unresolved; B2 — unresolved; B3 — kernel-verified-conditional-fragment; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B2 missing construction:** Construct the localization/excision triangle or long exact sequence. If a direct sum is needed, construct a splitting/projector and prove compatibility with Hecke actions; a set union does not produce a split cohomology decomposition.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `['RA Jacob Martone']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); original blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**S3, PDF pages 1, 2 — kernel-verified-correction-fragment.** Added a finite probabilistic route alongside the earlier √n obstruction: square-integrable real observables under a probability measure, with exactly zero off-diagonal covariances, have aggregate variance equal to the sum of diagonal variances. A uniform diagonal bound C gives variance ≤NC; for N>0 the normalized average has variance ≤C/N. This is neither a deterministic uniform cumulative-error bound nor almost-sure convergence, and says nothing about bias without centering. Actual paper observables, probability law, exact covariance bounds, rate hypotheses and Fourier identity remain missing.

- [`GRWTSK.Probability.Moments.variance_sum_of_uncorrelated`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L16); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.
- [`GRWTSK.Probability.Moments.variance_sum_le_card_mul`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L31); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.
- [`GRWTSK.Probability.Moments.variance_average_le`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L42); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.

**S5, PDF pages 2 — kernel-verified-conditional-fragment.** Implemented the finite second-moment consumer under a supplied probability space, real L² observables and exact pairwise zero covariance. No independence conclusion is asserted; the converse would still require extra assumptions such as an actual joint Gaussian law. No arithmetic zero process, finite-family independence, limiting independence or joint Gaussian supplier is constructed.

- [`GRWTSK.Probability.Moments.variance_sum_of_uncorrelated`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L16); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.
- [`GRWTSK.Probability.Moments.variance_sum_le_card_mul`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L31); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.
- [`GRWTSK.Probability.Moments.variance_average_le`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L42); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.

**Other obligations retained:** S1 — unresolved; S2 — unresolved; S4 — kernel-verified-conditional-fragment; S6 — unresolved.

- **S1 missing construction:** Bind each named January reference to an exact catalog SHA/version and exact theorem. Eight candidate versions of four title families were inspected; title matching alone does not prove that the status note invokes either particular version.
- **S2 missing construction:** Define each arithmetic sequence, its deterministic centering and e_n before choosing a target rate. Decide whether the needed claim is ∃C∀n |e_n|≤C, a variable envelope |e_n|≤C B(n), or a normalized o(n) statement.
- **S6 missing construction:** Retain every RH/GRH hypothesis printed in the Resolution draft §4.3. If the desired downstream theorem is unconditional RH/GRH, replace that supplier by an independently proved result rather than using it circularly.

## NumberTheory

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `['RA Jacob Martone']`. PDF SHA-256 `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); original blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

**Other obligations retained:** P1 — unresolved; P2 — kernel-verified-optional-specialization; P3 — kernel-verified-optional-specialization; P4 — unresolved.

- **P1 missing construction:** Resolve each numbered Source 23/26/27/28/29 to a title, exact version and theorem/method, or explicitly leave the citation unresolved.
- **P4 missing construction:** For any proposed prime-distribution estimate, specify the actual counting/weighted source S(x), comparison M(x), domain x≥x0 and constants C≥0, then prove ∀x≥x0, |S(x)−M(x)|≤C B(x) for a named B. No bound B is supplied by this roadmap.

## Hypotheses and remaining boundaries

**Rank-one Hecke:** arbitrary commutative ring R. Coordinates are recovered from matrix entries (0,0) and (1,0); normal-form multiplication is explicitly checked for all entries, not sampled parameter values. Invertibility requires an actual qqinv=1; normalized-square identity requires v vinv=1 and q=v². No assertion of a constructed general Coxeter Hecke algebra, braid relations, bar involution, KL recurrence, basis existence/uniqueness, positivity or geometric realization follows. K2–K5 keep their previous scopes.

**Finite second moments:** a specified probability measure μ, finite indexed real observables Xᵢ with MemLp Xᵢ 2 μ, and exactly cov(Xᵢ,Xⱼ)=0 for each i≠j. Uniform diagonal variance ≤C gives Var(ΣXᵢ)≤NC. If N>0, Var(N⁻¹ΣXᵢ)≤C/N. Neither independence nor zero expectation is inferred; this variance budget alone gives no deterministic error bound, tail bound, almost-sure law or arithmetic source estimate. Source-specific covariance-decay estimates do not supply exact zero covariance.

**Infinite local products:** arbitrary place index, finite decidable square matrix index, topological coefficient field, actual UₚVₚ=VₚUₚ=I and AₚUₚ=UₚBₚ at every place, and an actual HasProd premise for the inverse determinant factors at the supplied scalar parameters. Equality of two specified limits additionally requires Hausdorff topology and HasProd for the second limit. These statements do not assert either product exists without that premise, or compare completed L-functions outside a proved domain. Analytic use still needs actual parameters, nonvanishing and all bad/Archimedean factors and continuation bridges.

## Global boundary-normalized Riesz source and two-coordinate reconstruction (#189, #966)

**Identities and classifications (2026-10-23).** This is a
`local-proved-bridge` from the source developments in
[math 9e15b32dd6b0ea23a3fc77ba1cfec5a9294d8de5](https://github.com/grwtsk/math/commit/9e15b32dd6b0ea23a3fc77ba1cfec5a9294d8de5),
“An actual integral primitive of the rational tent correction,” “Corrected
first-Riesz defect and actual normalization data,” and “A full-family
obstruction to the one-cell reconstruction” (copyright R.A. Jacob Martone,
formalization assistance OpenAI, 2026 source snapshots). No new external
paper attribution or historical influence is claimed. The new source is
pinned to [math 6dfadb36014cdc63dc667d5857b6f22cfc920b19](https://github.com/grwtsk/math/commit/6dfadb36014cdc63dc667d5857b6f22cfc920b19).

The `direct-import` methods include Mathlib's “Compactness of a closed
interval” (2021; authors Patrick Massot, Yury Kudryashov), especially
`IsCompact.exists_isMaxOn`, and “Uniform approximation” (2020; author
Sébastien Gouëzel), especially `TendstoUniformlyOn.continuousOn`, at
[Mathlib db584cd6d46c92f209a44c0f1c829460d327499d](https://github.com/leanprover-community/mathlib4/tree/db584cd6d46c92f209a44c0f1c829460d327499d).
Interval-primitive continuity is imported from `DominatedConvergence.lean`
(2019; authors Zhouhang Zhou, Yury Kudryashov, Patrick Massot, Louis
(Yiyang) Liu), with its integrability hypotheses proved on the admitted
compact intervals. These are Lean source snapshots, not journal articles.

**Proved destinations, methods and premises.**

- `GRWTSK.Analysis.Real.ContinuousMidpointAffine.chord_identity` and
  `GRWTSK.Analysis.Real.ContinuousMidpointAffine.affine_from_two`, in
  `GRWTSK/Analysis/Real/ContinuousMidpointAffine.lean`, derive complex
  affine interpolation from continuity and the midpoint equation on a
  nondegenerate closed real interval. The local proof uses a maximum of
  the norm of the endpoint-zero residual and reflection to an endpoint.
- `GRWTSK.NumberTheory.Zeta.Riemann.RieszZeroContinuity.finiteRieszZeroHead_tendstoUniformlyOn`
  and
  `GRWTSK.NumberTheory.Zeta.Riemann.RieszZeroContinuity.fullRieszZeroValue_continuousOn`,
  in `GRWTSK/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean`, prove
  compact-uniform convergence and continuity of the actual canonical
  first-Riesz zero series on `[a,b]`, `1<a`. The existing count-derived
  tail is bounded uniformly by its value at the upper endpoint, and
  each finite head is continuous by its proved derivative.
- `GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization.correctedRieszSourceDefect_affine`
  and
  `GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization.firstRieszPrefix_eq_global_normalized`,
  in `GRWTSK/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean`,
  discharge the actual regularity and affine-source gates. The global
  source equality holds for every `x>1`, `N≥3`, `x≤N`. It retains the
  literal Mangoldt first-Riesz prefix, the full canonical zero series,
  the oriented rational-density primitive at fixed base 2, and explicit
  affine coefficients determined by the exact arithmetic values at 2
  and 3. `primitive_change_base_all` proves the oriented rebasing step
  needed also for `1<x<2`; no affine defect or continuity premise is
  supplied by the caller.
- `GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoReconstruction_exact`,
  `GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoReconstruction_uniform_bound`,
  `GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoArithmetic_residual_zero`,
  and `GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoArithmetic_uniform_frame`,
  in `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean`,
  construct isolating actual Green-window rows and reconstruct both the
  genuine anchor-3 and anchor-5 cells for every `X≥10`. The reconstruction
  energy bound is `C=2/(log 2)^2` on every actual readout. Its residual
  is zero on the specified arithmetic family, with lower frame constant
  `(log 2)^2/2`. The family is the full genuine restriction-difference
  set intersected with the two-coordinate span, and both actual anchor
  packets are proved members. This construction includes the anchor-5
  witness obstructing the previous one-cell operator.

**Verification evidence.** Source commit `6dfadb36014cdc63dc667d5857b6f22cfc920b19`, Lean 4.33.0, clean
Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`:
`lake build --wfail` on the public root, fifteen previously qualified
standalone consumers and the four new modules (twenty targets) completed
with exit 0, 9,419 jobs. All four new modules passed exact-module kernel
replay, exit 0 and zero failures; unchanged source/object hashes match the
qualified baseline `9e15b32dd6b0ea23a3fc77ba1cfec5a9294d8de5`. This is
incremental kernel qualification, not fresh replay of the whole imported
environment. The 713-module closure passed the axiom audit with 22701
logical declarations and zero disallowed axioms, the coverage census with
6790 explained native-only entries and zero unexplained entries,
and the runtime-helper audit with 12 helpers and zero failures.
The actual audit commands were `lake env lean --trust=0
-DwarningAsError=true` on `FullAxiomAudit.lean`, `FullCoverageAudit.lean`
and `FullRuntimeAudit.lean`, and `lake env lean --run
KernelAffectedClosure.lean`, all exit 0. Runners, logs and bindings remain
outside math in
`/Users/think/Desktop/noeaaeue/.codex-runtime/math-global-affine-two-coordinate/`.
All 713 committed source blobs were checked against their audited hashes.

**Unresolved premises and nonclaims.** Classical zeta special-value
identification of the now-explicit affine coefficients, raw pointwise
zero-tail control and justified unsmoothing limits remain open in
[#189](https://github.com/grwtsk/math/issues/189). The two-coordinate
arithmetic family is not proved to contain the full RH application
packet. Growth in the number of required coordinates, the appropriate
application domain, terminal-column obstructions, and signed omitted-
source, other-shift and boundary estimates remain open in
[#966](https://github.com/grwtsk/math/issues/966). No RH consequence,
full-family lower frame or derivative/infinite-series interchange is
claimed.
## Case LINEAR-REDUNDANT-MEASUREMENTS-20261023 — detecting invisible directions

**Source identification:** 2026 repository-derived source, formalization assistance OpenAI. This is **not** a claimed formalization of a separately identifiable published paper: title/byline/year of any external paper, DOI/arXiv/version/theorem number are **NOT APPLICABLE**, and no historical influence is inferred from general inverse-problem or quotient-lifting similarities. Stable source reference: [main integration `4d8d30687eb00d5d6eaf258ad1b211fd867b075c`](https://github.com/grwtsk/math/commit/4d8d30687eb00d5d6eaf258ad1b211fd867b075c), `GRWTSK/Logic/InformationLoss/LinearRedundantMeasurements.lean`, blob `cb036375da2510a1580f578e54edeb3cf5405722`.

**Exact hypotheses, method and formal declarations.** In namespace `GRWTSK.Logic.InformationLoss`, with arbitrary field `K`, additive commutative `K`-modules `V,Y,W,Z`, linear maps `P:V→ₗ[K]Y`, `B:Y→ₗ[K]W`, `R:V→ₗ[K]Z`, and vector `h:V`: `postprocessed_linear_observation_kernel_iff` equates `P h=0 ∧ (B.comp P) h=0` with `P h=0`; `postprocessed_augmented_reconstruction_iff` equates the pointwise readout-kernel conditions for the pair `(P,B.comp P)` and original `P`; `detecting_invisible_direction_not_postprocessed` assumes `P h=0` **and** `A h≠0`, concludes there does not exist `B` with `A=B.comp P`. Direct supplier `GRWTSK.Logic.InformationLoss.LinearObservationKernels`, blob `7930d8b88199507019d800b05852a616719bfa12`; its own transitive repository/Mathlib closure remains to be enumerated on pinned checkout.

**Classification and evidence:** `source-proof-candidate` (three declarations). `direct-import` from an external paper: no. `local-proved-bridge`: not yet kernel accepted. `conditional-interface`: application to an actual source-specific physical/analytic observation requires an explicit proved linear map and its exact kernels. `finite-certificate`: none claimed for this leaf. `methodological-analogy`: inverse problems and quotient lifting only. `unresolved`: true finite-dimensional minimal sensor counts, continuous/quantitative inverse, admissibility, spectral/Weil properties and actual RH consequences. Validation request [#1121](https://github.com/grwtsk/math/issues/1121) pins the complete intended commands and declaration/axiom probes, Lean `leanprover/lean4:v4.33.0` and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Actual Git blob readback succeeded; commit status list was empty. **SOURCE_ONLY / COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOM_AUDIT NOT_RUN**. The issue is a queue, not an execution receipt. Operational receipts must remain outside math in `grwtsk/noeaaeue`. Root import and proof promotion remain prohibited without actual source-bound acceptance.

## Case HEAT-TURNWISE-VALIDATION-20261023 — selected normalization and letterwise obstruction

**Source identity and classification.** These four modules are 2026 repository
constructions under source-credited mathematical direction by R.A. Jacob Martone
and OpenAI formalization assistance. No independent paper title, byline, year,
DOI or theorem locator is established for these specific finite identities.
Stable code-source identity is the repair commit and blobs below. Imported
mathematics consists of the pinned Mathlib matrix, finite-field, complex norm,
real exponential/logarithm and limit libraries and the named GRWTSK dependencies.
No historical influence is inferred. Subsequent local kernel verification is
classified separately from paper comparisons and unresolved analytic premises.

The prior comparisons retain their bibliographic identities: Peter Sarnak,
*Three Lectures on the Mobius Function: Randomness and Dynamics* (2011),
[IAS record](https://publications.ias.edu/sarnak/paper/506), Definition 3 and
Conjecture 4; Ram Band, Siegfried Beckus and Raphael Loewy,
*The Dry Ten Martini Problem for Sturmian Hamiltonians* (2024),
[arXiv:2402.16703](https://arxiv.org/abs/2402.16703), equation (1.1) and Theorem 1.1.
These are **analogies/unresolved comparisons**, not imported theorems: compact
metric zero-entropy flow, continuous observables, actual Möbius average
cancellation, irrational Sturmian frequency and nonzero coupling are not supplied.
The finite diagonal heat comparison is also not a port of Rodgers–Tao's heat
integral or a proof of an algebraic Hodge conjecture. Earlier paper metadata and
hypothesis records in this ledger remain unchanged.

**Exact methods, fully qualified destinations and hypotheses.**

- `GRWTSK.NumberTheory.Farey.HeatCompensatedReturn.heatReturnCompensator_eq_inv_pow`
  and `GRWTSK.NumberTheory.Farey.HeatCompensatedReturn.heatNormalizedSpiral_eq_phase`:
  for the actual selected LR return with λ=(3+√5)/2>1, choose scalar heat
  eigenvalue one and the explicit schedule sₙ=n log λ. Then exp(−sₙ)=λ⁻ⁿ and
  the declared product with the selected spiral equals iⁿ. This is a chosen
  observation/time normalization, not an operator conjugacy or uniform recovery
  estimate.
- `GRWTSK.NumberTheory.Farey.HeatCompensatedReturn.heatNormalized_four_consecutive_zero`
  and `GRWTSK.NumberTheory.Farey.HeatCompensatedReturn.raw_return_four_not_zero`:
  exactly compensated four-sample blocks cancel; the corresponding raw first
  block is nonzero. No arbitrary-orbit cancellation is asserted.
- `GRWTSK.NumberTheory.Farey.WeightedReturnBalance.weightedFourPhase_norm_le`,
  `GRWTSK.NumberTheory.Farey.WeightedReturnBalance.compensated_four_consecutive_zero`
  and `GRWTSK.NumberTheory.Farey.WeightedReturnBalance.limit_lower_bound_of_balanced_partitions`:
  weight defects are retained exactly. The limit theorem separately requires a
  uniform lower margin, exact paired cancellation, a vanishing complete residual
  and actual convergence; finite phases do not produce those analytic premises.
- `GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel.projectiveQuadraticReadout_return`
  and `GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel.descendedQuadraticReadout_eigen`:
  Q(x,y)=x(x+y) over F₃, its declared complex sign lift, all-vector sign invariance
  and the actual sign-orbit quotient yield a nonzero −1 return eigenchannel.
  The complex sign lift is not a ring homomorphism. This is a global identity on
  the finite carrier, stronger than selected-orbit sampling but not a global
  SL₂(ℤ) scalar character.
- `GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction.no_scalar_left_extension_of_negative_return`
  and `GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction.quadraticReadout_no_turnwise_scalars`:
  an arbitrary complex readout with a full-space L-scalar law, negative H-return
  value and a **nonzero source-basepoint value** contradicts the actual L
  three-cycle. The multiplier is unrestricted; no character assumption is added.
- `GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction.wordState_append`,
  `GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction.wordSignal_sign_invariant`
  and `GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction.wordSignal_selected_return`:
  M(u++v)=M(u)M(v), so the right block acts first on a fixed column. The
  arbitrary-word matrix-state readout is sign invariant, while the selected LR
  return retains its −1 scalar law. Frame chronology is not silently replaced
  by left-to-right column updates.

**Immutable source pin.**
[`6c52e2cbe4589a5a5fad4bf8f0b44b218dd3b08f`](https://github.com/grwtsk/math/commit/6c52e2cbe4589a5a5fad4bf8f0b44b218dd3b08f),
with a source-hash-pinned local dependency closure of seventeen GRWTSK files:

| Fully qualified module | Git blob |
|---|---|
| `GRWTSK.NumberTheory.Farey.HeatCompensatedReturn` | `4307d4c61f10d5a34777e7d34f3884fc94274cb4` |
| `GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction` | `6eabd59265a723e325654907eaf853530dd2a0bb` |
| `GRWTSK.NumberTheory.Farey.WeightedReturnBalance` | `2915dbfb0a261b06d463945c8d1b1e57e1351d09` |
| `GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel` | `79943dff174eee6049a9e097ca89ae1f6ddf04d4` |

**Actual verification.** Lean `leanprover/lean4:v4.33.0`; Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`. Executed, exit zero:

```sh
lake build GRWTSK.NumberTheory.Farey.HeatCompensatedReturn GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction --wfail
lake build --wfail
lake env lean --trust=0 -t 0 /Users/think/Documents/ChatGPT/math-branch-integration-20261022/heat-turnwise-audit.lean
```

Strict build: 8,722 jobs; public root: 9,304 jobs. Fresh kernel replay:
631 transitive GRWTSK declarations, with only `propext`, `Classical.choice`
and `Quot.sound` (or none), no `sorryAx` or additional axioms. All 83 owned
declarations in the four modules, including private/generated declarations, have
reconciled type inventories and are safe. All 48 theorem/lemma headers are
unchanged. Repairs concern cast/norm projections, exact characteristic-three
reductions, proof algebra, namespace resolution and strict-build lint cleanup.
The HeatCompensatedReturn source bytes themselves are unchanged.

**Evidence and missing bridges.** These local finite identities are now
**kernel-verified bridges at their stated scope**. The conditional limit premises
remain **conditional interfaces**, finite arithmetic controls retain finite scope,
and paper comparisons remain **analogies** with **unresolved premises**. Historical
source-only comments are preserved; this dated evidence supersedes NOT_RUN only
for these pinned sources and dependency closure. Independent external/CI replay,
nonperiodic spectral or dynamical limits, uniform inverse stability, arbitrary
signed cancellation, zeta/Weil identification, Möbius cancellation, elliptic rank
and RH/GRH remain unproved. No standalone public-root imports are added.

Receipts remain outside canonical math in
`/Users/think/Documents/ChatGPT/math-branch-integration-20261022/`:
`heat-turnwise-rebuild3.log`, `heat-turnwise-public.log`,
`heat-turnwise-audit.lean`, `heat-turnwise-audit.log`,
`heat-turnwise-validated-snapshot.json`, `heat-turnwise-completion-result.json`.
Failed earlier builds remain diagnostics, not acceptance receipts. Concurrent
new Riesz/Möbius sources and later literature increments are outside this claim.


## Case FAREY-SHIFT-DUAL-20261023 — genuine Farey dual shift cocycle and periodic-data obstruction

Subsequent local verification: **FAREY-SHIFT-VALIDATION-20261023** below
records the exact repaired source blobs, successful strict compilation and fresh
trust-zero transitive audit. Earlier NOT_RUN observations here describe the
source-authoring run; analytic and dynamical missing bridges remain unresolved.

**Original paper identities, versions and theorem locators.**

1. **Boris Kalinin**, *Livšic Theorem for matrix cocycles*,
   *Annals of Mathematics* **173**(2) (**2011**),
   pp. 1025–1042, stable DOI
   [10.4007/annals.2011.173.2.11](https://doi.org/10.4007/annals.2011.173.2.11),
   [journal record](https://annals.math.princeton.edu/2011/173-2/p11);
   distinct arXiv preprint revision
   [0808.0350v2](https://arxiv.org/abs/0808.0350v2)
   (**2010** revised preprint, not the cited publication version).
   The **introductory periodic-product condition (1.1)**,
   printed p. 1025, gives the elementary **necessary**
   trivial monodromy for a pure coboundary.
   **Theorem 1.1**, printed p. 1027, proves a much
   stronger **sufficient** direction for an
   `α`-Hölder `GL(m,ℝ)` cocycle over a
   **topologically transitive compact metric
   homeomorphism with the closing property**, with
   identity ordered product for **every** periodic
   point and period; conclusion is an actual
   `α`-Hölder transfer.
   The present finite-source theorem uses **only**
   the algebraic necessary direction, already
   isolated under KALININ-LIVSIC-PERIODIC-20261023.
   The full Theorem 1.1's hypotheses are **not
   instantiated**: a one-sided full shift is not
   asserted to be an invertible hyperbolic
   homeomorphism with closing property, and the
   new source exhibits nontrivial periodic data
   rather than trivial data on all periods.
   **No sufficiency theorem is imported.**

2. **Ram Band, Siegfried Beckus, Raphael Loewy**,
   *The Dry Ten Martini Problem for Sturmian Hamiltonians*,
   **2024** arXiv preprint
   [arXiv:2402.16703](https://arxiv.org/abs/2402.16703)
   (the previously source-identified model reference is
   **v2**; [versioned source](https://arxiv.org/abs/2402.16703v2)).
   Paper **equation (1.1)** specifies the
   binary irrational-rotation Sturmian
   Schrödinger potential; the existing
   `GRWTSK.LinearAlgebra.Sturmian.bit`
   codes a half-open rotation interval.
   The reported **Theorem 1.1** solves all
   predicted gaps open for **irrational
   rotation frequency** and **nonzero
   Schrödinger coupling**, through an
   infinite spectral-tree/periodic
   approximation argument.
   The new code uses **only the finite binary
   rotation coding** as a chosen turn schedule
   on nonnegative sites; **no nonzero-coupling
   operator, infinite tree, IDS, or gap claim
   is formalized or imported**. The source
   paper's analytical conclusions are
   `methodological-analogy` only.
   No historical intellectual influence
   follows from reuse of the model.

**Exact locally formalized method and hypotheses.**
The earlier `GRWTSK.NumberTheory.Farey.GroupSuperwalk`
proves the actual positive turn word's
right-frame action `frame (walk I w)
=frame I*wordUnit w`, preserving positive
denominators and the determinant-one Farey
orientation of `Cell I`. Its chronological
shear matrices are `L=[[1,0],[1,1]]` and
`R=[[1,1],[0,1]]`.
The earlier `TurnwiseScalarObstruction.modThreeWord_append`
records `M(u++v)=M(u)M(v)`
for the same actual sourced matrices over
`ZMod 3`. The earlier
`GRWTSK.LinearAlgebra.CocycleProduct`
uses a **different** newest-factor-left
product convention for a base map `T`.
The new module defines the literal
one-sided full-shift source space
`Schedule=ℕ→Turn`,
`shift(ω)(k)=ω(k+1)` and
`chronologicalPrefix(ω,n)=[ω(0),...,ω(n-1)]`.
All (n∈ℕ) and all schedules are quantified:
there is **no** periodicity assumption
for the basic source matrix comparison.

Using the actual source turn shear
`turnShear t : Mat3`, its determinant
is **one**, and its **transpose**
is an actual group element in Mathlib's
`Matrix.SpecialLinearGroup (Fin 2) (ZMod 3)`.
With `dualStep(ω)=(turnShear (ω 0))ᵀ`,
the exact full-group cocycle product is

```text
(cocycleProduct shift dualStep n omega : Mat3)
  = (modThreeWord (chronologicalPrefix omega n))ᵀ.
```

**Transpose is necessary to reconcile the
right-acting chronological Farey FRAME word
with the newest-left cocycle convention**;
the source does not assume shear
commutativity or disguise a reversed
column-vector action as the actual
chronological Farey-cell refinement.

The exact full-shift schedule
`repeatLR(n)=left` at even n and
`right` at odd n is a genuine
period-two point: `shift^[2] repeatLR
= repeatLR`.
Its source prefix is `[left,right]`,
and its periodic monodromy is
`(LR)ᵀ=[[1,1],[1,2]] mod 3≠I`
as an actual `SL₂(F₃)` group element.
The new source consumes only the **already
stated necessary** periodic-data
obstruction to establish that the
entire full-shift cocycle is not a
global pure group coboundary, and that
no globally defined gauge can trivialize
this periodic monodromy.
A parameterized version preserves
**both** hypotheses `shift^[n] ω=ω`
and `modThreeWord(prefix ω n)≠I`;
it asserts neither premise for arbitrary
infinite streams or an aperiodic subsystem.

The source-defined rotation adapter
`sturmianTurns α ξ n` is **exactly**
`left` when the earlier
`Sturmian.bit α ξ (n:ℤ)=1`,
and `right` otherwise.
Its all-n matrix comparison is a
source-level specialization of the
full-shift identity. **No** claim
that this coding is nonperiodic,
one-sided shift invertible,
zero entropy, closing/hyperbolic,
Hölder, spectral, or analytically
equivalent to the real Schrödinger
transfer is smuggled into its type.
In particular **the periodic full-shift
witness is not assumed in the orbit
closure of an irrational Sturmian
sequence**. No Sarnak disjointness,
Siegel-zero, Hodge conjecture or RH
implication follows.

**Formal declarations and exact main source identity.**
New module
`GRWTSK.NumberTheory.Farey.FareyShiftCocycle`,
path `GRWTSK/NumberTheory/Farey/FareyShiftCocycle.lean`,
first integrated on existing `grwtsk/math`
main by routine non-force commit
[`a6f2d2bc30e6fb8f056f5c371147a6d0e21fbe3e`](https://github.com/grwtsk/math/commit/a6f2d2bc30e6fb8f056f5c371147a6d0e21fbe3e),
source Git blob **`50b0a865a550341322e64615419461b998546e17`**.
The mathematical scope document
[`farey-shift-dual-cocycle.md`](../../../mathematics/NumberTheory/Farey/farey-shift-dual-cocycle.md)
was integrated at
`9faa4da15eed992fb0423cf2514be497f2ce7a94`,
historical doc blob `cdc7c0a6f36f4dd68924c9f26a36ae88a8f0560f`; reconciliation commit `2f995ddc1e1cff8b5ce21627c0c71c46cd903361` has current doc blob `713a0806789849297aefa9eeb63a817bc4da385f`.

Full declaration names have prefix
`GRWTSK.NumberTheory.Farey.FareyShiftCocycle.`:
`Schedule`, `shift`,
`shift_iterate_apply`,
`chronologicalPrefix`,
`chronologicalPrefix_matrix_succ`,
`chronological_farey_frame`,
`det_turnShear`, `SL3`,
`dualTurn`, `dualTurn_coe`,
`dualStep`,
`dualCocycle_sourceMatrix`,
`repeatLR`,
`repeatLR_shift_period_two`,
`repeatLR_prefix_two`,
`repeatLR_periodic_matrix`,
`repeatLR_monodromy_ne_one`,
`fullShift_no_pure_coboundary`,
`fullShift_no_gauge_trivializes_LR`,
`nontrivial_word_dual_product`,
`periodic_source_word_not_coboundary`,
`periodic_source_word_resists_gauge`,
`sturmianTurns`,
`sturmianTurns_left_iff`,
`sturmian_source_dual_product`.

**Exact direct imports and source identities:**
`GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction`,
introductory source blob `ba99ad673f032e44eb14a4564f5488cfd31af0f1` but **current exact replay-snapshot blob** `6eabd59265a723e325654907eaf853530dd2a0bb`;
`GRWTSK.LinearAlgebra.PeriodicCocycleData`,
blob `11ca2a896e8844dcb483ce9c910c1bb07ae857e1`;
`GRWTSK.LinearAlgebra.Sturmian`,
blob `9bb5e76caaab1c4cd0a9df067e791f9996c42d48`;
`Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup`
and `Mathlib.Tactic` from pinned Mathlib.
Earlier `TurnwiseScalarObstruction`
transitively imports the true
`GroupSuperwalk`,
`ReturnAngularChannel`,
`ProjectiveQuadraticChannel`
(**current proof-repaired source blob**
`79943dff174eee6049a9e097ca89ae1f6ddf04d4`,
not historical introductory blob
`b07cb18412f3e64f42d2916fea91b1e59b2228c2`)
and the Farey polynomial sources.
The operator-cocycle supplier
`CocycleProduct.cocycleProduct_gauge`
is not a constructed source-specific
analytic normalizer.
The full transitive imports,
generated helpers and axiom closure
must be inventoried at the checked
revision, not inferred from names.

**Separate logical classifications.**
`imported-mathematics`: maintained
GRWTSK Farey right-frame/word and
newest-left cocycle theorems, plus
the actual Mathlib group of
determinant-one matrices.
`source-proof-candidate`: all new
Lean proofs, including the
matrix transpose bridge and
full-shift periodic no-coboundary
result.
`conditional-interface`: the
general source-word obstruction
requiring an exact closed schedule
and nonidentity finite source word.
`finite-certificate`: independent
exhaustive `ZMod3` products
for 511 words of lengths 0..8,
and 11,760 concrete conjugations
by the 24 elements of
`SL₂(F₃)`, including all 490
nonidentity words; exact Python
arithmetic, **not Lean proof**.
`methodological-analogy`: Kalinin's
sufficient Livšic regularity and
Band–Beckus–Loewy's
nonzero-coupling infinite-volume
spectral tree.
`unresolved`: the actual minimal
irrational Sturmian orbit closure,
its aperiodicity/quantitative
regularity, all-periodic-data
compatibility on that restricted
dynamical system, a correct
operator-gauge comparison and
all analytic limit/spectral
estimates.
No new `kernel-verified bridge`
or `PAPER_TO_LEAN_BRIDGE_PROVED`
is claimed without real execution.

**Actual verification:** `SOURCE_ONLY /
NOT_RUN / NOT_KERNEL_AUDITED` for the
new `FareyShiftCocycle` source.
Pinned toolchain
`leanprover/lean4:v4.33.0`,
Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The interactive runtime has no
`lean`, `lake` or
`leanchecker` executable.
No `lake build --wfail`,
direct Lean elaboration,
fresh native kernel checking,
`#print axioms`,
private/generated/unsafe/native
closure audit, or independent
external verification has run
**for this new leaf**.
The earlier separately scoped
accepted Farey parents and their
receipts **cannot be transferred**
to this new module or to the
`TurnwiseScalarObstruction` and
`ProjectiveQuadraticChannel`
source-only obligations (their
requests remain independent).
An exact-commit passive request is now queued:
[math #1123](https://github.com/grwtsk/math/issues/1123)
and the separate authorization-gated effectful/receipt
handoff [noeaaeue #391](https://github.com/grwtsk/noeaaeue/issues/391).
Both are pinned to **math main commit**
`37f087dce1217c96a408fe99c489a3d168423949`,
Git tree `15f65387bd268002ddfc36e2f30bd572f19536d8`,
source blob `50b0a865a550341322e64615419461b998546e17`,
and the exact concurrently repaired parent source blobs
recorded above. They are **QUEUED only**:
no runner has been dispatched, no Lean build/kernel/audit
was executed and no mathematical result was promoted.
Operational runners, receipts
and mutable execution state
belong in `grwtsk/noeaaeue`,
not this mathematical source ledger.

**Missing bridges and explicit nonclaims.**
The source proves in its proposed
Lean statements neither
`Irrational α` nor
`0<α<1` for any concrete
`sturmianTurns`; it
does not establish an actual
restricted Sturmian dynamical
system in the Lean type,
identify the finite dual cocycle
with the real Schrödinger
transfer, import or prove
the dry spectral-gap theorem,
construct Kalinin's Hölder
transfer or an admissible
bounded/tempered gauge,
supply actual zero-entropy
flows/Möbius cancellation,
or derive prime-density,
Siegel-zero, zeta or
Riemann-Hypothesis conclusions.
This is a source-preserving
finite algebraic bridge only.



## Case LINEAR-MEASUREMENT-NECESSITY-20261023 — exact invisible-direction witness

**Source/reference boundary.** This is a 2026 repository-derived mathematical source with formalization assistance by OpenAI; it is NOT a claimed theorem from an external paper. Published title, authors, year/version, DOI/arXiv and paper theorem locator: **NOT APPLICABLE**. Similarity to phase retrieval and quotient lifting is a **methodological analogy**, not historical influence or an imported theorem.

**Formal mathematical content and exact hypotheses.** For any field `K`, additive commutative K-modules `V,Y,W,Z`, and K-linear maps `P:V→ₗ[K]Y`, `A:V→ₗ[K]W`, `R:V→ₗ[K]Z`: `GRWTSK.Logic.InformationLoss.extra_detects_relevant_invisible_direction` assumes pointwise recovery `∀h, P h=0→A h=0→R h=0` and a vector `h` with `P h=0` and `R h≠0`; it concludes `A h≠0`. `GRWTSK.Logic.InformationLoss.unresolved_direction_refutes_unique_reconstruction` uses explicit `P h=0`, `A h=0` and `R h≠0` to refute existence of a unique set-theoretic decoder on the actual image of paired observation. No dimension bound, minimal sensor count or analytic-stability theorem follows.

**Source identity and consumers.** Integrated main source [`13742de84a8b9f93d3240141927e7863e059ffaf`](https://github.com/grwtsk/math/commit/13742de84a8b9f93d3240141927e7863e059ffaf), `GRWTSK/Logic/InformationLoss/LinearMeasurementNecessity.lean`, blob `b7ee0761c291a235ce14208c0d45160271bf6260`; direct import `LinearRedundantMeasurements` blob `cb036375da2510a1580f578e54edeb3cf5405722`, then `LinearObservationKernels` blob `7930d8b88199507019d800b05852a616719bfa12` and its transitive closure. Not root imported.

**Categories and evidence.** `source-proof-candidate`: both declarations; `direct-import` external paper theorem: none; `local-proved-bridge`: not established; `conditional-interface`: a concrete Farey/Bombieri/spectral readout must supply actual maps and the relevant invisible vector; `finite-certificate`: none claimed; `methodological-analogy`: phase retrieval/identifiability; `unresolved`: minimal sensor counts, stability and actual spectral/analytic realization. Verification [#1122](https://github.com/grwtsk/math/issues/1122) records full command requests, immutable dependencies, Lean 4.33.0/Mathlib db584cd6d46c92f209a44c0f1c829460d327499d and expected controls. Actual status **SOURCE_ONLY / COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN**; source Git readback succeeded, commit status list empty. No executed stdout/stderr or kernel receipts; retain runners/receipts outside math in `grwtsk/noeaaeue`.

## Case RH-W01-WEIL-IMAGE-20261023 — reviewed paper context and arithmetic-image positivity boundary

Integration note: NOT_RUN statements below describe the isolated authoring
audit, not the absence of all earlier local verification. The separate local
PR #1092 completion receipt at math `b9c830170615ea5fc92ea988252891a1808ea074`
records strict build (3,909 jobs), public build (9,304 jobs), and trust-zero
audit (2,928 GRWTSK declarations; 22 owned types). See external
`/Users/think/Documents/ChatGPT/math-branch-integration-20261022/pr1092-completion-result.json`
and its pinned snapshots/logs. These verify a local finite countermodel only;
no classical-paper criterion bridge or independent external replay follows.

**Scope / audit date (2026-10-23).** This is the paper-to-formalization record for the
one RH-W01 finite square-tent image-positivity increment formerly in
[draft PR #1092](https://github.com/grwtsk/math/pull/1092), associated with
[issue #197](https://github.com/grwtsk/math/issues/197).
PR #1092 was subsequently merged outside this execution and its head
branch deleted; **that merge is source integration, not accepted kernel evidence**.
This provenance-only update is isolated on
`docs/rh-w01-bombieri-weil-provenance-20261023` based on
`grwtsk/math@0e2b3ff51073e44dc6674063c10696a1f1d30626`.
The live RH-facing terminal consumer remains
`GRWTSK.RiemannHypothesis.WeilPositivityImpliesRH.proof`;
its concrete classical zeta source/form/criterion record is **not inhabited**
by the arithmetic-image construction.

### Three identifiable publications and their exact relationships

**RH-W01-P1 — source hypothesis encoding, not an imported proof.**
Enrico Bombieri, *Problems of the Millennium: the Riemann Hypothesis*,
Clay Mathematics Institute official problem account (2000; collected in
*The Millennium Prize Problems*, 2006), section
**V. Further evidence: the explicit formula**, printed pp. 8–9.
Stable original: https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf
and https://www.claymath.org/millennium/Riemann-Hypothesis/ .
The account's `W` consists of specified complex functions on the
positive half-line, piecewise continuously differentiable with finitely
many first-kind discontinuities and averaged endpoint values for
function/derivative, with some `δ>0`, growth `O(x^δ)` at zero and
`O(x^(-1-δ))` at infinity. The Mellin convention is `dx/x`.
The autocorrelation criterion additionally requires the **two distinct**
vanishing integrals `∫ g(x) dx/x = 0` and `∫ g(x) dx = 0`;
its explicit formula retains primes/powers, archimedean terms, pole and
symmetrically summed nontrivial zeros and uses its **printed sign convention**.
Only the two zero-moment requirements are encoded as the repository's
`BombieriZeroMomentConditions` and tested against canonical tents.
That record does **not** implement the whole class `W`, convolution,
the stated sign, test topology, or a Weil→RH implication.
Relationship: `direct-hypothesis-encoding` (local and partial),
`source-proof-candidate`, `unresolved`. There is **no direct paper
theorem import** and **no kernel-verified paper-to-Lean bridge**.

**RH-W01-P2 — classical RH-facing criterion context only.**
Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of
prime numbers, I*, *Rendiconti Lincei. Matematica e Applicazioni*,
series 9, **11** (2000), issue 3, pp. 183–233.
Permanent archival record
https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0 ;
**MR1841692**. No unverified DOI is assigned.
The article's abstract identifies **positive semidefiniteness of its
specific Weil quadratic functional** with RH; it analyzes a minimum in the
unit ball of an `L²` space of functions supported in `[-t,t]`,
positive definiteness at sufficiently small `t`, and finite Fourier
truncations. Its stated finite-inertia conclusion is conditional on RH
failing with only **finitely many off-critical-line nontrivial zeros**,
and on a **sufficiently large truncation**: the number of negative
eigenvalues is half the number of zeros failing RH under its conventions.
A numbered theorem locator, translation of multiplicity conventions,
full test space and normalization were **not independently authenticated**
in this increment, so these are **abstract/method-level comparisons,
not imported proof terms**.
The local `WeilPositivityImpliesRH`/`WeilPositivityIffRH` records
require actual Lean proof fields for the *chosen form and test space*.
They are **conditional interfaces**, not paper-derived inhabitants.
The local square-tent-image countermodel is a **repository-authored
algebraic obstruction**, not a theorem asserted by Bombieri.
Relationships: `conditional-interface`, `methodological-analogy`,
`source-proof-candidate` for the independent countermodel,
`unresolved`. No identified kernel-verified analytic criterion bridge.

**RH-W01-P3 — comparison of signed finite Hermitian mechanisms only.**
Levent Alpöge and Ralph Furman,
*More than two thirds of the zeta zeros are simple and on the critical line*,
2026 preprint, first submitted **2026-08-13**,
https://arxiv.org/abs/2608.13637 ,
DOI-form stable arXiv identifier https://doi.org/10.48550/arXiv.2608.13637 .
The arXiv abstract was compared on 2026-10-23; a specific revision's
PDF bytes and theorem-text hash were **not** pinned here.
The paper's stated unconditional zeta result is a proportion of at least
`2/3` simple zeros on the critical line and `5/6` distinct zeros
(counted in its multiplicity/height-asymptotic conventions), sharpened
by its Montgomery–Taylor window to approximately `0.6725` and
`0.8362`. Its mechanism combines an **actual finite compression of
Weil's Hermitian form**, Sylvester inertia, a rank–trace bound, and
the specific explicit-formula/second-moment and zero-counting inputs.
The local negative-complement example is **not** its finite compression,
does not realize the paper's signed matrix or estimates, and yields
**no zero proportion**. Relationship: `methodological-analogy` only;
no theorem or external Lean implementation is imported, no historical
influence is inferred from similarity.

### Exact local source bindings: fully qualified declarations, commits and blobs

All current-snapshot paths below are within **`grwtsk/math`** and
pinned to `0e2b3ff51073e44dc6674063c10696a1f1d30626`; a blob
identifies the precise file bytes at that snapshot.
Their status is **source present, NOT_RUN for this provenance audit**,
not a claim that the corresponding Lean theorem was kernel checked.

| Publication relation and classification | Actual fully qualified declarations and hypotheses | Exact path / blob at pinned source commit |
| --- | --- | --- |
| P1: partial published **moment-hypothesis encoding**, plus local source proof candidates | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction.BombieriZeroMomentConditions`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction.canonicalTentReal_ordinaryMoment_pos`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction.no_bombieriScaledCanonicalTentRealization`. The last assertion excludes an **unmodified nonzero scalar-rescaled** tent as an admissible two-moment family, not any transformed or corrected tent. | `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean`; blob `cc9ed5b34159242ac69eb569f80e1ea7b420fa53` |
| P1: local two-tent **moment-rank source candidate** | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction.twoTentMomentDeterminant_pos`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction.combination_eq_zero_of_bombieriMoments`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction.no_nondegenerateTwoTentMomentCorrectedPair`. Their domain is the first **two source tents**, with independently specified real ordinary and reciprocal moments; not the whole classical `W`. | `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean`; blob `e522772381075f125453ef2ba6b30e63d2873910` |
| P1: local **three-tent cofactor source candidate**, not a classical Weil pairing | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection.correctedThreeTent_zeroMoments`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection.exists_nonzero_threeTent_zeroMoments`. Hypotheses and output concern the actual stage-two/three/four source tents and their two linear moment functionals; no arbitrary test-space density. | `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean`; blob `644be0606ac195f35c8409f8877a707edb2aa457` |
| Arithmetic source **direct local import**, not an external paper theorem import | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization.arithmeticCrossCoefficient_diag_eq_mangoldt`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization.sourcePolarizedForm`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization.sourcePolarizedForm_self_re_nonnegative`. Inputs: `M : ℕ`, coefficient vectors `Combination M := Fin (M+1) → ℂ`; off-diagonal entries vanish from source window disjointness and diagonal entries equal authentic prime-power `stageEnergy`/`squareTentMangoldt`. The proved-in-source sign is **nonnegative finite arithmetic Hermitian diagonal**, not the classical Weil sign. | `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean`; blob `f33d5f402160bc141115c450f1488c103e9cf131` |
| P2: **conditional formal Weil criterion**, no concrete classical inhabitant | `GRWTSK.RiemannHypothesis.WeilHermitianForm.PositiveDiagonal`; `GRWTSK.RiemannHypothesis.WeilPositivityImpliesRH.proof`; `GRWTSK.RiemannHypothesis.WeilPositivityIffRH.proof`; `GRWTSK.RiemannHypothesis.PositiveNormalizationTransport.sourcePositive_of_repoPositive`. Hypotheses: a named `WeilTestSpace`, matching Hermitian form, correct source bindings, a **real positive scale** and linear equivalence where transported, and **actual proof field** for the relevant RH direction. No field is filled by this paper citation. | `GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean`; blob `29d8c4f1c741ab25f6abd136a3c3c2eb900da69a` |
| P2: **conditional all-pairs transport obstruction** | `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.ExactSourceBoundTransport`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.ExactSourceBoundTransport.positiveCone_preserved_on_image`; `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.no_exactSourceBoundTransport_of_nonzeroCross`. A target `GuinandWeilCompactSupportModel` and **actual** polarized equality/positive scale are explicit *assumptions*, not built instances. Output is image nonnegativity or conditional nonexistence upon a **source-bound nonzero classical cross** witness. | `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean`; blob `2c25cac04fe5575ac0242349a2dcc5592d19f0bb` |
| P2/P3 contextual analogy only; **repository-authored new diagnostic source proof candidate** | Exact fully qualified declarations are individually enumerated immediately below this table. Original source in PR #1092: commit `8099b5be5a0a419ed6840a5721811e77db398b94`, original blob `47a674ba4f5005c28f16a8a818dcde3beec1d37e`. The repaired current-snapshot source is not a Bombieri or Alpöge–Furman theorem. | `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean`; current blob `c070463ad0d2ae87d9119030131fdd60b4fecf2b` |
| P3: independent local **negative-sector comparison**, analogy only | `GRWTSK.LinearAlgebra.SignedWeilComparisonGate.PositiveGramComparison`; `GRWTSK.LinearAlgebra.SignedWeilComparisonGate.negativeWitness_forces_comparisonError`; `GRWTSK.LinearAlgebra.SignedWeilComparisonGate.signed_not_positive_from_positive_metric`. Assumed `G(x)≥0`, independent `q(x)≤-μ` with `μ≥0`, and `|q(x)-G(x)|≤ε(x)` give `μ≤ε(x)`. None supplies a classical Weil form, zero divisor, zero-density theorem, or a source-furnished `ε`. | `GRWTSK/LinearAlgebra/SignedWeilComparisonGate.lean`; blob `6f81cabc4b5c9a7fc60c3a9a742588dc6ac0399f` |

**Full new-module Lean source declaration identifiers** (definitions, structural lemmas, and two obstruction conclusions; local source candidates, not kernel receipts):

```lean
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.Extension
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.arithmeticEmbed
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionForm
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionDiagonal
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.arithmeticEmbed_injective
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionForm_arithmeticEmbed
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionForm_hermitian
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionForm_add_left
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionForm_add_right
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionForm_smul_left
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionForm_smul_right
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionDiagonal_arithmeticEmbed_nonnegative
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.negativeDirection
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.negativeDirection_not_in_arithmetic_image
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.extensionDiagonal_negativeDirection
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.arithmetic_image_positivity_does_not_imply_global
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.not_globally_nonnegative
```

The **new canonical observable** is only the real diagonal of
`extensionForm` on `Extension M := (Fin (M+1) → ℂ) × ℂ`.
With inherited `A_M(u,v) := sourcePolarizedForm u v`, let
`B_M((u,a),(v,b)) := A_M(u,v) - conj(a)*b`,
`q_M(x) := Re B_M(x,x)`, and `e(u):=(u,0)`.
For each natural `M`, the source candidate proves:
```
Function.Injective e
∧ (∀ u v, B_M (e u) (e v) = A_M u v)
∧ (∀ u, 0 ≤ q_M (e u))
∧ (∃ x, x ∉ Set.range e ∧ q_M x < 0).
```
The **exact finite witness** is `x=(0,1)`, outside the arithmetic
image, with `q_M(x)=-1`. The argument is an algebraic countermodel,
without a height cutoff, limit, truncation error, interval enclosure
or external sign certificate. The *positive* property is precisely
nonnegativity of **every diagonal in the finite arithmetic image**.
The complement is **strictly negative**, so the larger Hermitian form
is **not** globally positive semidefinite. No positive kernel,
measure, trace/state, averaged, asymptotic or classical Weil positivity
is claimed. The extra direction is deliberately synthetic; it cannot
be identified with a genuine Weil admissible test without a theorem.

### Separate claim and evidence classification

| Category | Exactly what is and is not supported here |
| --- | --- |
| **Imported mathematics** | Existing Mathlib algebra and repository's actual finite prime-power stage identities are imported *as source dependencies*. No paper's Weil criterion theorem, Bombieri finite-inertia result, Alpöge–Furman rank–trace theorem or `Zeta23` source is imported. Source visibility alone says nothing about the transitive kernel status of these imports. |
| **Kernel-verified local paper bridges** | **NONE established by this audit.** No matching warning-clean build + fresh kernel acceptance + full transitive axiom receipt for these exact snapshot declarations was presented. |
| **Source proof candidates** | Bombieri two-moment tests and rank obstruction, three-tent cofactor, arithmetic Gram, and the new synthetic extension counterexample. They are written proof scripts, **not claimed ELABORATED or KERNEL_CHECKED**. |
| **Conditional interfaces** | `WeilPositivityImpliesRH.proof`, `WeilPositivityIffRH.proof`, `PositiveNormalizationTransport`, `ExactSourceBoundTransport`; the required exact classical theorem/form and transport inhabitants are **not built**. |
| **Finite evidence** | Explicit `(0,1)` / `-1` synthetic fixture; historical exact finite arithmetic computations, if cited elsewhere, are **not** the full analytic criterion, a Lean kernel receipt, or finite-height zeta completeness. |
| **Analogies / comparisons** | Bombieri's particular classical Weil functional and Alpöge–Furman's finite signed compression illuminate where form sign and test-space coverage matter. Neither implies this local extension equals those paper forms or was historically influenced by them. |
| **Unresolved premises** | Actual admissible Weil class and its topology, both moment/regularity conditions and correct Mellin/involution conventions, full prime/gamma/pole/zero explicit-formula identity, source-normalized *all-pairs* Hermitian comparison, zero multiplicities/height tails, positive-scale sign conversion, proof-field instantiation, density or surjectivity plus *form continuity*, and full-test nonnegativity. |
| **Actual RH consequence** | **NONE** for the synthetic obstruction. It blocks the invalid arrow finite-image PSD → arbitrary larger target PSD. Even if a named criterion were separately accepted, the source does **not** supply its global positivity premise. |

**Provenance graph, not contributor percentages:**
`Bombieri Clay §V` → (only the two-zero-moment *hypothesis
encoding*) → `CanonicalSquareTentBombieriMomentObstruction`;
`repository prime-power arithmetic` → (locally imported source)
→ `CanonicalSquareTentPolarization` → (source-only exact extension)
→ `CanonicalSquareTentImagePositivityObstruction`;
`Bombieri 2000 Lincei` → (criterion *context only*) →
`WeilPositivityImpliesRH` (conditional field, **no proof import**);
`Alpöge–Furman 2026` ↔ (comparison only, **no proof edge**)
`SignedWeilComparisonGate` / the synthetic extension.
The original human mathematical direction and formalization-assistance
attribution are preserved in the source-file headers. Similarity is
not evidence of intellectual derivation, priority, historical
influence, or a new theorem from any cited author.

### Exact validation record, executable-request boundary and next obstruction

**Actual evidence as of this review.** Source/blob readbacks on the
pinned `0e2b3ff51073e44dc6674063c10696a1f1d30626` snapshot
and introduction `8099b5be5a0a419ed6840a5721811e77db398b94`
were successful. A GitHub commit-status lookup for the audited main
pin and earlier introduction returned **no status contexts**; absence
of a status context is not a build failure and is not evidence of
a successful build. Available local execution preflight:
`git=/usr/bin/git`; `lake=NOT_FOUND`,
`lean=NOT_FOUND`, `lean4checker=NOT_FOUND`,
`leanchecker=NOT_FOUND`. No Lean/Lake command ran here.
Consequently **`SOURCE_DRAFT` / `NOT_RUN` /
`NOT_KERNEL_AUDITED` / `NO_RECEIPT`** for this audit;
`ELABORATED`, `KERNEL_CHECKED`, `TRUST_AUDITED`,
`EXTERNALLY_REPLAYED`, and
`ANALYTIC_PREMISES_DISCHARGED` are **not established**.
No exit code, checker output, axiom closure or receipt URL may be
fabricated. The older scoped acceptance evidence in
[issue #100](https://github.com/grwtsk/math/issues/100) does
**not** transfer to later source or different import closures.

**Requested commands only, not receipts**, for an authorized host
using Lean `leanprover/lean4:v4.33.0` and Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`:
```sh
git checkout --detach 0e2b3ff51073e44dc6674063c10696a1f1d30626
lake env lean --version
lake build GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction
lake env lean --trust=0 GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean
cat >/tmp/rh-w01-axiom-audit.lean <<'EOF'
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction
#print axioms GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.arithmetic_image_positivity_does_not_imply_global
#print axioms GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction.not_globally_nonnegative
#print axioms GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization.realTargetForm_diagonal_nonnegative
EOF
lake env lean --trust=0 /tmp/rh-w01-axiom-audit.lean
# Fresh kernel-check the built .olean with the version-compatible Lean checker;
# record the actual checker invocation, exit status, and full transitive axiom closure.
```
The exact module, transitive imports, command/environment versions,
exit statuses, full trusted kernel/axiom and unsafe/oracle closure,
and independent replay must be recorded **at that same source SHA**.
A passive request, a `#print axioms` line in documentation, and a
GitHub merge are not such evidence. Effectful controllers,
runner scripts, generated or signed execution receipts, mutable
artifacts and replay outputs belong **outside** `grwtsk/math`,
in `grwtsk/noeaaeue`, keyed by exact math commit.
Do not dispatch a remote run without explicit authorization, use
Railway, merge a documentation PR, force-push, or change `GRWTSK.lean`.

**Single next mathematical obstruction (unchanged):** construct
a *concrete* classical zeta `WeilTestSpace` and
`WeilHermitianForm`, realize admissible canonical source tests
with exact Mellin/explicit-formula sign/normalization, and prove an
actual coverage+density+continuity (or all-test comparison) theorem
transferring the independently reconstructed arithmetic nonnegativity
to `form.PositiveDiagonal`; alternatively exhibit an exact
classical complementary-direction diagonal contradicting that
specific transport. **No such bridge is proved by this increment.**


## Case JOINT-LINEAR-IDENTIFIABILITY-20261023 — common-kernel obstruction

**Reference and classification.** Repository-derived algebraic result authored as Lean source in 2026 with OpenAI formalization assistance; no externally identified publication theorem is claimed. External paper title/byline/year/version/stable DOI/arXiv/theorem: **NOT APPLICABLE**. Quotient-lifting and inverse-problem identifiability are **methodological analogies**, not evidence of historical influence. `direct-import` of paper mathematics: none; `local-proved-bridge`: none accepted; `source-proof-candidate`: both below; `conditional-interface`: applications to actual spectral or arithmetic observations; `finite-certificate`: none newly claimed; `unresolved`: quantitative dimension/rank, stable inversion and analytical source maps.

**Exact statements and hypotheses.** Arbitrary field K and additive commutative K-modules V,Y,W; P:V→ₗ[K]Y, A:V→ₗ[K]W. `GRWTSK.Logic.InformationLoss.pairedLinear_injective_iff_common_kernel_zero` asserts injectivity of the paired function x↦(P x,A x) iff `∀h, P h=0→A h=0→h=0`. `GRWTSK.Logic.InformationLoss.pairedLinear_not_injective_of_common_kernel` assumes explicit h with P h=0, A h=0 and h≠0, and derives noninjectivity. No finite dimensionality or minimal sensor count asserted.

**Immutable binding and evidence.** Integrated math main [`b6cfa2bde16e9d4779cb79475f06f48e992f95c6`](https://github.com/grwtsk/math/commit/b6cfa2bde16e9d4779cb79475f06f48e992f95c6), source `GRWTSK/Logic/InformationLoss/JointLinearIdentifiability.lean`, Git blob `5d1540260dcf60e40dbee26cfd70357551bdaf86`. Direct supplier `LinearMeasurementNecessity` blob `b7ee0761c291a235ce14208c0d45160271bf6260` and its recursively imported math/Mathlib closure. Verification request [#1124](https://github.com/grwtsk/math/issues/1124) pins Lean 4.33.0, Mathlib db584cd6d46c92f209a44c0f1c829460d327499d, exact commands and required declaration/trust-zero/fresh-kernel/transitive-axiom checks. Actual evidence: Git blob readback only, commit status checks empty; **COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN**. Operational receipts belong outside math in `grwtsk/noeaaeue`; no root import.


## Case KERNEL-RESTRICTED-DETECTION-20261023 — sufficient observation condition

**Bibliographic boundary.** Repository-derived 2026 linear algebra with OpenAI formalization assistance, not a port of an external paper; paper title, byline, version/year, DOI/arXiv and theorem locator **NOT APPLICABLE**. Quotient lifting and identifiability are analogies; historical influence not inferred.

**Exact declarations and hypotheses.** `GRWTSK.Logic.InformationLoss.pairedLinear_injective_iff_extra_detects_old_kernel` restates the exact common-kernel condition. `GRWTSK.Logic.InformationLoss.pairedLinear_injective_of_kernel_restriction` assumes for all `x,y:V`, `P x=0`, `P y=0` and `A x=A y` imply `x=y`; it concludes that the paired observation is injective. `GRWTSK.Logic.InformationLoss.readout_recoverable_of_kernel_restriction` assumes `∀h:V,P h=0→A h=0→R h=0` and yields exactly one set-theoretic decoder of R on the attained image of (P,A). Arbitrary field K, additive commutative K-modules V,Y,W,Z, and K-linear P,A,R. This does not assert linearity/continuity of decoder or a finite-dimensional rank or minimal measurement bound.

**Immutable source.** Math main [`65f713dac8a849471f794852ba49f3ca5af5fad4`](https://github.com/grwtsk/math/commit/65f713dac8a849471f794852ba49f3ca5af5fad4), `GRWTSK/Logic/InformationLoss/KernelRestrictedDetection.lean`, blob `242fdd63d842b1fe7b14efb1727f1f198656324e`; direct import `JointLinearIdentifiability`, blob `5d1540260dcf60e40dbee26cfd70357551bdaf86` and complete transitive closure still pending actual inspection on executor.

**Status classification.** `source-proof-candidate` yes; `direct-import` external paper theorem no; `kernel-verified bridge` not established; `conditional-interface` any concrete Farey/Bombieri/Hodge linear realization; `finite-evidence` none newly claimed; `analogy` abstract inverse-problem identifiability only; `unresolved premise` finite-dimensional rank bounds, quantified sensor counts, analytic map hypotheses. [Validation #1125](https://github.com/grwtsk/math/issues/1125) pins Lean 4.33.0, Mathlib db584cd6d46c92f209a44c0f1c829460d327499d, direct builds, probes, trust-zero and fresh-kernel/axiom audit. Git blob readback yes; GitHub status checks empty; `COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN`. No operational receipts in this math tree.


## Case FINITE-MEASUREMENT-CAPACITY-20261023 — cardinal obstruction before finrank

**Bibliography/relationship:** 2026 repository-derived mathematical source with formalization assistance by OpenAI; no external paper title, byline, year/version, DOI/arXiv or theorem locator claimed (**NOT APPLICABLE**). The analogy to quotient reconstruction and phase-retrieval identifiability is methodological, not evidence of influence. There is no imported external-paper theorem.

**Exact theorem/hypotheses:** Over arbitrary field K with additive commutative K-modules V,Y,W, given K-linear P:V→ₗ[K]Y and A:V→ₗ[K]W, and **explicit** injectivity of the pair map x↦(P x,A x), `GRWTSK.Logic.InformationLoss.restricted_extra_injective_of_paired` proves the restricted map `P.ker→W` sending h↦A h is injective. Under **additional [Fintype V] [Fintype W]**, `GRWTSK.Logic.InformationLoss.old_kernel_card_le_extra_card` proves `Fintype.card (P.ker) ≤ Fintype.card W`. The counting step uses cardinal monotonicity under injection. The bound is on finite **cardinality**, not `finrank` or the minimum number of scalar measurements. No stability, continuity, source-specific analytic realization or RH claim.

**Formal binding:** [`grwtsk/math@970a2dc92071102adf1e7585bbfcacdb542802f8`](https://github.com/grwtsk/math/commit/970a2dc92071102adf1e7585bbfcacdb542802f8), `GRWTSK/Logic/InformationLoss/FiniteMeasurementCapacity.lean`, Git blob `6a218b4ac174f61c4c176a031446220d68c96f61`. Direct dependencies `GRWTSK.Logic.InformationLoss.KernelRestrictedDetection` blob `242fdd63d842b1fe7b14efb1727f1f198656324e` and `Mathlib.Data.Fintype.Card`; full transitive closure to be inspected on pinned Lean executor.

**Classification/status:** `source-proof-candidate`: two declarations; `direct-import` external paper: none; `kernel-verified bridge`: not established; `conditional interface`: application to concrete Farey/Bombieri/spectral operators requires separately proved linear maps and finite-domain conditions; `finite evidence`: no executed finite test claimed; `analogy`: general inverse-problem measurement capacity; `unresolved`: finrank lower bound, optimal number of sensors, analytic or continuous inverse, full Lean acceptance. Exact validation commands, SHA, source probes, hostile zero-observation case and transitive-axiom requirements are queued at [#1126](https://github.com/grwtsk/math/issues/1126). Lean `leanprover/lean4:v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. **ACTUAL: SOURCE_ONLY / GIT_BLOB_CONFIRMED / COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN.** GitHub status checks returned none. No operational receipts in math; keep those in `grwtsk/noeaaeue`. No root import.


## Case FINRANK-RESTRICTED-MEASUREMENT-20261023 — range identity, not final sensor bound

**Bibliography:** Repository-derived 2026 formal source with OpenAI formalization assistance, not attributed to an external paper. Published paper title/byline/year/version/DOI/arXiv/theorem locator: **NOT APPLICABLE**. Background Mathlib result `LinearMap.finrank_range_of_inj` is used as an existing formal library theorem, not as an independently verified new external-paper bridge; no historical influence inferred.

**Exact method/hypotheses:** For a field K, additive commutative K-modules V,Y,W and K-linear P:V→ₗ[K]Y and A:V→ₗ[K]W, define `GRWTSK.Logic.InformationLoss.extraOnOldKernel := A.comp P.ker.subtype`. The declaration `GRWTSK.Logic.InformationLoss.extraOnOldKernel_injective` assumes the pair x↦(P x,A x) is injective and shows the restricted K-linear map is injective. `GRWTSK.Logic.InformationLoss.finrank_extra_range_eq_old_kernel` uses the same hypothesis to assert `Module.finrank K (extraOnOldKernel P A).range = Module.finrank K P.ker`. This is an exact range identity, not yet a derived inequality against `Module.finrank K W`. No rank-minimizing sensor construction, topological stability, analytic map or RH follows.

**Source and evidence:** integrated math main [`091ace0e992cabe86352f22a7d603ae51e38b7bf`](https://github.com/grwtsk/math/commit/091ace0e992cabe86352f22a7d603ae51e38b7bf), `GRWTSK/Logic/InformationLoss/FiniteRankMeasurementRange.lean`, Git blob `f2e5f43463b530723efc787268f9f97e3bd8696d`. Direct dependencies `GRWTSK.Logic.InformationLoss.FiniteMeasurementCapacity`, blob `6a218b4ac174f61c4c176a031446220d68c96f61`, and `Mathlib.LinearAlgebra.Dimension.Finrank`; full transitive closure pending. Classification: imported library mathematics (Mathlib rank-of-injective); `source-proof-candidate` for new declarations; `kernel-verified bridge` **not established**; `conditional-interface` for specific physical/Bombieri/Farey linear maps; `finite-evidence` none newly claimed; `analogy` abstract inverse problems only; `unresolved` final finrank lower bound, minimal sensor count, continuity/stability, full dependency audit. [Verification issue #1127](https://github.com/grwtsk/math/issues/1127) pins commands and hypotheses. Lean 4.33.0, Mathlib db584cd6d46c92f209a44c0f1c829460d327499d. Actual status **SOURCE_ONLY / COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN**. All runner receipts remain outside math in grwtsk/noeaaeue; no root import.


## Fourth implementation pass for the seven unpublished research ideas

New Lean source commit `bc5acaa160c1d02ee9d3c847b16065ce286007d1`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Eight new theorems. Four completed optional/corrective obligations, fourteen verified partial results, eighteen unresolved obligations. All seven manuscript-level claims remain open.** K2 in both distinct KL PDF versions and E5 in both distinct exceptional-group PDF versions acquire their first implemented fragments. S3/S5 advance without being discharged.

[Structured record](obligation-implementation-progress-v4.json) retains all 36 original specifications, dependencies, acceptance checks, exact bibliographic fields, page anchors and page-text hashes. Every changed obligation retains its complete prior state; [the previous pass](obligation-implementation-progress-v3.md) remains historical. Owner understanding dates stay unknown.

Verification: the exact three-module `lake build … --wfail` and external `Audit.lean` commands in JSON exited 0. All eight `#print axioms` readbacks use only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`; exact per-declaration lists are recorded. Logs stay in the external `MathematicsLibrary/.catalog/obligation-bridges-v4` directory. New bridges are locally Lean-verified fragments. Imported matrix, probability and logarithmic-derivative infrastructure retains upstream attribution. No historical influence or new paper-reading event is inferred.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** For actual punctured local factorizations f=(s−a)^k u and g=(s−a)^l v, multiplication yields order k+l. If u and v are analytic and nonzero at a, the scaled coefficient of −logDeriv(fg) tends to −(k+l). An analytic nonvanishing multiplier has order zero and preserves that coefficient. This is a local signed-order fragment, not a global divisor or residue theorem for the original completed functions. Actual completed sources, every extra factor, their local factorizations, convergence/continuation comparison and any target critical-line theorem remain missing.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.product_local_factorization`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L10); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.product_scaled_neg_logDeriv`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L21); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_unit_preserves_scaled_coefficient`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L32); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** For actual punctured local factorizations f=(s−a)^k u and g=(s−a)^l v, multiplication yields order k+l. If u and v are analytic and nonzero at a, the scaled coefficient of −logDeriv(fg) tends to −(k+l). An analytic nonvanishing multiplier has order zero and preserves that coefficient. This is a local signed-order fragment, not a global divisor or residue theorem for the original completed functions. Actual completed sources, every extra factor, their local factorizations, convergence/continuation comparison and any target critical-line theorem remain missing.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.product_local_factorization`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L10); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.product_scaled_neg_logDeriv`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L21); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_unit_preserves_scaled_coefficient`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L32); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `['RA Jacob Martone']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** Assistant-proposed rank-one specialization: for any commutative ring and v vinv=1, define C=vinv(T(v²)+I). Every actual standard normal form aI+bT has the explicit expansion (a−b)I+(bv)C; normalized coordinates are unique, hence exist uniquely. This is a proved change of coordinates in the rank-one normal-form span, not the general bar-invariant KL basis. Bar invariance, arbitrary Coxeter/Bruhat data, general polynomial degree conditions, recurrence and geometric realization remain missing.

- [`GRWTSK.Algebra.Hecke.rankOne_normalized_expansion`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L13); blob `9d00a3350f106d14807cef55a11545066de0cecc`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_coordinates_unique`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L22); blob `9d00a3350f106d14807cef55a11545066de0cecc`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_existsUnique`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L34); blob `9d00a3350f106d14807cef55a11545066de0cecc`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `['RA Jacob Martone']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** Assistant-proposed rank-one specialization: for any commutative ring and v vinv=1, define C=vinv(T(v²)+I). Every actual standard normal form aI+bT has the explicit expansion (a−b)I+(bv)C; normalized coordinates are unique, hence exist uniquely. This is a proved change of coordinates in the rank-one normal-form span, not the general bar-invariant KL basis. Bar invariance, arbitrary Coxeter/Bruhat data, general polynomial degree conditions, recurrence and geometric realization remain missing.

- [`GRWTSK.Algebra.Hecke.rankOne_normalized_expansion`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L13); blob `9d00a3350f106d14807cef55a11545066de0cecc`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_coordinates_unique`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L22); blob `9d00a3350f106d14807cef55a11545066de0cecc`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_existsUnique`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L34); blob `9d00a3350f106d14807cef55a11545066de0cecc`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); original blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**Other obligations retained:** B1 — unresolved; B2 — unresolved; B3 — kernel-verified-conditional-fragment; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B2 missing construction:** Construct the localization/excision triangle or long exact sequence. If a direct sum is needed, construct a splitting/projector and prove compatibility with Hecke actions; a set union does not produce a split cohomology decomposition.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `['RA Jacob Martone']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); original blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**S3, PDF pages 1, 2 — kernel-verified-correction-fragment.** Extended the previous exact-decorrelation budget: real L² observables under a probability measure, with Var(Xi)≤C and cov(Xi,Xj)≤δ for every i≠j, give Var(ΣXi)≤NC+N(N−1)δ. For N>0, variance of the average is ≤C/N+(1−1/N)δ. The off-diagonal term is retained. Actual arithmetic observables, centering, probability law and a proved family-dependent δ rate are missing; no deterministic uniform bound, almost-sure law or Fourier sum-to-product identity follows.

- [`GRWTSK.Probability.Moments.variance_sum_le_covariance_budget`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Probability/Moments/FiniteCovarianceBudget.lean#L12); blob `9e5db02428bed7ba58bf6e411df17d84fb627246`.
- [`GRWTSK.Probability.Moments.variance_average_le_covariance_budget`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Probability/Moments/FiniteCovarianceBudget.lean#L34); blob `9e5db02428bed7ba58bf6e411df17d84fb627246`.

**S5, PDF pages 2 — kernel-verified-conditional-fragment.** The new finite second-moment consumer permits supplied nonzero upper bounds on off-diagonal covariances instead of replacing weak decorrelation by exact independence. No independence conclusion is drawn. Actual probability law, L² observables, uniform covariance estimates, family-dependent decay and any joint Gaussian or limiting-independence construction remain missing.

- [`GRWTSK.Probability.Moments.variance_sum_le_covariance_budget`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Probability/Moments/FiniteCovarianceBudget.lean#L12); blob `9e5db02428bed7ba58bf6e411df17d84fb627246`.
- [`GRWTSK.Probability.Moments.variance_average_le_covariance_budget`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Probability/Moments/FiniteCovarianceBudget.lean#L34); blob `9e5db02428bed7ba58bf6e411df17d84fb627246`.

**Other obligations retained:** S1 — unresolved; S2 — unresolved; S4 — kernel-verified-conditional-fragment; S6 — unresolved.

- **S1 missing construction:** Bind each named January reference to an exact catalog SHA/version and exact theorem. Eight candidate versions of four title families were inspected; title matching alone does not prove that the status note invokes either particular version.
- **S2 missing construction:** Define each arithmetic sequence, its deterministic centering and e_n before choosing a target rate. Decide whether the needed claim is ∃C∀n |e_n|≤C, a variable envelope |e_n|≤C B(n), or a normalized o(n) statement.
- **S6 missing construction:** Retain every RH/GRH hypothesis printed in the Resolution draft §4.3. If the desired downstream theorem is unconditional RH/GRH, replace that supplier by an independently proved result rather than using it circularly.

## NumberTheory

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by R.A. Jacob Martone; printed byline `['RA Jacob Martone']`. PDF SHA-256 `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); original blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

**Other obligations retained:** P1 — unresolved; P2 — kernel-verified-optional-specialization; P3 — kernel-verified-optional-specialization; P4 — unresolved.

- **P1 missing construction:** Resolve each numbered Source 23/26/27/28/29 to a title, exact version and theorem/method, or explicitly leave the citation unresolved.
- **P4 missing construction:** For any proposed prime-distribution estimate, specify the actual counting/weighted source S(x), comparison M(x), domain x≥x0 and constants C≥0, then prove ∀x≥x0, |S(x)−M(x)|≤C B(x) for a named B. No bound B is supplied by this roadmap.

## Exact hypotheses and remaining boundaries

**Normalized rank-one coordinates:** arbitrary commutative coefficient ring, actual inverse relation v vinv=1, concrete matrix T(v²) and C=vinv(T+I). The expansion, coordinate uniqueness and unique existence concern matrices aI+bT in that span. No arbitrary matrix spanning claim or general Coxeter KL existence/uniqueness is made; bar invariance and general Bruhat degree/recurrence properties are not proved.

**Approximate covariance budget:** a specified probability measure μ, finite indexed real observables with MemLp Xi 2 μ, a diagonal variance bound C and a uniform one-sided off-diagonal bound δ. No δ≥0 premise is needed for the algebraic inequality itself; applicability requires every supplied covariance bound. Normalization additionally needs N>0. This gives variance ≤NC+N(N−1)δ for the sum and ≤C/N+(1−1/N)δ for the average. A fixed nonzero δ does not disappear as N grows. Bias, actual centering, uniform/family-dependent rates and any probabilistic limit require separate proofs. No independence is inferred from covariance decay.

**Signed local order:** complex functions with actual punctured factorizations and integer orders k,l, allowing zeros and poles. The product factorization is algebraic; its scaled −logDeriv coefficient additionally requires analytic units nonzero at the center. The unit-multiplier specialization requires the actual extra factor analytic and nonzero at that same point. No residue of the original completed function, global divisor equality, infinite contour identity, completed-source supplier or critical-line result is asserted.

Still missing are the prime roadmap’s source binding and arithmetic estimate; the boundary outline’s geometry, actual localization, zero-to-class realization and same-sheaf vanishing; exceptional-group representations/automorphic transfers and all source-specific global factors; the KL geometric positivity and signed analytic realization; and the status note’s exact January-version binding, arithmetic sequences and noncircular replacement for RH/GRH premises. Conditional fragments do not discharge these suppliers.

## Case FAREY-SHIFT-VALIDATION-20261023 — checked dual ordering and periodic obstruction

**Publication and relationship.** Boris Kalinin, *Livšic Theorem for matrix
cocycles*, Annals of Mathematics 173 (2011), issue 2, pp. 1025–1042,
[DOI:10.4007/annals.2011.173.2.11](https://doi.org/10.4007/annals.2011.173.2.11),
[official journal record](https://annals.math.princeton.edu/2011/173-2/p11).
The official record was checked in this validation run. Its stated sufficient
direction uses a hyperbolic dynamical system, Hölder GL(m,ℝ) cocycle and trivial
products at every periodic point to obtain a Hölder transfer map. The local
`PeriodicCocycleData` proves only the elementary **necessary** periodic consistency
and gauge-conjugacy direction for any group and any base self-map. The paper's
full hypotheses, sufficiency proof, regularity and GL(m,ℝ) realization are not
imported or discharged by the finite SL₂(F₃) example.

The Farey full-shift construction is 2026 repository-derived mathematics with
source-credited direction by R.A. Jacob Martone and OpenAI formalization assistance.
A separate external paper theorem for this exact finite Farey construction is
not established. The existing Sturmian/Sarnak paper comparisons retain their
metadata and remain analogies/unresolved applications, not proof suppliers.
No historical influence is inferred from the common cocycle language.

**Exact methods, declarations and hypotheses.**

- `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.shift_iterate_apply`,
  `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.chronological_farey_frame`,
  `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.dualCocycle_sourceMatrix`:
  on the one-sided full schedule ω:ℕ→Turn, the source Farey word is chronological
  right multiplication. The maintained cocycle product is newest-factor-left.
  Taking the **transpose** shear in the genuine Mathlib SL₂(F₃) group gives the
  exact product identity Pₙ(ω)=M(prefixₙ(ω))ᵀ for every finite prefix. No order
  reversal or frame/column identification is suppressed.
- `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.repeatLR_shift_period_two`,
  `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.repeatLR_monodromy_ne_one`,
  `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.fullShift_no_pure_coboundary`,
  `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.fullShift_no_gauge_trivializes_LR`:
  the literal repeating LR point belongs to this full shift and has nonidentity
  dual monodromy. It obstructs a global pure coboundary and any gauge trivializing
  that closed product on this specified carrier; it is not assumed to belong
  to a separate irrational Sturmian orbit closure.
- `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.periodic_source_word_not_coboundary`
  and `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.periodic_source_word_resists_gauge`:
  the generalized obstruction explicitly requires shift^[n]ω=ω and a nonidentity
  source word. Gauge is arbitrary group-valued data; no norm bound is needed for
  this necessary obstruction.
- `GRWTSK.NumberTheory.Farey.FareyShiftCocycle.sturmian_source_dual_product`:
  the declared left=1/right=0 schedule uses the maintained Sturmian bit function.
  Its finite product identity is unconditional in α,ξ,n, but does not prove
  irrationality, nonperiodicity, periodic-point membership, spectral limits or
  a topological identification of the two dynamical carriers.
- `GRWTSK.LinearAlgebra.PeriodicCocycleData.pureCoboundary_periodic_identity`,
  `GRWTSK.LinearAlgebra.PeriodicCocycleData.periodic_gauge_product_one_iff`,
  `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_gauge`:
  for arbitrary group G and self-map T, pure-coboundary products telescope;
  at an explicitly closed orbit the existing gauge changes the product by one
  basepoint conjugation. No existence or Hölder-regularity theorem for a transfer
  map is inferred.

**Source commit and blobs.** At repair commit
[`eb83f984a195d037bc87a5b5e569f7e9a5f4af16`](https://github.com/grwtsk/math/commit/eb83f984a195d037bc87a5b5e569f7e9a5f4af16),
the audited local dependency closure comprises seventeen source files:

| Fully qualified module | Git blob |
|---|---|
| `GRWTSK.NumberTheory.Farey.FareyShiftCocycle` | `92433f1bb30280a419aa7f872365e86103a9f659` |
| `GRWTSK.LinearAlgebra.PeriodicCocycleData` | `11ca2a896e8844dcb483ce9c910c1bb07ae857e1` |
| `GRWTSK.LinearAlgebra.CocycleProduct` | `464093299328bd804948a8959e603224418264f7` |

**Actual executed verification.** Lean `leanprover/lean4:v4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`; exit zero for:

```sh
lake build GRWTSK.NumberTheory.Farey.FareyShiftCocycle --wfail
lake build --wfail
lake env lean --trust=0 -t 0 /Users/think/Documents/ChatGPT/math-branch-integration-20261022/farey-shift-audit.lean
```

Strict module/dependency build: 8,722 jobs; public root: 9,304 jobs. Fresh
trust-zero replay: 440 transitive GRWTSK declarations, using only `propext`,
`Classical.choice`, `Quot.sound` (or none), with no `sorryAx` or additional axioms.
All 56 owned declarations in the three named modules, including
private/generated declarations, have reconciled type inventories and are safe.
All 18 authored FareyShiftCocycle theorem/lemma headers are unchanged; inherited
source bytes are unchanged. The only repairs are simplification of the zero
iterate base case and opening the selected return word's existing namespace.

**Classification, actual receipts and missing bridges.** Local finite product,
periodic consistency and gauge-obstruction identities are now **kernel-verified
bridges at their stated scope**. Periodic/source-word hypotheses remain explicit
**conditional interfaces**; finite LR monodromy is an exact finite witness, not
analytic evidence. Kalinin's sufficient theorem and Sturmian/Sarnak applications
remain **unresolved paper bridges/analogies**. Historical source-only comments and
authoring NOT_RUN records remain as provenance, superseded only by this dated
source-pinned evidence for the named closure. No standalone public-root import,
independent external/CI replay, hyperbolic homeomorphism/closing property, Hölder
transfer, nonzero-coupling gap theorem, Möbius cancellation, zeta or RH consequence
is claimed.

Runners, logs and receipts are outside canonical mathematics at
`/Users/think/Documents/ChatGPT/math-branch-integration-20261022/`:
`farey-shift-rebuild.log`, `farey-shift-public.log`, `farey-shift-audit.lean`,
`farey-shift-audit.log`, `farey-shift-validated-snapshot.json`,
`farey-shift-completion-result.json`. The failed initial build is diagnostic,
not acceptance evidence. Concurrent new linear-observation, Riesz and other
modules remain outside this validation claim.

## Case FINRANK-LOWER-BOUND-20261023 — measurement capacity without sharpness

**Reference boundary.** New 2026 repository-derived source candidate with OpenAI formalization assistance, no separately cited external paper theorem; external paper title, byline, year/version, DOI/arXiv, theorem locator **NOT APPLICABLE**. Standard Mathlib submodule rank monotonicity is existing library mathematics; this is not evidence of historical influence by any recent inverse-problem paper.

**Exact mathematical hypotheses and declarations.** For any field K and additive commutative K-modules V,Y,W, given linear maps P:V→ₗ[K]Y and A:V→ₗ[K]W, and an explicit hypothesis that v↦(P v,A v) is injective, `GRWTSK.Logic.InformationLoss.old_kernel_finrank_le_extra_finrank` asserts `Module.finrank K P.ker ≤ Module.finrank K W`. It uses earlier `finrank_extra_range_eq_old_kernel` and Mathlib `Submodule.finrank_le`. This is an exact necessary dimension bound, NOT a sharp construction, quantitative stability result, minimal number of coordinate sensors absent W's representation, phase-retrieval theorem, physical spectral equivalence or RH.

**Immutable source/receipts.** Integrated main [`dfcc986b04c7d5d838cb7a104558f22908103bfd`](https://github.com/grwtsk/math/commit/dfcc986b04c7d5d838cb7a104558f22908103bfd); `GRWTSK/Logic/InformationLoss/FiniteRankMeasurementLowerBound.lean` blob `88543962c8d0e9737cf662c339a3a8fec48ead64`. Direct supplier `FiniteRankMeasurementRange` blob `f2e5f43463b530723efc787268f9f97e3bd8696d`; recursively enumerate full Mathlib closure in actual pinned checkout. Verification [#1128](https://github.com/grwtsk/math/issues/1128) pins Lean `leanprover/lean4:v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`, exact commands and transitive axiom/audit requests.

**Separated classifications:** imported mathematics: existing Mathlib rank monotonicity (not paper-derived); kernel-verified bridge: **not established**; source proof candidate: new declaration; conditional interface: actually realizing P and A as source-bound observables; finite evidence: none newly claimed; analogies: inverse-problem capacity only, without an attribution claim; unresolved: actual compilation, fresh kernel/axioms, sharpness, minimal sensor models and stability. **ACTUAL: SOURCE_ONLY, exact blob confirmed, GitHub statuses empty, COMPILATION NOT_RUN, FRESH_KERNEL NOT_RUN, TRANSITIVE_AXIOMS NOT_RUN**. Operational receipts in grwtsk/noeaaeue, no public root import.


## Case RIESZ-FINITE-AND-FULL-ADJOINT-20261023 — exact reconstruction scopes

**Reference boundary.** Repository-derived 2026 increment, R.A. Jacob Martone with OpenAI formalization assistance; no external paper theorem is newly attributed (external title/byline/year/DOI/arXiv NOT APPLICABLE). Imported zeta values and derivative at zero come from Mathlib `Mathlib.NumberTheory.Harmonic.ZetaAsymp` at `db584cd6d46c92f209a44c0f1c829460d327499d` ([source](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/Harmonic/ZetaAsymp.lean)); finite Cauchy–Schwarz and topology are upstream library mathematics. No historical influence is inferred from the finite adjoint method.

**Exact scopes and fully qualified declarations.**
- `GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalCoefficients.logDeriv_riemannZeta_zero` and `.continuousAt_neg_logDeriv_zero` identify the actual local coefficient at zero. `.classical_linear_coefficient` is its algebraic multiplier by real x; it is NOT a contour residue theorem or global normalization identification.
- `GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation.norm_source_sub_finite_le` assumes real x>1, N>=3, x<=N and T>=2. The exact finite normalized zero head charges tails at x,2,3 with weights 1,|3-x|,|x-2|. `.norm_pointwise_sub_finite_le` assumes integer M>=2, 0<h<=1, 1<M-h and T>=2; its budget divides the two normalized evaluation budgets by 2h. `.finiteNormalizedPointwise_tendsto_psiHalf` proves fixed-positive-radius, height-first convergence to the literal half-jump arithmetic source. No raw zero-series differentiation is used.
- `GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.reconstruction_bound`, `.residual_identity`, `.residual_descent` hold for arbitrary finite real matrix carriers. With B the actual squared Frobenius sum and eta=1/(1+B), R=eta A*, they prove E(Ry)<=E(y) and E(v-RAv)<=E(v)-eta E(Av).
- `GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullAdjointReconstruction_bound`, `.fullAdjointResidual_descent`, `.fullAdjointDamping_pos` instantiate the literal four-family matrix, all family/center cells and actual Green window, for every natural X and every real packet. Thus these estimates apply to all genuine restriction differences without a realizability premise. They do not provide a strict relative contraction or lower frame.

**Immutable source and actual verification.** [`ccfa7aefd508aee48023ada0cca7aff7a0dcc504`](https://github.com/grwtsk/math/commit/ccfa7aefd508aee48023ada0cca7aff7a0dcc504); Lean 4.33.0, clean Mathlib pin above. Executed `lake build --wfail` with the 24 targets in external `targets.json` (9,423 jobs); `lake env lean --trust=0 -DwarningAsError=true` for each of `FullAxiomAudit.lean`, `FullCoverageAudit.lean`, `FullRuntimeAudit.lean`; `lake env lean --run KernelAffectedClosure.lean`. 717 modules; 22,751 logical declarations; zero disallowed axioms; 6,805 explained native-only entries and zero unexplained entries; 12 runtime helpers with zero failures; fresh kernel replay of all four new modules with zero failures. All 713 unchanged source/object pairs match qualified baseline `6dfadb36014cdc63dc667d5857b6f22cfc920b19`; this is incremental qualification, not fresh replay of the entire environment. Runners, receipts and hashes remain outside math at `/Users/think/Desktop/noeaaeue/.codex-runtime/math-riesz-unsmoothing-full-adjoint/`.

**Separated classifications and missing bridges.** Imported mathematics: upstream zeta values/derivatives, finite inequalities and topology. Kernel-verified bridges: precisely the scopes listed above. Source proof candidates newly accepted: none beyond those audited scopes. Conditional interfaces: strict RH-family observability remains unproved. Finite experimental evidence/analogies: none used to infer analytic conclusions. Unresolved: equate boundary-normalized affine coefficients to the classical contour coefficients (including the constant at -1 and trivial-zero correction normalization); prove a raw unsmoothed x^rho/rho formula with actual multiplicities, summation order, endpoints and tails; establish a quantitative observation gap on the exact full RH application family with scale constants and signed/omitted-coordinate costs. Ambient kernel obstructions remain valid. Both #189 and #966 stay open.


## Case KERNEL-RETRACTION-SHARPNESS-20261023 — conditional sharpness under supplied splitting

**Source provenance.** A 2026 repository-derived algebraic source candidate, with OpenAI formalization assistance, not a paper-derived theorem. External paper title, authors/byline, publication year/version, DOI/arXiv and theorem locator are **NOT APPLICABLE**; similarity to quotient sections or inverse problems does not evidence historical influence. Source introduction `6e50f51142e10b8f807df1eacc5a69fe4e56a455` contained an uninformative reflexive rank statement subsequently replaced; the **operative source** is [math main `5c3cd66a2104328dc587aff528e647a13b8e8bef`](https://github.com/grwtsk/math/commit/5c3cd66a2104328dc587aff528e647a13b8e8bef), `GRWTSK/Logic/InformationLoss/KernelRetractionSharpness.lean`, blob `da29611f09e19797e780e726682daabc1b2e4f48`.

**Exact method and hypotheses.** For a field K, K-modules V,Y carrying additive commutative groups, and linear P:V→ₗ[K]Y, the source requires an **explicitly supplied** K-linear map A:V→ₗ[K]P.ker such that `∀x:P.ker, A x.1=x`. `GRWTSK.Logic.InformationLoss.sharp_extra_of_kernel_retraction` uses this retraction hypothesis to assert injectivity of the paired observation `v↦(P v,A v)`. `GRWTSK.Logic.InformationLoss.sharp_extra_restricted_surjective` asserts surjectivity of `extraOnOldKernel P A`; under the earlier injectivity result this restriction is bijective on the old kernel. Choosing the extra target to be `P.ker` thus matches the earlier lower-bound target finrank. This does **not** construct the retraction from scratch, establish an algorithm or canonical complement, prove stability, or identify an analytic/Farey/Bombieri physical observation.

**Formal dependencies and verification categories.** Direct import `FiniteRankMeasurementLowerBound`, blob `88543962c8d0e9737cf662c339a3a8fec48ead64`, with the full recursively imported math/Mathlib closure pending actual Lean execution. Existing formal-library algebra is **imported mathematics**, not an external paper theorem; both newly authored declarations are **source proof candidates**, not kernel-verified bridges. Any unstated existence of the required retraction is an **unresolved premise** (though the assertion is a conditional interface). Small finite examples would be **finite evidence** only; none is claimed here. Quotient splitting is a methodological **analogy**, not historical attribution. [#1129](https://github.com/grwtsk/math/issues/1129) pins exact commands, Lean `leanprover/lean4:v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`, declaration/axiom probes and required independent fresh-kernel replay. **ACTUAL: SOURCE_ONLY / COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN**. All operational receipts belong to `grwtsk/noeaaeue` outside math; no root import or no-merge rule is altered.


## Case KERNEL-SPLITTING-SHARPNESS-20261023 — explicitly supplied left inverse

**Attribution/reference boundary:** Repository-derived 2026 source with OpenAI formalization assistance. No external-paper theorem was used; external title, authors, publication version/year, DOI/arXiv/theorem locator **NOT APPLICABLE**. Similarity to quotient splittings is a methodological analogy, not proof of historical influence.

**Method and exact hypotheses:** For field K and additive commutative K-modules V,Y, with K-linear P:V→ₗ[K]Y, explicitly supply `projection:V→ₗ[K]P.ker` and the equation `projection.comp P.ker.subtype=LinearMap.id`. `GRWTSK.Logic.InformationLoss.kernel_retraction_of_left_inverse` derives `∀x:P.ker, projection x.1=x`. `GRWTSK.Logic.InformationLoss.sharp_joint_observation_of_left_inverse` then derives injectivity of `pairedLinearObservation P projection` by invoking the previously authored conditional kernel-retraction theorem. The projection's **existence is an explicit premise**, not constructed in the new leaf, and neither a continuous/bounded projection nor spectral or RH realization is claimed.

**Formal binding:** Source main commit [`22e7c218bfde5b1f09dc5145205b7957b275080a`](https://github.com/grwtsk/math/commit/22e7c218bfde5b1f09dc5145205b7957b275080a), path `GRWTSK/Logic/InformationLoss/KernelSplittingSharpness.lean`, blob `09b7d2b4f5beab606da1950b06cd13a816ae5eab`, direct import `GRWTSK.Logic.InformationLoss.KernelRetractionSharpness` blob `da29611f09e19797e780e726682daabc1b2e4f48`; full transitive source/Mathlib closure pending real checkout audit. Exact declaration names are prefixed `GRWTSK.Logic.InformationLoss.`.

**Relationship and verification:** Existing linear formal suppliers are imported mathematical SOURCE CANDIDATES, not accepted external-paper imports. Both new declarations are `source-proof-candidate`; `kernel-verified bridge` **not established**. Supplied left inverse is a `conditional-interface`; its construction without hypotheses is `unresolved`. No new finite-evidence claim. Verification queue [#1130](https://github.com/grwtsk/math/issues/1130) pins Lean `leanprover/lean4:v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`, exact build commands and required fresh kernel/transitive-axiom checks. ACTUAL **SOURCE_ONLY / GIT_BLOB_READBACK / COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN**. Operational receipts in `grwtsk/noeaaeue` outside math; retain no-root-promotion and no-force-merge constraints.
