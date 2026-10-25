import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-14: complete adic pairs are Henselian.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct14_completePairHenselian
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT14Claim S :=
  registry.ct14

end FCRS.Theorems
