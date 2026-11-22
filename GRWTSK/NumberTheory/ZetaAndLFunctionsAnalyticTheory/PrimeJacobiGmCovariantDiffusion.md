# Positive cyclic source-phase covariant diffusion

**Consumer:** grwtsk/math #1850 (RH-independent original cyclic character arithmetic), #1819 (signed prime-power source), #1828 (analytic proof suppliers).  
**Lean source candidate:** [PrimeJacobiGmCovariantDiffusion.lean](PrimeJacobiGmCovariantDiffusion.lean), root Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.  
**Original native source:** tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f in the isolated original Lean v4.33.1 build. The actual source cyclic phase \(c_k>2/3\) is derived in [CyclicPhase.md](../../../../docs/adaptations/environments/alpoge-gm-native/CyclicPhase.md). Its isolated Lean bridge remains a separate NOT_RUN proof obligation. The literal root finite Dirichlet heat and boundary correction are in [PrimeJacobiGmDiscreteDiffusion.lean](PrimeJacobiGmDiscreteDiffusion.lean).

## Exact source-preserving change of variables

For a finite arithmetic source vector \(v=(\Lambda(k)/k)\), let \(c_k\) denote its original positive cyclic character phase, and set
\[
M_c=\mathrm{diag}(c_1,\ldots,c_N),\quad
L_N=\mathrm{DirichletSecondDifference}_N,\quad
D_t=I+tL_N.
\]
For genuine nonexceptional original Level.ofSub/Level.cyc, the source gives \(2/3<c_k<4/3\) at **every** integer index, including ramified positions, so \(M_c\) is invertible with
\(\|M_c\|_\infty<4/3,\ \|M_c^{-1}\|_\infty<3/2\).

Define the **phase-covariant diffusion** by
\[
\boxed{T_{t,c}:=M_c^{-1}D_tM_c.}\tag{C1}
\]
Then
\[
\boxed{M_cT_{t,c}=D_tM_c,\qquad
M_cT_{t,c}^m=D_t^mM_c,\quad m\in\mathbb N.}\tag{C2}
\]
The proof is simply positive diagonal invertibility and repeated matrix association. This is an **exact** alternative to the wrong-order operator \(M_cD_t\), whose commutator is generally nonzero (see [PrimeJacobiGmPhaseDiffusionCommutator.md](PrimeJacobiGmPhaseDiffusionCommutator.md)). A source state \(v\) can therefore be evolved in unweighted prime coordinates via \(T_{t,c}^m v\), then multiplied by the original phase \(M_c\), producing precisely the correct diffused signed arithmetic readout \(D_t^mM_cv\).

The matrix entries are
\[
(T_{t,c})_{ij}=\frac{c_j}{c_i}(D_t)_{ij}.
\]
For \(t\in[0,1/4]\), \(D_t\) is nonnegative, so \(T_{t,c}\) is nonnegative. The correct *weighted* norm is
\[
\|v\|_{\infty,c}:=\|M_cv\|_\infty.
\]
Since the source Dirichlet heat has \(\|D_t\|_{\infty\to\infty}\le1\),
\[
\boxed{\|T_{t,c}^m v\|_{\infty,c}
=\|D_t^mM_cv\|_\infty
\le\|v\|_{\infty,c}.}\tag{C3}
\]
The original phase bounds also imply
\(\|T_{t,c}^m\|_{\infty\to\infty}<2\). This is stable at **all finite N and m** for \(0\le t\le1/4\); it does not depend on any zeta-zero or RH information.

For \(0<t<1/4\), the original conservative Neumann bound on inverse heat yields
\[
\boxed{\|T_{t,c}^{-m}\|_{\infty,c}
\le(1-4t)^{-m}.}\tag{C4}
\]
No unproved finite diffusion inverses have been introduced.

## Weighted self-adjointness, not Hilbert–Pólya

The original \(D_t\) is a real symmetric matrix. The covariant operator is not generally symmetric in the ordinary Euclidean inner product, but it is **self-adjoint** in the positive weighted Hilbert space with inner product
\[
\langle v,w\rangle_c=\sum_{k=1}^N c_k^2v_kw_k,
\qquad G_c=M_c^2.
\]
Indeed
\[
\boxed{G_cT_{t,c}=T_{t,c}^{\mathsf T}G_c.}\tag{C5}
\]
Both sides equal \(M_cD_tM_c\). The symmetry is source-specific and unconditional under \(c_k>0\). The spectrum of \(T_{t,c}\) is **exactly the same as that of the original finite Dirichlet heat** by similarity, and is therefore **not asserted** to consist of actual zeta-zero ordinates. This construction proves no RH/GRH, Weil positivity, or xi determinant identity.

The proposed Lean theorem bodies in PrimeJacobiGmCovariantDiffusion.lean cover multiplier/inverse multiplier identities, C2 for one and arbitrary m, Dirichlet/heat transposition, and C5. They are source proof candidates, **NOT_RUN** for elaboration, transitive axiom audit or fresh kernel replay. The bounds C3–C4 have full elementary mathematical proofs here but not yet their own checked Lean declarations.

## Boundary and exceptional-character restrictions

If the signed source is obtained from a finite sample of actual Gm rather than directly from true prime powers, the finite Dirichlet second-difference still carries the original exterior source boundary vector; phase conjugation DOES NOT remove that vector. An exact transformed boundary is \(M_c^{-1}B\), preserving all original edge samples.

The construction fails to define \(M_c^{-1}\) if an exceptional Level has phase zero. An original allowed exceptional real odd quadratic character with source weight one has \(c(3)=0\). Restricting the proof to original Level.ofSub and Level.cyc (or proving a separate strictly positive phase lower bound) is necessary.

## Exact independent verification

The checked [Python source](../../../scripts/verify_cyclic_covariant_diffusion.py) is an exact-Fraction test of 120 cases: actual primitive-factor cyclic groups modulo 4,5,15; dimensions N=2,3,5,8,13; t=1/16 or 1/8; diffusion depths m=0,1,3,5. All original phase inverses, exact intertwining at every depth, weighted Gram symmetry, nonnegative transformed heat, weighted forward contraction, conservative inverse bounds, and ordinary norm ≤2 passed.

It does not check the new Lean scripts or claim an infinite self-adjoint zeta operator. The finite similarity/weighted-inner-product construction is classical linear algebra. Global mathematical novelty is not asserted; the original cyclic prime-source/heat implementation and error boundary are maintained project results.

**Next analytic supplier:** the source-exact centered weighted Mertens rate of [CenteredSlope.md](../../../../docs/adaptations/environments/alpoge-gm-native/CenteredSlope.md) remains **OPEN**. Neither a bounded heat commutator nor exact covariant diffusion gives the missing all-integer power saving. Original EAtH/CoreAtH and eventual native Gm are still separate mathematical obligations.
