import Folder.CanonicalPath.HeatflowPivot

/-!
# Folder.CanonicalPath.HeatflowZeroBarrier

Radiation role: research-boundary
BinaryMatrix spine: This module records local heat-flow zero barriers.
Ontology: heatflow_pivot
Pivot role: heatflow
Zero typology: heatflow-barrier
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/-- Contract-level zero-free certificate for a heat-flow window. -/
structure HeatflowZeroFreeCertificate where
  window : HeatflowWindow
  certificateLabel : String

/--
Contract-level barrier certificate, modeled on de Bruijn-Newman barrier
regions. This is local data and must not assume RH.
-/
structure HeatflowBarrierCertificate where
  initialZeroFree : HeatflowZeroFreeCertificate
  finalZeroFree : HeatflowZeroFreeCertificate
  intermediateBarrier : HeatflowZeroFreeCertificate
  barrierLabel : String

theorem heatflow_barrier_has_initial_certificate
    (B : HeatflowBarrierCertificate) :
    ∃ C : HeatflowZeroFreeCertificate, B.initialZeroFree = C :=
  ⟨B.initialZeroFree, rfl⟩

theorem heatflow_barrier_has_final_certificate
    (B : HeatflowBarrierCertificate) :
    ∃ C : HeatflowZeroFreeCertificate, B.finalZeroFree = C :=
  ⟨B.finalZeroFree, rfl⟩

theorem heatflow_barrier_has_intermediate_certificate
    (B : HeatflowBarrierCertificate) :
    ∃ C : HeatflowZeroFreeCertificate, B.intermediateBarrier = C :=
  ⟨B.intermediateBarrier, rfl⟩

end CanonicalPath
end Folder
