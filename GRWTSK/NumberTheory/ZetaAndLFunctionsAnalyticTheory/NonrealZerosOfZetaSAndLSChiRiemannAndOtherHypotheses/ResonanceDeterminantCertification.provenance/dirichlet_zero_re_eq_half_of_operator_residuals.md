# GRWTSK.ResonanceDeterminantReturn.dirichlet_zero_re_eq_half_of_operator_residuals

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../ResonanceDeterminantCertification.lean`, SHA-256 `8cd5928826ff5dfb0542cb695c57735176a3e025779cb1335b3302f9924694e4`.
Statement: for any character modulo nonzero N, complete open-strip LFunction-zero correspondence, exact return, explicit determinant nonvanishing from units and both off-critical residual families imply Re(s)=1/2 at each open-strip zero.
Proof: construct off-critical determinant nonvanishing pointwise from both residuals and invoke the existing per-character return. The function is the analytically continued LFunction, not its divergent series.
Primary dependency: grwtsk contributors, `dirichlet_zero_re_eq_half_of_return`, math `5f66eb82a40921253664f53602851091ccd01d94`, blob `b7f5b4f55734b90669c8ee7343b8d59cd70017b5`; Mathlib DirichletContinuation at `d13f23b723b8a846827a245b89c10fc7d3f11612`, David Loeffler and Michael Stoll.
Consumer: a per-character conditional arithmetic arrow. It is not a new GRH definition, a full primitive-family target adapter or a supplier of the analytic premises. Principal/boundary cases are not silently discarded from a stronger target.
Standard conditional adapter, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full provenance and reproduction](../ResonanceDeterminantCertification.md).
