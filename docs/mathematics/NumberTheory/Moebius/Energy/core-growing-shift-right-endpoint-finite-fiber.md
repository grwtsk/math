# Isolated right-endpoint finite-fiber theorem

Issue: #967

Source:

```text
GRWTSK/NumberTheory/Moebius/
  CoreGrowingShiftSignedEndpointRightEndpointFiniteFiber.lean
```

Source commit:

```text
a13fd381e99855a764e51688cfd2af10b2747b4b
```

Source blob:

```text
fa0beb7688de9efdfaea505e34458a0b2774c1bf
```

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
```

## The actual finite estimate

For

```text
chi_t(n) = stdAddChar(-(n*t)),
m(t) = stdAddChar(t)-1,
```

and `1 <= A <= B`, the source authors the exact identity

```text
m(t) * sum_(A <= n < B) chi_t(n)
  = chi_t(A-1) - chi_t(B-1).
```

For `t != 0`, this gives

```text
norm (sum_(A <= n < B) chi_t(n))
  <= 2 * norm (m(t)^(-1)).
```

Using the existing transverse Jordan bound, the source authors

```text
norm (sum_(A <= n < B) chi_t(n))
  <= Q_j / (2*d_j(t)).
```

This is a real analytic estimate on the endpoint fiber, not an equivalent
supplier renaming.

## Diagonal obstruction

At `t=0`, the character is constant and

```text
sum_(A <= n < B) chi_0(n)
  = card [A,B).
```

Therefore the inverse-multiplier argument cannot cover the diagonal.

## Norm-only weighted obstruction

Define the opposite-character coefficient

```text
w_t(n) = stdAddChar(n*t).
```

The source authors

```text
norm w_t(n) = 1,
```

but for every finite set `S`,

```text
sum_(n in S) w_t(n) * chi_t(n)
  = card S.
```

Thus a centered-fiber or squarefree-gcd supplier carrying only an exact
coefficient identity and a pointwise norm bound cannot inherit the unweighted
geometric cancellation.  A usable bridge must add variation, square-sum,
energy, separated-frequency, or comparable correlation control.

## Full endpoint transfer

The separate source

```text
CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean
```

authors the exact support shear `y=n+h` and transfers the finite estimate to
the parent genuine right-endpoint harmonic term.  That larger source remains a
separate replay target so a failure in support bookkeeping cannot obscure the
finite-character theorem.

## Verification boundary

The `grwtsk/noeaaeue` workflow is pinned to math commit

```text
75abc0c5e3e6efc6e31984179760f6bf9d4ad94d
```

and replays the finite-fiber module before the full support shear.  Hosted runs
`39864956405` and `39865738500` failed before runner allocation and recorded no
steps; neither is a Lean diagnostic.  The local relay proposal was queued but
no shell receipt was available.

No elaboration, kernel acceptance, axiom audit, RH, Chowla, Goldbach,
centered-fiber estimate, or squarefree-gcd cancellation is claimed.
