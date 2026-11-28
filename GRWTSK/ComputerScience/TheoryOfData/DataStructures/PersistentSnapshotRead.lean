import Mathlib.Data.List.TakeDrop

/-!
# Source-frozen historical reconstruction

Attribution: grwtsk contributors.
Formal status is recorded in the accompanying exact-source verification evidence.
Target: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Intended subject path: GRWTSK/ComputerScience/TheoryOfData/DataStructures/PersistentSnapshotRead.lean.

A historical root stores a cutoff and a fixed decoder. Prefix extension then
preserves its complete observation. This theorem is deliberately not a theorem
about queries whose meaning depends on new successor edges. Runtime codec,
authenticated head, index, publication and recovery refinement remain separate.
-/

namespace GRWTSK.ComputerScience.PersistentSnapshot

structure Root (Event Value : Type*) where
  cutoff : ℕ
  decode : List Event → Option Value

def read {Event Value : Type*} (journal : List Event) (root : Root Event Value) :
    Option Value := root.decode (journal.take root.cutoff)

theorem read_append {Event Value : Type*} (journal suffix : List Event)
    (root : Root Event Value) (hroot : root.cutoff ≤ journal.length) :
    read (journal ++ suffix) root = read journal root := by
  unfold read
  rw [List.take_append_of_le_length hroot]

/-- Every valid historical cutoff retains exactly its prior decoded observation. -/
theorem read_prefix_extension {Event Value : Type*} {journal extended : List Event}
    (hprefix : journal <+: extended) (root : Root Event Value)
    (hroot : root.cutoff ≤ journal.length) :
    read extended root = read journal root := by
  obtain ⟨suffix, rfl⟩ := List.prefix_iff_exists_eq_append.mp hprefix
  exact read_append journal suffix root hroot

theorem successful_read_preserved {Event Value : Type*} {journal extended : List Event}
    (hprefix : journal <+: extended) (root : Root Event Value)
    (hroot : root.cutoff ≤ journal.length) (value : Value)
    (hread : read journal root = some value) :
    read extended root = some value :=
  (read_prefix_extension hprefix root hroot).trans hread

end GRWTSK.ComputerScience.PersistentSnapshot
