# GRWTSK.ResonanceDeterminantReturn.source_ne_zero_of_operator_residual

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../ResonanceDeterminantCertification.lean`, SHA-256 `8cd5928826ff5dfb0542cb695c57735176a3e025779cb1335b3302f9924694e4`.
Statement: exact return at s, both residual norms for a=1-K below one, and the explicit implication IsUnit(1-K)->D(s)!=0 imply F(s)!=0.
Proof: the new normed-ring theorem constructs IsUnit(1-K). Apply the explicit determinant implication. A zero of F would transfer to D and contradict its nonvanishing.
Dependencies: new `isUnit_of_twoSidedResidual`; existing `zero_iff_of_exactReturnOn`, math base `5f66eb82a40921253664f53602851091ccd01d94`, blob `b7f5b4f55734b90669c8ee7343b8d59cd70017b5`.
Consumer: arithmetic zero exclusion after genuine operator/determinant identification. D is not declared a determinant by a label; that theorem and actual residual bounds remain open.
Standard conditional adapter, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full provenance and reproduction](../ResonanceDeterminantCertification.md).
