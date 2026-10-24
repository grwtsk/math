/- Copyright (c) 2026 grwtsk contributors. MIT.
Intended rejection: actual valid dictionary bounds are not actual real-reference membership. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixTableReferenceTransport

set_option autoImplicit false

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph
open PrefixTableReferenceTransport PrefixTableReferenceTransport.Checks.Positive

example := transport_reference (SingleObj.star Bool) initial
  PrefixTableSchedule.Checks.Positive.actions (11, 2) unused_slot_bound
