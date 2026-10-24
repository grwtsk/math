import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate

private def boundedPremise : Certificate Nat Nat :=
  ⟨[(11, 7)], (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7), by simp⟩

-- Expected type mismatch: the actual revised payload eight violates the old bound seven.
-- Identical keys, dictionary lengths, occurrence counts and valid bounds do not repair it.
example : DecodesSatisfying (replaceDictionary boundedPremise.packed [8])
    boundedPremise.predicate :=
  boundedPremise.decodesSatisfying
