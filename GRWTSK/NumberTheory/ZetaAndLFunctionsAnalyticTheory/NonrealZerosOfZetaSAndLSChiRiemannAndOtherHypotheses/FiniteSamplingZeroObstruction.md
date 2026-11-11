# FiniteSamplingZeroObstruction: statement and provenance

Local attribution: grwtsk contributors.

Maintained source: `FiniteSamplingZeroObstruction.lean` in this directory.
Coordination: https://github.com/grwtsk/math/issues/1803.
MSC2020 orientation: 30C15; secondary 11M26 and 11M41.
All declaration names below have prefix `GRWTSK.FiniteSamplingZeroObstruction.`
This is a local elementary negative-control source candidate, not an imported
proof, an arithmetic realization, or a proof/disproof of RH or GRH.

## Source identity and comparison

Requested basis: grwtsk contributors, *Typed Mathematical Architecture and
Zero-Distribution-Dependent Continuity*, edition 1.0, November 10, 2026,
section 20.5, RP-OC-09, printed page 45 / PDF page 54. The symmetry controls
of section 14.5 and Appendix B provide adjacent motivation. Exact supplied
PDF SHA-256:
`ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`.
The paper is not copied into this repository.

The paper supplies the negative-control research objective, not the
arbitrary-finite-sampling theorem below. The latter is the elementary local
construction specified as NC9-SAMPLES in issue #1803. This is an extension of
the test specification, not a claim that the source paper proved this theorem.
No novelty is asserted. Corpus-wide declaration and literature comparison is
UNASSESSED. The construction uses standard finite products, polynomial
interpolation obstructions, conjugation and differentiation; the implementation
reuses Mathlib rather than adding axioms or a surrogate complex number system.

Inspected formal-source base: `grwtsk/math/main` at
`5f66eb82a40921253664f53602851091ccd01d94`.
Publication was reconciled onto the complete newer main
`c6f931e6ce84dc755c001176cc1d98b976f2ad7c`, preserving concurrent
Program 2 and Program 4 additions.
Environment: `leanprover/lean4:v4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` from the existing manifest.
The source imports `Mathlib`; root imports and all dependency pins are unchanged.
Lean source SHA-256:
`8532a04aa4d56f56617c3c55c358792accc1433ae1c5a9943a20a8f952a6533b`.
The publication commit and exact Git blob are recorded in issue #1803, rather
than inserting a self-referential commit identifier into these source bytes.

## Exact statement and primary argument

Let S be any finite subset of the real numbers, including the empty set. Put

```
F(z) = 1,
factor(a,z) = (a^2-z^2)/(1+a^2),
G_S(z) = 1 + z^2 * product_{a in S} factor(a,z).
```

For each real a, `1+a^2 > 0`; there is no singular or default-zero division.
Each factor is a polynomial in z with real coefficients. Therefore G_S is an
even entire polynomial and satisfies `G_S(conj z) = conj(G_S(z))`.
At a sample a, one factor vanishes; at zero, the leading `z^2` vanishes.
Thus `G_S(a)=1` for every a in S, and `G_S(0)=1` regardless of whether zero
is sampled. At z=i each factor equals `(a^2+1)/(1+a^2)=1`; since `i^2=-1`,
`G_S(i)=0`. Its value at zero excludes the identically zero function.
F is entire, even, conjugation-compatible and normalized at zero, but has no
zeros. In particular all its zeros are real, vacuously. G_S fails that property.

The issue's original expression is equivalent: for
`V_S(z)=z^2 product_{a in S}(z^2-a^2)`,
`V_S(i)=(-1)^(|S|+1) product_{a in S}(1+a^2)` is nonzero. Hence
`1-V_S(z)/V_S(i)=G_S(z)`. This algebraic comparison is written here; it is not
an extra Lean theorem in this module.

Suppose a predicate on the fixed S-indexed vector of observations classified
real-zero localization for every function in the stated comparison class.
F and G_S have exactly the same vector. The predicate would be true for F,
hence true for G_S, contradicting the nonreal root i. This establishes the
second, classification-obstruction statement from the explicit construction.
It is a set-theoretic nonidentifiability result, not a computability or
complexity-theoretic undecidability claim.

## Declaration-level records

Every record has the environment and verification status in this document.
These are local proofs of elementary facts, not adaptations of named external
theorems. The only sample-node hypothesis is membership in the given Finset.

### factor_at_self
For every real a the factor at its own sample is zero. The numerator is
`a^2-a^2`. Consumer: the exact finite-observation equality.

### factor_at_I
For every real a the factor at i is one. Use `i^2=-1` and the strictly positive
real denominator before cancellation. Consumer: the explicit nonreal zero.

### factor_neg
For real a and complex z, replacing z by -z preserves the factor because
`(-z)^2=z^2`. Consumer: evenness of the control.

### factor_conj
Conjugation fixes the real constants and commutes with subtraction,
multiplication and squaring. Consumer: the control's real symmetry.

### control_at_zero
For every finite S, the leading `z^2` is zero at zero. Consumer: normalization
and exclusion of the identically zero function, including empty S.

### control_at_sample
For a in S, `factor_at_self` supplies a zero term in the finite product.
Consumer: exact, not approximate, equality of all recorded sample values.

### control_at_I
Every factor at i is one and `i^2=-1`. Consumer: failure of `RealZeros`.

### control_even
Apply `factor_neg` to each product term and use the even leading square.
Consumer: membership in the symmetric comparison class.

### control_conj
Transport conjugation through the finite product, sum and square using
`factor_conj`. Consumer: membership in the real-symmetric comparison class.

