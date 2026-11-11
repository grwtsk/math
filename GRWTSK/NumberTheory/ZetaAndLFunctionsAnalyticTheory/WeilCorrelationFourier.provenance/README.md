# Complex Fourier return for the original arithmetic correlation

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).
Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation`.

## Source pins and role

Inspected math/main: `ead28dc753a4e7587863f23d2e1f7fba72dde074`; complete root tree `70cdb38c46a94518be387db776364d79c5670cf7`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Pins and root imports are unchanged.
Lean source: 13125 UTF-8 bytes, 251 lines; Git blob `ecc16c32221c0cc677a074758c0b22378fd7aa17`; SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.
The enclosing commit pins the source, this record and twelve individual declaration records.

RP-OC-01/02 consume this analytic source-return component. Supplement C reuses the previous Fourier envelope through the same implementation. No program is complete, no new registered frontier claim is asserted, and novelty is UNASSESSED.

## Exact objects and quantifiers

Reuse the existing `SourcePrimeCorrelation.correlation`, not an independently chosen form:

    C_f(r) = integral_R conj(f(t)) * f(t+r) dt.
    F(z) = integral_R f(t) * exp(i*z*t) dt.

All measures are Lebesgue. The core statements quantify over EVERY complex z, complex-valued integrable f and real A satisfying f(t)=0 whenever A<abs(t). No reality, parity, critical-line or zero-location assumption is used. For A<0 this support condition forces f=0; it does not assert nonempty interpolation. For A>=0 it is support in [-A,A].

The derived identity is

    integral_R C_f(r)*exp(i*z*r) dr = F(z)*conj(F(conj z)).

For merely L1 input, convolution/Fubini gives a.e. inner integrability. The separate compact-smooth consumer additionally proves EVERY inner integral integrable by obtaining MemLp f 2 and reusing the original correlation theorem. Both complex-frequency factors and the outer transform are integrable. The proof does not exchange nonintegrable iterated integrals.

For y real, put Mminus=integral f(t)*exp(-y*t)dt and Mplus=integral f(t)*exp(y*t)dt. The sum of the two exponential moments of C_f is

    Mminus*conj(Mplus) + Mplus*conj(Mminus).

`zeta_pole_correlation` explicitly takes y=-1/2, retaining exp(r/2)+exp(-r/2) and both cross products. It identifies this literal pole component, not all of the zeta arithmetic form. No pole-neutral restriction or positivity is introduced.

## Complete analytical argument

1. Let u_z(t)=conj(f(-t))*exp(i*z*t) and v_z(t)=f(t)*exp(i*z*t). Reflection preserves Lebesgue measure, and conjugation preserves the complex norm, so the reflected factor is L1. Reflection also preserves the support bound. The existing compact-support Fourier majorant proves both u_z and v_z integrable at every complex z.
2. In the convolution integral u_z(t)*v_z(r-t), the two exponentials multiply to exp(i*z*r). Changing t to -t in the remaining integral gives C_f(r). Thus the convolution is exactly C_f(r)*exp(i*z*r).
3. The convolution of the two L1 functions is integrable. Mathlib's integral-convolution theorem derives the double-integral interchange from its proved integrability theorem, then yields integral u_z times integral v_z.
4. Negate the integration variable in integral u_z. Since conj(i)=-i, the resulting integrand is conj(f(t)*exp(i*conj(z)*t)). Conjugation commutes with the integral. This gives conj(F(conj z))*F(z), which equals the displayed product.
5. At z=i*y, the kernel is exp(-y*t), and conjugating z changes y to -y. Therefore the moments are opposite-weight cross products. Establish integrability at BOTH y and -y before adding their integrals. The zeta half-parameters are an algebraic specialization, not a pole deletion.
6. For compact smooth f, continuity and compact support imply L1 and L2. The existing `integrable_correlation_integrand` gives every inner integral, and the core results give outer integrability and the exact identity.

An alternative derivation substitutes u=t+r directly in the absolutely integrable double integral: exp(i*z*(u-t)) splits into its u and t factors. It gives the same sign and reflection. This shares the same Fubini input and is NOT an independent proof review.

## Dated source comparison and provenance

Immediate specification: the supplied research execution mandate (2026-11-11), section 3, plus-sign transform/reflected pairing and complete pole preservation, and RP-OC-02. This is a local elementary consequence, not a newly claimed paper theorem. The mandate's historical attachment digest was not recomputed in this run and is not relabeled as newly verified.

Canonical source at the inspected math pin:
- `WeilSourcePrimeCorrelation.lean`, blob `6bc8c1ac043ae5b7f8fb2f7608cd56524bb965a6`: exact correlation, energy and L2 inner-integrability consumer. Its prime-power inventory and character phases are unchanged.
- `GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean`, blob `6669b1cd87456ca18f5a773d50622c56a70272f5`: the previously published complex-frequency integrability supplier, directly imported and reused.
- `WeilOddRootProjection.lean`, blob `8052268c21481a098cd723f9c3c664dbbd0008b6`, source-local exposition A--C: the full spectral identity and contour argument remain written obligations. Its paired-character conventions and minus-sign transform must not be conflated with the present plus-sign single-correlation identity.

Pinned primary library sources, all at Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`:
- [Analysis/Convolution.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Convolution.lean): `Integrable.convolution_integrand`, `Integrable.integrable_convolution`, `integral_convolution`; source author Floris van Doorn.
- [MeasureTheory/Group/Integral.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Group/Integral.lean): additive versions `Integrable.comp_neg`, `integral_neg_eq_self`; source author Floris van Doorn. The latter takes the measure explicitly.
- [Bochner/ContinuousLinearMap.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Bochner/ContinuousLinearMap.lean): `integral_conj` and constant multiplication.
- [LpSpace/Indicator.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Function/LpSpace/Indicator.lean): `Continuous.memLp_of_hasCompactSupport`.

