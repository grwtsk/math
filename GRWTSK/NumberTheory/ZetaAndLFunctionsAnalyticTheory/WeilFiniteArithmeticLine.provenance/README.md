# Finite arithmetic line and source-selected horizontal error

Local mathematical direction and source attribution: **grwtsk contributors**.
Date: 2026-11-11 (America/Los_Angeles). Scope: RP-OC-02, not a migration of RP-OC-01--10 or Programs A--F.
Source status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**; no originality claim.

## Source and evidence pins

Initial inspection: `grwtsk/math/main` at `1135f59fbcee3bb4ac4d1c0a8b276cb0b739b572`.
The subsequent commit `53ae5532a7f973dcd1225972d58875c2330bd228` supplied the requested rectangle-kernel and finite-residue milestone before this increment was authored. This increment consumes it and does not duplicate it.
Authoring base: `53ae5532a7f973dcd1225972d58875c2330bd228`.
Coordination: math#1801, scope comment `6817660391`; prior milestone receipt `6817608861`.
Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source: [WeilFiniteArithmeticLine.lean](../WeilFiniteArithmeticLine.lean).
SHA-256: `3774884047db719f1105b3d83e2e93ef4385088a680914693f661f8b2f4d99fc`.

Elaboration, imported-dependency builds, fresh kernel replay, transitive axiom audit, printed-statement correspondence, independent analytical review, numerical certification and repository-wide checks: **NOT_RUN**.
Manual statement/proof inspection and source-text identity checks do not upgrade that evidence status. Imported candidates retain their own status.
The required canonical proof-automation skill returned 404 at Noe revision `e8309df2b998cc050e80ca1dffd4a78bb83d9448`; dependent proof execution was not launched. Source-only publication is separately authorized by CONTRIBUTING.md. No runtime, scheduler or cross-chat authority is inferred.

## Exact endpoint and unchanged objects

The endpoint remains `GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement chi`, whose definition quantifies every complex zero of the analytically continued `DirichletCharacter.LFunction chi` in the open strip and concludes real part 1/2. `modOne_criticalStripStatement` identifies conductor one with the literal zeta statement. Neither declaration is changed or proved here.
Use the existing `CriticalStripZero`, `heightWindow`, `zeroMultiplicity`, `Admissible`, `correlation` and `completedLFunction`. In particular, multiplicity is the analytic order, real and central strip zeros remain allowed, and the completion has NO additional conductor power.
The actual smooth compact test domain is not replaced by analytic compactly supported functions or arbitrary prescribed Fourier values.

The two new definitions describe an INTERMEDIATE FINITE LINE INTEGRAL. They are not a new Weil form, not a replacement `primitiveArithmeticValue`, and not a surrogate RH/GRH target.

## Complete written derivation

Fix a positive level N, a primitive character chi, T>0, and an entire complex weight W. Assume explicitly that completedLFunction chi is nonzero whenever |Im(s)|=T. Let D_chi be its logarithmic derivative and put s_t=2+i*t.
Set

    S_chi(T,W) = sum_{rho in heightWindow chi T} m_chi(rho) W(rho),
    P_N(W) = (W(0)+W(1)) if N=1, and 0 otherwise,
    g_chi(s) = -log(pi)/2 + digamma((s+a_chi)/2)/2,
    p_chi(s) = LSeries(n -> chi(n)*vonMangoldt(n), s).

Here p_chi is only used on Re(s)=2, inside its proved convergence half-plane. Its von Mangoldt coefficient retains all prime powers and their original character phases.
Define

    V_chi(W,t) = log(N)*W(1-s_t)
      + (W(s_t)+W(1-s_t))*g_chi(s_t)
      - W(s_t)*p_chi(s_t) - W(1-s_t)*p_(chi^-1)(s_t),
    J_chi(T,W) = (1/(2*pi))*integral_{-T}^T V_chi(W,t) dt.

Let H_chi(T,W) be the bottom-minus-top horizontal integral of W*D_chi, divided by 2*pi*i, with both horizontal edges traversed from real part -1 to 2 before taking the indicated difference.

### 1. Actual vertical regularity

