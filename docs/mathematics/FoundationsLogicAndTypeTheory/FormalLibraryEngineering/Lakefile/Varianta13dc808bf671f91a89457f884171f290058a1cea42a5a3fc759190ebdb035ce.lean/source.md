# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Varianta13dc808bf671f91a89457f884171f290058a1cea42a5a3fc759190ebdb035ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ed23a2f3ba8d00d7fed3396a7a3b55a08695fcc` · SHA-256 `a13dc808bf671f91a89457f884171f290058a1cea42a5a3fc759190ebdb035ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake

open Lake DSL

package «surface» where
  version := v!"0.1.0"

lean_lib Boolean where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/98a59bb90aca50e4fc389339f5a2b86c136b5ed4cb004c7acd248d4a2f1b67f2/lib"
  roots := #[
    `Boolean.Cube.ListTools,
    `Boolean.Cube.PrismaticGeometry.DirectionFrame,
    `Boolean.Cube.PrismaticGeometry.AngleRatio,
    `Boolean.Cube.PrismaticGeometry.CellComplex,
    `Boolean.Cube.PrismaticGeometry.Prism,
    `Boolean.Cube.PrismaticGeometry.Sphere,
    `Boolean.Cube.PrismaticGeometry.OctahedralChain
  ]

@[default_target]
lean_lib SurfaceCore where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/98a59bb90aca50e4fc389339f5a2b86c136b5ed4cb004c7acd248d4a2f1b67f2/lib/SurfaceCore"
  roots := #[
    `Surface.Core.Classification,
    `Surface.Core.TopologySurgeryGame
  ]
```
