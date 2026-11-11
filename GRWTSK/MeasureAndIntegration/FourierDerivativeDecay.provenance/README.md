# Derivative-controlled complex Fourier decay

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801), scope comment 6806810864.
Maintained source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean).
Namespace: `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay`.

## Pins and specification

Initial inspection base `da00dc90fe356e06c9ac83c6a8e64a77cc951703`, complete root tree `845a94c201e0266a7d5420158d4aa38e689bf7da`. Reconciled publication parent `7f588893034a0aacbc91c7c02bc98406c4ce5a1f`, complete tree `aef7ae74b8974e08fa06a5041f6b727b48759b1d`. The intervening diff changes only HaradaCharacterSurface.lean; it is preserved.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No pin or root-import change.
New source: 10,969 UTF-8 bytes, 233 lines, fourteen theorem bodies (twelve public, two private), two definitions. SHA-256 `a2b36b57f54a31b257a0114177711e5bae861df642f7d5661e11ac7f0b50c02b`; Git blob `1df24b0bdcc1be9ca263a4a5fa16da04a74a9e82`. The enclosing commit binds source and individual records.
The supplied research execution mandate was read and its actual attachment bytes hashed in this run: SHA-256 `77acba975792729ceaf80d12e3a91bddfd3556a4be88bbcf4f358af48023535f`. Relevant specification: section 3 plus-sign transform, RP-OC-01 derivative cost and weighted moment, RP-OC-02 varying-test boundary.

## Exact objects and quantifiers

All integrals use Lebesgue measure. No new Fourier transform is defined:

    F(z) = integral_R f(t)*exp(I*z*t) dt.
    p_k(f) = 2^k*(integral_R norm(f) + integral_R norm(deriv^[k] f)).
    w_(A,k)(z) = exp(A*abs(Im z))/(1+norm(z))^k.

The named `derivativeL1Cost` is the explicit derivative cost above. On the smooth compact test space it is this combination of L1 derivative seminorms; the module does NOT bundle a Lean Seminorm or claim to formalize its full algebraic laws.
The Fourier bound assumes scoped C-infinity regularity, compact support and topological support inside [-A,A]. It quantifies over every real A, natural k and complex z. Negative A forces empty support; no nonempty interpolation claim is made. The first-order identity needs only compact C1 input. Every derivative integral used by the estimates is proved integrable.

    F_(deriv^[k] f)(z) = (-(I*z))^k * F_f(z),
    norm(z)^k*norm(F_f(z)) <= exp(A*abs(Im z))*integral norm(deriv^[k] f),
    norm(F_f(z)) <= p_k(f)*w_(A,k)(z),
    w_(A,k)(z)^2 = exp(2*A*abs(Im z))/(1+norm(z))^(2*k).

The weight is strictly positive and invariant under conjugation. It is only a majorant, never an alternative signed form.

## Complete primary analytical argument

