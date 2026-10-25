# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant7286e851f4c6ca0d14ee415877351397cf6733ab0b95ca4593a5a9039bd87e6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `510e3da83398122e3de235b580f8e4f74f88bc23` · SHA-256 `4006603df6bd1a386ef43d30f864d1f318b36c553847ee5fc10583db7862d4fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant376ca3491bdb99e7da5062b493f01246266c75f5f6bda1f0d97b635de97d3b29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"376ca3491bdb99e7da5062b493f01246266c75f5f6bda1f0d97b635de97d3b29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant376ca3491bdb99e7da5062b493f01246266c75f5f6bda1f0d97b635de97d3b29","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"376ca3491bdb99e7da5062b493f01246266c75f5f6bda1f0d97b635de97d3b29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant376ca3491bdb99e7da5062b493f01246266c75f5f6bda1f0d97b635de97d3b29

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
```
