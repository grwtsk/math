import Lake
open Lake DSL

package geometry_formal where
  srcDir := "."

@[default_target]
lean_lib Formal where
  roots := #[`Formal]

lean_lib FormalKernel where
  roots := #[`Formal.Kernel]

lean_lib FormalBands where
  roots := #[`Formal.Band]

lean_lib FormalRoot where
  roots := #[`Formal.Root]

lean_lib FormalChecked where
  roots := #[`Formal.Checked]

lean_lib FormalSurface where
  roots := #[`Formal.Surface]

lean_lib FormalConceptual where
  roots := #[`Formal.Conceptual]

lean_lib FormalBoundaryMatriciant where
  roots := #[`Formal.Checked.BoundaryMatriciant]

lean_lib FormalProgramBoundaries where
  roots := #[
    `Formal.Blueprint,
    `Formal.Conceptual,
    `Formal.Archive,
    `Formal.Patches.Mathlib,
    `Formal.External.PrimeNumberTheoremAnd,
    `Formal.External.LeanCert
  ]

lean_exe formal_manifest_check where
  root := `Formal.ManifestCheck
