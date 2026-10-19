import FCRS.Transport.Theorem

universe uInput uWitness

namespace FCRS.Transport.Theorems

/-- Transfer a claim only through the exact proved refinement adapter. -/
theorem tt03_claimOfRefinement
    {Input : Type uInput} {Witness : Type uWitness}
    {refined broader : IntervalProfile Input Witness}
    (adapter : ProfileRefines refined broader)
    (claim : IntervalClaim refined) :
    IntervalClaim broader :=
  adapter.transportClaim claim

end FCRS.Transport.Theorems
