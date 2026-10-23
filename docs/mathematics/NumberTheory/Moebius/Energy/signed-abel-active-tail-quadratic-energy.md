# Reciprocal active-tail form of the signed-Abel quadratic obstruction

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ACTIVE_TAIL_QUADRATIC_ESTIMATE_OPEN`  
Owner: issue [#497](https://github.com/grwtsk/math/issues/497)  
Direct parent: issue [#489](https://github.com/grwtsk/math/issues/489) / draft PR [#493](https://github.com/grwtsk/math/pull/493)  
Weighted dispersion: issue [#482](https://github.com/grwtsk/math/issues/482) / draft PR [#485](https://github.com/grwtsk/math/pull/485)  
Signed Abel packet: issue [#468](https://github.com/grwtsk/math/issues/468) / draft PR [#470](https://github.com/grwtsk/math/pull/470)

This increment expands the exact Abel difference in the global weighted
quadratic obstruction. It removes the constant-weight region identically and
rewrites the remaining energy using an explicit reciprocal difference.

No arithmetic estimate is proved.

## 1. Exact source binding

Direct parent:

```text
branch: research/rh-abel-mass-quadratic-489-20261021
revision: 69837fb753aa0c71fb9926264275dac4a8141c3d
tree: 9a5836a51ebc84d1fb8d3507ba06f167d532d2ce
PR: #493
```

Candidate source:

```text
branch: research/rh-abel-active-tail-497-20261021
source commit: 15ddc8cadd1df5379014954cb732bcc9743af0a3
source path:
  GRWTSK/NumberTheory/Moebius/
    SignedAbelActiveTailQuadraticEnergy.lean
source blob:
  12a150387b8755a515600c7599d54fb1f1b0d012
