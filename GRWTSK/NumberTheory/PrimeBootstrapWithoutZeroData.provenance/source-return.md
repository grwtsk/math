# Prime bootstrap and canonical enumeration

Maintained source: [`PrimeBootstrapWithoutZeroData.lean`](../PrimeBootstrapWithoutZeroData.lean).
Source SHA-256: `cf1945e2c7769b5ceda6aa98f5df41c7b7530ec2db63e7169d7dbeb867d01c20`.
Primary subject: elementary prime enumeration (MSC2020 11A41).
Consumer: exact finite prime input to HS arithmetic and prime-power generation.

## Exact declarations

All declarations are in
`GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeBootstrap`.

- `primesUpTo X`: `(Finset.range (X + 1)).filter Nat.Prime`.
- `mem_primesUpTo`: membership is exactly primality plus `p <= X`.
- `primesUpTo_zero`: the zero-cutoff set is empty.
- `primesUpTo_succ`: an exact one-step extension using the next integer primality test.
- `primesUpTo_mono`: cutoff extension preserves previously enumerated primes.
- `mem_primesUpTo_iff_canonical`: every output, and only such an output, equals an
  entry of the maintained canonical prime enumeration within the cutoff.
- `prime_iff_mem_some_primesUpTo`: every prime is eventually included as the
  cutoff grows. This is a union/exhaustion statement, not a fixed finite cover.

## Primary argument and source comparison

Filtering the finite integer interval gives the membership equivalence by
`Finset.mem_filter`, `Finset.mem_range`, and the successor inequality.
`Finset.range_succ` and `Finset.filter_insert` give the recurrence. Monotonicity
and union coverage follow directly from the membership equivalence.
For a prime `p`, `Nat.nth_count` identifies `p` with the prime at index
`Nat.count Nat.Prime p`; conversely the existing canonical enumeration proves
each of its values prime. This proves completeness in both directions without
introducing another arithmetic source.

The maintained source supplier is
[`SpecificationAndPrimeEnumeration.lean`](../SpecificationAndPrimeEnumeration.lean),
blob `f31e3cdfc773cedf911566d9c69ce04d2eee43b3` at the reviewed base. Its declaration
`GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.SequentialPrimeSpecification.canonicalPrimeEnumeration`
is reused, not redefined. The Mathlib suppliers are `Nat.nth_count` in
`Mathlib/Data/Nat/Nth.lean` and the prime specialization in
[`Mathlib/Data/Nat/Prime/Nth.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Nat/Prime/Nth.lean).
These are local consequences of existing library theorems, not a new
paper-to-Lean adaptation. No external proof text is copied. Upstream authorship
and licenses remain with the imported libraries.

## Scope and hostile comparison

The executable bounded object has input type `Nat`, not a zero list or a
spectral oracle. No RH hypothesis enters its definition or proofs. This makes
precise the arithmetic sense in which zero zeta zeros are needed as input.
It does not prove an optimal runtime, provide an optimized sieve, reconstruct
primes from zeros, or prove an asymptotic statement about zeta zeros.
The existing unbounded `Nat.nth` interface is noncomputable; this record does not
misrepresent it as an executable prime oracle.

The zero-cutoff theorem is a source-level negative control. Completeness and
soundness are separately visible in the canonical-return proof. The independent
inspection route is finite filter membership versus the existing count/nth
identity; this is a comparison of arguments, not independent human review or a
second executed verification.

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
