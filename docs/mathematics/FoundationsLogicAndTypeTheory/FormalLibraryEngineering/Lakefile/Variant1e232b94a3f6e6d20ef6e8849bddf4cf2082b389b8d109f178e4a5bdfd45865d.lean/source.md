# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant1e232b94a3f6e6d20ef6e8849bddf4cf2082b389b8d109f178e4a5bdfd45865d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a39508cbf151a187d906a3b340799876ddedf4f1` · SHA-256 `fd2b19ca59c3e8ea75f9ebd9709d888d36365b14098108a7ac5197fb7525a982`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant2196f8ae3e9465d5b43455dc4ff8c0fe23f0f10c508399b243da638978ae70da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2196f8ae3e9465d5b43455dc4ff8c0fe23f0f10c508399b243da638978ae70da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant2196f8ae3e9465d5b43455dc4ff8c0fe23f0f10c508399b243da638978ae70da","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"2196f8ae3e9465d5b43455dc4ff8c0fe23f0f10c508399b243da638978ae70da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant2196f8ae3e9465d5b43455dc4ff8c0fe23f0f10c508399b243da638978ae70da

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
```
