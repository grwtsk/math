# Native Weil gamma-block return on finite odd sine trials

**Attribution:** grwtsk contributors. **Prepared:** 2026-11-13, America/Los_Angeles.  
**Lean source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilGammaBlockReturn.lean`.  
**Status:** COMPLETE WRITTEN FINITE-SINE ANALYTICAL ARGUMENT / MANUAL LEAN SOURCE PROOF CANDIDATE. Compiler elaboration, fresh kernel checking, transitive axiom audit, and independent review remain **NOT_RUN**. This is **not** a proof of RH or Dirichlet GRH.

## 1. Exact mathematical consumer

The preceding `WeilFiniteSineArithmeticReturn.lean` keeps `GammaBlockReturn T c a M` as an explicit assumption in its original-matrix-to-physical-form return. Its proposition is

\[
\forall x\in\mathbb R^M,\qquad
x^{\mathsf T}A^{\mathrm{arch}}_{T,c,a,M}x
=c\int_{\mathbb R}f_x(t)^2\,dt
+\int_0^\infty K_a(r)\int_{\mathbb R}
\bigl(f_x(t+r)-f_x(t)\bigr)^2\,dt\,dr,
\]
where \(f_x=\sum_{i=1}^M x_i s_i\), the **original** normalized basis is
\(s_i(t)=\mathbf 1_{[-T,T]}(t)\sin(\pi it/T)/\sqrt T\), and
\(A^{\mathrm{arch}}_{T,c,a,M}\) is constructed from the **original** `sineArchimedeanEntry`, with no model substitution. The original parity kernel is
\[
K_a(r)=\frac{\exp(-(a+1/2)r)}{1-\exp(-2r)}, \quad r>0.
\]
The source's \(a=0\) zeta and \(a=1\) odd-character cases must both be included. The Lean source implements the same statement for every natural \(a\), requiring \(T>0\).

## 2. Integrability already supplied by the repository

The existing `WeilOddGammaOutput.lean` proves:

- Each source `zeroExtendedSine T n` is globally Lipschitz, uniformly bounded and integrable for \(T>0\).
- Each fixed-shift product \(\Delta_r s_m\,\Delta_r s_n\) is integrable by translating the original \(L^2\) representatives and applying Cauchy–Schwarz.
- `integrableOn_mixedGamma` establishes integrability of
  \(K_0(r)\int\Delta_r s_m\Delta_r s_n\,dt\) over \((0,\infty)\).

For any natural \(a\) and \(r>0\), exactly
\[
 K_a(r)=e^{-ar}K_0(r),\qquad 0\le K_a(r)\le K_0(r).
\]
The second inequality is already formalized as `OddRootProjection.parityKernel_le_base`. Because the mixed inner integral is a measurable function of \(r\) (derived using the repository's `Measurable` source sines and measurable parameter integration), domination by the integrable \(a=0\) absolute value proves the **actual** parity-\(a\) mixed gamma integrability. The new Lean candidate spells out both the measurability and the domination proof in `kernelMixed_integrableOn`. No false positivity for the signed mixed inner integral is asserted.

## 3. Exact finite sums, without unproved Fubini of infinite integrals

The finite physical sine synthesis obeys, pointwise in \(r,t\),
\[
\Delta_r f_x(t)=\sum_i x_i\Delta_r s_i(t),\quad
(\Delta_r f_x(t))^2
=\sum_{i,j}x_ix_j\Delta_r s_i(t)\Delta_r s_j(t).
\]
The `sineMixed_integrable` lemma controls every inner product in \(t\), so `finiteSine_shift_square_integral` may take the **finite** sums past the \(t\)-integral. The new `kernelMixed_integrableOn` then controls each outer \(r\)-integral, so `gamma_energy_finiteSine_eq_sum` may take the finite sums past the outer gamma integral:
\[
 \int_0^\infty K_a(r)\int (\Delta_rf_x)^2 dt\,dr
 =\sum_{i,j}x_ix_j\int_0^\infty K_a(r)
          \int\Delta_rs_i\,\Delta_rs_j\,dt\,dr.
\]
Separately, existing `OddSineForm.integral_finiteSine_product` gives the exact finite mass bilinear expansion. Combining these two identities with the original entries of `sineArchimedeanEntry` proves the intended `GammaBlockReturn T c a M`, expressed as `gammaBlockReturn_of_pos`. The proof does not exchange two **infinite** integrals: only justified **finite sums** cross integrals that have already been proved absolutely integrable.

An additional local consequence, `arch_quadratic_ge_constant`, is the genuine all-dimension archimedean-block lower floor
\[
 x^{\mathsf T}A^{\mathrm{arch}}_{T,c,a,M}x \ge c\sum_i x_i^2.
\]
Its proof uses the nonnegative original kernel and `OddSineForm.integral_finiteSine_sq`; it **does not** estimate the signed prime response or the negative zeta pole, and cannot serve as the missing cofinal Weil bound.

Two immediate intended consumers are the existing `zeta_matrix_eq_physical_of_gamma_return` and `primitive_matrix_eq_physical_of_gamma_return`; the new file defines `zeta_matrix_eq_physical` and `primitive_matrix_eq_physical` by supplying the constructed gamma proof, while keeping the previously proven signed zeta pole and original character-weighted prime returns unchanged. This does not prove any all-support positive lower bound or construct a zero-dependent negative test.

## 4. Independent whole-line numerical adversarial check

Use \(T=1\), \(M=2\), \(x=(3/5,-2/7)\). Independent 42-decimal `mpmath` integrations compared (a) the gamma energy of the synthesized real function via its physical autocorrelation against the original kernel and (b) the full coefficient-weighted matrix of mixed shift energies. The autocorrelation closed form was independently validated against direct one-dimensional source integrals at 18 combinations of mode pairs and shifts; whole-line jump squares were independently checked against direct physical integrals at four nonzero shifts for each parity. Results:

| Parity | Physical gamma energy | Matrix minus physical |
| --- | ---: | ---: |
| \(a=0\) (zeta/even gamma) | 1.9742031805185951129094070267157031 | approx. \(2.87\times10^{-42}\) |
| \(a=1\) (odd primitive gamma) | 0.61009860926688690098872312528872823 | approx. \(2.87\times10^{-42}\) |

All direct-correlation and jump comparisons passed at the stated precision. These are **not certified intervals** and they do not prove the Lean file compiles or any Weil positivity. In particular, the positive numerical gamma correction does not imply that the full arithmetic form is positive after subtracting the signed prime response and retaining the negative zeta pole.

## 5. Evidence boundaries and remaining mathematical obligations

**Established as a complete written argument:** full parity-dependent gamma integrability and finite-sine entrywise return using the repository's original gamma kernel and source sine basis.

**Drafted as manually authored Lean source proof:** mixed shifted-sine integrability; measurable mixed correlations; domination of arbitrary parity by the native even kernel; finite inner/outer gamma sum expansions; `gammaBlockReturn_of_pos`; its two source-specific zeta and character consumers. None of these new proof bodies has been elaborated by Lean or admitted by the kernel in this session. Existing imported Lean proof candidates likewise retain their original historical assurance levels.

**Still open after this step:** full H1 sine-projection approximation `NativeProjectedEnergyUpper` for general smooth supported tests; off-critical completed zero to a physically negative **original** Weil test with complete arithmetic-source identification; uniform **cofinal, all-dimension, subexponential lower budgets** for the actual zeta and required primitive character matrices. The last two are the core unresolved RH/Dirichlet-GRH steps, not consequences of finite entrywise identities.

**Formal verification:** Lean v4.34.1 and Mathlib pin d13f23b723b8a846827a245b89c10fc7d3f11612 identified in repository, but no local Lean/Lake executable or full dependency checkout available. `LEAN_ELABORATION_NOT_RUN`, `FULL_IMPORT_BUILD_NOT_RUN`, `FRESH_KERNEL_REPLAY_NOT_RUN`, `TRANSITIVE_AXIOM_AUDIT_NOT_RUN`, `INDEPENDENT_MATH_REVIEW_NOT_RUN`, `RH_NOT_PROVED`, `DIRICHLET_GRH_NOT_PROVED`, `NOVELTY_UNASSESSED`. File delimiter checks and the separate numerical calculation do not alter these statuses.

Primary source references: original `WeilOddSineProjection.lean`, `WeilOddGammaOutput.lean`, `WeilGammaData.lean`, and `WeilFiniteSineArithmeticReturn.lean` in grwtsk/math; Connes–Consani–Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1, equations (3.19)–(3.20). Provenance and subsequent review coordinate at grwtsk/math issue #1801. No OpenAI/Noe proof automation, external checker, messaging or scheduling was invoked.
