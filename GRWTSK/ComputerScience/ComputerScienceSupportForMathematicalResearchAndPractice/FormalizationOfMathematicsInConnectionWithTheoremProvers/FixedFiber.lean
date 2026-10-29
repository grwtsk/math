import Folder.Fiber.FixedPoint

/-!
# Folder.Theorem.Fiber.FixedFiber

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.fiber.fixed_fiber
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

theorem fixed_fiber_contract_exposes_fixed_point
    {α : Type _}
    {F : α → α}
    (h : HasFixedPoint α F) :
    F h.point = h.point :=
  fixed_point_is_fixed h

theorem unique_fixed_fiber_contract_exposes_uniqueness
    {α : Type _}
    {F : α → α}
    (h : HasUniqueFixedPoint α F)
    {x : α}
    (hx : F x = x) :
    x = h.point :=
  unique_fixed_point_eq h hx

end Fiber
end Folder
