import Mathlib.GroupTheory.SpecificGroups.Dihedral
import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum

/-!
# The square as an actual faithful dihedral action

Local attribution: grwtsk contributors.
Source: Grant Sanderson, Euler's formula with introductory group theory (2017),
published text adaptation River Way.
https://www.3blue1brown.com/lessons/eulers-formula-via-group-theory/

All proof bodies and construction fields: NOT_RUN_USER_DEFERRED.
The four labels below embed as the vertices 1, I, -1, -I of a nondegenerate
square. Cardinality is taken only after proving the action faithful and linking
it to actual complex rotations/reflections. No classification of all Euclidean
isometries is asserted. Finite `decide` proof terms below are ordinary proof
candidates, not native_decide or external computation receipts.
-/

namespace GRWTSK.GroupTheory.Elementary.EulerSquareAction

abbrev Vertex := ZMod 4
abbrev Symmetry := DihedralGroup 4

/-- Counterclockwise square vertices, with circumradius one. -/
def point (v : Vertex) : ℂ :=
  if v = 0 then 1 else if v = 1 then Complex.I else
    if v = 2 then -1 else -Complex.I

/-- The convention `sr i` means conjugation AFTER rotation by `i` quarter turns. -/
def act : Symmetry → Vertex → Vertex
  | .r i, v => i + v
  | .sr i, v => -(i + v)

theorem act_one : ∀ v : Vertex, act 1 v = v := by decide

theorem act_mul : ∀ (g h : Symmetry) (v : Vertex),
    act (g * h) v = act g (act h v) := by decide

theorem act_left_inverse : ∀ (g : Symmetry) (v : Vertex),
    act g⁻¹ (act g v) = v := by decide

theorem act_right_inverse : ∀ (g : Symmetry) (v : Vertex),
    act g (act g⁻¹ v) = v := by decide

/-- Every abstract group element supplies an actual permutation of the vertices. -/
def permutation (g : Symmetry) : Equiv.Perm Vertex where
  toFun := act g
  invFun := act g⁻¹
  left_inv := act_left_inverse g
  right_inv := act_right_inverse g

/-- Composition is the same composition as the actual label permutations. -/
def representation : Symmetry →* Equiv.Perm Vertex where
  toFun := permutation
  map_one' := by ext v; exact act_one v
  map_mul' g h := by ext v; exact act_mul g h v

/-- Faithfulness is proved on the four labels, rather than assumed as an interface. -/
theorem act_faithful : ∀ g h : Symmetry,
    (∀ v : Vertex, act g v = act h v) → g = h := by decide

theorem representation_injective : Function.Injective representation := by
  intro g h heq
  apply act_faithful g h
  intro v
  exact congrArg (fun p : Equiv.Perm Vertex => p v) heq

theorem point_injective : Function.Injective point := by
  intro a b
  fin_cases a <;> fin_cases b <;>
    norm_num [point, Complex.ext_iff]

theorem point_nonzero (v : Vertex) : point v ≠ 0 := by
  fin_cases v <;> norm_num [point, Complex.ext_iff]

/-- Each vertex is on the unit circle, in real coordinates. -/
theorem point_unit_circle (v : Vertex) :
    (point v).re ^ 2 + (point v).im ^ 2 = 1 := by
  fin_cases v <;> norm_num [point]

/-- Complex transformations represented by the abstract labels. -/
def planeAction : Symmetry → ℂ → ℂ
  | .r i, z => point i * z
  | .sr i, z => star (point i * z)

/-- This is the actual geometry bridge for every vertex and every group element. -/
theorem point_act (g : Symmetry) (v : Vertex) :
    point (act g v) = planeAction g (point v) := by
  cases g with
  | r i =>
    fin_cases i <;> fin_cases v <;>
      norm_num [act, point, planeAction, Complex.ext_iff]
  | sr i =>
    fin_cases i <;> fin_cases v <;>
      norm_num [act, point, planeAction, Complex.ext_iff]

theorem quarter_turn (v : Vertex) :
    point (act (.r 1) v) = Complex.I * point v := by
  simpa [planeAction, point] using point_act (.r 1) v

theorem real_axis_reflection (v : Vertex) :
    point (act (.sr 0) v) = star (point v) := by
  simpa [planeAction, point] using point_act (.sr 0) v

/-- Equality of the actual complex images forces equality of the symmetries. -/
theorem geometric_faithful (g h : Symmetry)
    (heq : ∀ v : Vertex, planeAction g (point v) = planeAction h (point v)) :
    g = h := by
  apply act_faithful g h
  intro v
  apply point_injective
  simpa only [point_act] using heq v

/-- There are exactly eight DISTINCT actual permutations of these square vertices. -/
theorem eight_vertex_actions :
    (Finset.univ.image representation).card = 8 := by
  rw [Finset.card_image_of_injective _ representation_injective]
  exact DihedralGroup.card

/-- The geometric action has eight elements, not merely eight abstract names. -/
theorem eight_geometric_actions :
    Function.Injective (fun g : Symmetry => fun v : Vertex => planeAction g (point v)) ∧
      Fintype.card Symmetry = 8 := by
  constructor
  · intro g h heq
    apply geometric_faithful g h
    exact congrFun heq
  · exact DihedralGroup.card

end GRWTSK.GroupTheory.Elementary.EulerSquareAction
