# Cofinal subexponential Weil budgets: source and proof disposition

**Attribution:** grwtsk contributors. **Research date:** 2026-11-12 (America/Los_Angeles).
**Maintained source:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilCofinalSubexponentialBridge.lean.

## Exact consumer and result

This is a **conditional source-level Lean formalization**, not RH or GRH. Its theorem statements are:

1. eventually_budget_lt_exponential: for cofinal T_j and nonnegative B_j with eventual log(1+B_j) ≤ ε*T_j for every ε>0, prove eventually B_j < c exp(a T_j) for every a,c>0.
2. no_expanding_negative_sine_witness: the preceding budget cannot coexist with exponentially negative *normalized* vectors in the same native sine-matrix family under a valid uniform all-vector lower bound.
3. rh_of_cofinal_odd_sine_budget: use the EXACT zetaSineMatrix and existing rh_iff_nonzero_rightStrip to return the conditional contradiction to Mathlib's unchanged RiemannHypothesis.
4. primitive_critical_line_of_cofinal_paired_sine_budget: use the EXACT primitivePairSineMatrix with its actual character, primitive and nonprincipal hypotheses, and critical_line_iff_nonzero_offStrip to return to the unchanged DirichletCriticalLine χ, covering both off-line halves.
5. grh_of_primitive_cofinal_sine_budgets: use the existing dirichletGRH_iff_primitive and explicitly distinguish the principal primitive source from the nonprincipal conjugate-pair source. Its conclusion is the original project DirichletGRH.

The associated type abbreviations and properties LogSublinearUpperBudget, SineMatrixFamily, SineMatrixLowerBound, and ExpandingNegativeSineWitness are auxiliary interfaces, not accepted proofs or new arithmetic targets.

## Analytical argument and missing suppliers

For every a,c>0, choose ε=a/2 and a sufficiently large T_j that (a T_j)/2 > |log c|. Then log(1+B_j) < log c + a T_j, so 1+B_j < c exp(a T_j), and hence B_j < c exp(a T_j). If the original real quadratic form of every native sine matrix obeys quadratic(A_j,x) ≥ -B_j ||x||², while a hypothetical off-line zero supplies unit vectors with quadratic(A_j,x) ≤ -c exp(a T_j) at all sufficiently large stages, these two inequalities contradict one another.

**These source-specific premises are NOT proved:**

- All-vector, all-large-window lower bounds for the literal zeta/character Weil sine matrices with subexponential budget, including every active prime power, the full gamma kernel and, for zeta, both signed pole orientations. Local positive certificates or finite checks do not discharge this premise.
- A complete analytical off-line-zero interpolation, Fourier inversion, compactification, finite-sine projection and certified source-matrix return producing the required normalized negative vectors on every sufficiently large cofinal support. This has a written project proof route, not a completed Lean proof.
- The principal primitive character comparison to the original zeta source in the GRH assembly; it is retained as a separate named supplier. Imprimitive reduction itself uses the repository's actual previously maintained theorem.

The scalar Lean proof does not assume RH. All root claims are **conditional on the displayed unproved arithmetic/analytic suppliers**. No original root definition is shadowed. The matrix quadratic value is the existing QuadraticCertificates.quadratic; it is NOT an arbitrary graph or spectral substitute.

## Primary source and version comparison

- Supplied research: *Odd Weil lower growth, amplification of a hypothetical off-line zero, and the missing RH estimate*, research date 2026-11-05, in Noeaaeue 07-GLOBAL-RH-GRH-ROUTES.md, source unit src.lower-growth, Sections 2--7. Its subexponential premise is not constructed.
- Current repository: WeilOddSineProjection.lean, WeilOddRootProjection.lean, CriticalStripCores.lean, PrimitiveDirichletCriticalLine.lean, QuadraticCertificateCore.lean. Current parent revision must be recorded in the source-publication receipt.
- Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1, equations (3.19)--(3.20): literal Weil source. Alain Connes, *The Riemann Hypothesis: Past, Present and a Letter Through Time*, arXiv:2602.04022v1, §4.1. Yoshida's odd test, as reported by Masatoshi Suzuki, arXiv:2606.09096v3, §1.1.
- Existing related code CofinalWindowLowerBound.lean proves the different fixed-test vanishing-defect closure lemma. The new exponent-growth contradiction does not establish the missing arithmetic budget or identify a Weil ground state.

## Assurance and reproduction

**Formal evidence:** MANUAL_LEAN_SOURCE_CANDIDATE; LEAN_ELABORATION_NOT_RUN; NATIVE_DEPENDENCY_BUILD_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN. 
**Arithmetic:** UNIVERSAL_LOWER_SIGN_NOT_PROVED; OFFLINE_TO_NATIVE_SINE_WITNESS_NOT_FORMALIZED; ROOT_RESULTS_NOT_PROVED. 
**Static diagnostics:** delimiter/comment balance and no local sorry/admit/axiom placeholders; these are not Lean parser or theorem checks. 
**Novelty:** UNASSESSED. Attribution: grwtsk contributors.

Canonical Noe proof-automation instructions were not available in verified local skill paths and returned GitHub HTTP 404 at grwtsk/noeaaeue main 7a904d11fb4d9495afd8bec89f108eeb1d686f10. No dependent proof execution, messaging, scheduler, browser or runtime action occurred. Ordinary authorized GitHub source publication, if read back, is not mathematical or compiler acceptance. 
