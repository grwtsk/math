import Folder.CanonicalPath.FixedTensorBridge

/-!
# Folder.Theorem.CanonicalPath.FixedTensorBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports fixed tensor bridge contract facts.
Ontology: proof.fixed_tensor_bridge
Pivot role: fixed-point
Zero typology: trace-obstruction
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem fixed_tensor_controls_spectral_trace_if_supplied
    (B : Folder.CanonicalPath.FixedTensorBridge) :
    B.tensorTraceControlsSpectralTrace :=
  Folder.CanonicalPath.fixed_tensor_controls_spectral_trace_if_supplied B

theorem fixed_tensor_transport_invariant_if_supplied
    (B : Folder.CanonicalPath.FixedTensorBridge) :
    B.tensorInvariantUnderTransport :=
  Folder.CanonicalPath.fixed_tensor_transport_invariant_if_supplied B

end CanonicalPath
end Theorem
end Folder