Mathlib contributions retain their upstream source bylines and Apache-2.0 license. Local source is MIT. GitHub code search returned no matches for the focused correlation/Fourier query; that incomplete search establishes neither absence nor novelty. Exact source definitions were inspected directly.

## Hostile checks and mathematical boundary

The reflection cannot be removed: for the L1 control f=1_[0,1], F(i)=1-exp(-1), F(-i)=exp(1)-1. Their product is exp(1)*F(i)^2, not F(i)^2. This is an exact written integral calculation on the generic L1 domain, not a smooth arithmetic witness or numerical certificate. At y=0 the moment identity specializes consistently to twice the squared modulus of the integral. At nonzero y the two factors remain different. Complex-valued f is never restricted to real coefficients.

The first unresolved arithmetic premise is still the complete explicit formula for the existing arithmetic value evaluated at C_f. Its zero side must use the actual analytically continued zeta/primitive-Dirichlet divisor with multiplicities; its arithmetic side must retain all prime powers, character phases, conductor and gamma/parity, and both zeta pole orientations. This module supplies the transform identity needed to turn that zero-side evaluation into the reflected product; it supplies neither the zero-sum convergence nor that arithmetic equality. Constructive interpolation, varying-test joint tails and positivity remain separate.

## Verification and reproduction boundary

The following commands are proposed, NOT execution receipts. At the enclosing commit with the unchanged pins:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationFourier
lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean
```

After building, a temporary audit file can import that module and issue `#print axioms` for each of its seven public declarations. The five private helper closures are reached transitively; do not guess their compiler-generated names. A printed axiom closure is distinct from fresh kernel replay. Source compilation must include the existing candidate dependencies; their prior statuses are not promoted by this publication.

Elaboration/build, fresh kernel replay, transitive axiom audit, repository-wide CI, arithmetic certification and independent analytic review: NOT_RUN. Local source-text checks and hash comparison are not any of these checks. Pinned-API inspection caught missing explicit `volume` arguments in two draft uses of `integral_neg_eq_self`; these were repaired before publication. No compiler was run, so this is not a compiled-failure repair receipt.

Lean/Lake and verified canonical local skill checkouts were absent. The prescribed proof-automation skill returned 404 at Noe main `f798774d6d16dedfe70a7f969111048ed18359d6`; dependent automation stopped. Source authoring/publication is separately authorized. No runner, scheduler, cross-chat message, workflow dispatch, protection change, new axiom or root-import promotion.
