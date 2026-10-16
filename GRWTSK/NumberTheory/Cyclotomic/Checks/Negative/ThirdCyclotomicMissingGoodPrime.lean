/- The accepted positive module proves the actual ramified maximal quotient root equals1
and is not primitive3; maximality cannot replace the good-prime exclusion. -/
import GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicReduction
namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction.Checks
noncomputable section

-- Intended rejection: actual maximality is true but does not prove lambda is outside this ideal.
example : IsPrimitiveRoot (Ideal.Quotient.mk ramifiedIdeal omega) 3 :=
  omega_reduced_primitive ramifiedIdeal ramifiedIdeal_isMaximal

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction.Checks
