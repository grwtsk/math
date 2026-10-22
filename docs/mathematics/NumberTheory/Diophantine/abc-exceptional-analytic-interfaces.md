# ABC exceptional-set analytic interfaces

Issue: #414. Stacked parent: draft PR #413 at
`d1718acc0506cd7c5954b85032230a2ec174573e`.

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ANALYTIC_ESTIMATES_OPEN**.

## Source and attribution

This statement layer follows Christian Bernert, Tim Browning, Jared Duker
Lichtman, and Joni Teräväinen, *Bounds on the exceptional set in the abc
conjecture*, arXiv:2410.12234v2 (2026), especially Propositions 2.1, 3.1,
and 4.1.

The paper acknowledges Bhavik Mehta for Lean assistance on an earlier version.
The imported finite-box architecture is adapted from the Apache-2.0 work of
Bhavik Mehta and Arend Mellendijk, as retained by the modules added in draft
PR #413. The 2026 proposition statements and authorship are kept separate
from that earlier formalization.

## Existing finite source

For `d : ℕ`, the repository already has

```text
Parameters d = (a₀,b₀,c₀,A,B,C),
boxFinset p,
boxCard p,
```

where a zero-based coordinate `i : Fin d` represents paper index `i+1` and
`monomial x = ∏ᵢ xᵢ^(i+1)`.

The paper convention is strict dyadic membership

```text
Aᵢ < aᵢ ≤ 2Aᵢ,
```

whereas the total cover in #413 uses endpoint-inclusive cells. The new
`paperBoxFinset` is a strict filter of the existing `boxFinset`; it does not
introduce a second additive-triple model. Its cardinality is `paperBoxCard`.

## Proposition 2.1 parameter predicate

The new `PaperAdmissible λ ε₀ X p` records the asymptotic conditions printed
in Proposition 2.1, separately from #413's `ExplicitAdmissible`, which retains
all finite dyadic constants.

Writing

```text
A = ∏ Aᵢ,  B = ∏ Bᵢ,  C = ∏ Cᵢ,
```

it requires:

```text
2^(-(d+1)) X^λ ≤ ABC ≤ X^(λ+3ε₀/4),
∏ Aᵢ^i ≤ X,
∏ Bᵢ^i ≤ X,
X^(1-ε₀/2) ≤ ∏ Cᵢ^i ≤ X,
```

with paper indices `i=1,…,d`, pairwise-coprime positive residuals bounded by
`X^ε₀`, and dyadic scales in `[1,X]`.

The exact finite cover does not follow merely by assuming this predicate; the
existing constant-explicit reduction remains the bridge from actual triples.

## Proposition 3.1

For paper indices `2 ≤ j,k,ℓ ≤ d`, define

```text
A[j] = ∏_(j∣i) Aᵢ,
B[k] = ∏_(k∣i) Bᵢ,
C[ℓ] = ∏_(ℓ∣i) Cᵢ.
```

The zero-based implementation selects a coordinate `i : Fin d` when

```text
j ∣ (i.val + 1).
```

The exact bound interface is

```text
paperBoxCard p
  ≤ K * X^(2λ/3+3ε₀) / (A[j] B[k] C[ℓ])^(1/6),
```

for one nonnegative implicit constant `K` and all sufficiently large `X`,
uniformly over paper-admissible parameters and all valid `j,k,ℓ`.

`Proposition31FourierSupplier` exposes the constant and threshold as
existential witnesses. It does not prove them.

The module also re-exports the existing exact frequency-first Möbius moment
identity from `AdditiveCharacterMoments.lean`. This retains the current
primitive-additive-triple and finite-character model. Future proof work remains
split into:

1. exact character orthogonality;
2. second- and fourth-moment counting identities;
3. divisor-fibre estimates, including `x^j-y^j=n`;
4. Hölder and Cauchy--Schwarz assembly.

## Proposition 4.1

For finite sets of zero-based coordinates `I,I',I''`, define

```text
S = (∏_(i∈I) Aᵢ)(∏_(i∈I') Bᵢ)(∏_(i∈I'') Cᵢ),
W = (∏_(i∈I) Aᵢ^(i-1))
    (∏_(i∈I') Bᵢ^(i-1))
    (∏_(i∈I'') Cᵢ^(i-1)).
```

Because Lean indices start at zero, the exponent `i-1` is represented by
`i.val`.

The exact bound interface is

```text
paperBoxCard p
  ≤ K * (X^(λ+4ε₀)/S + X^(λ-1+6ε₀) * W),
```

again uniformly for sufficiently large `X`. The implicit constant and
threshold are explicit existential witnesses in
`Proposition41GeometrySupplier`.

The remaining proof is decomposed into:

1. the primitive linear equation `a'x+b'y=c'z`;
2. the Heath--Brown geometry-of-numbers lattice-point estimate;
3. divisor-fibre lifting from `(x,y,z)` to selected monomial coordinates;
4. summation and exponent bookkeeping.

## Split supplier boundary

The monolithic `ExceptionalSetAnalyticSupplier` is not deleted. The new
`SplitExceptionalSetAnalyticSupplier` contains separately auditable fields:

```text
Proposition31FourierFamily λ,
Proposition41GeometryFamily λ,
OptimizationExtractionObligation λ.
```

The two family predicates explicitly quantify over every positive `ε₀` and
every positive finite dimension `d`, with constants and thresholds allowed to
depend on both. The paper uses sufficiently small `ε₀` and the dimension
selected by its anatomic reduction. Deriving the stronger uniform families
from that paper regime is a separate unresolved bridge; naming these
obligations does not supply it.

The extraction obligation consumes the two proposition families and a
persistent lower bound, and must construct the existing Proposition 6.1
optimization certificate. Pure logical assembly then recovers the old
supplier and its conditional `3/5` exceptional-set conclusion.

This conversion proves neither analytic proposition and does not construct
the extraction theorem.

## Nonclaims

This increment does not provide:

- the second- or fourth-moment estimates;
- divisor-fibre estimates;
- the geometry-of-numbers lattice-point bound;
- inequalities (6.1)--(6.10) from the analytic bounds;
- the unconditional `N_λ(X) ≪ X^(3/5+ε)` theorem;
- the abc conjecture;
- Lean parsing, elaboration, kernel acceptance, or an axiom audit.

The source remains additive and is not imported by a public aggregate in this
increment.
