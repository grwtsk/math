import formal.c2.RecordReconstruction

namespace C2.ReconstructionFalseChecks
example : parseValue 33 "m00:".toList = some (.map [],[]) := by rfl
example : parseValue 33 "i-0;".toList = some (.int 0,[]) := by rfl
example : ∀ b : Bytes, bytes (⟨[],[]⟩ : Record) = b := by
  intro b
  rfl
end C2.ReconstructionFalseChecks
