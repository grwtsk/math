# GRWTSK.FunctionalAnalysis.TwoSidedResidual.exists_inverse_bound_of_approximation

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: with norm(1)=1, norm(a-a0)<=epsilon, ql=norm(1-ra0)+norm(r)*epsilon<1 and qr=norm(1-a0*r)+epsilon*norm(r)<1, there is b with ab=ba=1 and norm(b)<=norm(r)/(1-ql).
Proof: both exact residuals are below one. Choose the left Neumann correction. Its norm bound has denominator 1-q_true; q_true<=ql<1 permits increasing the bound to the displayed quotient. The denominator positivity is explicit.
Dependencies: same-source residual/inverse lemmas and standard division monotonicity; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: quantitative nonnormal inverse certificates. No norm bound is inferred from eigenvalues or determinant values alone.
Standard Neumann estimate, novelty UNASSESSED. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
