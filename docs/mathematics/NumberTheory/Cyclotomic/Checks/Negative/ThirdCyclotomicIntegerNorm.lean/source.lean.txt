/- The accepted positive module proves norm_O((2))=4 and norm_Z((2))=2,
and their genuine inequality; the integer value cannot be assigned to the O ideal. -/
import GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicIdeals
namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals.Checks
noncomputable section

-- Intended rejection: the actual degree-two ideal norm theorem proves 4, not the integer value 2.
example : Ideal.absNorm (Ideal.span ({(2:O)} : Set O))=2 :=
  principal_two_absNorm

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals.Checks
