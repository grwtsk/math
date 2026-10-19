import Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism
import Folder.DerivedSheaf.RodgersTaoEulerTransport

/-!
# Folder.CanonicalPath.AnalyticDerivedTransport

Radiation role: research-boundary
BinaryMatrix spine: This module stages analytic-to-derived transport, not BinaryMatrix heat.
Ontology: canonical.analytic_derived_transport
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

inductive TransportBridgeLevel where
  | analyticFlow
  | determinantLineInvariant
  | fredholmIndexInvariant
  | chainMap
  | chainHomotopyEquivalence
  | quasiIsomorphism
  | derivedEquivalence
deriving DecidableEq, Repr

/--
A staged model of the missing analytic-to-derived bridge.

The Rodgers-Tao analytic flow is not treated as a quasi-isomorphism unless the
chain-level bridge fields are supplied.
-/
structure AnalyticDerivedTransportModel where
  level : TransportBridgeLevel
  sourceLabel : String
  analyticFlowSupplied : Prop
  chainMapConstructed : Prop
  quasiIsoConstructed : Prop
  quasiIsoConstructed_certified : quasiIsoConstructed
  eulerInvariant : Prop
  eulerInvariant_certified : eulerInvariant

theorem transport_model_euler_invariant_if_supplied
    (T : AnalyticDerivedTransportModel) :
    T.eulerInvariant :=
  T.eulerInvariant_certified

theorem transport_model_quasi_iso_if_supplied
    (T : AnalyticDerivedTransportModel) :
    T.quasiIsoConstructed :=
  T.quasiIsoConstructed_certified

end CanonicalPath
end Folder
