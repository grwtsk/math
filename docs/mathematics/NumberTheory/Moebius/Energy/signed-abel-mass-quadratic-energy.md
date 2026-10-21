# Abel shift-mass telescope and global weighted quadratic energy

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / WEIGHTED_QUADRATIC_ENERGY_ESTIMATE_OPEN`  
Owner: issue [#489](https://github.com/grwtsk/math/issues/489)  
Direct parent: issue [#482](https://github.com/grwtsk/math/issues/482) / draft PR [#485](https://github.com/grwtsk/math/pull/485)  
Generic dispersion interface: issue [#476](https://github.com/grwtsk/math/issues/476) / draft PR [#481](https://github.com/grwtsk/math/pull/481)  
Signed depth packet: issue [#473](https://github.com/grwtsk/math/issues/473) / draft PR [#475](https://github.com/grwtsk/math/pull/475)  
Signed Abel packet: issue [#468](https://github.com/grwtsk/math/issues/468) / draft PR [#470](https://github.com/grwtsk/math/pull/470)

This increment removes one non-arithmetic factor from the concrete weighted-dispersion obstruction. The total Abel-drop mass across the complete growing shift family telescopes exactly. Its uniform reciprocal-endpoint bound then cancels the number of prefix depths in a second finite Cauchy--Schwarz estimate.

No all-scale Möbius estimate is proved.

## Exact source binding

Direct parent:

```text
branch: research/rh-signed-abel-weighted-dispersion-482-20261021
revision: 2e09c78468034572ae88d63ac88d53cc463440d7
tree: 4d0838bc65e695774f2a9b476c4f60e27959703f
PR: #485
```

Candidate source:

```text
branch: research/rh-abel-mass-quadratic-489-20261021
source commit: aa9c3f36b7318fd94c3fa6914ab4b3a4933c3ec8
source tree: 9ecb388868bebf4225c1cc2e37224c4786ba3d55
source path:
  GRWTSK/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean
source blob:
  224462b26a6cfd8f926f636e12061e692cf1268c
```

No existing source, public root, workflow, dependency pin, executor, or held branch is modified.

## 1. The shift-mass factor is exact

For
[
Y=2^{j+1},
]
the concrete weighted-dispersion source from PR #485 uses
[
W_{j,t,h}
=
egin{cases}
Delta(j,h,t),&t<Y-h-1,\
0,&	ext{otherwise},
end{cases}
]
where
[
Delta(j,h,t)
=
w_j(t+1+h)-w_j(t+2+h).
]

The mass factor is
[
M_{j,t}
=
sum_{1le h<Y}W_{j,t,h}.
]

If (t+2le Y), the supported shifts are exactly
[
1le hle Y-t-2.
]
Writing (k=h-1), the sum becomes
[
sum_{0le k<Y-t-2}
left(
w_j(t+2+k)-w_j(t+3+k)
ight).
]

This telescopes to
[
w_j(t+2)-w_j(Y)=w_j(t+2),
]
because the inherited exact kernel satisfies (w_j(Y)=0).

After the triangular support has ended, the mass is zero.

The source encodes this target as

```lean
weightedMertensSignedAbelDepthTelescopedMass
```

and proves

```lean
weightedMertensSignedAbelDepthMass_eq_telescoped.
```

This is finite reindexing and telescoping only.

## 2. Uniform mass payment

The inherited dyadic kernel bound gives, on the valid source range,
[
0le w_j(b)le Y^{-1}.
]

Therefore
[
0le M_{j,t}le Y^{-1}
]
for every depth used by the packet.

The new source theorem is

```lean
weightedMertensSignedAbelDepthMass_le_right_inv.
```

The quantity (M_{j,t}) is therefore completely paid by exact kernel geometry. It is not an open arithmetic estimate.

## 3. Remaining arithmetic quantity

The depth-level weighted quadratic energy from PR #485 is
[
Q_{j,t}
=
sum_{1le h<Y}
A_{j,t,h}^{2}W_{j,t,h},
]
where
[
A_{j,t,h}=2C_h(t+1).
]

This increment defines
[
mathcal Q_j
=
sum_{0le t<Y}Q_{j,t}
]
as

```lean
weightedMertensSignedAbelGlobalQuadraticEnergy.
```

Thus
[
mathcal Q_j
=
4
sum_{t<Y}
sum_{1le h<Y}
C_h(t+1)^2 W_{j,t,h}.
]

All shifts and depths remain present through the exact zero-extended triangular support. There is no maximum over translated windows.

## 4. One-depth dispersion payment

The PR #485 radius is
[
R_{j,t}
=
sqrt{Q_{j,t}M_{j,t}}.
]

The reciprocal mass bound gives
[
R_{j,t}^{2}
=
Q_{j,t}M_{j,t}
le
Q_{j,t}Y^{-1}.
]

The source theorem is

```lean
weightedMertensSignedAbelDepthDispersionRadius_sq_le.
```

No probabilistic independence or arithmetic cancellation is used.

## 5. Second finite Cauchy

The complete dispersion majorant is
[
mathcal D_j
=
sum_{t<Y}R_{j,t}.
]

Finite Cauchy--Schwarz over the (Y) depths gives
[
mathcal D_j^2
le
Ysum_{t<Y}R_{j,t}^2.
]

Using
[
R_{j,t}^2le Q_{j,t}Y^{-1},
]
the two exact geometric factors cancel:
[
Ysum_{t<Y}Q_{j,t}Y^{-1}
=
sum_{t<Y}Q_{j,t}
=
mathcal Q_j.
]

Hence

[
oxed{mathcal D_j^2le mathcal Q_j}
]

and therefore

[
oxed{mathcal D_jlesqrt{mathcal Q_j}}.
]

The source declarations are

```lean
weightedMertensDyadicSignedAbelDispersionMajorant_sq_le_globalQuadratic
weightedMertensDyadicSignedAbelDispersionMajorant_le_sqrtGlobalQuadratic.
```

This is the main mathematical reduction of the increment.

## 6. New all-scale supplier

The new arithmetic premise is

```lean
SubpolynomialDyadicSignedAbelGlobalQuadraticEnergy
```

with normalization
[
oralldelta>0;exists C_deltage0;orall j,qquad
mathcal Q_j
le
left(C_delta(2^j)^deltaight)^2.
]

The source proves

```lean
subpolynomialDyadicSignedAbelWeightedDispersion_of_globalQuadratic
```

and hence the conditional chain

```text
SubpolynomialDyadicSignedAbelGlobalQuadraticEnergy
  -> SubpolynomialDyadicSignedAbelWeightedDispersion
  -> SubpolynomialDyadicSignedAbelDepthPacket
  -> RiemannHypothesis.
