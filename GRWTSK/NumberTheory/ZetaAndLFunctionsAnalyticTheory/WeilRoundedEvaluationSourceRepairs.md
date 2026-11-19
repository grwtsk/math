# Source-reference repairs for the rounded Weil enclosure

Local attribution: grwtsk contributors.
MSC2020: 11M26 (primary), 11M41, 33B15, 65G20.
Coordination: grwtsk/math#1801, iteration 12, 2026-11-18 America/Los_Angeles.

Status: SOURCE_PROOF_CANDIDATE. This record documents source inspection and
repairs, NOT an executed compiler failure followed by a passing build.
Lean parsing, elaboration, exact types, targeted/full builds, fresh kernel replay,
transitive axiom audit and independent review remain NOT_RUN. Novelty UNASSESSED.
The previous revision remains historically an unchecked source candidate.

## Inspected baseline and exact byte identity

Inspection pin: `988cea9d49f5532be085918076c380ed6a400c20`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Complete original bytes were read before replacement and their local Git blob
identities were checked against the connector readbacks:

| Source | Original Git blob | Original lines / bytes |
|---|---|---:|
| WeilRationalGammaConstant.lean | d0ee298d2e7f952583282d7b681a4830a3f8cbce | 143 / 7109 |
| WeilExponentialBumpRoundedEvaluation.lean | 97faf22b2daa83ea50799637deb525a68888d62d | 221 / 12121 |

No original adjacent provenance record is rewritten as though the repair had
already existed. The two original records remain the initial argument and
publication history. This supplement records the new source disposition.

## RGC namespace and parity-identity repair

The original RGC source opened CharacterWindow, but the imported gamma data
are declared in `GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection`.
The repaired source opens that actual namespace.

The original RGC-2 proof referred to `digamma_quarter` and
`digamma_three_quarters`. The inspected imported WeilGammaData module instead
has a PRIVATE paired lemma `digamma_quarters`, and exposes public identities
for the actual gammaConstant. Moreover its definition uses the argument
`1/4 + a/2`; a rewrite targeting a syntactically different `(2*a+1)/4` does
not by itself expose that definition's derivative quotient.

The replacement proof does not unfold the special function or invent new
quarter-value declarations. It uses exactly these public source identities:

    gammaConstant_even_eq_log_add q hq
    gammaConstant_one_zero_eq
    gammaConstant_odd_eq_even_add_pi q

For q>0, the even case becomes

    c(q,0) = log q + c(1,0)
           = log q - log pi - gamma - pi/2 - 3 log 2.

The odd case adds pi to this same expression, giving +pi/2 instead of -pi/2.
Split the retained hypothesis a<=1 into a=0 or a=1 and rearrange the ring
expression. This is the complete analytical argument of the replacement.
The theorem's quantified statement, all rational endpoints, and the consumer
budgets are unchanged. In particular no arbitrary-parity extension is claimed.

### Individual affected declarations

Prefix `GRWTSK.NumberTheory.WeilQuadraticForm.RationalGammaConstant`:

- RGC-1 `euler_enclosure`: proof and statement unchanged. The original pinned
  harmonic sandwich is still the supplier; no numerical gamma input is added.
- RGC-2 `gammaConstant_parity_eq`: proof replaced by the public-source argument
  above; q>0 and a<=1 retained. Consumer: RGC-3. Provenance: exact three
  WeilGammaData identities, not nonexistent public quarter-value names.
- RGC-3 `gamma_enclosure`: proof and statement unchanged, except that unqualified
  gammaConstant now resolves through its owning namespace. The assumptions
  h>0 and certified rational pi endpoints remain. Consumer: RGC-4.
- RGC-4 `center_error`: unchanged interval-to-center argument and hypotheses.
  Consumer: EBR-1. A potentially negative center is retained.
- RGC-5 `center_error_pi_hundredths`: unchanged use of pinned pi_gt_d2 and
  pi_lt_d2. It is a fixed-width instance, not arbitrary-precision generation.

Each declaration remains SOURCE_PROOF_CANDIDATE; this namespace/proof repair
is not evidence that its transitive dependencies compile or have been audited.

## RoundedCoefficients name-resolution repairs

The original first namespace in WeilExponentialBumpRoundedEvaluation used
`primeWeight`, `activePrimePowers`, and `twistedPrime` without opening their
owning local namespaces there. The repaired source adds

    open LowSchur CharacterWindow

