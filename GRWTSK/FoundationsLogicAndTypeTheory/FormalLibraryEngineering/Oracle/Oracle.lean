/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure Oracle (Query Answer : Type) where
  answer : Query -> Answer

structure EvaluationOracle (α β : Type) (f : α -> β) where
  oracle : Oracle α β
  evaluates : ∀ x, oracle.answer x = f x

def OracleComputableRelativeTo
    {Query Answer α β : Type}
    (_oracle : Oracle Query Answer) (_f : α -> β) : Prop :=
  True

end Legacy
end Surface
