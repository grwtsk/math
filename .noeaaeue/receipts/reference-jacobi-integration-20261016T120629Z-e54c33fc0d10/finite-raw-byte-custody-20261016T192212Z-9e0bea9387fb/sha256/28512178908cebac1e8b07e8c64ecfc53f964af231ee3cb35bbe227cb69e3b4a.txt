/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Lean core List.Nodup.idxOf_getElem (Init/Data/List/Nat/Pairwise.lean) retains
Mario Carneiro and James Gallicchio's Apache-2.0 credits. Imported Lean/Mathlib
List and Option authors Leonardo de Moura, Jeremy Avigad, Mario Carneiro,
Parikshit Khanna, Floris van Doorn and Kenny Lau retain their individual credits.
Existing local state, schedule and transport producers retain their source credits. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableDirectLookup

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PrefixTableReferenceTransport PrefixTableDirectLookup
open PrefixTableDirectLookup.Checks.Positive

-- Intended rejection: an actual bound on an unused slot is not original-reference membership.
example : transportSlotAt (SingleObj.star Bool) initial actions 2 =
    directLookupAt (SingleObj.star Bool) initial actions 2 := by
  exact transportSlotAt_eq_directLookup_of_reference (SingleObj.star Bool) initial actions
    (11, 2) unused_slot_bound
