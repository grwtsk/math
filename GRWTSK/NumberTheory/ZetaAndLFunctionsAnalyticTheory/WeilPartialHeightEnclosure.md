# Partial-height enclosures for the original primitive Weil form

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M06; secondary 11M26, 65G20.
Owner: [WeilPartialHeightEnclosure.lean](WeilPartialHeightEnclosure.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
scope comment 6983104030. This is the first increment of the requested
formalization/refinement over conversational turns, not a scheduled task.

## Statement and exact source

Fix a primitive nonprincipal Dirichlet character chi. Every zero below is an
actual element of `WeilNegativeWitness.CriticalStripZero chi`, with its actual
analytic multiplicity `zeroMultiplicity chi rho`. The function is Mathlib's
analytically continued `DirichletCharacter.LFunction`, not a series outside its
convergence domain. Let f be an original admissible real odd smooth test at
support radius T. Write Q for `primitiveArithmeticValue chi hp hn T (liftReal f)`.

Let W_H be the canonical finite set `heightWindow chi hp H`: its height convention
is STRICT, |Im rho| < H. Let S be a subset of W_H, let m(S) be the sum of its
analytic multiplicities, and let M be a natural-number upper bound for the
complete count `heightCount chi hp H`. Set

    P_S = Re sum_{rho in S} m(rho) integral_R correlation(f,r)
                                    exp((rho-1/2)r) dr,
    d_k(f) = 2^k (integral_R |f| + integral_R |deriv^[k] f|),
    U(f,T) = exp(T) d_0(f)^2,
    E_missing = (M - m(S)) U(f,T).

The subtraction in E_missing is natural-number subtraction. Source inclusion
and the count ceiling imply m(S) <= M; an invalid certificate cannot exploit
truncated subtraction. Note d_0 = 2 ||f||_1, so U is a deliberately conservative
zeroth-order bound, not an optimized norm estimate.

For D,L >= 0 such that N_chi(u) <= D u(log u+L) for every u >= 2, retain the
existing high-height budget

    E_tail = 4 exp(T) D(L+1) d_1(f)^2 (J+2) 2^(-J),
    2^J <= 1+H.

If |P_S-v| <= r is a VALIDATED finite-evaluation enclosure, the new return is

    |Q-v| <= E_tail + E_missing + r.                         (WPH-1)

Its direct falsification consumer is

    v + E_tail + E_missing + r < 0  ==>  not DirichletCriticalLine chi. (WPH-2)

Its all-test consumer, with all supplier hypotheses retained, is the equivalence

    DirichletCriticalLine chi
    iff for every admissible smooth real odd f at every T and every epsilon > 0,
        there exist J,H,S,M,v,r satisfying the conditions above and
        -epsilon <= v - (E_tail + E_missing + r).            (WPH-3)

The source quantifies T,f,epsilon BEFORE the certificate choices. It does not
supply those choices unconditionally or uniformly in chi. D,L are fixed for the
chosen chi, and the original all-height count remains explicit. The canonical
native counting supplier can instantiate D = sourceCountConstant chi, L = 3.

For S = W_H and M = N_chi(H), the missing charge is zero, and the partial head
is definitionally the old complete head. If M is deliberately larger than the
true count, the bound remains valid but can be unnecessarily positive even when
S is complete. No completeness is inferred from a list of approximate roots.

The finite partial-head estimate itself permits conductor one. The arithmetic
and critical-line consumers require chi != 1 and are NOT a new pole-inclusive
zeta certificate theorem. Zeta RH remains a separate obligation in the global
primitive/all-moduli Dirichlet return. No broader L-function family is inferred.

## Analytical proof and return

For a strip zero rho, put z = -i(rho-1/2). Then |Im z| <= 1/2. The existing literal
correlation-Fourier theorem gives, at derivative order zero,

    |integral_R correlation(f,r) exp((rho-1/2)r) dr|
      <= d_0(f)^2 exp(2 T |Im z|) <= d_0(f)^2 exp(T).

This estimate does not replace the signed spectral product by an absolute square;
it only bounds its norm. It applies to each actual zero, even if it is off-line.
The finite set splits as W_H = (W_H minus S) disjoint-union S. The same split of
multiplicity sums gives mass(W_H minus S) = N_chi(H)-m(S) <= M-m(S). The triangle
inequality and |Re w| <= |w| therefore give |P_{W_H}-P_S| <= E_missing.
Combining that bound with the already-proved source equality/error theorem
|Q-P_{W_H}| <= E_tail and the separately supplied |P_S-v| <= r proves WPH-1.

If the upper endpoint is negative, Q < 0. The existing critical-line theorem
makes this same Q nonnegative under DirichletCriticalLine chi, proving WPH-2.
No actual negative certificate or off-line zero is exhibited here.

For WPH-3, a partial lower enclosure yields a full-head lower enclosure because
P_{W_H} >= P_S-E_missing >= v-r-E_missing. The existing
`smallConductorStages_iff_finiteHeightBounds` and
`smallConductorStages_iff_criticalLine` then return to the original target.
Conversely, under the critical-line assertion, the old full-head criterion gives
J,H. Choose S=W_H, M=N_chi(H), v=P_{W_H}, r=0. The new interface reduces exactly
to the old one. This is a logical existence construction, not an enumeration or
validated numerical evaluation algorithm.

## Declaration correspondence

All public names below have prefix
`GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain`.

| Local result | Declarations | Consumer / retained condition |
| --- | --- | --- |
| Exact full-head recovery | `partialHeightContribution_full`, `partialHeightMultiplicity_full`, `partialHeightMissingBudget_full` | Old complete-head interface; M must be the actual count for zero charge. |
| Safe missing mass | `partialHeightMultiplicity_le_count_upper` | Natural subtraction under actual source inclusion and true count ceiling. |
| Strip envelope | `norm_contourWeight_le_partialHeightUnitBudget` | Original complex correlation weight; compact smooth support, T >= 0. |
| Finite partial-head error | `abs_heightContribution_sub_partial_le` | Counts every omitted analytic multiplicity. |
| WPH-1 | `abs_primitiveArithmeticValue_sub_partial_estimate_le` | Native primitive arithmetic form; entire tail and validated evaluation error. |
| WPH-2 | `not_criticalLine_of_negative_partial_estimate` | Same-character actual ordinary L-function critical-line assertion. |
| WPH-3 forward consumer | `criticalLine_of_partial_lower_enclosures` | Every test and every positive accuracy. |
| WPH-3 equivalence | `criticalLine_iff_partial_lower_enclosures` | Converse uses complete exact heads; no algorithm asserted. |

This is a local consequence of canonical declarations, NOT a direct adaptation
of a new external paper. No external theorem is introduced as an axiom. Exact
comparison on 2026-11-18: `heightWindow_eq_of_le_sum_zeroMultiplicity` in
[WeilSourceHeightTail](WeilSourceHeightTail.lean) requires enough multiplicity
to exhaust the window; it gives no error charge for an incomplete head. The
new bound handles that missing case. The full-head error and stage equivalence
are reused from [WeilPrimitiveCofinalStageCriterion](WeilPrimitiveCofinalStageCriterion.lean).
The existing negative dyadic criterion in [WeilHeightCutoffBudget](WeilHeightCutoffBudget.lean)
uses the full head and no separate finite-evaluation error. The transform bound
is reused from [WeilCorrelationDecay](WeilCorrelationDecay.lean), which returns
it to the literal correlation. The elementary finite-sum split uses mathlib's
`Finset.sum_sdiff`, inspected at the exact root dependency pin.

No corpus-wide originality audit was performed. An empty code search and the
absence of a matching file in the inspected tree establish no global absence.
Novelty: UNASSESSED. The WPH identifiers are edition-local result locators,
not migrations of existing repository claims.

## Failure tests and unresolved suppliers

A negative approximate value alone is insufficient: Q=1, v=-1 and r=2 obey
|Q-v|<=r but furnish no negative upper certificate. A missing zero of analytic
multiplicity k must be charged k times the unit bound, not once; treating the
count as a count of distinct locations would be unsound. Zeros exactly at H
remain in the infinite tail, not in S. A loose count ceiling produces a valid
but possibly useless interval. These are elementary hostile checks on the
argument, not experiments on actual L-function zeros or independent review.

The input S must consist of certified actual zeros with their exact analytic
multiplicities. Disjoint numerical disks alone do not provide these facts.
Missing obligations for an executable certificate include validating each root
region, uniqueness/count/multiplicity where used, every finite evaluation, and
the source-matched total count upper bound. Universal lower-certificate supply
for every test, radius and accuracy remains OPEN. The code creates no numerical
certificate and runs no zero search. No RH/GRH conclusion is asserted without
its displayed all-test hypothesis.

## Source pin, verification boundary and reproduction

Inspected source base: `grwtsk/math@771e0b7e232ec7527fd11fb4f9275009cec06717`.
Complete base tree: `8579cf7e587d9a54918a41654bd55a4549e0e6c1` (`truncated=false`).
Root AGENTS/CONTRIBUTING, target ancestors, build configuration and .github tree
were inspected. No more-specific AGENTS exists along the edited source path;
no Actions workflow is present in the inspected .github tree. No protections,
pins, root imports, existing source files or historical evidence are changed.

Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Direct source suppliers at that base include:

- `WeilPrimitiveCofinalStageCriterion.lean`, blob `b5bfa1cd7ccea0e83080849fbd7ee4a7b48c1a5a`;
- `WeilCorrelationDecay.lean`, blob `2f6fad1e0a7011c751ffd2d366cd72c30f636d83`;
- `WeilSourceHeightTail.lean`, blob `f81d082419ff06958b6915bf57c1c67ab174c1cd`.

New Lean source SHA-256: `65b89f318705f401cf9d523e7497de88266c772ccd5023f92fe5941c2ed2ebb5`.
New Lean Git blob: `db4f5876c2268ac8433fb335bc0b6fe38f41e94f`.
Evidence: WRITTEN_ANALYTICAL_ARGUMENT and SOURCE_PROOF_CANDIDATE. Only local
UTF-8/source-text checks and digest calculation were run. They do not establish
Lean parsing, type correctness, proof checking, transitive axiom safety, or
independence. Elaboration, build, exact-type checks, fresh kernel replay,
transitive axiom audit, certified computation and independent mathematical
review: NOT_RUN. Existing supplier receipts are not promoted to this new source.

Execution is blocked: no verified local ~/.agents/skills or ~/.codex/skills
checkout was found, and the prescribed canonical
`workflows/research/orchestration/skills/noe-proof-automation/SKILL.md`
returned 404 at `grwtsk/noeaaeue/main@8ffd1c7de4f701a2fa7dc12d713bd2aaa637a4bd`.
No Lean/lake executable was found. No dependent automation was dispatched.
Ordinary authenticated source authoring and expected-head Git publication are
separate from that blocked execution. The publication receipt belongs in #1801.

For later authorized verification in a clean checkout at the publication commit,
first satisfy the then-current canonical execution policy and exact dependency
pins. The intended targeted build is

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPartialHeightEnclosure

This command has NOT_RUN. Then check the exact ten public theorem types above,
freshly replay their reached declarations, and audit their transitive axioms.
Retain failures verbatim rather than relabeling them NOT_RUN. No claim is made
that the root default target imports or checks this new module.
