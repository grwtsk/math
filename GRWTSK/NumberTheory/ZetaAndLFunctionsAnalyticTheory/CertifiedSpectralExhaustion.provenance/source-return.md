# Certified compact exhaustion and completed-zeta return

Maintained source: [`CertifiedSpectralExhaustion.lean`](../CertifiedSpectralExhaustion.lean).
Source SHA-256: `d859dddb888e3b58ce28d6c2ce039f49fb748bb9180b79767bc0d060edd98552`.
Primary subject: analytic zeta zero localization (MSC2020 11M26).
Consumer: existing completed-source determinant return in grwtsk/math#124.

## Exact declarations and quantifiers

Namespace: `GRWTSK.NumberTheory.Zeta.CertifiedSpectralExhaustion`.

`locallyUniform_of_exhausting_disk_bounds` assumes real sequences `radius` and
`error`, with `radius -> +infinity` and `error -> 0`, and the eventual assertion
that for EVERY complex `z` in the radius-`radius n` disk,
`norm (F n z - f z) <= error n`. It proves
`TendstoLocallyUniformlyOn F f atTop Set.univ`. Neither monotonicity nor a
positivity assumption on all early radii is required.

`riemannHypothesis_of_exhaustive_real_rooted` combines that result with entirety
and real-rootedness of every approximant, using the maintained actual completed
zeta source as `f`, and returns Mathlib's `RiemannHypothesis`.

`riemannHypothesis_of_exhaustive_normalized_hermitian` specializes to arbitrary
finite dimensions `d n`, Hermitian complex matrices `A n`, and entire nowhere-zero
normalizers `u n`. The error bound applies to the FULL normalized function
`u n z * (A n).charpoly.eval z`, not an unnormalized determinant, zero list,
ordinate projection, or sampled grid. All such data and proofs remain inputs.

## Complete primary argument

For a nonempty compact set `K`, continuity of the norm supplies a maximum
`B = max_{z in K} norm z`. Eventually `radius n >= B`, so the whole compact
set lies in each approximation disk. Given any positive accuracy `delta`,
eventually `error n < delta`. Intersect these two eventual statements with the
eventual all-point error bound. The triangle-free direct inequality then gives
`dist (F n z) (f z) < delta` uniformly on `K`. Empty compact sets are vacuous.
The pinned compact/local-uniform equivalence yields locally uniform convergence.

The first RH consumer applies the EXISTING entire real-rooted-limit theorem.
The matrix consumer applies the EXISTING normalized Hermitian determinant
version. Their contour proof retains actual analytic orders, normalizations,
zero-free circle margins, and the return to the original continued zeta
function. No new Hurwitz theorem or arithmetic convergence premise is smuggled
into this increment.

An alternative inspection route restricts to each fixed integer-radius disk,
then uses that these disks cover all compact subsets. This establishes the same
logical implication, not independent formal verification.

## Exact suppliers, prior art, and source return

At reviewed base `bce5626050479f84c01b75fd5e40a48340bb9bfa`,
[`XiDeterminantCircleCount.lean`](../XiDeterminantCircleCount.lean) has blob
`2181f277a712c132e9c66a7c5a2e10dabef3bb36`. Its exact supplied declarations are
`GRWTSK.NumberTheory.Zeta.XiDeterminantCircleCount.riemannHypothesis_of_locallyUniform_real_rooted`
and
`GRWTSK.NumberTheory.Zeta.XiDeterminantCircleCount.riemannHypothesis_of_normalized_hermitian_limit`.
The canonical function is
`GRWTSK.NumberTheory.Zeta.CompletedQuotientSource.spectralSource`, defined by
`xi (1/2 - I*z)` with
`xi(s) = (s*(s-1)*completedRiemannZeta0(s)+1)/2` (the source uses the Unicode
subscript in the library name). This pole-regularized entire completion has the
correct endpoint values. Its supplier is
[`CompletedQuotientSource.lean`](../NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean),
blob `1ece8bad20bf2a9cc089e274ee1e81fda3415704` at the same base.

Pinned Mathlib APIs used directly include
`tendstoLocallyUniformlyOn_iff_forall_isCompact`,
`Metric.tendstoUniformlyOn_iff`, `IsCompact.exists_isMaxOn`, and the elementary
filter laws for eventual bounds. The work is a local compact-exhaustion
consequence, not a new paper formalization. Historical reports of checks for
the supplier are retained at their original scope and are not new-run evidence.
No novelty or exhaustive prior-art search is claimed.

## Open obligations and hostile tests

The all-point error bound for source-defined HS matrices, a valid entire
normalization, actual growth of the covered disks, and errors vanishing with
EVERY omitted arithmetic/analytic/numerical contribution remain unresolved.
The norm bound cannot be replaced by finitely many sampled values or zeros.
A bounded radius would leave an unseen region; a fixed positive tolerance would
not yield arbitrary accuracy. The companion bounded-zero-divisor construction
provides an explicit independent mathematical obstruction to such weakening.
No claim of multiplicity-free zero identification is made.

This module proves a conditional implication. It does not construct its
HS-specific hypotheses, prove RH or primitive Dirichlet GRH unconditionally,
prove GUE asymptotics or the Riemann-von Mangoldt formula, or certify a minimum
zero count for reconstructing primes. The earlier conversational
`O(X (log X)^3)` budget is not promoted to a theorem here.

## Source identity and evidence

Local attribution: grwtsk contributors. Prepared on 2026-11-17
(America/Los_Angeles; publication may have a 2026-11-18 UTC date).
Coordinating issue: https://github.com/grwtsk/math/issues/124.
Reviewed mathematics base: `bce5626050479f84c01b75fd5e40a48340bb9bfa`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. Root imports and dependency pins are unchanged.

Disposition: formal-source candidate with a written analytic argument.
Novelty: `UNASSESSED`; no new mathematical priority claim is made.
Elaboration/typechecking, targeted build, fresh kernel replay, transitive axiom
audit, full repository validation, and independent review: `NOT_RUN`.
Static source inspection is not any of those checks. Historical verification of
an imported module is not transferred to this new source or its import closure.

The required legacy `noe-proof-automation/SKILL.md` path returned HTTP 404
at `grwtsk/noeaaeue/main` revision
`4fa80985707dd5f3fac5d01ab0ee7a1bb0e96a46`; that revision's skill catalog says
former skill leaves and names have been retired. Dependent automation was
stopped. Source authoring and connector publication follow this repository's
AGENTS/CONTRIBUTING policy. The publication commit, blob identities, main
readback, and any subsequent evidence belong in the coordinating issue.