### control_differentiable
The formula is a finite product and sum of complex polynomial functions with
constant coefficients. Consumer: entire complex differentiability of the model.
The Lean proof uses `fun_prop`; that tactic has NOT been executed here.

### control_admissible
Package the preceding differentiability, two symmetries and normalization.
The definition imposes no arithmetic condition. Consumer: both main theorems.

### one_admissible
The constant one function is entire, even, conjugation-compatible and normalized.
Consumer: the reference member of the two-model comparison.

### one_realZeros
A zero of the constant one function would give `1=0` in the complex field.
Consumer: one model satisfies the all-zero predicate. This is explicitly a
vacuous instance; the theorem does not require a nonempty zero divisor.

### control_not_realZeros
Evaluate any purported all-real-zero assertion at i, whose imaginary part is
one. Consumer: the other model fails the all-zero predicate.

### control_not_identically_zero
Evaluate an alleged equality with the zero function at zero. Normalization
would give `1=0`. Consumer: excludes the degenerate entire-function loophole.

### observations_one_eq_control
Use function extensionality on the subtype of sample identities and
`control_at_sample`. Consumer: the two functions have identical input to any
predicate depending only on this fixed finite observation vector.

### finite_sampling_obstruction
For every finite S, exhibit F and G_S, both admissible, with equal observations,
`RealZeros F`, and `not RealZeros G_S`. Dependencies are the preceding source
lemmas; no arithmetic hypothesis is used or established. Consumer: rejects
finite-sample-plus-symmetry as a complete source-return or zero-localization rule.

### no_finite_observation_classifier
For every finite S, no predicate of the S-indexed complex observation vector
is equivalent to `RealZeros f` for every admissible f. Apply the assumed
classification equivalence to F and G_S and transport the equal input vector.
Consumer: formal negative-control contract for proposed finite-observation rules.

### empty_samples_control
For empty S the product is one, so G_S is exactly `1+z^2`. Consumer: the
quantifier includes zero samples and still retains normalization and nontriviality.

## Backward GRH consumer and strict boundary

The route being audited is the proposed passage from finite observations and
symmetries to global real-zero localization, and thence through a separate
exact arithmetic identification to the original GRH target. This module
invalidates that finite-observation passage for the stated entire comparison
class. It neither defines a replacement GRH proposition nor changes an existing
Dirichlet-character theorem. The inspected adjacent source
[ResonanceDeterminantCertification.lean](ResonanceDeterminantCertification.lean)
at `c6f931e6ce84dc755c001176cc1d98b976f2ad7c` supplies the explicit conditional
consumer `GRWTSK.ResonanceDeterminantReturn.dirichlet_zero_re_eq_half_of_operator_residuals`.
Its conclusion is `s.re = 1/2` for an actual `DirichletCharacter.LFunction`
zero in `0 < s.re < 1`; its full source correspondence, exact return, determinant
nonvanishing and all-point residual estimates remain premises. This module
shows why mere finite sample agreement cannot replace such a full return
hypothesis on the entire comparison class. It does not import, instantiate,
or verify that arithmetic consumer, and does not construct a character-family
arithmetic producer. Its independent kernel-checking status is unchanged.

An arithmetic realization must independently establish its exact source return,
not merely match this finite data. For a Weil route, the original test domain,
all character quantifiers, prime powers, conductor, gamma/parity terms and
applicable poles in both orientations remain separate obligations. No positive
auxiliary form, finite matrix, successful sampling test or this negative-control
suite supplies the missing full arithmetic sign.

This countermodel does not preserve an Euler product, arithmetic functional
equation, prescribed growth order or a divisor confined to the critical strip.
The witness i is a synthetic spectral point, not a discovered off-critical
Dirichlet zero. `RealZeros` concerns zero membership, not zero multiplicity.
The theorem covers fixed finite real-value samples, not finite jets, adaptive
queries, sampling from a restricted finite-dimensional model, or additional
source-specific uniqueness hypotheses. Those variants require separate statements.
No empirical test suite, runtime classifier or certificate checker is implemented.

## Hostile and alternative checks

Empty S gives `1+z^2`; including zero in S still gives G_S(0)=1. Repeated samples
are represented once by the Finset, and the proof does not assume positive,
nonzero or distinct signed magnitudes of its nodes. The contradiction from the
common observation vector is a separate logical consumer of the algebraic
construction, not an independently reviewed analytic proof. No numerical test
or independent reproduction was run or is claimed.

## Verification and clean-checkout specification

Source candidate authored and published through the authenticated GitHub
connection. Publication and blob readback are recorded separately in #1803.
No local repository worktree, Lean executable or Lake executable was available.
The inspected `.github` directory contained no workflows directory; no passing
CI status is inferred from absence of a workflow or check result.

At the exact publication commit, the intended explicit module check is:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.FiniteSamplingZeroObstruction
```

A separately authorized audit should import that module and inspect at least:

```lean
#print axioms GRWTSK.FiniteSamplingZeroObstruction.finite_sampling_obstruction
#print axioms GRWTSK.FiniteSamplingZeroObstruction.no_finite_observation_classifier
```

These are static verification instructions, not a dispatched execution.
Parsing/elaboration/build: NOT_RUN. Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN. Independent mathematical review: NOT_RUN.
CI and independent reproduction: NOT_RUN. No added axiom or proof placeholder
is intentionally present; text inspection is not Lean acceptance. The source's
`fun_prop`, finite-product and conjugation API elaboration must be checked in
the pinned environment. No verification level or frontier claim is promoted.
