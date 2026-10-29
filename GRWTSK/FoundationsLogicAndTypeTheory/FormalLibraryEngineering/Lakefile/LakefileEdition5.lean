import Lake
open Lake DSL

package geometry_formal where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"

@[default_target]
lean_lib Formal where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal]

lean_lib FormalKernel where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Kernel]

lean_lib FormalBands where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Band]

lean_lib FormalRoot where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Root]

lean_lib FormalChecked where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Checked]

lean_lib FormalSurface where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Surface]

lean_lib FormalConceptual where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Conceptual]

lean_lib FormalBoundaryMatriciant where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Checked.BoundaryMatriciant]

lean_lib FormalProgramBoundaries where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[
    `Formal.Blueprint,
    `Formal.Conceptual,
    `Formal.Archive,
    `Formal.Patches.Mathlib,
    `Formal.External.PrimeNumberTheoremAnd,
    `Formal.External.LeanCert
  ]

lean_exe formal_manifest_check where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  root := `Formal.ManifestCheck
