# Complete source: GRWTSK.Topology.MetricTopology.FixedPoint.Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79ff3835f6b1b007bd13cbaaba65db325d23037a` · SHA-256 `399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