The continued completion is analytic on the open complement of {0,1}: apply the maintained differentiability theorem at every point of that open set. Its nonvanishing on Re(s)=2 follows from the actual Euler-side L-function and gamma factor. Nonvanishing at 1-s_t follows from the primitive dual functional equation and the already proved nonzero root number. Consequently W*D_chi is continuous on the entire right line and on its reflected left line. The two finite interval integrals are genuinely integrable, including t=0.

The maintained pointwise theorem `weighted_completed_logDeriv_pair` gives

    V_chi(W,t) = W(s_t) D_chi(s_t) - W(1-s_t) D_chi(1-s_t).

Thus V itself is continuous and integrable on every finite interval. This argument does not require inventing regularity of individual gamma factors on the left line, where canceled trivial-zero/gamma singularities would be a hazard.

### 2. Signed reflection of the left edge

For F=W*D_chi the substitution t -> -t gives

    integral_{-T}^T F(-1+i*t) dt
      = integral_{-T}^T F(1-(2+i*t)) dt.

The negative substitution velocity is canceled by the exchanged endpoints. The original contour orientation still contributes MINUS the left edge. Therefore

    (i*right_integral - i*left_integral)/(2*pi*i)
      = integral_{-T}^T [F(s_t)-F(1-s_t)] dt/(2*pi).

This proves the actual integral comparison, not a new supplied interface. In Lean it uses the pinned `intervalIntegral.integral_comp_neg` and `integral_sub`, with integrability supplied in step 1.

### 3. Exact source return at finite height

The existing `weil_rectangle_residue_identity` gives the full four-edge integral divided by 2*pi*i as S_chi(T,W)-P_N(W). Substituting step 2 and then the pointwise arithmetic identity proves

    S_chi(T,W) - P_N(W) = H_chi(T,W) + J_chi(T,W).             (F)

The entire conductor term is log(N)*W(1-s_t). The two gamma parities agree under inverse character, and the inverse-character prime series is retained. There is no extra N^(s/2), half-conductor correction, assumed winding-number comparison, or discarded imaginary part.

Equation (F) is `weil_finite_right_arithmetic_identity`. It is valid for every entire W and every positive, source-avoiding height, not only a rational pole inventory or a centered test.

### 4. The original tests and an explicit error supplier

Take exactly

    C_f(r)=integral conj(f(t))*f(t+r) dt,
    W_f(s)=integral C_f(r)*exp((s-1/2)*r) dr.

For admissible f supported in [-A,A], A>=0, the maintained contour-weight theorem supplies entire regularity. The maintained theorem `correlation_contour_weight_eq_reflected_product` identifies W_f(rho) with

    fhat(z_rho) * conj(fhat(conj(z_rho))),   z_rho=(rho-1/2)/i.

No off-line absolute-square substitution is made. With these weights H_chi is literally the existing `orientedHorizontalBoundary`. Define E_chi,f(T)=S_chi(T,W_f)-P_N(W_f)-J_chi(T,W_f). Equation (F) proves E=H exactly.

Now consume `exists_primitive_horizontal_edges_vanish`, not an independently selected sequence. For each primitive chi it supplies T_n before ALL f,A, with n+2<T_n<n+3 and source nonvanishing on BOTH complete horizontal lines. Hence the generic height hypothesis in (F) is discharged for every n, including its finitely many initial values.
Put

    C_chi = horizontalLogDerivativeConstant chi + 1 + gammaRLogDerivativeConstant,
    K_chi,f,A = C_chi * derivativeL1Cost(f,3)^2 * exp(3*A/2)^2.

The same source supplier gives the quantitative result

    ||E_chi,f(T_n)|| <= (3/pi)*K_chi,f,A/(1+T_n)^2,
    E_chi,f(T_n) -> 0.

This is `exists_primitive_finite_arithmetic_error_vanishes`. The constant depends on the character, test and support bound exactly as displayed. The sequence does not depend on f,A. The theorem is fixed-test convergence; it does not supply uniform bounds for a varying interpolant.

### 5. Literal zeta specialization

