# Paper → idea → Lean declaration: provenance and verification

This document is the required **additive** paper-source ledger for new paper-derived GRWTSK formalizations. Keep the original bibliographic and idea-version identities in [catalog.json](catalog.json), [metadata review](metadata-review.md), and the [version-bound idea–formalization map](idea-formalization-map.md). An entry here is not an attribution or priority finding. Link an existing idea ID and version when known; do not invent an owner statement, a reading date, or a paper/Lean identity.

## Required record for each paper-sourced formalization

Create or update one record in this document at the same repository integration as the paper-derived mathematical source, or before claiming source integration. Use this schema of information:

- **Paper:** exact title; printed authors (distinguish from owner/assistant provenance); year **and date type** (publication, first arXiv posting, revised version, or unpublished draft); stable DOI, versioned arXiv link, or other immutable identifier. Add the identified PDF version or asset SHA-256 and section/page/equation/theorem number when available. Mark any metadata that has not been verified.
- **Extracted content:** the exact statement, construction, algorithm, or method used, with its numbering in the identified version, mathematical domains, quantifiers, regularity assumptions, exclusions, normalization conventions, numerical constants, and the specific special case being formalized. Explicitly separate paper hypotheses **used**, hypotheses **not instantiated**, and extra repository-side assumptions.
- **Formal binding:** `grwtsk/math` full 40-character commit, source path and Git blob SHA, fully qualified Lean declarations (including imported Mathlib or external definitions), the exact declaration types/hypotheses, and named downstream consumers. For a new declaration use its **integrated** main commit; earlier source-proposal or draft commits may be retained as provenance, not as integration evidence. Record the paper-to-Lean normalization map and any still-missing proof of equivalence.
- **Logical relationship (one or more, noninterchangeable):** `IMPORTED_EXACT_THEOREM`, `LOCAL_IDENTITY_SOURCE_CANDIDATE`, `REPOSITORY_PROVED_LOCAL_IDENTITY`, `PAPER_TO_LEAN_BRIDGE_PROVED`, `CONDITIONAL_REDUCTION`, `FINITE_COMPUTATION_ONLY`, `OBSTRUCTION_AT_SCOPE`, `ANALOGY_ONLY`, or `UNRESOLVED_PREMISE`. Explain the scope and proof term (or explicitly write **none**). A repository theorem about a model inspired by a paper is **not** automatically a formal proof of a paper theorem.
- **Verification (independent of mathematical relationship):** exact SHA checked; pinned Lean/Mathlib versions; affected modules and full transitive import closure; the actual `lake build --wfail`, direct elaboration, fresh kernel replay/`--trust=0`, transitive `#print axioms` and generated/unsafe declaration audit commands; stdout/stderr, exit status and source-bound receipt reference. Use `NOT_RUN`, `SOURCE_ONLY`, `COMPILED`, `FRESH_KERNEL_REPLAYED`, `TRANSITIVE_AXIOMS_AUDITED`, or `FAILED` **only where supported** and state the evidence for each dimension separately. Never upgrade `SOURCE_ONLY` from source inspection or a queued issue. An imported Mathlib statement is not evidence that a downstream application premise is discharged.
- **Gaps and counterexamples:** enumerate unresolved bridges, conditional assumptions, possible scope/normalization mismatches and adverse examples; link the responsible issue. Distinguish a finite witness from an unbounded or universal theorem. Upon source/dependency changes, supersede the old receipt with a new commit-bound record instead of silently transferring verification.

Missing authorship, publication year, identifier, theorem location, declaration, or execution result must be recorded as `UNRESOLVED` / `NOT_RUN` rather than guessed. The source may be retained as an explicitly attributed candidate, but a missing field cannot be treated as satisfied. New theorem consumers must keep the exact hypotheses and distinguish a paper proposition from the locally formalized fragment.

## Source-bound example: almost-Mathieu transfer identity, **not** a spectral-theorem port

