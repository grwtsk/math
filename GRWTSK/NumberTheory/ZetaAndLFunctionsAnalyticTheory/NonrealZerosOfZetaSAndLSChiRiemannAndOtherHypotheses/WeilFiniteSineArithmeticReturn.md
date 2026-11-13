# Exact prime and pole returns for the original Weil sine matrices

**Attribution:** grwtsk contributors. **Date:** 2026-11-13 (America/Los_Angeles).
**Maintained source:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilFiniteSineArithmeticReturn.lean.
**Status:** complete written finite-sine source comparison, manual Lean SOURCE_PROOF_CANDIDATE for the prime and pole returns, and conditional full-matrix Lean statements with the gamma-block return explicit. Lean elaboration, kernel checking, transitive axiom audit, and independent review NOT_RUN. No RH or Dirichlet GRH proof.

## Exact consumer and original arithmetic meaning

The preceding WeilPhysicalSineNegativeReturn.lean has NativeProjectedEnergyUpper as an assumption relating the physical Weil quadratic form to the literal finite sine matrices. To reduce that assumption, fix T>0 and the original normalized, zero-extended sine basis

    s_n(t)=1_{[-T,T]}(t)*sin(n*pi*t/T)/sqrt(T), n>=1,
    f_x(t)=sum_(i=0)^(M-1) x_i*s_(i+1)(t).

Keep the original zetaSineMatrix(T,M), primitivePairSineMatrix(chi,T,M), activePrimePowers(T), gammaConstant(q,a), parityKernel(a,r), and signed sinePoleEntry. The primitive nonprincipal real conjugate-pair matrix uses w_n=primeWeight(n)*Re(chi(n)); it is not an individual complex-character magnetic matrix. Both direct and backward real correlations are retained.

The following are source identities on finite sine trials, NOT spectral-gap or Weil-positivity statements.

## 1. Genuine odd zeta pole: both moments retained

OddSchurAccounting.literal_pole_entry gives exactly

    sinePoleEntry(T,m,n)=
        2*coshMomentRow(T,M,m)*coshMomentRow(T,M,n)
      - 2*sinhMomentRow(T,M,m)*sinhMomentRow(T,M,n).

The imported OddPoleMoment.coshMomentRow_eq_zero proves the first term vanishes on each actual odd sine basis element for T>0. This is not an assumption that the full zeta pole is positive or can be deleted. The new source proves

    sinePoleEntry(T,i+1,j+1)
       = -2*sinhMomentRow(T,M,i)*sinhMomentRow(T,M,j).        (P1)

OddPrimePoleOutput.integral_sine_mul_sinh and finite integration give

    sinhMomentRow(T,M) dot x
       = integral_R f_x(t)*sinh(t/2)dt.                       (P2)

Therefore the full original zeta pole quadratic matrix has value

    -2*(integral_R f_x(t)*sinh(t/2)dt)^2.                     (P3)

This equals the negative odd specialization of the two signed physical pole orientations. The proof uses no RH or numerical zero inventory.

## 2. Every prime power, with arbitrary real character weights

For an arbitrary real coefficient function w(n), let

    W_w(T,M)[i,j] =
       sum_(n in activePrimePowers(T)) w(n) *
         (C_(s_(i+1),s_(j+1))(log n)
          + C_(s_(j+1),s_(i+1))(log n)).

The new weightedPrimeMatrix_quadratic_eq proves, using only finite sums and inherited integral_finiteSine_product,

    x^t W_w(T,M) x =
       2*sum_(n in activePrimePowers(T)) w(n)*C_(f_x)(log n).  (A1)

This holds for negative weights as well as positive weights. No coefficient sign is discarded, and no Toeplitz approximation is used. For real f, translation invariance gives C_f(-r)=C_f(r), hence

    x^t W_w(T,M) x =
       sum_(n in activePrimePowers(T)) w(n) *
         [C_f(log n)+C_f(-log n)].                           (A2)

For zeta w(n)=primeWeight(n)=Lambda(n)/sqrt(n), and the already present OddSineForm.primeMatrix_quadratic_eq is consumed literally. For primitive nonprincipal chi, w(n)=pairedPrimeWeight(chi,n), including zero values for ramified n. The full gamma parity and conductor remain separate. At log n=2T, correlation is zero and the original strict support inventory stays unchanged.

## 3. Complete written gamma return on finite sine trials

Let c be the exact gamma constant and a the exact nonnegative gamma parity. Define

    Gamma_a(f,g)=int_(r>0) kappa_a(r)
        [int_R (f(t+r)-f(t))*(g(t+r)-g(t))dt]dr,
    kappa_a(r)=exp(-(a+1/2)*r)/(1-exp(-2r)).