1. The derivative-support theorem shows that differentiation does not enlarge topological support. Induction gives the same support radius and compact support for all derivative iterates. Smoothness gives continuity, hence L1 integrability of every iterate.
2. For fixed complex z, both f(t)*exp(I*z*t) and f'(t)*exp(I*z*t) are integrable by the existing compact-support Fourier theorem. The real derivative of the exponential kernel is (I*z)*exp(I*z*t). The product derivative is f'(t)*exp(I*z*t)+(I*z)*f(t)*exp(I*z*t), an integrable sum.
3. Whole-line FTC for an integrable function with integrable derivative gives integral of this derivative equal to zero. Subtracting the second summand yields F_(f')(z)=-(I*z)*F_f(z). No unsupported boundary limit or exchange of nonintegrable integrals is used.
4. Iterate step 3 on the smooth derivatives. Taking norms and using norm(I)=1 gives norm(z)^k*norm(F_f(z))=norm(F_(deriv^[k] f)(z)). The existing complex-frequency envelope supplies the derivative L1 bound. No division by z occurs.
5. Write r=norm(z). If r<=1, then (1+r)^k<=2^k and the order-zero estimate suffices. If r>1, then (1+r)^k<=(2*r)^k and the order-k estimate suffices. Both branches are bounded by exp(A*abs(Im z))*2^k*(J_0+J_k). Divide only by the strictly positive (1+r)^k.
6. Conjugation changes the sign of Im z and preserves norm(z), so it preserves w. Squaring and the exponential addition law give exactly the RP-OC-01 moment weight.
7. The companion source consumer rewrites the original correlation transform using F(z)*conj(F(conj z)), then applies the two Fourier bounds. The existing WeightedConjugatePairing theorem receives proved Fourier envelopes, not arbitrary evaluation vectors. Its entire summable moment remains an explicit hypothesis.

Alternative comparison: one can apply real-frequency Fourier decay to exp(-Im(z)*t)*f(t) at frequency -Re(z)/(2*pi). Product-rule derivatives then produce explicit imaginary-frequency polynomial factors. This is a different organization of the classical argument, not a second independent verification and not the proof used here.

## Dated source comparison and dependency map

This is classical integration by parts, not a new decay theorem. Mathlib's FourierTransformDeriv module already proves derivative/Fourier identities and decay for real-bilinear Fourier integrals in its -2*pi convention. Those hypotheses and normalization are not silently equated with this every-complex-frequency plus-sign integral. The local proof reuses whole-line FTC, derivative support and the prior complex envelope. Focused GitHub search returned no match; incomplete search establishes neither absence nor novelty. Novelty UNASSESSED.

All primary Mathlib references below are pinned at `d13f23b723b8a846827a245b89c10fc7d3f11612`; upstream authorship and Apache-2.0 are retained in their original sources.

- Anatole Dedecker and Bhavik Mehta, [IntegralEqImproper.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/IntegralEqImproper.lean), `integral_eq_zero_of_hasDerivAt_of_integrable`; blob `99d112e521dea3e23ebd33931a5ad88f755642f1`.
- Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo and Calle Sönne, [ExpDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/ExpDeriv.lean), `HasDerivAt.cexp`; blob `4f23138d60cf767cc436cb60b942fd6c2e3409ea`.
- Sébastien Gouëzel and Yourong Zang, [RealDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/RealDeriv.lean), use of `Complex.ofRealCLM.hasDerivAt` in `HasDerivAt.comp_ofReal`; blob `dbf10e546853b9445331d48263c6e3d73f506393`.
- Sébastien Gouëzel and Floris van Doorn, [ContDiff/Deriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ContDiff/Deriv.lean), `ContDiff.iterate_deriv`, `contDiff_infty_iff_deriv`, `ContDiff.continuous_deriv`; blob `ede41b77d146105bee637d6db9b91a1a21a48547`.
- Floris van Doorn, [Deriv/Support.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/Deriv/Support.lean), `tsupport_deriv_subset`, `HasCompactSupport.deriv`; blob `2e0f13e2809671ab3f7a797c8e33d1da18e45f2b`.
- Alex Kontorovich, David Loeffler, Heather Macbeth and Sébastien Gouëzel, [FourierTransformDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Fourier/FourierTransformDeriv.lean), module main-results and real-bilinear normalization comparison; blob `54260b884936c9479ca6a212d8b1c2bb8f4db37f`. Comparison only, not a directly substituted complex-frequency theorem.

Canonical envelope reused: [FourierCollisionBound.lean](https://github.com/grwtsk/math/blob/da00dc90fe356e06c9ac83c6a8e64a77cc951703/GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean), blob `d7a7d75aea20705cdc037695c07f073e84399a76`. Its general L1 estimates and corrected smooth order are unchanged. Local source is MIT. Each new declaration, including both definitions and private helpers, has its own record.

## Hostile checks and limitations

At z=0, the order-k polynomial inequality for k>0 alone gives no useful bound on F(0); the order-zero branch is essential. At k=0 the cost is twice J_0, a deliberate slack. Neither case is omitted. The zero test is allowed. Topological support controls derivative support at the boundary; no discontinuous cutoff is treated as smooth.
Dropping exp(A*abs(Im z)) would lose nonreal growth control. Replacing the reflected product by a squared modulus would change the signed form. An arbitrary divisor can have infinite weighted mass, so these test bounds alone do not establish zero-sum convergence. A varying test's derivative cost can overwhelm a decreasing tail; no simultaneous interpolation/tail margin is claimed.
The prior analytic-top versus smooth-infinity error remains recorded in WeilArchimedeanDomain.provenance/MIGRATION-v2.md. These sources use the corrected infinity. Historical evidence is not promoted.

## Verification and remaining arithmetic input

Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytic review, arithmetic certification and repository-wide checks: NOT_RUN. Source-text checks and hashes are not Lean parsing or theorem acceptance. The source-only check command exited 0: comment-aware forbidden-token scan, delimiter balance, declaration/provenance coverage, and SHA-256/Git-blob agreement. Uploaded Lean blobs matched the checked source identities. A later runtime reset removed temporary local drafts; remote source blobs retain the exact checked bytes. Published provenance is read back separately, not inferred from vanished local drafts.

Proposed commands, NOT executed:

```sh
lake build GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationDecay
```

After elaboration, print transitive axioms of every public declaration and separately perform fresh kernel replay. Audit private helper closures transitively. Imported candidates retain their own statuses.
Local Lean/Lake and verified canonical skills were absent. Required proof-automation access returned 404 at Noe main `3a47b54b8941fe74a74d39278349c23dcac29aa9`; dependent execution stopped. No runner, scheduler, workflow or cross-chat action was dispatched. Ordinary source authoring/publication is separately authorized.
First unresolved arithmetic inputs are finiteness of this weighted moment for the actual analytically continued zeta/primitive-Dirichlet zero divisor, with full complex coordinates and multiplicities, and the complete explicit-formula identity with the original arithmetic form. This increment supplies test decay, not zero counting, contour residues, source topology or arithmetic positivity. All prime powers, phases, conductor, gamma/parity, dual-character conventions and both applicable zeta poles remain required. No program is complete.
