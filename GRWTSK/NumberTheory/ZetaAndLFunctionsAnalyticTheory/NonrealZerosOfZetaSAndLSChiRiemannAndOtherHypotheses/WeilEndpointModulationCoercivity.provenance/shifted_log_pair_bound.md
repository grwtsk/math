# shifted_log_pair_bound — individual declaration provenance

By grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6830340391.

## Exact declaration and source

File: [WeilEndpointModulationCoercivity.lean](../WeilEndpointModulationCoercivity.lean).
Fully qualified declaration:
`GRWTSK.NumberTheory.WeilEndpointModulationCoercivity.shifted_log_pair_bound`.
Define logWeight(b,t)=log(1+(t/b)^2)/2. For all b>0, eta!=0 and xi real,

    log(|eta|/b) <= logWeight(b,xi)+logWeight(b,xi-eta).

The definition is a real-valued total Lean function, but this theorem uses
only b>0. Its left logarithm argument is strictly positive.
Lean source Git blob: 9b11fdf60cf727b690b85e43385b976b98da4d91.
SHA-256: 04028134a7950b702afa70584bae21b2fae5310a03dbdb886ad19b3ef5e60964.

## Complete proof and exact physical return

Apply `log_pair_bound` with x=xi/b and y=(eta-xi)/b. Their sum is eta/b,
which is nonzero. Since b>0, |eta/b|=|eta|/b. Squaring removes the sign
between eta-xi and xi-eta. These substitutions give the stated inequality.
The source uses the preceding declaration, ring, abs_div, abs_of_pos and the
explicit nonzero division proof. No tactic execution is asserted.

WEMC-v1-1 in [the companion note](../WeilEndpointModulationCoercivity.md)
proves, for the actual multiplier of the canonical gamma integral,

    Psi_b(t) >= logWeight(b,t).

The statement here therefore gives Psi_b(xi)+Psi_b(xi-eta)>=log(|eta|/b).
WEMC-v1-2 proves modulation preserves the actual form domain, then integrates
this inequality against |F_g(xi)|^2/(2pi). The plus-Fourier convention gives
F_(M_eta g)(xi)=F_g(xi+eta), hence xi-eta after the change of variables.
No ordinate projection, zero summation, RH/GRH assumption, or H1 regularity
of the jumping endpoints is used. WEMC-v1-3--4 bound the unchanged prime
operator and BOTH poles and prove full endpoint-span positivity on an explicit
exterior-modulation region. The remaining bounded-modulation/all-window
inequality is not supplied. The analytic steps remain WRITTEN, not additional
Lean declarations inferred from this pointwise result.

## Provenance and verification boundary

This is a local normalization of the elementary log-pair argument, not an
external theorem import or a direct paper formalization. Its individual
predecessor record and WEMC section 7 contain the dated comparison and hostile
checks. The test g=M_(-eta)h shows why the integrated consumer must retain
Gamma_b(g); a log-growth lower bound for all envelopes without that term
would be false. Distinct written checks are not independent review.

Math main: 68d976d55601e8b827dd9e93bb45678eb074265d.
Lean: leanprover/lean4:v4.34.1; Mathlib:
d13f23b723b8a846827a245b89c10fc7d3f11612. No root import or pin change.
Status SOURCE_PROOF_CANDIDATE; originality UNASSESSED.
Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, numerical certification and independent analytical review: NOT_RUN.
No research axiom/sorry/admit is introduced in the bodies. This is not a
transitive axiom audit, source-equivalence verification or accepted RH proof.
