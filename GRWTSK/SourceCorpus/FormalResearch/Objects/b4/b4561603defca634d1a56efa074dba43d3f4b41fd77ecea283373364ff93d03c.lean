import Folder.CrystallineTensor.CategoricalTrace
import Folder.CrystallineTensor.HattoriStallingsTrace

/-!
# Folder.Theorem.CrystallineTensor.CategoricalTrace

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports categorical trace boundary facts.
Ontology: proof.crystalline.categorical_trace
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace CategoricalTrace

theorem categorical_trace_cyclic
    {alpha : Type _}
    (T : Folder.CrystallineTensor.CategoricalTrace alpha) :
    T.cyclic :=
  Folder.CrystallineTensor.categorical_trace_cyclic T

theorem hattori_stallings_trace_defined
    (T : Folder.CrystallineTensor.HattoriStallingsTraceContract) :
    T.traceDefined :=
  Folder.CrystallineTensor.hattori_stallings_trace_defined T

end CategoricalTrace
end CrystallineTensor
end Theorem
end Folder
