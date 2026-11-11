# GRWTSK.ResonanceDeterminantReturn.exactReturnOn_univ_of_logDeriv

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../ResonanceDeterminantCertification.lean`, SHA-256 `8cd5928826ff5dfb0542cb695c57735176a3e025779cb1335b3302f9924694e4`.
Statement: entire D,h,F; a nonempty open preconnected comparison region where D and F are nonzero; one anchor D(a)=exp(h(a))F(a); and logDeriv(D)=h'+logDeriv(F) there imply ExactReturnOn(univ,D,h,F).
Proof: G=exp(h)F is entire and nonzero on the comparison region. The preceding calculus lemma equates its logarithmic derivative to D's. Program 8 anchored rigidity identifies D=G there, and its identity-principle theorem extends equality to the plane. Zeros outside the comparison region remain allowed.
Primary dependency: grwtsk contributors, Program 8 `eq_of_logDeriv_eqOn_of_anchor`, math `5f66eb82a40921253664f53602851091ccd01d94`, blob `27d9465ecbe0fe2aa155828195227603332de3ae`.
Consumer: normalized scalar return with regularization retained. The actual arithmetic trace equation, entire continuation and anchor remain premises. Constant multiples show why the anchor is needed.
Standard conditional adapter, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full provenance and reproduction](../ResonanceDeterminantCertification.md).