```

The final wrapper is

```lean
riemannHypothesis_of_subpolynomialDyadicSignedAbelGlobalQuadraticEnergy.
```

No inhabitant of the first premise is constructed.

## 7. Why this is materially weaker than the discarded Carleson route

The earlier max-per-scale route required, for every shift and every aligned scale, a maximum over all block locations before squaring and summing.

The present observable contains only the actual Abel-weighted prefix correlations required by the original signed packet:
[
4sum_{t,h}C_h(t+1)^2W_{j,t,h}.
]

The weights are not arbitrary:
- they are exact positive differences of the original dyadic kernel;
- their complete shift mass at each depth is at most (Y^{-1});
- early constant-weight regions contribute zero drop;
- the positive quadratic observable appears only after the exact signed packet has been reconstructed.

This does not prove that the new supplier is true. It identifies a substantially more source-faithful second-moment obstruction.

## 8. Positivity classification

The following are finite nonnegative scalars:
- Abel drops;
- depth mass;
- weighted quadratic depth energy;
- global weighted quadratic energy;
- dispersion radii.

No positive kernel, PSD analytic form, measure/state/trace positivity, Weil positivity, or RH positivity statement is asserted.

Nonnegativity is not treated as smallness.

## 9. Hostile controls

Rejected:
- replacing the signed source by a termwise absolute-value sum;
- losing the triangular support;
- replacing exact Abel drops by arbitrary weights;
- dropping the factor (4) contained in the amplitude square;
- treating mass nonnegativity as a cancellation theorem;
- claiming the global weighted quadratic estimate from fixed-shift Chowla;
- importing a max-per-scale estimate into this weaker supplier without a theorem;
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
WEIGHTED_QUADRATIC_ENERGY_ESTIMATE_PROVED
```

## 11. Exact next obstruction

The remaining arithmetic theorem is now

[
4
sum_{t<2^{j+1}}
sum_{1le h<2^{j+1}}
C_h(t+1)^2
W_{j,t,h}
ll_delta
(2^j)^{2delta}
]

for every (delta>0).

Because (W_{j,t,h}) is a difference of the original dyadic kernel rather than an arbitrary averaging measure, the next useful step is to expand or reorganize this weighted quadratic energy before importing any named conjecture or generic large-sieve estimate.