For T>0 every zero-extended s_n is globally Lipschitz and compactly supported. The standard H1 shift bound on finite sine trials is

    ||f(.+r)-f||_2 <= min(r*||f'||_2, 2*||f||_2).             (G1)

Near zero kappa_a(r)=O(r^-1), and at infinity kappa_a(r)=O(exp(-(a+1/2)r)). Thus the squared right side of (G1) gives an integrable positive majorant against the actual kernel. Moreover

    |<Delta_r s_i,Delta_r s_j>|
       <= (||Delta_r s_i||²+||Delta_r s_j||²)/2,

so every mixed gamma entry is absolutely integrable. Finite-sum linearity under the physical integrals is legitimate; for ALL finite coefficient vectors x,

    Gamma_a(f_x,f_x)=sum_i sum_j x_i*x_j*Gamma_a(s_i,s_j).  (G2)

The constant term distributes similarly:

    c*||f_x||² = sum_i sum_j x_i*x_j*c*<s_i,s_j>.          (G3)

The original sineArchimedeanEntry(T,c,a,m,n) is precisely these two entry integrals. Therefore

    archPhysicalValue(c,a,f_x)
      =quadratic(archBlockMatrix(T,c,a,M),x).               (G4)

This is a written mathematical proof of the gamma finite-sine identity, using Cauchy--Schwarz, source kernel bounds and finite integrals. It does NOT prove an all-window arithmetic sign. A Lean kernel proof of G4 is NOT provided in the new source: GammaBlockReturn remains an explicit hypothesis pending formalization of mixed gamma integrability and finite-sum interchange. G4 is a statement only on finite sine inputs, not a completed-L-function explicit formula.

## 4. Full physical-source return conditional on the gamma Lean lemma

The source introduces literal archBlockMatrix and archPhysicalValue and separately types GammaBlockReturn. Under only that hypothesis, the new full source-matrix Lean theorem candidates yield

    quadratic(zetaSineMatrix(T,M),x)
      =zetaOddPhysicalValue(T,f_x),                         (Z)

    quadratic(primitivePairSineMatrix(chi,T,M),x)
      =primitivePairedOddPhysicalValue(chi,T,f_x).           (D)

The zeta proof consumes the existing zetaSineMatrix_quadratic, true cosh vanishing, the already checked-source zeta prime-matrix algebra, and the new sinh integral identity. The primitive proof uses (A2) with exactly pairedPrimeWeight and has no pole. Neither changes the original Weil matrix, original prime inventory, gamma constants or root definitions.

Formalizing G4 and validating the existing source lemmas will remove the finite-matrix identification component of NativeProjectedEnergyUpper on smooth supported odd tests. The remaining obligations are H1 sine density, fixed-window full Weil H1 continuity, the off-critical-zero-to-negative-physical-test construction, and the global cofinal all-mode subexponential arithmetic lower budget. The last item is the actual missing RH/GRH arithmetic estimate.

## 5. Independent 45-decimal numerical checks (not certificates)

Take T=1, M=2 and x=(3/5,-2/7), with active prime powers n=2,3,4,5,7 (Lambda(4)=log 2). Direct physical correlation integration was compared with the literal finite matrix double sum. Results:

| Source term | Physical signed response | Matrix-minus-physical difference |
|---|---:|---:|
| Zeta prime response | -0.518958521708 | 0 to displayed precision |
| Primitive nonprincipal chi modulo 3 paired-prime response | +0.011741275292 | -2.2e-47 |
| Both-orientation odd zeta pole | -0.116373801526 | 0 to displayed precision |

Chi modulo 3 has chi(2)=-1, chi(3)=0, chi(4)=1, chi(5)=-1, chi(7)=1. The prime response in the Weil form is subtracted; the table records the signed positive-coefficient prime response itself, not an automatically negative form contribution. This independent test checks normalization and phases ONLY. It is not validated interval arithmetic, universal test positivity or Lean verification. No gamma integral was independently numerically certified.

## 6. Formal assurance and references

- Connes--Consani--Moscovici, Zeta Spectral Triples, arXiv:2511.22755v1, (3.19)--(3.20), original full pole-inclusive arithmetic source.
- Connes, The Riemann Hypothesis: Past, Present and a Letter Through Time, arXiv:2602.04022v1, §4.1.
- OddSineForm.primeMatrix_quadratic_eq, OddSchurAccounting.literal_pole_entry and zetaSineMatrix_quadratic, OddPoleMoment.coshMomentRow_eq_zero, OddPrimePoleOutput.integral_sine_mul_sinh, OddGammaOutput.window_gammaOutput_finiteSine_pair (existing zeta gamma pairing), and WeilH1SourceContinuity.md (written H1 extension).
- Exact consumer: WeilPhysicalSineNegativeReturn.lean; quantitative bridge WeilAdaptiveAllModeGrowth.lean.

**Evidence:** Written gamma identity G4 complete as finite-sum integral argument, Lean GammaBlockReturn NOT PROVED; prime/pole Lean SOURCE_PROOF_CANDIDATE, not kernel-checked; zeta/primitive full matrix Lean theorems CONDITIONAL ON GammaBlockReturn; numerical corroboration NOT CERTIFIED; Lean elaboration/full dependency build/fresh kernel replay/transitive axiom audit/independent mathematical review NOT_RUN. RH and Dirichlet GRH NOT PROVED. Novelty UNASSESSED. No Noe proof automation, remote proof execution, messaging or scheduling was invoked.
