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
