# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatInvertibility.Variant109da708deb39eefe37eb9c414ee754c2f5f3b643be1f6a9353935c1ef2e7665

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d54c382b6589bfbf08f93682aa29f49c08d3dae3` · SHA-256 `109da708deb39eefe37eb9c414ee754c2f5f3b643be1f6a9353935c1ef2e7665`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.HeatInvertibility

/-!
# Folder.Theorem.Research.HeatInvertibility

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.heat_invertibility
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Research
namespace HeatInvertibility

theorem lifted_heat_reconstructs
    {α : Type _}
    {heat residual : α → α}
    (L : Folder.Research.HeatInvertibility.LiftedHeatInverse α heat residual)
    (x : α) :
    L.reconstruct (heat x) (residual x) = x :=
  Folder.Research.HeatInvertibility.lifted_heat_reconstructs L x

theorem ordinary_heat_left_inverse
    {α : Type _}
    {H : α → α}
    (I : Folder.Research.HeatInvertibility.HasTwoSidedInverse α H)
    (x : α) :
    I.inv (H x) = x :=
  Folder.Research.HeatInvertibility.ordinary_heat_left_inverse I x

theorem ordinary_heat_right_inverse
    {α : Type _}
    {H : α → α}
    (I : Folder.Research.HeatInvertibility.HasTwoSidedInverse α H)
    (x : α) :
    H (I.inv x) = x :=
  Folder.Research.HeatInvertibility.ordinary_heat_right_inverse I x

end HeatInvertibility
end Research
end Theorem
end Folder
```
