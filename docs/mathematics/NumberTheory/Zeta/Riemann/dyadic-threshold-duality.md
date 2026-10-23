# Dyadic threshold duality: 1/2, 3/4, 7/8

Issue: #705  
Parent route: #463 / draft PR #464  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ALGEBRA_ONLY**

## Exact common structure

Define the defect from the right edge by

```text
D(rho) = 1-rho.
```

The dyadic thresholds are

```text
d_k = 1-2^(-k),
d_1 = 1/2,
d_2 = 3/4,
d_3 = 7/8.
```

Define the affine lift

```text
S(rho) = (1+rho)/2.
```

Then

```text
d_(k+1) = S(d_k)
D(S(rho)) = D(rho)/2.
```

The existing quadratic threshold descent program defines

```text
Q(rho) = 2rho-1.
```

The new source proves the exact inverse identities

```text
Q(S(rho)) = rho,
S(Q(rho)) = rho,
D(Q(rho)) = 2D(rho),
Q(d_(k+1)) = d_k.
```

Therefore

```text
1/2 --S--> 3/4 --S--> 7/8
1/2 <--Q-- 3/4 <--Q-- 7/8.
```

This is the exploitable connection.

## MAX-kSAT interpretation

For one clause on `k` distinct independent fair Boolean variables, with no complementary literal pair, exactly one local assignment falsifies all `k` literals. The elementary random-assignment success probability is therefore

```text
1-2^(-k).
```

For `k=3`, this is `7/8`. Håstad's inapproximability theorem makes this threshold complexity-theoretically sharp for the appropriate MAX-3SAT promise formulation.

The `3/4` general MAX-SAT guarantee is a historical approximation guarantee, not a universal optimality barrier. Goemans--Williamson later obtained an approximation ratio above `3/4` for general MAX-SAT using semidefinite programming. This repository therefore does not type a false `3/4` hardness theorem.

No SAT hardness theorem is imported into the zeta route.

## Zeta interpretation

The external seven-eighths theorem and the repository's threshold descent have a different analytic origin.

In the pinned OpenAI formalization, the high-row moment argument explicitly introduces

```text
Delta = beta - 7/8,
0 <= Delta <= 1/8,
```

and combines it with other exponents; for example the source contains the exponent pattern

```text
3/16 + (beta-7/8) = beta-11/16.
```

Thus the zeta `7/8` wall is not derived from the probability that a 3-literal clause is satisfied.

The local repository nevertheless already proposes a nonlinear arithmetic threshold map

```text
Q(rho)=2rho-1
```

because a genuine normalized quadratic error transformation

```text
A  ~ X^(rho+delta)
A^2/X ~ X^(2rho-1+2delta)
```

would descend a theta-error threshold from `rho` to `Q(rho)`.

At the concrete thresholds,

```text
Q(7/8)=3/4,
Q(3/4)=1/2.
```

The new module shows that this is exactly the inverse of the dyadic success ladder.

## What this gives the RH program

The useful normalization is the **defect coordinate**

```text
D(rho)=1-rho.
```

At the three thresholds,

```text
D(7/8)=1/8,
D(3/4)=1/4,
D(1/2)=1/2.
```

A true source-faithful quadratic descent would therefore double the admissible defect at each step:

```text
1/8 -> 1/4 -> 1/2.
```

Equivalently, each successful contraction would recover one dyadic defect level. This gives a clean progress metric for the nonlinear supplier: the missing analytic theorem must produce an actual factor-two gain in this defect coordinate, not merely restate positivity or square an existing inequality.

The existing linear Abel/Mellin transport preserves its input threshold, so this factor-two improvement must occur before that transport.

## Remaining mathematical obligations

This algebra does **not** discharge either of the two live gates:

1. `SevenEighthsZeroFreeToTheta`: transfer the accepted zero-free half-plane at `7/8` to the exact arithmetic theta-error threshold used by the local route.
2. `QuadraticThetaDescentAt rho`: prove from the actual prime-derived source a recurrence of the form
   ```text
   A_(j+1) <= K*A_j^2/X_j + R_j
   ```
   with `R_j` already controlled at the descended threshold.

The second obligation is where the SAT analogy becomes operationally useful: it specifies the exact dyadic gain to demand from the arithmetic recurrence. It does not supply that recurrence.

## Nonclaims

- no complexity theorem implies a zeta theorem;
- no equality of rational constants identifies proof mechanisms;
- no MAX-SAT hardness result is formalized here;
- no reverse explicit-formula theorem is proved here;
- no quadratic theta contraction is proved here;
- no external theorem is replayed here;
- no Lean or Lake execution is reported here;
- no Riemann Hypothesis claim is made here.

## Sources and credit

- Johan Håstad, optimal inapproximability results for MAX-3SAT.
- Michel Goemans and David Williamson, approximation algorithms for MAX-SAT by randomized rounding and semidefinite programming.
- OpenAI `math`, seven-eighths formalization in the Dirichlet/Hecke detector and moment chain.
- Existing GRWTSK module `QuadraticThresholdDescentProgram`.
