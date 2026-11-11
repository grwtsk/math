# GRWTSK.ResonanceDeterminantReturn.source_ne_zero_of_operator_approximation

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../ResonanceDeterminantCertification.lean`, SHA-256 `8cd5928826ff5dfb0542cb695c57735176a3e025779cb1335b3302f9924694e4`.
Statement: exact return at s, norm((1-K)-a0)<=epsilon, both complete residual budgets below one, and IsUnit(1-K)->D(s)!=0 imply F(s)!=0.
Proof: transport both residual bounds to the exact operator via `isUnit_of_approximation`, apply the determinant nonvanishing premise and contradict zero transfer.
Dependencies: new `isUnit_of_approximation`; existing Program 4 zero transfer at math `5f66eb82a40921253664f53602851091ccd01d94`, blob `b7f5b4f55734b90669c8ee7343b8d59cd70017b5`.
Consumer: exact zero exclusion from rigorously bounded approximations. Finite compression alone does not establish the norm error on the full space. No contour/no-pollution theorem is claimed.
Standard conditional adapter, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full provenance and reproduction](../ResonanceDeterminantCertification.md).
