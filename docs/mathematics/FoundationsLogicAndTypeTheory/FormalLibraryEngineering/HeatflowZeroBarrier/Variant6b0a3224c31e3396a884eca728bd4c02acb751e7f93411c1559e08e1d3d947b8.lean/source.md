# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatflowZeroBarrier.Variant6b0a3224c31e3396a884eca728bd4c02acb751e7f93411c1559e08e1d3d947b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79d132bde10af973ac63230618a0cae0ebfd6482` · SHA-256 `6b0a3224c31e3396a884eca728bd4c02acb751e7f93411c1559e08e1d3d947b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