At N=1 the primitive character is 1, the parity is zero, log(N)=0, and both character values are one, including the one-element coefficient ring convention used by the original source. Then

    J_zeta(T,W) = (1/(2*pi))*integral_{-T}^T
      (W(s_t)+W(1-s_t)) *
      [-log(pi)/2 + digamma(s_t/2)/2 - LSeries(vonMangoldt,s_t)] dt,
    S_zeta(T,W_f) - W_f(0) - W_f(1) - J_zeta(T,W_f)
      = orientedHorizontalBoundary completedRiemannZeta f T.

This is the literal conclusion of `completedZeta_finite_arithmetic_residual`. Both poles have negative logarithmic-derivative residues. Moving them to the other side of a later explicit formula would make both positive; no pole-neutral restriction is used here.

## Source convention and the first outstanding premise

The already maintained `twistedPrime_inverse_eq_plus_phase` and `primitiveArithmeticValue_dual_orientation` remain the adapters for the canonical arithmetic form. The chi zero side has the plus coefficient chi(n)*C_f(log n); canonical twistedPrime uses conj(chi(n))*C_f(log n), so the intended canonical form is indexed by chi inverse. Equation (F) is not yet that infinite arithmetic identity.

Next in this consumed chain: prove convergence/evaluation of J_chi(T_n,W_f), with both vertical tails, prime-power Fourier inversion, the complete compensated gamma integral and the full zero-sum convergence justified. E_n -> 0 does NOT imply that S_n or J_n converges: the pair S_n=J_n=n is a simple logical counterexample to that inference.
At finite T the two LSeries still contain every prime power. Compact support of C_f does not permit a sharp finite prime cutoff before Fourier inversion and the infinite-height limit. No such interchange or cutoff is performed by this module.

After the exact infinite source identity, the separate arithmetic nonnegativity theorem for every primitive character, support window and admissible test is still required. Neither `hdetect` nor `hpositive` in `criticalStripStatement_of_detection_and_nonnegativity` is discharged by this finite line theorem. The joint interpolation-cost/tail margin and all-scale lower bound also remain separate.

## Prior-art/declaration map and hostile review

This is a classical assembly of the previously maintained exact contour and functional-equation results. No new paper is directly formalized in this increment. The exact source-local records of the imported declarations remain authoritative for their individual paper lineage; this file does not claim to have independently checked those papers or their Lean dependencies.
Primary formal sources inspected at the pins above: WeilRectangleResidues.lean; DirichletWeilIntegrand.lean, especially weighted_completed_logDeriv_pair and the inverse-character adapters; WeilHorizontalEdges.lean; WeilContourWeight.lean; WeilGammaData.lean; DirichletZeroMultiplicity.lean; WeilNegativeWitness.lean, especially its actual target and conditional sign consumer; Mathlib MeasureTheory/Integral/IntervalIntegral/Basic.lean (negation substitution and linearity).

Individual public-definition/theorem records:

- [WFAL-v1-D1](weilRightArithmeticIntegrand.md): exact arithmetic integrand and phase convention.
- [WFAL-v1-D2](weilRightArithmeticIntegral.md): finite dt/(2*pi) normalization.
- [WFAL-v1-01](intervalIntegrable_weilRightArithmeticIntegrand.md): actual finite integrability.
- [WFAL-v1-02](weil_finite_right_arithmetic_identity.md): generic pole-inclusive source return.
- [WFAL-v1-03](weil_test_right_arithmetic_residual.md): exact error for unchanged tests.
- [WFAL-v1-04](exists_primitive_finite_arithmetic_error_vanishes.md): source-selected quantitative error.
- [WFAL-v1-05](completedZeta_finite_arithmetic_residual.md): literal pole-inclusive zeta.

Manual hostile checks: the minus left orientation survives t-reflection; vertical normalization loses exactly one factor i; conductor is log(N), not log(N)/2; parity is unchanged under inverse but complex phases are not discarded; both poles and original multiplicities remain; no central/real-zero exclusion, finite-to-infinite inference, prime cutoff or positivity is used. These are author checks, not independent review or kernel evidence.

No root import, dependency pin, existing mathematical source, policy, workflow, research registry, historical record or other program is modified. The new module is deliberately not imported into an umbrella without verification. Publication receipt and exact checks are recorded in math#1801 after branch readback.
