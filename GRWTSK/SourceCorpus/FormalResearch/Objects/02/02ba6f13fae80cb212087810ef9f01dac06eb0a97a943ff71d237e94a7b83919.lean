import Folder.Morphism.Effect.WritePlan

/-!
# Folder.Morphism.Effect.WriteRunner

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: morphism.effect.write_runner
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Morphism
namespace Effect

structure WriteRunner where
  run : WritePlan → FileState
  run_eq_safeApply : ∀ P, run P = safeApply P

end Effect
end Morphism
end Folder
