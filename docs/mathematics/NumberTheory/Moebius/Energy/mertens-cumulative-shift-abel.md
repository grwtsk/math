# Cumulative-shift Abel transform for the harmonic Chowla packet

Issue: #519. Parent harmonic packet: #511 / draft PR #513. Literature-scope witness: #516 / PR #518.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CUMULATIVE_SHIFT_ESTIMATE_OPEN**.

## Exact active shift range

For fixed scale `j` and depth `t`, define

```text
L = max 1 (2^j - t - 1)
B = 2^(j+1) - t - 1
N = B - L.
```

The explicit harmonic weighted Chowla average is supported on the contiguous half-open range `L <= h < B`. Natural subtraction is truncated: when `B <= L`, this range and `range N` are both empty. No assertion `L <= B` is needed.

Define

```text
q_k = 1/(t+1+L+k),
c_k = C_(L+k)(t+1),
S_n = sum_(k<n) c_k.
```

Then the weighted average is

```text
2^(j+1) * sum_(k<N) c_k (q_k-q_(k+1)).
```

## Second Abel transform

The source authors a generic finite identity

```text
sum_(k<N) c_k (q_k-q_(k+1))
 =
(if N=0 then 0 else S_N*(q_(N-1)-q_N))
 +
sum_(k<N-1)
  S_(k+1)*((q_k-q_(k+1))-(q_(k+1)-q_(k+2))).
```

The interior range is `k < N-1` with natural subtraction. At `N=0` the terminal branch and both sums are zero; at `N=1` only the exact terminal contribution remains. No absolute values enter this identity.

Applied to the harmonic packet, this converts individual shift correlations into cumulative shift correlations.

## Coefficient positivity

For reciprocal coordinates, the source authors

```text
0 <=
(1/b - 1/(b+1)) -
(1/(b+1) - 1/(b+2)).
```

Here `b` is a natural number with `1 <= b`. Thus all interior second-Abel coefficients are nonnegative; the terminal first-difference coefficient is also nonnegative when the active range is nonempty.

This positivity is only coefficient positivity. The cumulative correlation sums remain signed.

## Mathematical interpretation

The RH-E02 obstruction can now be read as control of

```text
S_n(j,t)
  = sum over the first n active shifts
      C_h(t+1),
```

against an explicit positive second-difference reciprocal kernel.

This gives an exact finite interface for comparisons with average-over-shifts results. It does not yet show that any current average-over-shifts theorem has the required scale, depth, normalization, or quantitative strength.

## Hostile boundaries

- The lower active shift is `max 1 (2^j-t-1)`.
- The upper endpoint remains strict.
- Empty active ranges are retained.
- No absolute value is inserted in the exact Abel identity.
- Convexity of `1/x` does not imply cumulative-shift cancellation.
- An asymptotic average-over-shifts theorem requires an exact quantitative adapter.

## Exact next obstruction

Compare known average-over-shifts Chowla estimates against the cumulative shift sums at dyadic shift length and all-depth uniformity, or formulate the exact cumulative-shift estimate needed by the packet.
