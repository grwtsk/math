# Genuine cyclic character phase and finite Gm diffusion do not commute

**Mathematical consumer:** grwtsk/math issues #1850 (RH-independent prime source), #1828 (analytic supplier), #1819 (signed prime observations). **Source candidate:** [PrimeJacobiGmPhaseDiffusionCommutator.lean](PrimeJacobiGmPhaseDiffusionCommutator.lean), root Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. It uses the literal original finite Dirichlet difference and diffusion from [PrimeJacobiGmDiscreteDiffusion.lean](PrimeJacobiGmDiscreteDiffusion.lean) (blob 7651aad5d445bf58d2a7d226b04be29a5c77a1d8). The original native cyclic-phase proof is maintained separately in [CyclicPhase.md](../../../../docs/adaptations/environments/alpoge-gm-native/CyclicPhase.md), in the incompatible original Lean 4.33.1 environment. No Alpöge final RH theorem is imported.

## Exact source ordering theorem

Let L_N denote the finite Dirichlet second-difference matrix, with diagonal -2 and immediate-neighbor entries +1, and set D_t=I+tL_N. Let M_c multiply by the actual arithmetic phase c=(c_1,...,c_N), a diagonal matrix. For every i,j,

\[
\boxed{(D_tM_c-M_cD_t)_{ij}
=t(L_N)_{ij}(c_j-c_i).}\tag{A}
\]

Proof: (D_tM_c)_(i,j)=D_(i,j)c_j and (M_cD_t)_(i,j)=c_iD_(i,j). The identity part of D_t commutes with M_c, leaving tL_N times the difference c_j-c_i. Thus only adjacent source edges are affected, by t(c_j-c_i). This exact finite matrix algebra does not assume RH or an actual-zeta spectral theorem.

The new Lean proof candidates phase_diffusion_commutator_entry, dirichletDifference_edge, phase_diffusion_commutator_edge and phase_diffusion_source_order target the original root matrices. They remain uncompiled and require a fresh kernel check.

## Uniform all-size cyclic-source bound

For every genuine original Level.ofSub or Level.cyc, including ramified inputs, the original phase satisfies 2/3<c_k<4/3 (see source proof in CyclicPhase.md). Therefore for adjacent vertices |c_j-c_i|<2/3. Each row has at most two adjacent neighbors, yielding

\[
\boxed{\|D_tM_c-M_cD_t\|_{\infty\to\infty}
\le 4t/3.}\tag{B}
\]

For 0≤t≤1/4, D_t is entrywise nonnegative with row sums ≤1, hence \(\|D_t\|_{\infty\to\infty}\le1\). The exact telescoping identity

\[
[D_t^m,M_c]=\sum_{r=0}^{m-1}D_t^r[D_t,M_c]D_t^{m-1-r}
\]

and norm submultiplicativity give

\[
\boxed{\|D_t^mM_c-M_cD_t^m\|_{\infty\to\infty}
\le4mt/3.}\tag{C}
\]

At neighboring unit residues with the exact binary cyclic phase, the difference is at most o/(3o+1)<1/3, improving the local row budget to 2t/3. Near ramified indices the binary formula is false, so only the global source bound (B) is unconditional.

## Source consequence and boundary obstruction

For v_k=Lambda(k)/k, the correct signed arithmetic source is M_cv, and its diffused form is D_t^mM_cv. Swapping the operations to M_cD_t^mv introduces the exact error (C), which is generally nonzero. If the original signed prime coefficients are reconstructed from a finite sequence of smoothed Gm values, the separate exterior boundary vector proved in PrimeJacobiGmDiscreteDiffusion must ALSO be retained: the commutator estimate does not repair a missing Dirichlet boundary.

This is a source-faithful finite diffusion theorem, not an infinite Weil/GNS heat operator, full signed Weil positivity, an xi spectral determinant, or a proof of RH.

## Exact test and formal status

The independent exact-rational [checker](../../../scripts/verify_cyclic_phase_diffusion_commutator.py) passed 96 matrix controls for genuine arithmetic phase groups modulo 4,5,15, dimensions N=3,5,8,13, t=1/16 or 1/8 and depths 0,1,3,5. All matrix commutators, telescoping, forward contraction and inverse-order error budgets were checked exactly. The wrong order produced a nonzero witness in 72 of the 96 cases (all positive-depth cases). This finite evidence does not kernel-verify Lean or supply any analytic EAtH/CoreAtH estimate.

The original-v4.33.1 cyclic phase → root-v4.34.1 numeric phase compatibility is separately required; incompatible Mathlib sources are not imported together. Root Lean elaboration, transitive axiom audit and trusted checker **NOT_RUN**. The finite matrix commutator mathematics is classical; global novelty is not claimed. The remaining hard analytic supplier is the true weighted Mertens power rate in [CenteredSlope.md](../../../../docs/adaptations/environments/alpoge-gm-native/CenteredSlope.md).
