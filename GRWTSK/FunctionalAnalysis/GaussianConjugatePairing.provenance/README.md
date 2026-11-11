# Fixed-head Gaussian localization: source map and reproduction

Local mathematical attribution: grwtsk contributors.
MSC2020: 42A38, 46C20, 11M26, 11M41.

## Exact source boundary

This is a local analytical development of RP-OC-02 / research issue #51, following the existing W1/W2/W3 distinction. It is NOT an externally authored paper-theorem adaptation and does not claim novelty. No existing declaration is renamed or strengthened. Formal-source candidates only; independent review and all Lean execution are NOT_RUN.

Inspected main: `8d7c8b8084caa6ff3cf6b254da449042617519f8`; complete root tree `bcc23336ee84e2d954719dfb20cf1fe62abb5c06`. Publication commit and non-force readback belong in [math#1801](https://github.com/grwtsk/math/issues/1801). The enclosing Git commit pins the new records. No Lean source is copied into the research repository.

* `GRWTSK/FunctionalAnalysis/GaussianConjugatePairing.lean`: blob `dab527d567428d1e4b2072ee8b86bf398e7ea319`, SHA-256 `78763e81fb3bb701447fae5b99612ea681c69bf61ff4e86311a96800d7293738`, 13477 UTF-8 bytes, 293 lines, 14 theorem declarations.
* `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilGaussianLocalization.lean`: blob `4dd56d11b74f7b4e63b64c29e8a8c0485cd4ba0c`, SHA-256 `c101b1861671d75e9c121745753d78af6070b9a085e947a4ad9a30189fdd0068`, 6935 UTF-8 bytes, 130 lines, 3 theorem declarations.

Every theorem has an individual adjacent record. Seed.ofEvaluation is a definition reusing the existing EvaluationModel, not a theorem asserting a Fourier realization.

## Primary analytical argument

Fix a baseline u, nonnegative multiplicities m and weights w, a reflection j and locations z with z(j(i))=conj(z(i)) and w(j(i))=w(i). Assume |u(i)|<=S*w(i), S>=0, and M=sum_i m(i)*w(i)^2<infinity. These are inputs, not consequences of finite sampling.

Set phase(z)=(z-t)^2+delta^2, E(z)=(Re(z)-t)^2-Im(z)^2+delta^2, g_a(z)=exp(-a*phase(z)), and u_a(i)=u(i)*g_a(z(i)). The exact norm identity is

`|m(i)*u_a(i)*conj(u_a(j(i)))| = |m(i)*u(i)*conj(u(j(i)))| * exp(-2*a*E(z(i)))`.

The SIGNED summand itself is not an absolute square. For a>=0, |Im(z)|<=B and |Re(z)-t|>=R imply E(z)>=Delta=R^2+delta^2-B^2. Summing the norm majorant over the entire complement of a finite head gives a bound by S^2*M*exp(-2*a*Delta). Absolute summability is proved before rearranging the full sum; finite head and tail are separated by indicator functions.

For each head index either u(i)=0 or the COMPLEX phase is zero. Then the reflected phase is also zero, so each signed head term is unchanged. In particular the two desired locations t+/-i*delta have multiplier exactly one. If the original head real part is at most -2*m0, the full damped real part is at most -2*m0+S^2*M*exp(-2*a*Delta). For positive K=S^2*M, m0 and Delta, the existing logarithmic horizon with b=a+1 supplies a tail at most m0/2.

The safe whole-strip envelope is S_a=S*exp(a*B^2), NOT S. It supplies the existing whole-divisor perturbation bound M*(2*S_a*epsilon+epsilon^2) for a cutoff error bounded by epsilon*w. Program 7 consumes the derived negative bound only after exact identification with the unchanged primitive nonprincipal arithmetic value and its genuine test domain.

For comparison with the earlier W2 family P(z-t)*exp(-b*((z-t)^2+delta^2)), take the FIXED b=1 transform as u and a=b-1. An explicit bound S for that baseline remains to be established from the polynomial, its conditioning and divisor geometry. This increment does not claim to construct P or discharge that bound.

## Cross-program source map

All dependencies below are read at `8d7c8b8084caa6ff3cf6b254da449042617519f8` unless their own provenance says otherwise. Their source-candidate status is not promoted.

* [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean): blob `727272783e1502265da0cb4281bd5c793a924e69`; norm_term_le, summable comparison, whole-divisor perturbation.
* [WeightedConjugatePairingTopology.lean](../WeightedConjugatePairingTopology.lean): blob `3f2101e809d7d56a917a1283a3d3efe190cfad9b`; existing EvaluationModel and its linear envelope.
* Original WeilNegativeWitness.lean: blob `35111c956a8c68047199e1fb2aab9ca24848004d`; gaussian_tail_at_log_horizon and actual Admissible predicate.
* DirichletConductorCertificateReduction.lean: blob `11f193453711fe5cc2ad387ea2cc7cf73a8cda26`; the existing Program 7 conductor_bounds_of_pairing_budget is imported and called directly.
* Program 3 WeightedNegativeFrames.lean: blob `d2331e9b6019e1a9cafd4e5a493a932bf252cf79`; inspected comparison, not a new dependency. Its uniform-frame supplier is stronger than separately negative generators; this increment does not claim simultaneous localization of distinct pairs.
* Program 6 ZeroDivisorHermiteReturn.lean: blob `3db00cc8c884acfe5ce8db3d8d79ceaf05fcfac0`; inspected comparison. Its complete finite-divisor criterion does not bound an omitted infinite tail.
* Program 10 WeilFiniteEnclosureReturn.lean: blob `2cb02d8e884f5059e53105224ef2b0e828a9d35c`; inspected comparison. Sound finite enclosures and universal coverage remain separate suppliers.

Mathlib Community primary source: [mathlib4@d13f23b723b8a846827a245b89c10fc7d3f11612](https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612). Relevant declarations are Complex.norm_exp, Real.exp_le_exp, Real.exp_add, summable_of_ne_finset_zero, tsum_eq_sum, tsum_sub and tsum_of_norm_bounded. This use is of pinned library lemmas, not a claim to formalize a new external paper result.

## Hostile checks and unproved suppliers

The exact synthetic Lean fixture gaussian_can_grow_in_strip shows |g_1(i)|=exp(1)>1 at t=delta=0. A nonpositive Delta does not imply decay. A small tail alone does not control cutoff error because S_a can grow. A finite negative head does not identify an arithmetic divisor or establish full negativity without the complete budget. Distinct seed entries with coincident locations need not be Fourier evaluations; an eventual source adapter must establish the genuine divisor/evaluation identification and multiplicities.

Missing: actual arithmetic divisor and weighted moment; finite-head existence and interpolation; explicit baseline conditioning; Fourier inversion; smooth compactification with computed common error; actual dense dictionary/enclosures; complete conductor, gamma/parity, prime-power and pole-inclusive explicit formula; and global positivity. The nonprincipal conductor theorem is not applied to the principal zeta sector. Both pole orientations must be restored by any principal-source adapter. No actual off-critical arithmetic zero, certificate, finite numerical experiment or GRH proof is produced.

## Clean-checkout reproduction specification

Use the enclosing publication revision in a clean, independently authorized verification checkout. Preserve lean-toolchain (`leanprover/lean4:v4.34.1`) and lake-manifest.json (Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`); do not change root imports or pins. First compare the two SHA-256 hashes above. Then, with the canonical proof-execution policy and applicable skill available, the proposed commands are:

```sh
lake build GRWTSK.FunctionalAnalysis.GaussianConjugatePairing
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilGaussianLocalization
```

These commands have NOT been run. A successful future build would establish elaboration for its exact revision, not independent analytic review, fresh kernel replay or transitive axiom auditing. Those require separate source-bound receipts. The files contain no randomized computation, dataset or generated numerical certificate; no seed or numerical-runtime dependencies apply. A clean-checkout reproduction and independent reproduction are NOT_RUN. Exact Git source bytes are the maintained artifact, with publication observations in the coordinating issue; proof-execution logs and receipts remain in Noe, not this repository.
