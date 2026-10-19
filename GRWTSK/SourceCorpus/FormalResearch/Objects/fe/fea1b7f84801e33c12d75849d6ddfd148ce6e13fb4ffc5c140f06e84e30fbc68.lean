import BitMatrix
import Mathematics.Export.Project
import URSMContracts

/-!
# Project relation surface

The bridge accepts explicit finite relations.  It does not infer exact bridges
from similarity or convert missing conflict analysis into a negative bit.
-/

namespace URSM.Bridge

open URSM.Contracts

structure CompositeRelations (n : Nat) where
  imports : BitMatrix n n
  transport : BitMatrix n n
  exactBridge : BitMatrix n n
  conflict : BitMatrix n n
  propertyNaturality : BitMatrix n n
  exactBridgeSymmetric :
    ∀ i j, exactBridge i j = exactBridge j i
  conflictSymmetric :
    ∀ i j, conflict i j = conflict j i
  exactBridgeImpliesTransport :
    ∀ i j, exactBridge i j = true →
      transport i j = true ∧ transport j i = true

def formalPlane
    (descriptor : PlaneDescriptor)
    (matrix : BitMatrix n n)
    (certificateRoot : String) :
    FormalPlane n (fun i j ↦ matrix i j = true) :=
  FormalPlane.ofBits descriptor matrix certificateRoot

end URSM.Bridge