inside RoundedCoefficients. LowSchur owns the original inventory and weights;
CharacterWindow owns the original signed twistedPrime. The later
DirichletStageChain namespace already opened those namespaces and is unchanged.

The original RBC-1 proof invoked `norm_character_le_one chi n`. The pinned
Mathlib character API, and the inspected maintained CharacterWeilWindowBounds
consumer, use `chi.norm_le_one n`. The replacement uses that observed API.

### RBC-1: `RoundedCoefficients.coefficient_error`

For the original weight w, rational center w0 and phase center z, the exact
complex decomposition remains

    w*conj(chi)-w0*conj(z)
      = (w-w0)*conj(chi) + w0*conj(chi-z).

The triangle inequality, norm multiplicativity, |chi|<=1, the original weight
error ew, and the ACTUAL phase error ez give `ew+abs(w0)*ez`. The changed
lemma reference supplies precisely the same |chi|<=1 fact. No hypothesis,
center, error term, or conjugation changes. Consumers: RBC-2, EBR-1, SCP-14/15.

### RBC-2: `RoundedCoefficients.abs_twistedPrime_sub_coefficients_le`

The proof is unchanged; opening its actual source namespaces repairs resolution
of the inventory and signed source. Taking the real part of each coefficient
error times A_n, then summing the absolute errors, gives
`2*sum ed_n*norm(A_n)`. The central sum remains signed. No subset inventory
or absolute-value replacement is permitted. Consumer: EBR-1.

### EBR-1: `DirichletStageChain.primitiveArithmeticValue_oddExpBump_rounded_enclosure`

Statement, proof, input geometry, all finite checks, complete gamma omissions,
and source value are unchanged. It consumes the repaired RGC/RBC providers.
Its budget still includes

    ec*abs(mu) + (abs(c0)+ec)*e0
      + 2*sum (W_n*e_n + ed_n*norm(A_n)).

The term ec*e0 is not deleted. Inspection of the actual LowSchur inventory
also confirms that its filter predicate is a conjunction; projections
`(Finset.mem_filter.mp hn).2.1` in EBR-1 are retained. The repair does not
pretend those correct projections were defects.

## Source-local provenance

All local locators below refer to the inspection pin unless otherwise stated.

- [WeilGammaData.lean](WeilGammaData.lean), grwtsk contributors, blob
  `4ddf4399b7edfdb59af8d95d7b72222a1fefcd88`: namespace OddRootProjection,
  gammaConstant, and the three public identities named above. Their existing
  special-function argument uses pinned complex digamma reflection/duplication
  and comparison with the real Gamma logarithmic derivative. No upstream proof
  is copied or reattributed by this repair.
- [WeilLowSchurEnclosure.lean](WeilLowSchurEnclosure.lean), blob
  `6830835e869817c46c8499d383d7864f8ddbc600`: activePrimePowers and primeWeight.
- [CharacterWeilWindowBounds.lean](CharacterWeilWindowBounds.lean), blob
  `668ff53ae7c8a905ef5b6d827517ba8cb1142558`: twistedPrime and the observed
  use of chi.norm_le_one in abs_twistedPrime_le.
- [Mathlib DirichletCharacter.Bounds](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Bounds.lean):
  character norm bound. Mathlib remains an upstream dependency; its evidence
  is not inferred from this source-text repair.

This is correction of local proof references, not new mathematics or a newly
selected paper formalization. The original complete analytical exposition in
WeilRationalGammaConstant.md and WeilExponentialBumpRoundedEvaluation.md remains
relevant, subject to this corrected declaration map and unchanged evidence level.

## Hostile checks and evidence boundary

The two parity expressions differ by exactly pi. Identifying them or reversing
the even pi/2 endpoint would change the source. The repaired proof uses the
public odd-minus-even identity rather than independently approximating the
quarter digammas. The finite endpoint experiment also retains the gamma-times-
mass cross error. These are targeted mathematical checks, not independent review.

Source-text comparison checks that every existing definition and public theorem
statement is unchanged. Exact blob/hash comparison, delimiter checks, absence
of new proof placeholders, and declaration-record coverage are separate static
observations; they are not a Lean parser or kernel checker. Actual commands,
exit statuses, resulting source digests and publication readback are recorded
in issue #1801 and the publication manifest.

The canonical proof-automation skill returned 404 at Noe main
`5e2e88770dde19fd78c459a87e5e32a4ab7ad7b7`; no verified local checkout or
Lean/lake executable was available. No dependent execution was attempted.
The source fixes remove the specific inspected mismatches but do not establish
that no further elaboration or analytical errors remain.
