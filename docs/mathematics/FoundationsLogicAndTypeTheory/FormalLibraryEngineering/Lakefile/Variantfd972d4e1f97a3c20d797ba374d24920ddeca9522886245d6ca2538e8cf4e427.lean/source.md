# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantfd972d4e1f97a3c20d797ba374d24920ddeca9522886245d6ca2538e8cf4e427

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d59de6b7c572ab0cf30d54ec8806c7e68f3f4f84` · SHA-256 `fd972d4e1f97a3c20d797ba374d24920ddeca9522886245d6ca2538e8cf4e427`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package geometry_formal where
  srcDir := "."

@[default_target]
lean_lib Formal where
  roots := #[`Formal]

lean_lib FormalKernel where
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.checkedroots_count_80ce23443926]

lean_lib FormalBands where
  roots := #[`Formal.Ast.Blueprint.proof_authority.authorityband_blueprint_cannot_close_57e317be0397]

lean_lib FormalRoot where
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.importscorpus_false_3810cb311e0d]

lean_lib FormalChecked where
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.modules_count_b62c437365ca]

lean_lib FormalSurface where
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.authoritybands_count_17240d22a9d5]

lean_lib FormalConceptual where
  roots := #[`Formal.Ast.Conceptual.finite_bit_boundary.allbands_count_25afe01d49fd]

lean_lib FormalBoundaryMatriciant where
  roots := #[`Formal.Ast.Checked.finite_bit_boundary.checked_kernel_module_c4a89b6533c9]

lean_lib FormalProgramBoundaries where
  roots := #[
    `Formal.Ast.Surface.proof_authority.blueprint_cannot_close_authority_7adeba310a88,
    `Formal.Ast.Conceptual.finite_bit_boundary.allbands_count_25afe01d49fd,
    `Formal.Ast.Surface.proof_authority.archive_not_imported_by_kernel_56391c38229b,
    `Formal.Ast.Surface.projection_operators.defaultstatus_is_localonly_9fabe884afb2,
    `Formal.Ast.Surface.proof_authority.not_declared_dependency_86c76017d0e8,
    `Formal.Ast.Surface.proof_authority.not_imported_into_kernel_abffe1466148
  ]

lean_exe formal_manifest_check where
  root := `Formal.Ast.Checked.checked_core.main_b4c587ef3997
```
