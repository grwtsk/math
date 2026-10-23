# Weighted dispersion on the actual signed Abel depth cells

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / WEIGHTED_DISPERSION_ESTIMATE_OPEN`  
Owner: issue [#482](https://github.com/grwtsk/math/issues/482)  
Direct parent: issue [#476](https://github.com/grwtsk/math/issues/476) / draft PR [#481](https://github.com/grwtsk/math/pull/481)  
Signed depth packet: issue [#473](https://github.com/grwtsk/math/issues/473) / draft PR [#475](https://github.com/grwtsk/math/pull/475)  
Signed Abel packet: issue [#468](https://github.com/grwtsk/math/issues/468) / draft PR [#470](https://github.com/grwtsk/math/pull/470)  
RH-E02 route: #334 / canonical target #15.

This increment instantiates the generic dispersion interface from PR #481 with
the actual Möbius/Abel source and proves one concrete finite weighted-Cauchy
comparison. It does not prove the remaining all-scale dispersion estimate.

## Exact source binding

Direct parent:

```text
branch: research/rh-signed-abel-dispersion-476-20261021
revision: 2b1c075808b2365ede62f909014b5b83b30ddabf
tree: bd50bbdb612b6abc1d7acc45007803f5422d1cf7
PR: #481
```

Candidate:

```text
branch: research/rh-signed-abel-weighted-dispersion-482-20261021
source commit: 258f6d64529b674541f197ec228a6d5ea41f7836
source path:
  GRWTSK/NumberTheory/Moebius/
    SignedAbelDepthWeightedDispersion.lean
source blob:
  628cf95ac1c145d9a8a52a1a81e85a3db29e712a
```

No existing file, public root, workflow, dependency pin, executor, or held
branch is modified.

## 1. Actual bilinear data

For
[
Y=2^{j+1},
]
the inherited signed depth slice is
[
D_{j,t}
=
sum_{1le h<Y}operatorname{Cell}(j,h,t),
]
where the cell is zero outside the exact triangular support
[
t<Y-h-1.
]

The new source defines
[
A_{j,t,h}=2,C_h(t+1)
]
through `signedAbelDepthAmplitude`, and
[
W_{j,t,h}
=
egin{cases}
Delta(j,h,t),&t<Y-h-1,\
0,&	ext{otherwise},
end{cases}
]
through `signedAbelDepthWeight`.

Here
[
Delta(j,h,t)
=
w_j(t+1+h)-w_j(t+2+h)
]
is the exact Abel weight drop from PR #470.

The source proves `signedAbelDepthWeight_nonneg`. This is finite coefficient
positivity only. It does not imply that any prefix, depth slice, packet, or RH
functional is positive.

## 2. Reconstruction before majorization

The theorem

```lean
weightedMertensDyadicSignedAbelCell_eq_amplitude_mul_weight
```

identifies every inherited cell on the positive-shift range with
[
A_{j,t,h}W_{j,t,h}.
]

The load-bearing exact identity is

```lean
weightedMertensDyadicSignedAbelDepthSlice_eq_weightedBilinear
```

with content
[
D_{j,t}
=
sum_{1le h<Y} A_{j,t,h}W_{j,t,h}.
]

No absolute values or squares appear in this equality. The exact triangular
support is retained by literal zero extension.

The source also constructs
```lean
weightedMertensSignedAbelDepthBilinearModel
```
as a concrete inhabitant of the generic `SignedAbelDepthBilinearModel`
interface from PR #481. Its support is the complete half-open positive-shift
range and its residual is identically zero.

## 3. Weighted dispersion quantities

Define the depth weight mass
[
M_{j,t}
=
sum_{1le h<Y}W_{j,t,h}
]
and weighted quadratic energy
[
Q_{j,t}
=
sum_{1le h<Y}A_{j,t,h}^{2}W_{j,t,h}.
]

Their source declarations are

```lean
weightedMertensSignedAbelDepthMass
weightedMertensSignedAbelDepthQuadraticEnergy.
```

Both are proved nonnegative from the finite Abel-weight positivity.

No smallness of either quantity is inferred from nonnegativity.

## 4. Finite weighted Cauchy

Only after the signed reconstruction is established, the source applies
Mathlib's finite squared Cauchy--Schwarz inequality
`Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul`.

Pointwise, with
[
r_h=A_hW_h,qquad
f_h=A_h^2W_h,qquad
g_h=W_h,
]
one has exactly
[
r_h^2=f_hg_h.
]

The theorem

```lean
weightedMertensDyadicSignedAbelDepthSlice_sq_le_dispersion
```

therefore proves
[
D_{j,t}^2le Q_{j,t}M_{j,t}.
]

This is the first positive majorization in the source path. It occurs after,
not before, reconstruction of the exact signed slice.

## 5. Dispersion radius and packet majorant

Define
[
R_{j,t}=sqrt{Q_{j,t}M_{j,t}}
]
and
[
mathcal D_j
=
sum_{0le t<Y}R_{j,t}.
]

The corresponding declarations are

```lean
weightedMertensSignedAbelDepthDispersionRadius
weightedMertensDyadicSignedAbelDispersionMajorant.
```

From the squared bound, the source proves

```lean
weightedMertensDyadicSignedAbelDepthSlice_le_dispersionRadius
```

and then

```lean
weightedMertensDyadicSignedAbelDepthPacket_le_dispersionMajorant.
```

Thus the exact signed packet satisfies
[
D_jlemathcal D_j.
]

This is a one-sided upper bound on the signed packet. It is not the definition
of the packet and does not replace the source with
(sum_h|operatorname{Cell}_{j,h,t}|).

## 6. Remaining supplier

The named all-scale proposition is

```lean
SubpolynomialDyadicSignedAbelWeightedDispersion.
```

It requires that for every (delta>0) there is (Cge0) such that
[
mathcal D_j
le
C(2^j)^delta
]
for every (j).

The source proves only the conditional chain

```text
SubpolynomialDyadicSignedAbelWeightedDispersion
  -> SubpolynomialDyadicSignedAbelDepthPacket
  -> RiemannHypothesis.
