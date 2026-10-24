# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.ShellFiltration.Varianted2e9d767f907a927233ee01e2ef782231c568286298b0299e23af0177117d5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e08be9094194b0707cd68fad6217fd19fcd8d63` · SHA-256 `ed2e9d767f907a927233ee01e2ef782231c568286298b0299e23af0177117d5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.ShellFiltration
import Folder.Cellular.Adjacency

/-!
# Folder.Theorem.Cellular.ShellFiltration

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.shell_filtration
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Cellular
namespace ShellFiltration

theorem all_boundary_level_zero
    {d : Nat}
    (hd : 0 < d)
    (x : Folder.Cellular.CubeAddress d 0) :
    Folder.Cellular.IsBoundaryCell x :=
  Folder.Cellular.all_boundary_level_zero hd x

theorem cubeAdjacent_symm
    {d k : Nat}
    {x y : Folder.Cellular.CubeAddress d k} :
    Folder.Cellular.CubeAdjacent x y →
      Folder.Cellular.CubeAdjacent y x :=
  Folder.Cellular.cubeAdjacent_symm

theorem cubeAdjacent_irrefl
    {d k : Nat}
    (x : Folder.Cellular.CubeAddress d k) :
    ¬ Folder.Cellular.CubeAdjacent x x :=
  Folder.Cellular.cubeAdjacent_irrefl x

end ShellFiltration
end Cellular
end Theorem
end Folder
```
