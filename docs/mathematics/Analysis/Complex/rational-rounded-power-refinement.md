# Exact-rational refinement of rounded endpoint powers

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent: grwtsk/math PR #311, commit 503b443c685c6f5b55bc918f23b522b765cab0ee.
Owners: #189 / #261 under #257. This is pure arithmetic and analysis, not a
runner, external-zero validator, or successful prime certificate.

## Scope

The previous rounded power specification operates on real/complex values and
proof-bearing admissible inputs. This increment writes computational definitions
using rationals, integers and naturals, then exact cast-refinement proofs. Only
the semantic maps and constructions into real/complex objects are noncomputable.
No computation calls a real comparison, real logarithm, complex exponential,
external claimed error, or proof-bearing zero record.

The Lean definitions have not been compiled or executed. Computability here is
a source-level design property, not successful code-generation evidence. The
entire inherited proof stack still requires elaboration and trust review.

## Rational arithmetic agrees exactly with the specification

A QComplex stores two rationals. Addition, multiplication, rational scaling,
natural powers and finite exponential polynomials are explicit arithmetic.
Embedding into complex numbers commutes with each operation. In particular,

    embed(polynomial(v,K)) = sum_(j<K) embed(v)^j/j!.

For G=2^b, rational floor/ceiling operations are

    downQ_b(x) = floor(G*x)/G,
    upQ_b(x) = -downQ_b(-x).

Pinned Mathlib Data/Rat/Floor.lean supplies Rat.floor_cast, relating rational
floor to real floor exactly, including negative values. Therefore downQ, upQ,
and componentwise quantization embed to the SAME operations in
DyadicRoundedSquaring. This is not interval overlap or a floating-point model.

The rational state recurrence preserves both components and its stored error:

    v_0 = Q_b(seed),
    E_0 = upQ_b(initial + 2/G),
    v_(j+1) = Q_b(v_j^2),
    E_(j+1) = upQ_b(E_j*(2*rect(v_j)+E_j) + 2/G).

run_refines proves exact equality with BOTH inherited real/complex recurrences,
at every finite stage. Initial rounding, quadratic amplification and upward
error storage remain. The generic run_sound theorem has an explicit seed
premise. The endpoint specialization below supplies that premise internally;
there is no caller-provided seed enclosure at its acceptance boundary.

## Raw data, derived guards, and fixed source identity

The actual endpoint q is rational and the exponent z is a rational complex
number. They are fixed parameters of evaluation and selection, not fields that
individual candidates can replace. A Schedule contains only five natural
numbers: logarithm dyadic exponent, logarithm term count, squaring count,
Taylor term count and grid bits.

Compute u=q/2^k. Reuse the inherited finite rational odd-power logarithm lower
bound L_K and complete width W_K, including k copies of the log(2) error:

    A=k*L_K(2)+L_K(u), W=k*W_K(2)+W_K(u),
    lambda=A+W/2, eta=W/2.

No logarithm value is an input. The finite guards are

    u >= 1, degree >= 1,
    r = rect(z)*abs(lambda)/2^s <= 1,
    d = rect(z)*eta/2^s <= 1.

They imply an admitted positive source and the old scaled evaluator's exact
hypotheses. The upper mantissa bound u<=2 is optional for efficiency, not needed
for soundness. This implementation deliberately does not cover every rational
q>0: sources below one need a separate reciprocal/log adapter.

The computed seed is P_degree(z*lambda/2^s). Its rational error is the inherited
complete expression e+2*(rect(seed)+e)*d, with e=2*r^degree/degree!.
The new compute function runs the rational rounding recurrence from that seed.

After the raw guards pass, toLogInput constructs the exact dyadic source
identity and its analytic log enclosure. toSpec constructs the existing
RoundedLogPowerEvaluation.PowerInput. The cast refinements prove

    embed(compute(q,z,p).value) = toSpec(q,z,p).value,
    cast(compute(q,z,p).error)  = toSpec(q,z,p).error.

The actual-source theorem therefore follows from the inherited soundness:

    |exp(embed(z)*log(cast(q))) - embed(output.value)| <= cast(output.error).

The positive-axis logarithm convention is unchanged. This is an endpoint-power
bridge, not a newly defined tent, arithmetic observable, or zero family.

## Acceptance, verification of claimed output, and failure

evaluate first rejects invalid guards. On admitted data it computes the whole
final state and returns it only if its final error is at most the rational
tolerance. Validity of the seed alone does not satisfy that target.

verify is a pure Boolean check that evaluate returns EXACTLY the claimed state.
It compares both rational value components AND the recomputed rational error.
Its soundness draft states both the actual-source error enclosure and target
inequality. A freely supplied small error or changed output cannot pass merely
because it looks plausible. No full trace is trusted as an input.

select traverses a finite list of raw schedules for the same q and z. Invalid
schedules and excessive final budgets are skipped. A successful return has
membership, exact evaluation and actual-source soundness. Exhaustion means
all listed evaluations returned none. It does not prove that their values are
inaccurate, that no unlisted schedule works, or any statement about primes.
Numerical tolerance permits equality; the existing prime margin remains strict.

Unchecked compute is a total arithmetic expression, not a certificate. Its
mathematical soundness requires admitted guards. The checked entry points must
not be replaced by a raw unchecked value, particularly outside the log domain.

## Relation to the tent and remaining boundary

accepted_refines exposes the constructed historical endpoint input with exact
value/error equality. Thus existing proof-bearing tent records can reuse it
without changing analytic bounds. This increment does not serialize those
records, implement a rational tent quotient/head accumulator, prove a rational
center encloses an actual zero, or enumerate the complete canonical head.

The source-domain and denominator identities of the three tent endpoints must
still be bound explicitly. Actual analytic multiplicities, both height signs,
complete omitted tails, signed corrections and strict margins are untouched.
No old consumer or public aggregate import is modified.

The runnable diagnostic companion checks rational arithmetic against a separate
integer-grid recurrence, and selected endpoint powers against direct unscaled
Taylor and positive-Mercator enclosures. It does not execute Lean or prove the
analytic identities used by its references. No actual zeta-zero data is used.

No byte parser/canonical wire encoding, resource caps, automatic unbounded
precision search, universal target attainment, overflow/runtime claim,
external-zero completeness, prime margin, Legendre proof or RH proof is supplied.
Finite natural parameters imply mathematical termination of these recursions,
not a resource budget for hostile gigantic inputs. Effectful execution and
verification receipts remain outside the pure mathematical repository.
