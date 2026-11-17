# Exact stage certificates for the original 95-state machine

Local source attribution is grwtsk contributors.

The arithmetic source is Google DeepMind's Cryptids at
`3647718b5df22e1a61462dec0376bd204526285a`, copyright Google LLC (2026),
Apache-2.0. The repository's copy of the [Apache-2.0 license text](../../../LICENSES/Mathlib-Apache-2.0.txt)
applies to the adapted recurrences in
[Riemann95StageCertificates.lean](Riemann95StageCertificates.lean).
The [upstream license](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/LICENSE)
has Git blob `d645695673349e3947e8e5ae42332d0ac3164cd7`.

## Arithmetic predicate identity

`GRWTSK.NumberTheory.Riemann95StageCertificates.counterexample_iff_cryptids`
in [Riemann95StageCertificatesCryptids.lean](Riemann95StageCertificatesCryptids.lean)
identifies the local predicate with `ConjectureMachines.Riemann120.ShuniaCounterexample n`
for every natural `n`. Induction matches the prime product. Strong induction
matches the offset count and the base-four clock at every input because the
division argument is smaller. Both predicates compare the same clock
threshold to the same saturated natural-number deficit. The local clock
uses the offset count with base four. The source definitions are in
`Cryptids/Riemann120.lean`, blob `f3950d82d05943946a04c2a8423837bb76c55396`.
[Arithmetic definitions](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann120.lean#L1551-L1582)

## Exact search and universal acceptance

`GRWTSK.NumberTheory.Riemann95StageCertificates.search_detects_cryptids_halt`
identifies existence of a nonempty bounded search result with
`Halts ConjectureMachines.Riemann95.candidate`. The exact window number and
slot are the quotient and remainder upon dividing the stage by 95. From
either coordinate pair the checker evaluates the source at `95*k+j+2`.
The `grwtsk/hs` schedule at `bb09f62f2521a8f793289a3a6ef1fdefb08a305f`
carries the ordinal `95*k+j` with the prime value. This gives a defined
arithmetic consumer of the retained ordinal. Import
`ConjectureMachines.Riemann95.halts_candidate_iff_counterexample` from
`Cryptids/Riemann95.lean`, blob `3fd86d0b954485707b620846f36ccd98d5ba970f`.
The physical checkpoint theorem is in `Witness95.lean`, blob
`2f0b9fa8e289468aa1a18cdb0cef719eb7e1869e`.
[HS window specification](https://github.com/grwtsk/hs/blob/bb09f62f2521a8f793289a3a6ef1fdefb08a305f/systems/model/source/prime-windows/README.md) ·
[Blank-tape criterion](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L19-L27) ·
[Physical criterion](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Witness95.lean#L14-L43)

`GRWTSK.NumberTheory.Riemann95StageCertificates.all_windows_accept_iff_cryptids_RH`
identifies acceptance for every window with Mathlib's `RiemannHypothesis`.
A locally accepted certificate covers its exact finite set. The checked
sets jointly imply every source test once their union contains every stage.
The [generic theorem](../../ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/CertifiedStageCoverage.lean)
gives the converse for arbitrary predicates. Given an omitted stage `m`,
the predicate `s ≠ m` passes every certified test and fails at `m).
The RH return uses `ConjectureMachines.Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis`
from `Cryptids/Semantics/Riemann95.lean`, blob
`476d1101cb827e1a29ce61232d2e7b8b0727fecf`.
[RH equivalence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean#L11-L16)

## Prime-valued witnesses

`GRWTSK.NumberTheory.Riemann95StageCertificates.exists_cryptids_prime_counterexample_above`
takes blank-tape halting and any natural cutoff. It returns a larger prime
satisfying the original Shunia predicate. Let `S(n) = √n (log n)^2`. The
pinned `not_riemannHypothesis_imp_exists_self_sub_psi_gt` supplies
`n > 253` with `n - ψ(n) > K S(n)` for every positive real `K`. Choose
`K ≥ max(100, cutoff)`. The least prime `p > n` satisfies `p ≤ 2n` by
Bertrand and `θ(p) = θ(n) + log p`. Since `θ(n) ≤ ψ(n)`, the defect
at `p` loses at most `log p`. The elementary estimates
`S(p) ≤ 8 S(n)` and `log p ≤ 2 S(n)` give `p - θ(p) > 8 S(p)`.
If the Shunia predicate at `p` were false, its clock bound and the
pinned integer-deficit bound would give `p - θ(p) ≤ 8 S(p)`. Their
error terms `+3` inside the log coefficient and `+1` after it are
included in [PrimeArgumentCounterexample.lean](PrimeArgumentCounterexample.lean).
The source bounds are in `Cryptids/Semantics/Riemann120/Analytic.lean`,
blob `469ca1a628495aef02674162dce48c95cb6ec1ff`.
[Integer deficit](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Analytic.lean#L244-L247) ·
[One-sided oscillation](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Analytic.lean#L922-L929)

`GRWTSK.NumberTheory.Riemann95StageCertificates.cryptids_halts_iff_prime_counterexample`
uses the preceding theorem at cutoff zero. The reverse implication applies
the original blank-tape witness theorem at stage `p - 2), using `2 ≤ p`.
`GRWTSK.NumberTheory.Riemann95StageCertificates.all_prime_labels_safe_iff_RH`
then uses the fact that the labels range over exactly the primes. This
detects some original witness in the prime-valued subfamily even though
argument 4, at original stage 2, is absent from that subfamily.
The pinned finite bound verifies 4 is safe. The prime-witness proof gives
existence beyond each cutoff with no bound on how far to search for a witness.
[Original witness criterion](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L19-L27) ·
[Finite arithmetic bound](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Analytic.lean#L436-L439)

## Arbitrary ordinal-window cutoffs

In `GRWTSK.NumberTheory.Riemann95StageCertificates`,
`exists_prime_badSlot_at_or_above` sends the preceding prime witness back to
the exact ordinal checker. For any starting window `k`, choose a bad prime
argument `p > 95*k+1` using `exists_cryptids_prime_counterexample_above`.
The pinned predicate identity and `argumentAddress_iff` place it at a slot
with `p = 95*w+j+2` and `j < 95`. A window `w < k` ends at an argument of
at most `95*k+1`, so the recovered window satisfies `k ≤ w`.

`cryptids_halts_iff_cofinal_rejected_windows` uses `accepts_iff` to turn
the slot into a rejected window. In the reverse direction, even one
rejection contradicts the all-window acceptance implied by RH.
`windows_accept_from_iff_cryptids_RH` therefore gives RH exactly when
every window from any prescribed start onward is accepted.
`accepts_off_finite_set_iff_cryptids_RH` gives the same result for acceptance
outside any prescribed finite set of windows, by choosing a start beyond
the supremum of that set.

These local consequences use the same pinned `ShuniaCounterexample`,
blank-tape candidate and `RiemannHypothesis` as the prime-witness return.
A certificate schedule that covers an entire suffix can use the new
return. An abstract checker that accepts the even window indices and
rejects the odds shows that cofinally many acceptances alone cannot
establish suffix acceptance. The source-specific remaining inputs are
acceptance throughout a suffix and exact agreement of any runtime gate
used to supply those certificates.

## Proof obligations

```text
pinned arithmetic recurrences → exact local predicate
ordinal division → exact source stage partition
sound acceptance + certified union covers the source → universal safety
universal safety ↔ blank-tape nonhalting ↔ RH
one-sided oscillation + least-prime comparison → prime witnesses on halting
prime witnesses beyond every cutoff + ordinal decoding → cofinal rejected windows
exact acceptance outside a finite set → suffix acceptance → RH
```

To establish universal safety directly, a proof must supply the successor
step for an inductive safety invariant or an independent inequality covering
the remaining stages. A finite carrier can also close a safe orbit when the
full state stays in it. The natural stage counter itself escapes every
finite carrier. An explicit delayed-failure control agrees with a safe run
through an arbitrary finite observation and fails on the next step.
[OrbitSafetyCertificate.lean](../../DynamicalSystemsAndErgodicTheory/OrbitSafetyCertificate.lean)

The HS runtime gate's agreement with the arithmetic checker, its ability to
discharge every window, and the independent review are separate obligations.
The finite probability inventory's positive heat establishes coverage of code
indices. The sofic source continuation theorem uses a genuine outgoing edge at
each visited vertex. Applying either to the machine requires a source-bound
map to the arithmetic tests.
[Finite inventory](../../Combinatorics/GraphTheory/ReversibleCertificateHeat.lean) ·
[Original graph runs](../../DynamicalSystemsAndErgodicTheory/SoficRightInfiniteContinuation.lean)

## Verification

The root modules compiled on Lean 4.34.1 and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The isolated package
built on Lean 4.35.0-rc4 and Mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb` using the actual pinned
Cryptids imports. Targeted kernel replay passed for the new modules.
The transitive audits show that the six source-return declarations use only
`propext`, `Classical.choice`, and `Quot.sound`. Expected-type checks
passed for the universal acceptance and cofinal prime-witness theorems.
The executable arithmetic checker accepted windows zero and one and returned
no witness through those windows. Safety at arithmetic argument 4 also
passed a kernel-checked finite proof.

Full fresh replay of the generic coverage and orbit import closures was
started and stopped without a result. Full fresh replay of the isolated
import closure, HS runtime parity, and independent review are `NOT_RUN`.

For the four ordinal-cutoff declarations, elaboration with `--trust=0`,
exact-type checks, and kernel replay against the imported environment
passed on the isolated Lean and Mathlib pins above. The transitive axiom
audit reported `propext`, `Classical.choice`, and `Quot.sound` for each.
Fresh transitive replay for the ordinal-cutoff extension is `NOT_RUN`.
[Coordination and exact checks](https://github.com/grwtsk/math/issues/1820)
