# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant8861579879ac06ba2f83dbccec98517698abe49f5ccc5e12d0f62d5bd3a6f0ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8312fcbe0b27b38d32ccb874de5950efb8a53641` · SHA-256 `395d1641906e6e0815595218838012956c857504396c10af28a9d7f3398e875b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantd5ef03c129ae808dee0281d034e38becb806d190ca776728d05d72187f9589b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5ef03c129ae808dee0281d034e38becb806d190ca776728d05d72187f9589b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantd5ef03c129ae808dee0281d034e38becb806d190ca776728d05d72187f9589b1","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"d5ef03c129ae808dee0281d034e38becb806d190ca776728d05d72187f9589b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/src/formal/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantd5ef03c129ae808dee0281d034e38becb806d190ca776728d05d72187f9589b1

open Lake DSL

package geometry_formal where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"

@[default_target]
lean_lib Formal where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  roots := #[`Formal]

lean_lib FormalKernel where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.checkedroots_count_80ce23443926]

lean_lib FormalBands where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  roots := #[`Formal.Ast.Blueprint.proof_authority.authorityband_blueprint_cannot_close_57e317be0397]

lean_lib FormalRoot where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.importscorpus_false_3810cb311e0d]

lean_lib FormalChecked where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.modules_count_b62c437365ca]

lean_lib FormalSurface where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.authoritybands_count_17240d22a9d5]

lean_lib FormalConceptual where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  roots := #[`Formal.Ast.Conceptual.finite_bit_boundary.allbands_count_25afe01d49fd]

lean_lib FormalBoundaryMatriciant where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  roots := #[`Formal.Ast.Checked.finite_bit_boundary.checked_kernel_module_c4a89b6533c9]

lean_lib FormalProgramBoundaries where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  roots := #[
    `Formal.Ast.Surface.proof_authority.blueprint_cannot_close_authority_7adeba310a88,
    `Formal.Ast.Conceptual.finite_bit_boundary.allbands_count_25afe01d49fd,
    `Formal.Ast.Surface.proof_authority.archive_not_imported_by_kernel_56391c38229b,
    `Formal.Ast.Surface.projection_operators.defaultstatus_is_localonly_9fabe884afb2,
    `Formal.Ast.Surface.proof_authority.not_declared_dependency_86c76017d0e8,
    `Formal.Ast.Surface.proof_authority.not_imported_into_kernel_abffe1466148
  ]

lean_exe formal_manifest_check where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e9676dffdc18776e33d981b9b3c102267959954af17fd2233cda1b089e91efd0/src"
  root := `Formal.Ast.Checked.checked_core.main_b4c587ef3997
```
