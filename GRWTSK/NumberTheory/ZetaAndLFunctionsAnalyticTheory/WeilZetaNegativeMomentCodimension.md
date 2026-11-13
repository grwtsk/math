# Source-exact codimension-one return of the negative conductor-one zeta pole

Author: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 15A03, 46C20.

EVIDENCE: WRITTEN mathematical proof of the actual source-moment
complex linearity, compact-support weighted integrability,
finite-dimensional codimension-one negative pole theorem, and
negative-full-to-negative-nonpole transfer. Accompanying Lean
SOURCE_PROOF_CANDIDATES are in WeilZetaNegativeMomentCodimension.lean;
Lean elaboration, complete import build, fresh kernel replay,
transitive axiom audit, certified calculation, independent analytical
review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.

## I. Original source and target

The canonical conductor-one zeta source is the complete
pole-inclusive Weil form
  Q_zeta,A(f) = c_zeta E(f) + Gamma_0(f)
                   - S_1,A(f) + P_zeta(f),
where f belongs to the ORIGINAL complex smooth compact test class
supported on [-A,A], A>0; S includes every von Mangoldt prime
power and the literal signed correlation, Gamma is the exact
physical parity-zero archimedean energy, and
  P_zeta(f) = M_+(f)*conj(M_-(f))
                       + M_-(f)*conj(M_+(f)),
  M_±(f) = int_R f(t)*exp(±t/2)dt.
Both pole orientations remain genuine complex cross pairings;
they may be negative and MUST NOT be replaced by |M_+|²+|M_-|².

Native source:
  WeilSourcePrimeCorrelation.correlation;
  WeilCorrelationFourier.zeta_pole_correlation;
  WeilZetaPoleRankOneReturn.plusMoment, minusMoment, sourcePole,
    sourcePole_eq_signed_norms,
    sourcePole_nonneg_on_negative_kernel;
  WeilSignedDeficitNegativeIndex.md §5.

The first missing formal return in the previous continuation was
not the scalar pole sign (already published), but the proof
that the ACTUAL moment difference is complex-linear on a
finite-dimensional subspace of supported sources and that
its kernel has codimension at most one. A mere arbitrary
linear functional would not identify this original pole.
The present file constructs precisely M_+-M_- from the actual
Lebesgue integrals.

## II. Genuine exponential integrability without new premises

Assume f:R->C is Lebesgue integrable and
  f(t)=0 whenever A<|t|.
For every y in R,
  f_y(t)=f(t)*exp(y*t)
is genuinely integrable. Indeed, on |t|<=A,
  |f_y(t)| <= |f(t)|*exp(A*|y|),
since y*t<=|y|*|t|<=A*|y|.
Outside support f_y=0. The right side is
a constant multiple of an L1 function, and measurability
follows from the measurable source and continuous
real exponential. No unrestricted global boundedness
of exp(y*t) is assumed.

In particular both f(t)exp(t/2) and
f(t)exp(-t/2) are integrable. The Lean candidate
integrable_source_exp_weight (ZNC-v1-01)
proves the general weight statement and supplies the
original moments at y=±1/2 directly.
The support/Integrable hypotheses are IDENTICAL to
those of the native zeta_pole_correlation theorem.
No new weighted-integrability hypothesis is imported.

## III. The actual negative moment is a linear map

Let V be ANY complex vector space and
  ι:V ->_C (R->C)
a complex-linear source-valued map, satisfying for every v∈V
  Integrable(ι(v)), and
  ι(v)(t)=0 whenever A<|t|.
This accommodates any finite span of original supported
smooth complex Weil tests via the inclusion map; the
explicit Lean instantiation at the repository's smooth
test submodule remains to be constructed, and is not
claimed here.

Define the ACTUAL source negative moment
  L(v) = plusMoment(ι(v)) - minusMoment(ι(v)),
with native integral definitions above.
From §II each individual weighted integrand is
integrable; finite additivity and scalar homogeneity
of genuine Lebesgue integration then give, for all
v,w,c in the correct types:
  L(v+w)=L(v)+L(w),
  L(c*v)=c*L(v).
No totalized nonintegrable integral is used to
infer linearity. The source candidate
sourceNegativeMomentLinear (ZNC-v1-02) is an actual
Lean LinearMap V ->_C C built from these integrals,
not a formal rank-one placeholder.

## IV. Exact codimension and original pole sign

Assume now dim_C V=d<infinity.
Rank-nullity for L:V->_C C gives
  dim_C(V)=dim_C(ker L)+dim_C(im L).
Since im L is a subspace of the one-dimensional
complex codomain,
  dim_C(im L)<=1,
hence
  dim_C(ker L)>=d-1.                         (4.1)

By construction v∈ker L implies
  M_+(ι(v))=M_-(ι(v)).
Invoke the PREVIOUS native source theorem
  ZetaPoleRankOneReturn.sourcePole_nonneg_on_negative_kernel
using the SAME original source, A, integrability and
pointwise-support assumptions. The result is
  P_zeta(ι(v)) >= 0   for every v∈ker L.   (4.2)
