# RH / #157: source-proved polarization of canonical square-tent packets

**Evidence:** `SOURCE_DRAFT` only. The new Lean module has not been elaborated,
kernel checked, trust audited, or independently replayed. This increment does not
construct a classical Weil criterion and does not prove RH.

## 1. Repository audit and exact consumer

Repository: `grwtsk/math`.

Pinned public base and dedicated branch:

```text
base commit: 16851ad6be948a1467baf7d029f2a8a65e308b31
base tree:   c34b9b1302b4bbf7784b95c8eb583e5ae3bd6436
branch:      research/rh-square-tent-polarization-157-20261023
```

Toolchain and dependency lock:

```text
Lean:    leanprover/lean4:v4.33.0
Mathlib: db584cd6d46c92f209a44c0f1c829460d327499d
```

Selected existing issue: **#157**, the owner of the complete source-to-consumer
residual and named error budget.

The immediate existing consumer is

```lean
GRWTSK.RiemannHypothesis.ApproximatePositiveApproximation T W
```

from `WeilApproximatePositiveLimit.lean`. It consumes a real two-variable target,
a real two-variable stage family, a nonnegative diagonal lower defect, a stage
lower bound, pointwise defect decay, and pointwise pairwise comparison decay.

The merged predecessor `CanonicalSquareTentZetaApproximation.lean` constructs such
an instance only on individual discrete square-tent labels, with target and finite
approximant cross terms set to zero. The exact next obligation is to replace labels
by finite complex coefficient vectors and prove the algebraic and analytic
polarization properties rather than merely declaring a two-variable interface.

The downstream theorem

```lean
riemannHypothesis_of_approximatePositiveLimit
  (approximation : ApproximatePositiveApproximation T W)
  (criterion : WeilCriterionForZeta T W) :
  RiemannHypothesis
```

remains unusable here: this increment deliberately constructs no
`WeilCriterionForZeta` and no transport into its classical test space.

## 2. Candidate comparison

| Candidate | Exact consumer and missing premise | Candidate conclusion | Existing support | Strength / tractability / failure value |
|---|---|---|---|---|
| Full classical Weil polarization | Classical `WeilCriterionForZeta`; exact convolution/involution cross terms and normalization transport are missing | A criterion-ready Hermitian form on an accepted Weil space | Issue #189/#219 interfaces, but no accepted complete cross-term implementation | Strongest, but multiple analytic and normalization bridges; a mismatch would be a useful obstruction |
| **Selected orthogonal arithmetic direct sum** | `ApproximatePositiveApproximation` on finite complex combinations | Exact source cross matrix, Hermitian forms, complete raw and Hermitian residuals, PSD source diagonal, vanishing comparison | Canonical square-tent support theorem, finite prime-power Gram, complete finite-head ledger and tail | Exact and close to the consumer; no conjectural bridge; exposes exactly what remains absent from the classical form |
| Arbitrary diagonal extension | Same abstract consumer | Declare cross terms zero because only diagonal data exist | No source theorem | Rejected: would hide the missing cross-term theorem and would not be source-proved |

The selected candidate is intentionally narrower than the classical Weil form. Its
off-diagonal vanishing is proved from disjoint arithmetic support, not inferred from
missing information.

## 3. Finite complex combination space

For every `M : Nat`, define

```lean
Combination M := Fin (M+1) -> Complex.
```

A coefficient vector `u` represents a formal complex linear combination of the
first `M+1` canonical square tents. Basis index `i` uses source stage `i+2` and the
real tent

```text
x |-> tent(squareCenter(i+2), squareRadius(i+2), x).
```

This is a finite free coefficient space. No completion, quotient by an unproved
relation, or identification with a classical Weil test space is made.

The inherited immutable source binding is the canonical absolutely summed
square-tent zeta explicit formula, with the same prime-power, zero-divisor,
trivial-zero, endpoint and cutoff conventions as the predecessor packet.

## 4. Source-proved arithmetic cross coefficients

For natural arithmetic argument `m`, define the literal cross summand

```text
Lambda(m) * sqrt(squareWeight(i+2,m)) * sqrt(squareWeight(j+2,m)).
```

The source theorem `squareWeight_pos_iff` says that stage `i+2` has open support

```text
(i+2)^2 < m < (i+3)^2.
```

For `i != j`, these open intervals are disjoint. Consecutive windows meet only at a
square endpoint, where `squareWeight_endpoints` gives zero. The new module proves
pointwise

```text
squareWeight(i+2,m) * squareWeight(j+2,m) = 0,
```

and therefore the square-root cross summand is zero.

