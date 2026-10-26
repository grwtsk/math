/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and GRWTSK results retain their licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcContact
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
import Mathlib

set_option autoImplicit false

/-!
# An acyclic three-phase descent with an independent geometric return

The selected four Bezier contacts have edges 0→1, 1→2, 2→3,
and 3→0. The first three form a strict-rank finite DAG. The last is
a distinct *geometric* seam, constructed from the fourth actual patch
and its exact endpoint/jet contact, not inferred from the rank order.

Uses canonical RelationSandwich.EdgeRelation, Path and Acyclic.
No second graph API, generic sofic theorem, or infinite trace claim.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

/-- Three directed geometric contacts carrying the strict descent rank. -/
def descentEdge : EdgeRelation (Fin 4) :=
  fun u v => (u = 0 ∧ v = 1) ∨ (u = 1 ∧ v = 2) ∨ (u = 2 ∧ v = 3)

/-- The fourth source-derived boundary contact, with explicit orientation. -/
def geometricReturnEdge : EdgeRelation (Fin 4) :=
  fun u v => u = 3 ∧ v = 0

/-- All four exact geometric contacts, including the return edge. -/
def contactEdge : EdgeRelation (Fin 4) :=
  fun u v => v = next u

/-- The complete contact relation is exactly the strict descent plus the
independently selected geometric last-to-first seam. -/
theorem contactEdge_iff_descent_or_return (u v : Fin 4) :
    contactEdge u v ↔ descentEdge u v ∨ geometricReturnEdge u v := by
  fin_cases u <;> fin_cases v <;>
    simp [contactEdge, descentEdge, geometricReturnEdge, next]

/-- The interior three-phase model is genuinely a strict-rank DAG. -/
theorem descentEdge_ordered :
    OrderedBy (fun i : Fin 4 => i.val) descentEdge := by
  intro u v h
  rcases h with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  all_goals norm_num

theorem descentEdge_acyclic : Acyclic descentEdge :=
  acyclic_of_ordered (fun i : Fin 4 => i.val) descentEdge_ordered

/-- A full four-contact based cycle is witnessed by the actual finite
path constructor. This is not a cycle of the strict descent subgraph. -/
def genuineContactCycle : Path contactEdge 0 0 :=
  Path.tail
    (Path.tail
      (Path.tail
        (Path.single (show contactEdge 0 1 by decide))
        (show contactEdge 1 2 by decide))
      (show contactEdge 2 3 by decide))
    (show contactEdge 3 0 by decide)

theorem contactEdge_not_acyclic : ¬ Acyclic contactEdge := by
  intro hac
  exact hac 0 genuineContactCycle

theorem geometric_return_not_descent : ¬ descentEdge 3 0 := by
  simp [descentEdge]

/-- Every graph edge corresponds to an actually equal Bezier endpoint. -/
theorem contactEdge_matches_endpoint (u v : Fin 4)
    (h : contactEdge u v) :
    (patch u).eval 1 = (patch v).eval 0 := by
  change v = next u at h
  subst v
  exact endpoint_join u

/-- Every graph edge also preserves the actual parameterized first jet,
not just the point position or unoriented tangent line. -/
theorem contactEdge_matches_velocity (u v : Fin 4)
    (h : contactEdge u v) :
    (patch u).velocity 1 = (patch v).velocity 0 := by
  change v = next u at h
  subst v
  exact velocity_join u

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
