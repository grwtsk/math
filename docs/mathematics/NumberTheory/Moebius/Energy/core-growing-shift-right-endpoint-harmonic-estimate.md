# Off-fiber estimate for the genuine right-endpoint harmonic branch

Issue: #967  
Pinned parent main revision: `0366138f0afd762c35a7afe56b617d969b1dbc15`  
Theorem source commit: `ac935a51a07fda7ea2c9c18b2c8e06f9dc470678`  
Theorem source blob: `f73c560555eec838076bc8e045344bd635939307`

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
OFF_FIBER_ESTIMATE_AUTHORED
DIAGONAL_OBSTRUCTION_AUTHORED
WEIGHTED_NORM_ONLY_OBSTRUCTION_AUTHORED
```

## 1. Preserved parent decomposition

The parent effective-shift split remains unchanged:

```text
direct signed zero-mode joint packet
  - low clipping packet
  - regular clipping packet,
```

and every nonzero clipping resolvent still contains the same three signed
pieces:

```text
transverseMultiplier(u)^(-1) * singularBoundary(u,s)
  - cappedShiftHarmonic(u,s)
  - rightEndpointHarmonic(u,s).
```

This increment estimates only the final genuine right-endpoint term away from
its longitudinal/transverse diagonal.  It does not discard or estimate the
direct zero-mode joint packet, capped correction, or singular
anchor/endpoint/affine-boundary numerator.

## 2. Exact endpoint shear

Write

```text
X = 2^j,
Y = 2^(j+1),
H = logarithmicShiftThreshold j,
Q = 2Y.
```

On the genuine branch `H < h`, the effective shift is literal:

```text
q_j(h) = h.
```

The parent affine-tail harmonic sum is

```text
sum_h e_Q(-h*s)
  sum_n e_Q(-n*u)/(n+h).
```

Its exact support is sheared by

```text
y = n+h
```

to

```text
X+H+1 <= y < Y-1,
H+1 <= h < y-H-1.
```

The source defines the fiber

```text
F_j(y) = [H+1, y-H-1)
```

and proves the exact source identity

```text
rightEndpointHarmonicDFT2_j(u,s)
  = sum_(X+H+1 <= y < Y-1)
      e_Q(-y*u)/y
      * sum_(h in F_j(y)) e_Q(-h*(s-u)).
```

The endpoint `Y-1` is excluded because it belongs to the separately retained
right-window boundary symbol.

## 3. Finite geometric-series estimate

For the repository's negative character

```text
chi_t(n) = e_Q(-n*t),
m(t) = e_Q(t)-1,
```

the source proves the exact interval identity

```text
m(t) * sum_(A <= n < B) chi_t(n)
  = chi_t(A-1) - chi_t(B-1).
```

When `t != 0`, primitivity of the standard additive character gives
`m(t) != 0`, hence

```text
norm (sum_(A <= n < B) chi_t(n))
  <= 2 * norm (m(t)^(-1)).
```

No asymptotic theorem or imported analytic premise is used in this step.

## 4. Harmonic mass

The literal endpoint range contains at most `X` integers, each at least `X`.
The exact source therefore proves

```text
sum_(X+H+1 <= y < Y-1) 1/y <= 1.
```

Combining this with the fiber estimate yields the new pointwise result:

```text
s-u != 0 ->
  norm (rightEndpointHarmonicDFT2_j(u,s))
    <= 2 * norm (m(s-u)^(-1)).
```

Using the already authored Jordan bound for the transverse multiplier gives

```text
norm (rightEndpointHarmonicDFT2_j(u,s))
  <= Q / (2*d_j(s-u)),
```

where

```text
d_j(t) = min(t.val, (-t).val).
```

On the regular set `L < d_j(s-u)`, this specializes to

```text
norm (rightEndpointHarmonicDFT2_j(u,s))
  <= Q / (2*(L+1)).
```

This is an actual pointwise kernel estimate.  It is not a bound for the full
low or regular packet because the packet still contains two Möbius DFT
factors, the capped correction, and the singular boundary numerator.

## 5. Diagonal obstruction

At `s=u`, the fiber frequency is zero and the inner character is constant:

```text
sum_(h in F_j(y)) e_Q(0)
  = card F_j(y).
```

Thus the inverse-multiplier estimate is unavailable on the diagonal.  The
diagonal is not removed or estimated independently; it remains inside the
existing direct zero-mode/singular signed architecture.

## 6. Norm-only weighted-fiber obstruction

The source also proves that coefficientwise norm bounds do not transfer the
unweighted geometric cancellation.  Define the unit-modulus weight

```text
w_t(h) = e_Q(h*t).
```

Then

```text
norm w_t(h) = 1
```

but

```text
sum_(h in F_j(y)) w_t(h) * e_Q(-h*t)
  = card F_j(y).
```

Consequently an external squarefree, gcd, or centered-fiber line cannot be
plugged into the off-fiber estimate merely from a bound `norm weight <= 1`.
It must supply an exact identity plus a stronger variation, square-sum,
energy, or correlation estimate.

## 7. Neighboring-line audit

The centered-fiber line currently supplies exact reindexing, signed-square
expansion, quartic/fiber-energy equality, and nonnegativity.  Its own audit
records the subpolynomial centered energy estimate as open; no strength is
transferred by name.

The squarefree/gcd line retains repeated Möbius squares, square-divisibility
restrictions, and nonunit residue classes.  It currently supplies exact
finite reductions and obstructions, not the weighted cancellation required
for this endpoint fiber.

These lines may therefore collaborate with this source only through exact
identities and proved norm/energy bounds.

## 8. Primary analytic context

The finite geometric-series estimate above is elementary.  Two primary
sources delimit legitimate later aggregation mechanisms:

- H. L. Montgomery and R. C. Vaughan, *Hilbert's Inequality*, Journal of the
  London Mathematical Society (2) 8 (1974), 73–82,
  DOI `10.1112/jlms/s2-8.1.73`.
- H. L. Montgomery and R. C. Vaughan, *The large sieve*, Mathematika 20
  (1973), 119–134, DOI `10.1112/S0025579300004708`.

Neither theorem is instantiated here.  A future application must bind the
required coefficient square sums and frequency-separation hypotheses.

## 9. Remaining obligations

```text
LEAN_REPLAY_OPEN
AXIOM_AUDIT_OPEN
LOW_PACKET_ARITHMETIC_ESTIMATE_OPEN
REGULAR_PACKET_AGGREGATION_OPEN
CAPPED_SHIFT_CORRECTION_ESTIMATE_OPEN
SINGULAR_BOUNDARY_NUMERATOR_ESTIMATE_OPEN
DIRECT_ZERO_MODE_JOINT_ESTIMATE_OPEN
CENTERED_FIBER_QUANTITATIVE_BRIDGE_OPEN
SQUAREFREE_GCD_WEIGHTED_VARIATION_BRIDGE_OPEN
```

No Riemann Hypothesis, Chowla, Goldbach, centered-energy, squarefree-gcd
cancellation, or all-scale packet theorem is claimed.
