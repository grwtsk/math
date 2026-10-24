# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PathUnfolding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf4b4f365c731e516c3d04946b28acff382abd50` · SHA-256 `de57f4f062500730b3a13827b855520c91b3ace6e7801f674de810cf43d0b726`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.PathUnfolding
import Mathlib.Combinatorics.Quiver.SingleObj
import Mathlib.Combinatorics.Quiver.Path.Vertices

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding

section Generic

variable {V : Type*} [Quiver V] (root : V)

noncomputable example : Arborescence (Occurrence root) := unfoldingArborescence root

noncomputable example (node : Occurrence root) : Unique (Path (origin root) node) :=
  uniqueRootPath node

example (node : Occurrence root) (history : PathStar node.endpoint) :
    ∃! lifted : PathStar node, (projection root).pathStar node lifted = history :=
  unique_finite_lift node history

example (target : V) :
    (∃ node : Occurrence root, node.endpoint = target) ↔ Nonempty (Path root target) :=
  endpoint_range_iff target

example {source target : Occurrence root} (lifted : Path source target) :
    ofPath (source.path.comp ((projection root).mapPath lifted)) = target :=
  ofPath_comp_projection lifted

end Generic

namespace GRWTSK.Combinatorics.DirectedGraph.PathUnfolding.Checks.Positive

/- Parallel base loops have one base vertex and distinct actual edge identities. -/
noncomputable def firstOccurrence : Occurrence (SingleObj.star Bool) :=
  extend (origin (SingleObj.star Bool)) (SingleObj.toHom false)

noncomputable def otherOccurrence : Occurrence (SingleObj.star Bool) :=
  extend (origin (SingleObj.star Bool)) (SingleObj.toHom true)

noncomputable def twiceOccurrence : Occurrence (SingleObj.star Bool) :=
  extend firstOccurrence (SingleObj.toHom true)

noncomputable def twoStepLift : Path (origin (SingleObj.star Bool)) twiceOccurrence :=
  (step (origin (SingleObj.star Bool)) (SingleObj.toHom false)).toPath.cons
    (step firstOccurrence (SingleObj.toHom true))

noncomputable def twoBaseEdges : Path (SingleObj.star Bool) (SingleObj.star Bool) :=
  (SingleObj.toHom false).toPath.cons (SingleObj.toHom true)

theorem parallel_occurrences_distinct : firstOccurrence ≠ otherOccurrence := by
  intro hequal
  have hedges := congrArg (fun node : Occurrence (SingleObj.star Bool) =>
    SingleObj.pathToList node.path) hequal
  change ([false] : List Bool) = [true] at hedges
  simp at hedges

theorem repeated_base_vertices_distinct :
    origin (SingleObj.star Bool) ≠ firstOccurrence ∧ firstOccurrence ≠ twiceOccurrence := by
  constructor
  · intro hequal
    have hlength := congrArg (fun node : Occurrence (SingleObj.star Bool) => node.path.length) hequal
    change 0 = 1 at hlength
    exact Nat.noConfusion hlength
  · intro hequal
    have hlength := congrArg (fun node : Occurrence (SingleObj.star Bool) => node.path.length) hequal
    change 1 = 2 at hlength
    exact Nat.succ_ne_self 1 hlength.symm

example : firstOccurrence.endpoint = otherOccurrence.endpoint ∧
    firstOccurrence.endpoint = twiceOccurrence.endpoint := ⟨rfl, rfl⟩

example : firstOccurrence.path.vertices = otherOccurrence.path.vertices := rfl

example : twiceOccurrence.path.vertices =
    [SingleObj.star Bool, SingleObj.star Bool, SingleObj.star Bool] := rfl

example : twiceOccurrence.path.length = 2 := rfl

example : (projection (SingleObj.star Bool)).mapPath twoStepLift = twoBaseEdges := rfl

example : liftHistory twoBaseEdges = twoStepLift := rfl

example : ofPath twoBaseEdges = twiceOccurrence := rfl

example : ∃! lifted : PathStar (origin (SingleObj.star Bool)),
    (projection (SingleObj.star Bool)).pathStar (origin (SingleObj.star Bool)) lifted =
      (⟨SingleObj.star Bool, twoBaseEdges⟩ : PathStar (SingleObj.star Bool)) :=
  unique_finite_lift _ _

/- One actual loop suffices to obstruct incoming-star surjectivity at the empty occurrence. -/
theorem single_loop_outgoing_bijective (node : Occurrence (SingleObj.star Unit)) :
    Function.Bijective ((projection (SingleObj.star Unit)).star node) :=
  outgoing_star_bijective node

theorem single_loop_empty_origin_costar : IsEmpty (Costar (origin (SingleObj.star Unit))) :=
  empty_origin_costar

theorem single_loop_costar_not_surjective :
    ¬ Function.Surjective ((projection (SingleObj.star Unit)).costar (origin (SingleObj.star Unit))) :=
  origin_costar_not_surjective ⟨SingleObj.star Unit, SingleObj.toHom ()⟩

theorem single_loop_not_covering : ¬ (projection (SingleObj.star Unit)).IsCovering :=
  not_covering_of_incoming ⟨SingleObj.star Unit, SingleObj.toHom ()⟩

example : (∀ node : Occurrence (SingleObj.star Unit),
    Function.Bijective ((projection (SingleObj.star Unit)).star node)) ∧
    ¬ (projection (SingleObj.star Unit)).IsCovering :=
  ⟨single_loop_outgoing_bijective, single_loop_not_covering⟩

end GRWTSK.Combinatorics.DirectedGraph.PathUnfolding.Checks.Positive
```
