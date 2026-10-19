import Mathematics.GammaBridge.Approximation
import Mathematics.Authority.Evidence

/-! # Fixed bridge predicates -/

namespace Mathematics.GammaBridge

def EndpointsPreserved (bridge : Exact State) : Prop :=
  bridge.path 0 = bridge.left ∧ bridge.path 1 = bridge.right

def endpointCertificate (bridge : Exact State) :
    Authority.FixedPredicateCertificate (Exact State) EndpointsPreserved where
  payload := bridge
  proof := ⟨bridge.left_endpoint, bridge.right_endpoint⟩

end Mathematics.GammaBridge
