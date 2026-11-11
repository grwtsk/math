# GRWTSK.ResonanceDeterminantReturn.logDeriv_exp_mul

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../ResonanceDeterminantCertification.lean`, SHA-256 `8cd5928826ff5dfb0542cb695c57735176a3e025779cb1335b3302f9924694e4`.
Statement: differentiable h,F at s and F(s)!=0 imply logDeriv(exp(h)F)(s)=h'(s)+logDeriv(F)(s).
Proof: use chain and product rules, divide by nonzero exp(h(s))*F(s), and cancel in the complex field. No logarithm branch is chosen.
Primary source: Chris Birkbeck, Mathlib Calculus/LogDeriv.lean (`logDeriv_apply`); Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, ExpDeriv.lean (`HasDerivAt.cexp`), pin `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: the regularization correction in normalized source return. This is not an arithmetic trace identity.
Standard calculus consequence, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full provenance and reproduction](../ResonanceDeterminantCertification.md).
