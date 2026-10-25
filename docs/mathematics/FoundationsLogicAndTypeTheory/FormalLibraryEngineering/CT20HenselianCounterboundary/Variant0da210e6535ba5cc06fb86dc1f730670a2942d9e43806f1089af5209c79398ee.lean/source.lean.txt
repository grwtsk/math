import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-20: the characteristic-zero/mixed-characteristic obstruction to unrestricted Henselian essential surjectivity.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct20_henselianCounterboundary
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT20Claim S :=
  registry.ct20

end FCRS.Theorems
