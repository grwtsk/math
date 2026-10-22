# Exact Boolean clause count and the dyadic threshold index

Issue: #711  
Parent: #705 / draft PR #708  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Finite theorem

Fix `k` distinct Boolean coordinates and a polarity profile

```text
p : Fin k -> Bool.
```

The convention is that `p(i)` is the truth value making literal `i` true. The
unique assignment falsifying every literal is

```text
bad_p(i) = not p(i).
```

Consequently the local assignment space has cardinality

```text
|Bool^(Fin k)| = 2^k,
```

its falsifying subtype has cardinality `1`, and its satisfying subtype has
cardinality

```text
2^k - 1.
```

Under the uniform distribution on local assignments, the exact counted
success fraction is therefore

```text
(2^k-1)/2^k = 1-(1/2)^k.
```

This result is independent of the polarity profile. Polarity changes the
identity of the unique bad assignment, not the count.

For the first three positive arities,

```text
k=1: 1/2,
k=2: 3/4,
k=3: 7/8.
```

The module proves the count directly with finite-type cardinalities. No
probabilistic independence theorem is required after the local assignment
space is fixed.

## Equality with the RH threshold notation

The parent increment defines

```text
dyadicThreshold(k) = 1-(1/2)^k.
```

Hence the counted clause fraction satisfies the exact equality

```text
countedSuccessFraction(p) = dyadicThreshold(k).
```

This is the whole cross-subject bridge. It is an equality of real numbers and
permits proposition transport by rewriting.

The zeta program independently defines the nonlinear threshold map

```text
Q(rho)=2rho-1.
```

The parent theorem gives

```text
Q(dyadicThreshold(k+1)) = dyadicThreshold(k).
```

Therefore the numerical arity ladder and the proposed analytic descent are
reverse-indexed:

```text
clause count:       1/2 -> 3/4 -> 7/8,
threshold descent:  1/2 <- 3/4 <- 7/8.
```

## Clause-indexed analytic premise

For readability, the zeta-facing source introduces the alias

```text
ClauseIndexedThetaRecurrence(p)
  := QuadraticThetaSourceRecurrenceAt(countedSuccessFraction(p)).
```

This definition creates no recurrence. It renames an independently required
number-theoretic proposition at a threshold whose value has been counted
combinatorially.

The source proves the equality-only transport

```text
recurrence at the (k+1)-literal fraction
+ theta input at the same fraction
+ the existing lower-threshold side condition
-> theta output at the k-literal fraction.
```

For arities `3` and `2`, these premises rewrite exactly to the already-open
analytic recurrences at `7/8` and `3/4`. Supplying both recurrences and the
initial `7/8` theta estimate feeds the existing conditional two-step RH
endpoint. The clause objects contribute only names for the numerical
thresholds.

## What was gained

The connection is now split into three auditable statements:

1. **Unconditional finite combinatorics:** exactly one assignment falsifies a
   clause on distinct local coordinates.
2. **Unconditional algebra:** its success fraction is the dyadic threshold.
3. **Conditional analytic transport:** a separately proved prime-derived
   recurrence at that threshold descends one dyadic level.

This prevents the shared value `7/8` from being treated as evidence that the
SAT and zeta proofs have the same mechanism. It also gives the RH route a
canonical discrete index: one valid quadratic recurrence removes one clause
arity level, equivalently doubling the threshold defect `1-rho`.

## Remaining obligations

The following are still open and are not finite-count consequences:

```text
AllDyadicThetaAtThreshold(7/8),
QuadraticThetaSourceRecurrenceAt(7/8),
QuadraticThetaSourceRecurrenceAt(3/4),
complete source-faithful residual bounds for both steps.
```

The recurrence must arise from the actual prime/quartic source. It cannot be
obtained by citing a random-assignment guarantee, an approximation-hardness
theorem, or the coincidence of the rational threshold.

## Nonclaims

This increment does not formalize:

- Håstad's PCP or MAX-3SAT inapproximability theorem;
- NP-hardness or `P != NP`;
- the Goemans--Williamson MAX-SAT algorithm or its approximation ratio;
- a transfer from complexity theory to analytic number theory;
- the reverse explicit-formula gate;
- either prime-derived quadratic theta recurrence;
- Lean/Lake execution or kernel acceptance;
- an unconditional proof of the Riemann Hypothesis.