```

The corresponding declarations are

```lean
subpolynomialDyadicSignedAbelDepthPacket_of_weightedDispersion
riemannHypothesis_of_subpolynomialDyadicSignedAbelWeightedDispersion.
```

No inhabitant of the first proposition is constructed.

## 7. Proof classification

Repository-proved source scripts:
- exact zero-extended Abel weight;
- exact cell factorization;
- exact signed depth-slice bilinear reconstruction;
- concrete inhabitant of the parent bilinear-model interface;
- finite nonnegativity of mass and weighted quadratic energy;
- finite weighted Cauchy comparison;
- finite depth-packet-to-dispersion-majorant comparison;
- conditional composition into the inherited RH endpoint.

Imported theorem:
- Mathlib finite Cauchy--Schwarz
  `Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul`.

Conditional reduction:
- all-scale weighted dispersion supplier to the inherited signed depth criterion
  and RH.

Not supplied:
- a large-sieve theorem;
- a dispersion estimate;
- a Fourier estimate;
- Chowla or Elliott;
- Sarnak/local-Gowers;
- any new zero-free region;
- RH.

## 8. Positivity classification

The positive objects are only:
- the zero-extended Abel weights;
- their finite mass;
- the weighted sum of squared amplitudes;
- the square-root dispersion radii;
- their finite sum.

No positive kernel, positive measure, trace/state positivity, Weil positivity,
global PSD form, or RH positivity premise is introduced.

The signed source remains signed until the proved finite Cauchy comparison.

## 9. Hostile controls

Rejected substitutions:
- `sum_h |Cell|` for the signed depth slice;
- squaring cells before reconstructing their signed sum;
- removing the triangular support;
- reversing the Abel drop;
- assuming nonnegative prefixes;
- treating the generic bilinear-model type as an estimate;
- promoting a fixed-shift theorem to the complete growing-shift range;
- treating source elaboration as an arithmetic estimate;
- treating the conditional endpoint as an RH proof.

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
WEIGHTED_DISPERSION_ESTIMATE_PROVED
```

No Lean/Lake execution, elaboration, proof-term acceptance, trust audit,
independent replay, repository test, merge, or RH claim occurred.

## 11. Exact next obstruction

Prove or obstruct
```lean
SubpolynomialDyadicSignedAbelWeightedDispersion
```
for the actual Möbius source.

The unresolved quantity is now explicit:
[
sum_{t<2^{j+1}}
sqrt{
 left(sum_{1le h<2^{j+1}}A_{j,t,h}^2W_{j,t,h}ight)
 left(sum_{1le h<2^{j+1}}W_{j,t,h}ight)
}
ll_delta (2^j)^delta.
]

A future large-sieve, dispersion, Fourier, higher-order correlation, or
local-Gowers theorem must prove an exact comparison to this source-bound
quantity rather than merely share its vocabulary.