A common finite inventory covering both windows defines the exact cross sum

```text
A_ij = sum_m Lambda(m)
          * sqrt(squareWeight(i+2,m))
          * sqrt(squareWeight(j+2,m)).
```

The principal coefficient theorem is

```lean
sourceCrossSum_eq_arithmeticCrossCoefficient :
  sourceCrossSum i j = arithmeticCrossCoefficient i j.
```

Its exact value is

```text
A_ij = 0                                           if i != j,
A_ii = stageEnergy(canonicalStage i,
                   canonicalAmplitude i)
     = squareTentMangoldt(i+2)
     = canonicalCorrection(i)                     if i = j.
```

Thus the zero cross terms are mathematical consequences of the selected disjoint
arithmetic windows. They are not claimed to be the cross terms of the classical
Weil convolution form.

## 5. Source polarization and positivity

The complex source form is

```text
Q(u,v) = sum_i sum_j conj(u_i) * v_j * A_ij.
```

The module proves:

```text
Q(u+v,w) = Q(u,w)+Q(v,w),
Q(c*u,v) = conj(c)*Q(u,v),
Q(u,v+w) = Q(u,v)+Q(u,w),
Q(u,c*v) = c*Q(u,v),
Q(v,u) = conj(Q(u,v)).
```

The exact diagonal is

```text
Re Q(u,u) = sum_i normSq(u_i) * A_ii.
```

Each `A_ii` is the genuine finite prime-power Gram energy and is nonnegative.
Therefore

```text
0 <= Re Q(u,u).
```

This is positive semidefiniteness of the selected finite orthogonal arithmetic
direct sum. It does not prove strict positivity, identify a spectral measure, or
transport positivity to another test category.

## 6. Finite-height forms and complete cross residuals

At zero-height stage `N`, the raw diagonal finite coefficient is the complete finite
spectral value from the predecessor packet:

```text
S_N(i) = radius(i+2)
       - finite zero head at height N+2, with multiplicities
       + rational trivial-zero correction(i+2).
```

The raw cross coefficient is `S_N(i)` on the diagonal and zero off diagonal. A
separate Hermitian coefficient uses `Re S_N(i)` on the diagonal. This separation is
necessary: a finite zero head is complex-valued, and taking a real part must not
silently erase the imaginary residual channel.

Define

```text
Rraw_N(i,j) = A_ij - rawFiniteCrossCoefficient_N(i,j),
Rherm_N(i,j) = A_ij - finiteCrossCoefficient_N(i,j).
```

The source proves the exact raw residual identities

```text
Rraw_N(i,i) = -finiteHeadBalance(i+2,N+2),
Rraw_N(i,j) = 0                                   for i != j,
Rherm_N(i,j) = Re Rraw_N(i,j).
```

Therefore every active diagonal residual retains exactly once:

```text
prime-power source,
pole/main radius,
finite nontrivial-zero head with actual multiplicities,
rational complete trivial-zero correction,
endpoint convention,
omitted complete-zero tail.
```

The corresponding coefficientwise bound is

```text
abs(Rherm_N(i,j)) <=
  if i=j then canonicalTailBudget(center(i+2),radius(i+2),N+2)
  else 0.
```

No residual is inserted as an arbitrary vector, no missing cross term is assigned a
numerical epsilon, and no unresolved classical transport is hidden inside the tail.

## 7. Polarized residual identity and comparison

The raw finite form, Hermitian finite form, raw residual form and Hermitian residual
form are the corresponding double sums against `conj(u_i)*v_j`.

The module proves exact identities

```text
Q(u,v) - Qraw_N(u,v) = Rraw_N(u,v),
Q(u,v) - Qherm_N(u,v) = Rherm_N(u,v).
```

The complete Hermitian residual collapses to the source-proved diagonal entries, so
the pairwise majorant is

```text
E_N(u,v) = sum_i norm(u_i) * norm(v_i)
                 * canonicalTailBudget(center(i+2),radius(i+2),N+2).
```

The comparison theorem is

```text
norm(Q(u,v) - Qherm_N(u,v)) <= E_N(u,v).
```

For each fixed `u,v`, every tail term tends to zero and there are finitely many
indices. The module proves finite-sum closure for the repository's explicit
`VanishesAtInfinity` predicate and obtains

```text
E_N(u,v) -> 0,
Re Q(u,v) - Re Qherm_N(u,v) -> 0.
```

No uniformity in `M` or in a growing support is claimed.

## 8. Positivity-preserving approximate instance

Define