**Work:** Artur Avila, Yoram Last, Mira Shamis, Qi Zhou, *On the abominable properties of the almost Mathieu operator with well approximated frequencies*. Initial arXiv posting **2021**; cited arXiv version **v2 revised 2023**. Stable versioned identifier: [arXiv:2110.07974v2](https://arxiv.org/abs/2110.07974v2). The repository source identifies its model as that paper's **Equation (1.1)**; this record binds that source attribution but does not claim an independent line-by-line equivalence check of the paper version.

**Exact local method and hypotheses:** the real discrete potential `2 * coupling * cos (2π * α * n + θ)` at integer `n : ℤ`, where `E, α, coupling, θ : ℝ`; the scalar eigenvalue recurrence `next + previous + potential * current = E * current` is rewritten as the two-coordinate real transfer-matrix equation on state `(current, previous)`. No irrational-frequency, spectral-membership, small/critical coupling, Diophantine-approximation, or almost-sure hypothesis is required by these local algebraic identities. The local `θ` is an **unscaled real phase**; any translation to a paper convention of `2πθ` needs an explicit parameter map, not an assumed definitional identity.

**Formal source binding:** `grwtsk/math@bdbacbea7d6d638b10ff1282fb4f5d9d7301a123`, `GRWTSK/LinearAlgebra/AlmostMathieu.lean`, Git blob `2d76f1950a24b95b54bc6664762a1c90a3a69052`. Declarations: `GRWTSK.LinearAlgebra.AlmostMathieu.potential`, `transfer`, `recurrence_iff_transfer`, `det_transfer`, `det_one_does_not_bound_trace`. Direct repository supplier: `GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodinger_recurrence_iff_transfer`; determinant theorem consumes the corresponding imported `det_schrodingerTransfer`. The first local equivalence is *for the repository's definition* of the almost-Mathieu model, not a proof of the paper's pathological spectral claims.

**Relationship:** `LOCAL_IDENTITY_SOURCE_CANDIDATE`; authored Lean proof terms are present, but this revision is **not** independently kernel-qualified in this provenance review. Paper-model identification is a cited method correspondence requiring normalization review. The paper's Hausdorff-measure, integrated-density-of-states, Lyapunov-continuity, spectral-homogeneity and Parreau–Widom statements are `UNRESOLVED_PREMISE` / **not formalized by these declarations**. Determinant one does not imply a uniform trace bound; the repository has an explicit zero-coupling trace counterexample at energy 3, with no spectral-membership claim.

**Actual verification status at this source binding:** **SOURCE_PRESENT / NOT_RUN in this provenance review**. The source and exact Git blob were read; neither pinned compilation, a fresh kernel run, nor a transitive axiom/unsafe audit was executed as part of this documentation addition. Do not interpret prior root-building claims as a current commit-bound theorem receipt; add actual commands, exit statuses and artifacts here if separately obtained. No paper-to-Lean bridge is marked proved.

## Comparison-only example: distinct unitary model

**Work:** Christopher Cedzich, Jake Fillman, Darren C. Ong, *Almost Everything About the Unitary Almost Mathieu Operator* (**2023**), [DOI 10.1007/s00220-023-04808-4](https://doi.org/10.1007/s00220-023-04808-4), [arXiv:2112.03216v2](https://arxiv.org/abs/2112.03216v2). The existing [literature comparison](../unitary-almost-mathieu.md) identifies Theorem 2.2(d): for irrational frequency and critical interior parameters `0 < λ₁ = λ₂ < 1`, the **unitary** model has zero-measure Cantor spectrum. Its Theorem 2.2(g,h) treats distinct zero-parameter boundary regimes; retain their different hypotheses and spectral types.

**Relationship:** `ANALOGY_ONLY` / model distinction. The paper's unitary two-parameter quantum-walk operator is not the repository's self-adjoint scalar Schrödinger `AlmostMathieu.transfer`. **Corresponding local Lean theorem for Theorem 2.2(d): none established; commit of such a proof: none; verification: NOT_RUN / NOT_FORMALIZED.** Similar names and spectral vocabulary confer no theorem transport. A genuine bridge would require a typed operator equivalence or comparison with the correct phase, coupling, frequency and spectrum hypotheses, plus an accepted proof and audit.

## Möbius disjointness lecture notes and the finite √2 sampling interface

**Bibliographic source:** Peter Sarnak, *Three Lectures on the Möbius Function: Randomness and Dynamics*, **2011**, lecture notes (IAS bibliography year, not a journal-publication claim). Stable institutional record: [Institute for Advanced Study, Sarnak, paper/506](https://publications.ias.edu/sarnak/paper/506); [institutional PDF](https://publications.ias.edu/sites/default/files/MobiusFunctionsLectures%282%29_0.pdf). No DOI or arXiv identifier is established for this cited version. This is a mathematical comparison to the notes, **not** an assertion that the notes are the source of the repository's exact continuant recurrence.

**Exact conjectural scope used for the comparison:** Sarnak's Möbius disjointness problem concerns a compact metric dynamical system `(X,T)` of **zero topological entropy**, a continuous observable `f ∈ C(X)`, an orbit `Tⁿ x`, and cancellation of the ordinary normalized correlation `(1/N)∑_{1≤n≤N} μ(n) f(Tⁿ x) → 0` as `N → ∞`. This statement is **conjectural at that generality**, not a theorem imported into GRWTSK. **Exact paper locators now reviewed:** the stable [IAS lecture PDF](https://publications.ias.edu/sites/default/files/MobiusFunctionsLectures%282%29_0.pdf) labels the ordinary correlation criterion as **equation (6), printed page 2 (PDF index 1)**, defines orthogonality to a flow in **Definition 3, printed page 4 (PDF index 3)**, and formulates **Conjecture 4, printed page 4 (PDF index 3)**: Möbius is orthogonal to every deterministic flow. On that page, deterministic means *zero topological entropy*, while a sequence is realized by `ξ(n)=f(Tⁿx)` for `x∈X` and `f∈C(X)` as explained on **printed page 3 (PDF index 2)**. The exact paper quantifier runs over such systems and observables and uses **unweighted consecutive-time averages**, not the repository's sparse `qₙ` samples. These locators were checked against the IAS-hosted 12-page PDF on 2026-10-23; no independent byte checksum of a local PDF was established. The separate logarithmically weighted analogue is **not** silently identified with the paper's equation (6), nor with `normalizedLogCorrelation`.

**Actual local fragment and its hypotheses:** In `GRWTSK.NumberTheory.ContinuedFractions.SqrtTwoLogDigest` the constant positive partial quotient `a(n)=2` yields natural continuant denominators `q₀=1`, `q₁=2`, `qₙ₊₂=2qₙ₊₁+qₙ`. The local `sqrtTwoDenominator_arithmeticExponent_zero` is an **arithmetic limsup** identity `limsup ofReal(log(q(n+1))/q(n))=0` using positive denominators, divergence and a proved-in-source-candidate bounded-ratio supplier with `C=3`. The finite `finiteLogCorrelation N arithmeticWeight orbitObservable` uses arbitrary real functions `arithmeticWeight : ℕ → ℝ` and `orbitObservable : ℕ → ℝ`, with summands `(n+1)⁻¹ * arithmeticWeight(n+1) * orbitObservable(qₙ)`. The `normalizedLogCorrelation N` divides the finite sum through `N+1` by its finite harmonic normalizer. There is **no local definition of a zero-entropy system, orbit representation `Tⁿx`, specific Möbius weight, or infinite-correlation limit**, and sampling at `qₙ` cannot be substituted for the paper's consecutive-time orbit without an additional theorem.

**Pinned formal identities:** Existing main source merged at [`e7838440b0d2760a91aaf5d842d76e761f79a702`](https://github.com/grwtsk/math/commit/e7838440b0d2760a91aaf5d842d76e761f79a702). Re-read at `grwtsk/math@8427906f0f86f2b640b569987ca2331d25f8981a`: `GRWTSK/NumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean`, blob `b290af8fb37a5d76ce532c3567f7621d9c4527a5`. Fully qualified local names begin `GRWTSK.NumberTheory.ContinuedFractions.SqrtTwoLogDigest.`: `sqrtTwoPartialQuotient`, `sqrtTwoDenominator`, `sqrtTwoDenominator_recurrence`, `sqrtTwoDenominator_pos`, `sqrtTwoDenominator_tendsto`, `sqrtTwoDenominator_arithmeticExponent_zero`, `reciprocalStageWeight`, `finiteLogDigest`, `finiteLogDigest_add`, `finiteLogCorrelation`, `finiteLogCorrelation_add_right`, `harmonicNormalizer`, `normalizedLogCorrelation`. The direct supplier is `GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`, blob `cde88cc3cd37a327f64b117fa0ccc058b2bb24a7`, containing `denominator`, `denominator_pos`, `denominator_tendsto`, `denominator_le_succ` and `arithmeticExponent_zero_of_bounded_ratio`. The relevant inputs remain Lean `leanprover/lean4:v4.33.0` and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Relationship and unresolved bridge:** `LOCAL_IDENTITY_SOURCE_CANDIDATE` for the continuant recurrence and finite-sum linearity; `ANALOGY_ONLY` for Sarnak's dynamical-systems formulation; `UNRESOLVED_PREMISE` for a genuine dynamical model, entropy bound, source-preserving Möbius sampling map and an asymptotic cancellation estimate. In particular, `arithmeticExponent=0` is **not** a Möbius-disjointness or Sarnak theorem.

**Verification evidence:** At the pinned file revision the module itself says `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED` and is not imported by `GRWTSK.lean`. An independent, non-Lean exact-integer recurrence check returns `[1,2,5,12,29]`; **FINITE_COMPUTATION_ONLY**. The full `lake build --wfail GRWTSK.NumberTheory.ContinuedFractions.SqrtTwoLogDigest`, direct elaboration, fresh kernel replay, transitive `#print axioms` and unsafe/generated-declaration audit have **no actual results in this record**. All remain **PENDING**, requested in [issue #1087](https://github.com/grwtsk/math/issues/1087); integration gate [#1089](https://github.com/grwtsk/math/issues/1089) remains pending. No `sorryAx` absence or kernel acceptance is inferred from source inspection.

## ICARM curve #4239: research data, not a paper proof

**Source identity (not a journal article):** Noam D. Elkies, Zev Klagsbrun and Samuel Li, *Elliptic Curve Rank Leaderboard — curve #4239*, research record maintained by the NSF Institute for Computer-Aided Reasoning in Mathematics, **submitted 15 October 2026** by `zevklagsbrun`. Stable source: [ICARM curve #4239](https://elliptic-rank.icarm.cloud/curve/4239). The record gives the authors in its commentary, 32 explicit rational points and a reported **rank lower bound ≥32**. It does **not** identify a peer-reviewed paper/DOI for this particular source packet; do not invent one or treat external certification as a GRWTSK proof. ICARM's description of exact quadratic-character 2-descent is an **external certificate method**, not an imported theorem merely because the leaderboard reports a rank.

**Exact model and finite hypotheses:** Over `ℚ`, `y²+xy=x³-Ax+B`, where `A=28623928991398919165500467001947502452240040593445344054331428726899413` and `B=1636638097022027963025086119463360482368875730889253334875693440181143871885452358966522018914326964558817`. Use **the 32 ordered, source-published rational point pairs** (not an arbitrary set of vertices or a rank premise); each can be checked by exact substitution. Completing the square yields `(2y+x)²=4x³+x²−4Ax+4B`. The added polynomial `(x²+1)(4x³+x²−4Ax+4B)` has a strictly positive quadratic factor at every rational `x`; this allows equality of rational zero sets and preservation of **oriented endpoint signs** for Farey cells, but not a group law or independence certificate. The quintic natural-degree theorem requires proving nonzero factors and degrees two and three; those obligations cannot be inferred from the source's name `rank32Quintic`.

**Pinned formal bindings:** The source-only integration is a descendant of [`e7838440b0d2760a91aaf5d842d76e761f79a702`](https://github.com/grwtsk/math/commit/e7838440b0d2760a91aaf5d842d76e761f79a702). Snapshot `grwtsk/math@8427906f0f86f2b640b569987ca2331d25f8981a` contains `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean` blob `9b489d813ddf451a7c8d164ca808fb569b29b5b8`, with `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.A`, `B`, `OnRecordModel`, `pointX`, `pointY`, `points_on_record_model`, `discriminant_ne_zero`, `pointCount7`, `pointCount19`. Companion `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean` blob `665105c6e0ad86bbb8647bc89f0980bfc735aae8` provides `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.FareyQuintic.completedSquareCubic_at_published_point`, `rank32Quintic_at_published_point`, `positiveQuadratic_eval_pos`, `resolvableEye_rank32Quintic_iff` and `rank32Quintic_natDegree` as source candidates. Direct dependencies are `Record4239Curve` and `GRWTSK.NumberTheory.Farey.ResolvableQuintic` (blob `7caef4b022e35202eef471aae2730dff6b518f70`), under the same Lean/Mathlib pins above.

**Independent finite preflight:** Using exact arbitrary-precision integer cross multiplication on **all 32 parsed point pairs** at the stated source blob, both `y²+xy=x³-Ax+B` and `(2y+x)²=4x³+x²−4Ax+4B` had **zero discrepancies (32/32 each)**. This is `FINITE_COMPUTATION_ONLY`: neither a checked Lean proof term nor a substitute for the exact 2-descent certificate.

**Relationship and nonclaims:** `LOCAL_IDENTITY_SOURCE_CANDIDATE` for polynomial and point identities; `FINITE_COMPUTATION_ONLY` for the external independent point arithmetic; `CONDITIONAL_REDUCTION` for any later implication requiring genuine local 2-descent characters; `UNRESOLVED_PREMISE` for those characters, torsion handling and all `E(ℚ)` group-law/independence arguments. No Mordell–Weil rank-32 lower-bound theorem is established locally; the leaderboard's external result is **not** a proof export. Preserve [issue #1049](https://github.com/grwtsk/math/issues/1049).

**Actual verification status:** **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED** for both identified files at this revision; they are not root-imported. Warning-clean isolated `lake build --wfail`, direct file elaboration, fresh kernel replay, transitive axioms/unsafe/generated-declaration review and complete acceptance receipts remain **PENDING** in [#1088](https://github.com/grwtsk/math/issues/1088), with Farey prerequisite [#1086](https://github.com/grwtsk/math/issues/1086) and integration gate [#1089](https://github.com/grwtsk/math/issues/1089). Ordinary source readback and this documentation commit supply no kernel acceptance.

## Source-bound RH case study: Bombieri test moments and recent comparisons

**Primary paper:** Enrico Bombieri, *Problems of the Millennium:
the Riemann Hypothesis* (Clay Mathematics Institute, 2000; in
*The Millennium Prize Problems*, 2006), section V, printed pp. 8–9.
Stable document:
https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf

**Exact extracted clauses:** Bombieri's multiplicative Weil-criterion
specialization uses `g` in the stated piecewise-`C¹`, decay-controlled
positive-half-line test class and requires both
`∫₀∞ g(x) dx/x = 0` and `∫₀∞ g(x) dx = 0`. The classical
autocorrelation form, its explicit formula, sign convention and global
criterion are **additional** source obligations, not consequences
of merely imposing these two equations.

**Exact local correspondence:** the typed
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction.BombieriZeroMomentConditions`
and direct scalar-tent obstruction occur in
[`CanonicalSquareTentBombieriMomentObstruction.lean` at
`4a9285c99de5b08772e974cda933d350b52332dd`](https://github.com/grwtsk/math/blob/4a9285c99de5b08772e974cda933d350b52332dd/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean#L131),
blob `cc9ed5b34159242ac69eb569f80e1ea7b420fa53`.
The subsequent three-tent correction
`CanonicalSquareTentThreeTentMomentCorrection.correctedThreeTent_zeroMoments`
is source-inspected at
[`7c1dfad87b9f4ea3ee4fd8502b48391c485224ad`](https://github.com/grwtsk/math/blob/7c1dfad87b9f4ea3ee4fd8502b48391c485224ad/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean#L142),
blob `47508e138cbabff332793205f0918fa9764e6554`.
These are local mathematical results about **actual** canonical tents
and actual positive-half-line moments, not the paper's RH equivalence.

**Relationship:** `DIRECT_HYPOTHESIS_ENCODING` for both displayed
moment constraints; `LOCAL_IDENTITY_SOURCE_CANDIDATE` for derived
canonical-tent lemmas; `UNRESOLVED_PREMISE` for the *whole* Bombieri
test class, an all-pairs classical Weil-form comparison, density,
exact normalization/sign and the terminal criterion.
**Actual verification:** `SOURCE_PRESENT / NOT_RUN / NO_RECEIPT`
for these exact commits in this provenance review; source files
and Git blobs have been inspected, but no matching fresh
warning-clean Lean build, kernel checking or full transitive
axiom/native audit is established here.

The companion [paper-to-Lean RH provenance ledger](paper-formalization-provenance-rh.md)
contains the complete declaration/commit/blob matrix and separate,
verified bibliographic records for Bombieri (2000), Alpöge–Furman
(2026), Lamzouri (2026), Goldston–Lee–Schettler–Suriajaya
(2025), Rodgers–Tao (2018/2020), Loeffler–Stoll (2025),
OpenAI's 2026 quasi-RH and determinant counterexample, and
the Nyman–Beurling and Li criteria. **Only the exact Bombieri
moment constraints are source-derived inputs here**; the
other results are expressly compared as `ANALOGY_ONLY` or
conditional interfaces, not imported theorems.

## Exact local-to-global information-loss bridges and external conjecture comparisons — 2026-10-23

**Provenance class:** repository-original logical and finite-algebraic supplier, **not** a formalization of the external papers listed below. The four added Lean modules were integrated on `grwtsk/math` main in commit [`250ac4b463653268952ce1aa112885afd024e2f3`](https://github.com/grwtsk/math/commit/250ac4b463653268952ce1aa112885afd024e2f3), with a one-file native shear-name qualification at [`a8c29a5f9a12252251098136bc3997cba0637e5a`](https://github.com/grwtsk/math/commit/a8c29a5f9a12252251098136bc3997cba0637e5a). The [source-bound theorem and hypothesis ledger](../../../mathematics/Logic/information-loss-farey-weil.md) gives full declaration names, four Git blob IDs, direct imports, exact mathematical hypotheses, and hostile scope controls. It does not modify original paper/idea version identities.

**Exact mathematical bridge claimed in Lean source (not yet compiler-accepted):** If `profile x = profile y` but `readout x ≠ readout y`, then no `decode` has `readout = decode ∘ profile`. The source-level specializations are (1) genuine Farey endpoint-sign pair versus root membership at a rational point, using `propext` and the already-authored exact rational extra-root witness; (2) actual stage-2/3/4 Bombieri ordinary/reciprocal moment pair versus any **supplied separating** readout; and (3) idempotent projectors simultaneously commuting with the two complexified native Farey generators. An augmented pair of observations separates only a supplied collision, **not every input**. These are `LOCAL_IDENTITY_SOURCE_CANDIDATE` and `OBSTRUCTION_AT_SCOPE` **conditional on actual kernel acceptance**, not global reconstructed theorems.

**External comparisons, with specific hypotheses and no imported theorem:** Gowers–Green–Manners–Tao, *On a conjecture of Marton* (**2025**, [DOI 10.4007/annals.2025.201.2.5](https://doi.org/10.4007/annals.2025.201.2.5)), concerns characteristic-two approximate additive structure with polynomial quantitative bounds; Wang–Zahl, *Volume estimates for unions of convex sets, and the Kakeya set conjecture in three dimensions* (**2025**, [arXiv:2502.17655](https://arxiv.org/abs/2502.17655)), uses finite-scale tube-union hypotheses to derive dimension three; OpenAI, *The Euclidean plane is not five-colorable* (**2026**, [formalization scope](https://github.com/openai/math/blob/main/lean/docs/158.md)), concerns **all** proper five-colorings of the unit-distance plane; OpenAI, *Uniform exclusion of Landau–Siegel zeros* (**2026**, [audited theorem statement](https://jasonhickey.com/articles/2026_10_10_oai_siegel_audit/article.md)), concerns **primitive real** Dirichlet characters and an absolute real-zero gap. **Relationship for all four: `ANALOGY_ONLY`**, not a source-preserving formal map or imported proof.

**Unresolved premises:** no PFR quantitative finite-field structure, Kakeya tube-cover estimate, all-plane coloring transport, or primitive-character/L-function analytic zero bound follows from the generic fiber theorem. No classical Guinand–Weil equality, positivity, RH proof, infinite Farey spectral channel, Sarnak disjointness, or elliptic rank follows. `GRWTSK.lean` does not import the new standalone modules.

**Actual verification:** `SOURCE_INTEGRATED / NOT_RUN / NOT_FRESH_KERNEL_CHECKED / TRANSITIVE_AXIOMS_PENDING`. The tree and authored source provide no accepted Lean proof evidence. Pins remain Lean `v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Require a clean immutable commit replay of the four modules and their transitive dependencies, `lake build --wfail`, direct elaboration, fresh kernel checking, `#print axioms` including `propext` and unsafe/generated checks, with literal execution statuses. Do not upgrade the record on a queued issue alone.

## Bombieri-source zero moments versus an explicit third arithmetic coordinate — 2026-10-23

**Exact publication context:** Enrico Bombieri, *Problems of the Millennium: the Riemann Hypothesis* (**2000**, Clay Mathematics Institute official description; reprinted 2006), **Section V, Further evidence: the explicit formula**, printed pp. 8–9; stable source [Clay official PDF](https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf). The relevant paper constraints are `∫₀∞ g(x) dx/x = 0` and `∫₀∞ g(x) dx = 0` for the paper's admissible multiplicative test class `W`. The class's piecewise regularity, endpoint decay, Mellin measure, conjugated multiplicative autocorrelation and explicit-formula sign conventions remain separate unfulfilled obligations, as detailed in [source review](paper-formalization-provenance-rh.md). These two moments are **the only paper-method inputs** to this finite arithmetic correspondence.

**Repository-original formal step (not a paper theorem):** `grwtsk/math` integrated main commit [`93468e369390b8ec75e7fd6a031ada2ae92223b0`](https://github.com/grwtsk/math/commit/93468e369390b8ec75e7fd6a031ada2ae92223b0); module `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss`, file `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean`, Git blob `1ff8c00eac7c167abc4c5456924312bf6f95bf74`. Imported repository source: `CanonicalSquareTentInformationLossBridge.lean`, blob `6872d5305e9ce50387434fde6a92784866896783`, ultimately consuming `CanonicalSquareTentThreeTentMomentCorrection.cofactorTwo_ne_zero` with blob `644be0606ac195f35c8409f8877a707edb2aa457`. Pinned Lean `v4.33.0`; Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Exact declarations, hypothesis binding:** `thirdCoordinateReadout` is the index `(2 : Fin 3)` complex coefficient on `Combination 2`—it is stage four of stages 2/3/4, not a Weil diagonal. `thirdCoordinateReadout_corrected` identifies its corrected value with the nonzero arithmetic cofactor `cofactorTwo`; `thirdCoordinateReadout_zero` identifies its zero-vector value; `thirdCoordinateReadout_separates` discharges the separation hypothesis of `CanonicalSquareTentInformationLossBridge.bombieri_not_factorsThrough_generic` specifically for that arithmetic readout. `thirdCoordinateReadout_not_factorsThrough` rules out **any decoder from just the two Bombieri moment coordinates** to the third coefficient. `thirdCoordinateReadout_augmented_separates` separates one explicit pair after adding the third coordinate; it does **not** establish injectivity globally.

**Relationship classes:** `DIRECT_HYPOTHESIS_ENCODING` applies only to Bombieri's two zero-moment conditions through existing canonical tent source; `LOCAL_IDENTITY_SOURCE_CANDIDATE` applies to the new finite-coordinate lemmas; `UNRESOLVED_PREMISE` applies to any classical Guinand–Weil form, sign-normalized transport, full test class, arithmetic-to-classical separation, asymptotic estimates or RH. No classical analytic bridge and no stronger theorem from Bombieri's paper is asserted.

**Actual verification:** `SOURCE_PRESENT / NOT_RUN / NOT_FRESH_KERNEL_CHECKED / TRANSITIVE_AXIOMS_PENDING` for this exact source commit; source/blob inspection is not successful compilation. The source is absent from `GRWTSK.lean`, pending the module build, direct Lean elaboration, fresh kernel replay and full `#print axioms`/unsafe/generated-declaration audit in [#1099](https://github.com/grwtsk/math/issues/1099). Any future verification upgrade must bind the exact checked commit and real command exit statuses.

## Exact three-coordinate arithmetic reconstruction after two Bombieri moments — 2026-10-23

**Paper source and hypotheses:** Enrico Bombieri, *Problems of the Millennium: the Riemann Hypothesis*, Clay Mathematics Institute (**2000**, official problem description; book reprint 2006), **Section V, Further evidence: the explicit formula**, printed pp. 8–9, [official PDF](https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf). The only source-derived conditions used here are the two zero moments `∫ g(x) dx = 0` and `∫ g(x) dx/x = 0` for his admitted test class; the test class's regularity, decay, multiplicative convolution, classical explicit-formula sign and full quantifier are **not** formalized by this source-level finite reconstruction.

**Exact repository method:** the existing `CanonicalSquareTentThreeTentMomentKernelLine.coefficient_line_of_two_moments` (blob `2b9d613a7cef0428754fdceab226907407ad5467`) states that any vector in `Combination 2` with both actual source moments zero lies on the scalar line generated by `correctedCoordinates`. The existing `CanonicalSquareTentThreeTentMomentCorrection.cofactorTwo_ne_zero` (blob `644be0606ac195f35c8409f8877a707edb2aa457`) says the third cofactor is nonzero. Their combination is the determinant-one-dimensional kernel elimination supplier for an augmented finite coordinate map.

**New formal declarations:** `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss.augmentedThreeMomentProfile_injective` establishes injectivity of `u ↦ (bombieriMomentProfile u, thirdCoordinateReadout u)` on the exact three-coordinate arithmetic source; `any_source_readout_factorsThrough_augmentedThreeMoments` uses the generic inhabited-source factorization criterion to obtain a classical decoder for any `readout : Combination 2 → α` using that augmented map. This is a **repository-original local finite-algebraic theorem candidate**, not an imported paper theorem. Its direct dependencies and exact new blob and main commit must be recorded with the verification request and checked source readback; an earlier third-coordinate integration was `grwtsk/math@93468e369390b8ec75e7fd6a031ada2ae92223b0`, blob `1ff8c00eac7c167abc4c5456924312bf6f95bf74`. This record does not claim the new source is accepted by the kernel.

**Relationship:** `DIRECT_HYPOTHESIS_ENCODING` only for the two Bombieri moment equations; `LOCAL_IDENTITY_SOURCE_CANDIDATE` for the new source injectivity and factorization; `UNRESOLVED_PREMISE` for a classical Weil diagonal identification, positivity, all-pairs transport, admissible test space, density and RH. An algebraic decoder on a fixed three-dimensional coefficient space is not a global analytic inverse or a formalized Kakeya/PFR/Siegel-zero theorem.

**Verification:** `NOT_LEAN_BUILT / NOT_FRESH_KERNEL_CHECKED / TRANSITIVE_AXIOMS_PENDING`; any source commit, paper citation, finite arithmetic preflight or queued verification issue is not Lean kernel acceptance. Run the complete, immutable-commit module/transitive closure, `lake build --wfail`, direct elaboration, fresh kernel, all `#print axioms` and unsafe/generated declaration checks; record outputs and exit codes.

## Farey return, angular observation and cyclic-residue Hodge — 2026-10-23

The authoritative [paper-to-formalization references ledger](paper-to-formalization-references.md#case-farey-angular-02--oriented-return-phase-not-a-global-spectral-character)
records the exact source identities and **paper boundary** for the
Farey return's mod-three angular observation and its
sign/projectivization obstruction; the
[cyclic-residue Hodge entry](paper-to-formalization-references.md#case-farey-hodge-01--cyclic-residue-hodge-and-nonunit-equivariance-failure)
records the finite graph/Dirichlet-residue application.
These are **2026 repository-derived constructions**, **not** imports
of a newly identified publication. The source credits mathematical direction
to grwtsk contributors and OpenAI formalization assistance; outside
paper bibliographic details and theorem locator are **not established**.
The only separately identified dynamics-paper comparison is
**Peter Sarnak**, *Three Lectures on the Mobius Function: Randomness
and Dynamics* (2011, [IAS](https://publications.ias.edu/sarnak/paper/506)),
**Definition 3 and Conjecture 4**: the missing compact
zero-topological-entropy flow, continuous observable, actual Möbius
weight and ordinary-average cancellation make this
**`ANALOGY_ONLY`**, not a proved port.

Fully qualified declaration names, exact hypotheses (selected
positive Farey word, mod-three quotient, oriented phase, sign-gauge
invariance, nonunit residue two mod four), first main commits and
Git blobs are in the linked ledger. The parent eight-module
finite-algebra scope has a recorded local exit-zero Lean/kernel/axiom
qualification at `55fe9dbc34a784cb15782c9dfb0d371a55c6f988`;
that status **does not extend** to the `ReturnAngularChannel`,
`ReturnAngularProjectiveObstruction` and `CyclicResidueHodge`
leaves. Those remain `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`
under distinct queued issues
[#1100](https://github.com/grwtsk/math/issues/1100),
[#1102](https://github.com/grwtsk/math/issues/1102) and
[#1103](https://github.com/grwtsk/math/issues/1103).
No infinite-volume spectrum, analytic Hodge, Siegel-zero,
Sarnak-disjointness, RH or unconditional spiral for arbitrary
superwalks is established. The full entries, rather than this
cross-index, are the source for provenance and verification claims.

## Updating the ledger

When a later result is added, create a record alongside its source: refer to the original theorem label and *exact* special-case hypotheses, list every newly added declaration and its main commit/blob, preserve earlier records without retroactive verification upgrades, and attach the validation issue/receipt. Keep unproved analogies and mathematical obstacles readable even when some finite definitions or algebraic lemmas compile. Documentation edits themselves require no Lean acceptance claim; their Git commit establishes only document integration.
