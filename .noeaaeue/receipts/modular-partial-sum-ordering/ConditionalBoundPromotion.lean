import GRWTSK.Combinatorics.Sequences.PrimeCyclicRearrangement
open GRWTSK.PartialSumOrdering GRWTSK.PrimeCyclicRearrangement
-- EXPECTED FAILURE: a conditional reduction cannot supply its own event bounds.
example : ∃ xs : List (ZMod 5), xs.Perm (List.ofFn (fun _ : Fin 3 => (1 : ZMod 5))) ∧
    ValidPartialSumOrder xs :=
  conditional_rearrangement_from_failure_bounds (fun _ : Fin 3 => (1 : ZMod 5)) 1
    (by decide) (fun _ => by decide)
