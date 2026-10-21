# Base-two endpoint: nonzero logarithm, exact seed windows, and integer steps

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.

This increment concerns ONE additional endpoint of the fixed 4096-term packet.
The parent is `864a7e5226c667a422e5768ebc3de6e96779ce62` (#326).
No Lean, Lake, native decision, code generation, or accepted replay was run.
The closed proof scripts may require elaboration repair or further arithmetic
proof decomposition. The inherited analytic stack remains unaudited.

## 1. Fixed input and unchanged algorithm

The base is exactly 2, and the exponent remains the original

    z = -1/2 - (7067362571/500000000)i.

The schedule is unchanged: logarithm reduction exponent 1, 18 logarithm
terms, 22 Taylor terms, eight squarings, and 64 grid bits. Its reduced
mantissa is 1. This is the second prefix entry, not the terminal endpoint.

The existing rational logarithm definitions yield the exact finite values

    lambda = 1717353641454772093151484317 / 2477617581979402619418862200,
    eta    = 1 / 400252360791997656.

Both are positive. These are the midpoint and half-width of the existing
complete logarithm enclosure. They are NOT assertions that log(2) is rational
or that logarithm uncertainty has vanished. `second_log_data` proves their
identity with the original rational lower/width expressions in source form.

With the ORIGINAL scale 2^8, the exact seed argument is

    a.re = -1717353641454772093151484317 / 1268540201973454141142457446400,
    a.im = -12137160846788010280474125695059299007 /
            317135050493363535285614361600000000000.

The inherited radius and displacement are exactly

    R = 4188833085717234434587332258103099669 /
        105711683497787845095204787200000000000,
    d = 2439120857 / 17077434060458566656000000000.

The four original admissibility conditions are proved separately. Neither
admissibility nor the endpoint equality is a supplied premise.

## 2. The original nontrivial seed is retained

Let

    P = sum_(j<22) a^j / j!,
    t = 2 R^22 / 22!,
    E = t + 2 (rect(P) + t) d.

`secondSeed` is literally the existing `QComplex.polynomial a 22`.
`secondSeedError` retains BOTH Taylor truncation and logarithm-input
uncertainty. The seed is not replaced by the complex exponential, by 1,
by its rounded value, or by a surrogate polynomial.

Put G=2^64. Three separate closed rational proof scripts establish

    u <= G Re(P) < u+1,
    v <= G Im(P) < v+1,
    e-1 < G(E+2/G) <= e,

where

    (u,v,e) = (18408298253608376264, -704853099503417683, 8).

They also establish E>=0. The negative imaginary component uses floor, not
truncation toward zero. The error uses ceiling, with the strict LOWER
endpoint. The complete SeedValid predicate is then assembled without an
external seed certificate or SourceAcceptance hypothesis.

The finite polynomial has large exact rational numerators/denominators.
The source deliberately leaves its three windows as separate norm_num
proof scripts. Their Lean elaboration time, memory demand, and success
have NOT been measured. Python's completion is not evidence that these
Lean scripts fit any proof-resource limit. No speedup is claimed.

## 3. Every rounded square, including the error

The new explicit trace records nine integer states on the SAME grid:

| Stage | Real numerator | Imaginary numerator | Error numerator |
|---:|---:|---:|---:|
| 0 | 18408298253608376264 | -704853099503417683 | 8 |
| 1 | 18343000008558004311 | -1406768156894581479 | 19 |
| 2 | 18132557774432369485 | -2797713050156423137 | 43 |
| 3 | 17399409448605647639 | -5500124392200476857 | 100 |
| 4 | 14771608460644338424 | -10375697297665688225 | 251 |
| 5 | 5992673919043655001 | -16617104609340641788 | 687 |
| 6 | -13022136803000469870 | -10796581662813792057 | 1687 |
| 7 | 2873670882104466727 | 15243293109736801349 | 4359 |
| 8 | -12148485369300672815 | 4749261699712569162 | 8565 |

Each transition is proved through #326's existing integer quotient windows,
including e^2 and the 2G local allowance. No step predicate, seed predicate,
rounding definition, or old endpoint function is changed.

`second_endpoint_compute` concludes, in a closed source proof script,

    original_compute 2 (-center) (schedule 2)
      = { value := (-12148485369300672815 + 4749261699712569162 i)/G,
          error := 8565/G }.

It does not take the desired equality, an actual exponential value,
SourceAcceptance, or any zero theorem as a hypothesis. The associated
endpoint-power enclosure reuses the existing actual-source theorem.
It is not a new zeta center evaluation or a local-zero theorem.

## 4. Block integration preserves the missing work

The original first endpoint and this second endpoint supply the unchanged
prefix checker for indices {0,1}, provided an arbitrary transcript has
exactly these two complete records. The record conditions are literal
state identities, not hashes, approximate comparisons, or error targets.

`first_block_of_remainder` needs the old checker to accept

    blockIndices(0) \\ {0,1}.

Those are the other 62 entries. The theorem keeps that obligation explicit.
No first-block result is unconditional, and no whole block is kernel accepted.
The other 4094 prefix entries, terminal 4097, and complete final aggregation
remain open. All inherited type, axiom, dependency, and analytic audits remain.
The unchanged SourceAcceptance proposition is still unproved.

## 5. Bounded diagnostics

One fresh base-two computation completed 254 exact rational/integer
assertions. It was compared with the retained parent record, a separate
integer-grid recurrence at all nine states, and two alternative finite
polynomial evaluations at every degree from 0 through 22: reverse Horner
coefficients and successive coefficient recurrence.

The tests check all three seed windows and all eight transitions. They
reject 108 individual intermediate-field mutations, each omitted trace
state, changed final fields, negative errors, wrong exponent/base claims,
and reusing base one's initial allowance. Dropping logarithm uncertainty
would round the initial error to 3 instead of 8; that state does NOT pass
the original seed predicate. Exact repeated computation is distinct from
certification by the Lean kernel.

This is NOT a fresh full block, whole transcript, joint-zeta calculation,
independent full replay, source-acceptance proof, or actual zero check.
No floating point, transcendental evaluation, zero database, or Lean
execution was used. Counts include repeated elementary finite checks.
Diagnostic scripts and data remain outside the pure-math repository.

## Remaining boundary

Elaborate and audit the nontrivial seed-window scripts and their inherited
integer refinement before treating this endpoint as accepted. Additional
finite arithmetic decomposition may be needed. Then establish the other
prefix, terminal, and final obligations at exact source identities.

This increment neither proves a complete zero count nor changes a
canonical source binding, omitted-zero tail, signed correction,
proper-prime-power subtraction, or strict all-interval prime margin.
No branch merge, issue closure, execution-hold release, deployment,
Legendre proof, or RH proof is implied.
