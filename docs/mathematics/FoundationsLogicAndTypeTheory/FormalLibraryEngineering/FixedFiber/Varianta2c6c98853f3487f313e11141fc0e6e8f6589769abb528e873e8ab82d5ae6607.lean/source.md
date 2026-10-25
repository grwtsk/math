# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedFiber.Varianta2c6c98853f3487f313e11141fc0e6e8f6589769abb528e873e8ab82d5ae6607

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `995b0e806954d69fab797ec02ca8ff2ccdd07bc7` · SHA-256 `a2c6c98853f3487f313e11141fc0e6e8f6589769abb528e873e8ab82d5ae6607`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
