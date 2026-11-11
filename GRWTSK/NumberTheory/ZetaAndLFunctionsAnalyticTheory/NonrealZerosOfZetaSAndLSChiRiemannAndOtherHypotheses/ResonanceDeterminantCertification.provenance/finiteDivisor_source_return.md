# GRWTSK.ResonanceDeterminantReturn.finiteDivisor_source_return

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../ResonanceDeterminantCertification.lean`, SHA-256 `8cd5928826ff5dfb0542cb695c57735176a3e025779cb1335b3302f9924694e4`.
Statement: on an open return domain, an exact finite divisor for D whose weights equal analyticOrderAt(D) is the SAME finite divisor for F, with weights equal analyticOrderAt(F), when D=exp(h)F and both factors are locally analytic.
Proof: exp(h) never vanishes, so transfer support membership in both directions. Openness promotes pointwise domain equality to a germ identity at each support point. Apply Program 4 analytic-order transport and the supplied D-order equality. No deduplication, simplicity assumption or arbitrary multiplicity replacement occurs.
Dependencies at math `5f66eb82a40921253664f53602851091ccd01d94`: Program 6 `FiniteDivisor`/`IdentifiesZeros`, blob `231a71d3cb40cce0efe517acf5f102f33fcb13ed`; Program 4 `analyticOrder_eq_of_exp_return`, blob `b7f5b4f55734b90669c8ee7343b8d59cd70017b5`.
Consumer: source-faithful finite counting. No argument principle, interval certificate or critical-line reality follows automatically.
Standard conditional adapter, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full provenance and reproduction](../ResonanceDeterminantCertification.md).
