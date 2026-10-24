import Folder.Basic

/-!
# Folder.Fiber.FixedPoint

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.fixed_point
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

structure HasFixedPoint (α : Type _) (F : α → α) where
  point : α
  fixed : F point = point

structure HasUniqueFixedPoint (α : Type _) (F : α → α) extends
    HasFixedPoint α F where
  unique : ∀ x, F x = x → x = point

structure ContractiveFixedPointContract
    (α : Type _) where
  dist : α → α → ℝ
  map : α → α
  point : α
  fixed : map point = point
  unique : ∀ x, map x = x → x = point

theorem fixed_point_is_fixed {α : Type _} {F : α → α}
    (h : HasFixedPoint α F) :
    F h.point = h.point :=
  h.fixed

theorem unique_fixed_point_eq {α : Type _} {F : α → α}
    (h : HasUniqueFixedPoint α F)
    {x : α}
    (hx : F x = x) :
    x = h.point :=
  h.unique x hx

end Fiber
end Folder
