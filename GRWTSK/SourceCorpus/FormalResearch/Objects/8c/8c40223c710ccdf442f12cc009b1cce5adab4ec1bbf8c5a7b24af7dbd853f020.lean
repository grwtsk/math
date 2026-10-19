import FCRS.Transport.Bertrand

namespace FCRS.Transport.Theorems

/-- Full strict-endpoint Bertrand theorem for every natural `n > 1`. -/
theorem tt01_bertrand :
    ∀ n : Nat, 1 < n →
      ∃ q : Nat, Nat.Prime q ∧ n < q ∧ q < 2 * n :=
  bertrandProof

end FCRS.Transport.Theorems
