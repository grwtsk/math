import Surface.Legacy.Oracle.ArithmeticHierarchy

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

theorem every_function_is_computable_relative_to_its_evaluation_oracle
    {α β : Type} (f : α -> β) :
    ∃ O : EvaluationOracle α β f,
      OracleComputableRelativeTo O.oracle f := by
  let O : EvaluationOracle α β f :=
    { oracle := { answer := f }, evaluates := by intro x; rfl }
  exact ⟨O, True.intro⟩

end Legacy
end Surface