This is not a pole-neutral restriction on the original
Weil domain: the kernel is used only to intersect a
candidate negative subspace and count its dimension.

ZNC-v1-03, sourcePole_nonneg_on_codimension_one_kernel,
proves (4.1)--(4.2) in a single source-bound Lean
candidate with no spectral assumptions, RH, GRH or
new positivity hypotheses. The signed original
pole identity continues to hold for ALL source tests,
including those outside ker L.

## V. Negative full form forces negative nonpole directions

Let
  Q_zeta,A(ι(v)) = N(v) + P_zeta(ι(v)),
where N is the ORIGINAL nonpole component:
  c_zeta E(ι(v)) + Gamma_0(ι(v)) - S_1,A(ι(v)).
No new shifted or positive reference form is introduced.
Suppose a finite-dimensional subspace W is negative
definite for the full source: every nonzero v∈W
satisfies N(v)+P_zeta(ι(v))<0.
The hypothesis is a description of any CANDIDATE
negative subspace; no global negative-sign premise
is asserted. By (4.1), at least dim W-1 independent
directions lie in ker L. On ker L, P_zeta>=0 by
(4.2), hence for each nonzero such v,
  N(v) < -P_zeta(ι(v)) <= 0.                 (5.1)

The fourth source theorem ZNC-v1-04,
negative_full_source_implies_negative_nonpole_on_kernel,
proves precisely the dimension inequality and (5.1)
for the original sourcePole and a function N.
The actual analytic specialization N(v) to the
canonical native gamma/prime expression requires
its integrability/statement correspondence but no
new arithmetic inequality.

The exact full negative-index consequence, after
the genuine source Plancherel/Bessel bridge from
WeilSignedDeficitNegativeIndex.md is kernel-checked,
is
  ind_-(Q_zeta,A) <= 1 + ind_-(N_A)
                 <= 1 + tau_1,A(eta)/eta.
The second inequality is WRITTEN from the earlier
Fourier deficiency trace, not a Lean declaration
or independent accepted proof. No finite negative
index statement implies the index is zero.

## VI. Hostile checks and literature

At f=0, both moments vanish. If f is a real odd
smooth compact test, the positive moment U=0 and
the negative moment V need not vanish, so
P_zeta=-2|V|² can be strictly negative.
The odd witness verifies that the negative
functional is not identically zero on the full
supported smooth test domain when A>0.
A codimension-one kernel does NOT imply that
the original full Weil form is nonnegative off
that kernel, nor justify imposing V=0 on every test.
No pole multiplicity, conductor, gamma normalization,
prime phase, or actual zero complex location is
altered. The theorem is true for arbitrary complex
linear combinations of supported source functions.
Real-only rank counting would be insufficient:
the dimension count is explicitly over C.

The analytic facts are classical:
Lebesgue L1 dominated integral, complex linearity
and finite-dimensional rank-nullity. The
paper-level source convention is
Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20).
Bombieri, Remarks on Weil's quadratic functional
in the theory of prime numbers, I (2000),
discusses the fixed-window negative eigendirections.
The repository's exact source correspondence is
WeilCorrelationFourier.zeta_pole_correlation.
No novelty is asserted or comprehensive literature
search claimed.

## VII. Declaration map, source pins and open obligations

ZetaNegativeMomentCodimension.integrable_source_exp_weight
  ZNC-v1-01: removes the extra weighted-integrability hypothesis.
ZetaNegativeMomentCodimension.sourceNegativeMomentLinear
  ZNC-v1-02: the original M_+-M_- as a true complex LinearMap.
ZetaNegativeMomentCodimension.sourcePole_nonneg_on_codimension_one_kernel
  ZNC-v1-03: finrank ker >= dim-1 and sourcePole>=0 on it.
ZetaNegativeMomentCodimension.negative_full_source_implies_negative_nonpole_on_kernel
  ZNC-v1-04: preserved negativity of actual nonpole component.

The source return is direct to the original zeta moment definitions
of WeilZetaPoleRankOneReturn and the full two-orientation
zeta correlation from WeilCorrelationFourier.
The actual completed L-function zeta source theorem in
WeilGammaPhysicalReturn has not been promoted beyond its
previous SOURCE_PROOF_CANDIDATE status.

Live source inspection:
  grwtsk/math/main 4aaf5eea7f62c1f8f2e54d2f29c93c5750ebc8cd.
Lean leanprover/lean4:v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
No root import, dependency pin, or existing source changed.

Elaboration: NOT_RUN. Full dependency build: NOT_RUN.
Fresh kernel replay: NOT_RUN. Transitive axiom audit:
NOT_RUN. Independent review: NOT_RUN. Novelty: UNASSESSED.
Certified complete Weil evaluation: NOT_RUN.

FIRST FORMAL OPEN: instantiate the source map on the
canonical supported C_c^infinity complex submodule and
kernel-check the new declarations; formalize the
original-source Fourier/Plancherel Bessel trace.
FIRST ARITHMETIC OPEN: prove the signed pole-inclusive
Weil quadratic form nonnegative for EVERY primitive
character/window/complex smooth test, explicitly
including conductor-one zeta. A codimension-one
pole decomposition is not that sign theorem.