```

No existing source, public root, workflow, dependency pin, executor, or held
branch is modified.

## 2. Exact kernel phase transition

Let
[
X=2^j,qquad Y=2^{j+1},qquad b=t+1+h.
]

The inherited dyadic kernel is
[
w_j(b)=
egin{cases}
Y^{-1},&b<X,\
b^{-1}-Y^{-1},&bge X.
end{cases}
]

The Abel drop is
[
Delta(j,h,t)=w_j(b)-w_j(b+1).
]

The new source proves

```lean
dyadicMertensShiftWeightDrop_eq_zero_of_lt_left
```

so
[
b<XLongrightarrow Delta(j,h,t)=0.
]

The boundary (b=X-1) is included in this vanishing statement: although the
piecewise formula changes at the next index, both adjacent kernel values equal
(Y^{-1}).

Once (bge X), the source proves

```lean
dyadicMertensShiftWeightDrop_eq_reciprocalDiff_of_left_le
```

with
[
Delta(j,h,t)
=
rac1b-rac1{b+1}.
]

The constant subtraction (Y^{-1}) cancels exactly.

## 3. Zero-extended active reciprocal weight

The source defines

```lean
signedAbelActiveReciprocalWeight
```

by
[
W^{mathrm{tail}}_{j,t,h}
=
egin{cases}
b^{-1}-(b+1)^{-1},
&Xle b<Y,\
0,&	ext{otherwise}.
end{cases}
]

The theorem

```lean
signedAbelDepthWeight_eq_activeReciprocalWeight
```

proves exact equality with the zero-extended Abel weight from PR #485.

Thus:
- the entire constant-weight region contributes exactly zero;
- the post-cutoff region contributes exactly zero;
- the only surviving cells satisfy (Xle t+1+h<Y).

The supporting controls are

```lean
signedAbelActiveReciprocalWeight_eq_zero_of_lt_left
signedAbelActiveReciprocalWeight_eq_zero_of_right_le
signedAbelActiveReciprocalWeight_eq_reciprocalDiff.
```

## 4. Active-tail quadratic energy

The source defines

```lean
weightedMertensSignedAbelActiveTailQuadraticEnergy
```

as
[
sum_{t<Y}
sum_{1le h<Y}
A_{j,t,h}^{2}
W^{mathrm{tail}}_{j,t,h},
]
where
[
A_{j,t,h}=2C_h(t+1).
]

Equivalently, at mathematical scope,
[
4
sum_{substack{t<Y,;1le h<Y\
Xle t+1+h<Y}}
C_h(t+1)^2
left(
rac1{t+1+h}
-
rac1{t+2+h}
ight).
]

The factor (4), the full positive-shift family, and the exact triangular
support are all retained.

No maximum over block position appears.

## 5. Exact equivalence with the preceding obstruction

The load-bearing source theorem is

```lean
weightedMertensSignedAbelGlobalQuadraticEnergy_eq_activeTail.
```

It states that the global weighted quadratic energy from PR #493 is exactly
the active-tail reciprocal energy above.

This is finite source rewriting only. There is no inequality and no changed
constant.

The source also transfers nonnegativity through this equality:

```lean
weightedMertensSignedAbelActiveTailQuadraticEnergy_nonneg.
```

Again, nonnegativity is not an estimate.

## 6. All-scale supplier

The new source-facing proposition is

```lean
SubpolynomialDyadicSignedAbelActiveTailQuadraticEnergy.
```

It asks, for every (delta>0), for (C_deltage0) satisfying
[
mathcal Q_j^{mathrm{tail}}
le
left(C_delta(2^j)^deltaight)^2
]
for every (j).

The exact theorem

```lean
subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy_iff_global
```

proves equivalence with
`SubpolynomialDyadicSignedAbelGlobalQuadraticEnergy`.

The conditional RH wrapper is

```lean
riemannHypothesis_of_subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy.
```

No inhabitant of the active-tail proposition is constructed.

## 7. Mathematical meaning

The obstruction has now been narrowed from a generic multiscale maximum to an
explicit weighted second moment supported only on the upper dyadic tail.

The surviving coefficient is not arbitrary:
[
rac1b-rac1{b+1}
=
rac1{b(b+1)}.
]

This increment deliberately keeps the exact reciprocal difference rather than
replacing it by a rough (b^{-2}) comparison.

The next exact reindexing suggested by the formula is
[
b=t+1+h,qquad n=t+1,
]
which would turn the energy into
[
4sum_{Xle b<Y}
left(rac1b-rac1{b+1}ight)
sum_{1le n<b}
C_{b-n}(n)^2.
]

That endpoint-fibre identity is not claimed in this increment.

## 8. Positivity classification

Only finite scalar positivity/nonnegativity is present:
- the inherited Abel drops;
- the active reciprocal weights;
- squared amplitudes;
- their finite weighted sum.

No positive kernel, measure, trace/state, global PSD object, Weil positivity,
or RH positivity statement is asserted.

## 9. Hostile controls

Rejected:
- treating (b<X) as merely small instead of exactly zero;
- losing the (b=X-1) boundary case;
- replacing the exact reciprocal difference by (1/b^2);
- dropping the factor (4);
- replacing the full positive-shift range by a fixed shift;
- inserting a block maximum;
- treating nonnegativity as subpolynomial smallness;
- treating source scripts as elaborated/kernel evidence;
- claiming RH.

## 10. Evidence state

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
ACTIVE_TAIL_QUADRATIC_ESTIMATE_PROVED
```

## 11. Exact next obstruction

The remaining arithmetic statement is

[
4
sum_{substack{t<2^{j+1},;1le h<2^{j+1}\
2^jle t+1+h<2^{j+1}}}
C_h(t+1)^2
left(
rac1{t+1+h}
-
rac1{t+2+h}
ight)
ll_delta
(2^j)^{2delta}.
]

The next bounded structural step is to reindex this by the common endpoint
(b=t+1+h), exposing one finite endpoint fibre before considering any analytic
estimate.