```text
realTargetForm(u,v) = Re Q(u,v),
realFiniteForm_N(u,v) = Re Qherm_N(u,v),
eta_N(u) = E_N(u,u).
```

The source proves

```text
0 <= eta_N(u),
-eta_N(u) <= realFiniteForm_N(u,u),
eta_N(u) -> 0,
realTargetForm(u,v)-realFiniteForm_N(u,v) -> 0.
```

Hence for every finite dimension `M` it constructs

```lean
approximatePositiveApproximation M :
  ApproximatePositiveApproximation
    (Combination M) (realTargetForm (M := M)).
```

The immutable `SourceBoundPolarizedPacket M` records the source binding, finite test
class, orthogonal polarization profile, target, finite approximation, raw residual,
and the constructed approximate-positive instance.

## 9. Exact boundary from the classical Weil criterion

This increment does **not** define a `WeilTestSpace`, `WeilHermitianForm`, or
`WeilCriterionForZeta` for the coefficient space. In particular it does not assert
that

```text
sum_i u_i * squareTent_i
```

belongs to a named classical Weil test class, or that its classical convolution form
has the orthogonal matrix `A_ij`.

The selected arithmetic form is an orthogonal direct sum of separately normalized
square-tent packets. Classical Weil cross terms may be different. A valid transport
must separately prove:

```text
exact test-function map,
linearity and injectivity/quotient behavior,
transform and involution conventions,
normalization scalar and sign,
identity of every cross term,
preservation of the positive cone,
source and theorem revision binding.
```

Until that theorem exists, this packet cannot inhabit the criterion premise of
`riemannHypothesis_of_approximatePositiveLimit`.

## 10. Failure cases and hostile controls

1. **Invented zero cross terms.** Rejected: off-diagonal vanishing is proved from
   disjoint square support and zero endpoints.
2. **Overlapping test windows.** The theorem is specific to the consecutive-square
   family. An overlapping family requires its actual nonzero cross coefficients.
3. **Dropped imaginary residual.** The raw complex residual is retained before the
   Hermitian real projection.
4. **Dropped zero multiplicity or tail.** The inherited finite head and complete tail
   theorem retain both.
5. **Wrong prime sign.** The inherited signed ledger and source coefficient identity
   fix the arithmetic orientation.
6. **Target positivity by assumption.** Rejected: PSD follows from the actual finite
   prime-power Gram diagonal.
7. **Finite-head positivity.** Not claimed; only a lower bound by the vanishing defect
   is proved.
8. **Growing-dimension convergence.** Not claimed; `M` is fixed before the limit in
   `N`.
9. **Classical criterion promotion.** Explicitly absent without the exact transport
   theorem above.
10. **Numerical promotion.** No floating zero list, interval certificate or bounded
    numerical experiment is used.

## 11. Evidence states

Established:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

Lean and Lake were unavailable in the authoring environment. Static source review and
absence of explicit `sorry`, `admit`, new `axiom`, `native_decide`, or `unsafe` are not
kernel evidence.

## 12. RH consequence

This is a source-proved finite-dimensional polarization of the canonical square-tent
zeta packets and a positivity-preserving comparison at that exact scope.

It does not prove RH, its negation, a finite-height result, a zero-free region, global
classical Weil positivity, or an implication from this finite family to the classical
criterion.

The exact dependency edge established is

```text
disjoint arithmetic square windows
 + actual prime-power Gram coefficients
 + complete finite-head zeta residuals
 + pointwise zero-tail decay
   -> exact Hermitian source and finite forms
   -> PSD source diagonal
   -> vanishing pairwise comparison
   -> ApproximatePositiveApproximation on every fixed finite coefficient space.
```

## 13. Provenance DAG

```text
TentSource support and endpoint theorems
  -> pointwise arithmetic orthogonality
PrimePowerVonMangoldt + CanonicalTentAtomStage
  -> exact diagonal Gram coefficients
CanonicalTentLedger + CanonicalSquareTentZetaApproximation
  -> complete raw diagonal residual and tail
finite matrix algebra
  -> Hermitian polarized forms and exact residual identities
finite-sum epsilon closure
  -> positivity-preserving approximate instance
```

Classical explicit-formula mathematics, repository implementation, formalization
assistance, and future replay remain distinct provenance nodes. No numerical
contributor weights are assigned.

## 14. Exactly one next obstruction

Prove or refute an exact source-bound transport from this finite orthogonal arithmetic
coefficient space into one named classical zeta Weil test space and normalization,
including equality of all cross terms and preservation of the required positive cone.
Do not construct a `WeilCriterionForZeta` adapter unless that transport theorem is
proved at the same immutable source and test-class scope.
