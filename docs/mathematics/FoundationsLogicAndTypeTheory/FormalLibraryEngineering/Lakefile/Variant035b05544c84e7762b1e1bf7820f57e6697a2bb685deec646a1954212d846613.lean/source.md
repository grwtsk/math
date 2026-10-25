# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant035b05544c84e7762b1e1bf7820f57e6697a2bb685deec646a1954212d846613

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6149bb1b8ac7cb1be2e88da5a478ac9119aa32d` · SHA-256 `74d84deb973d744ff36069a773603ef8f3b5781d0a2132523ebdb4f300471291`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantb69b77327c6750feb9f914bd13680f813291a3f9276d7d7e6d86cbd66ea41e27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b69b77327c6750feb9f914bd13680f813291a3f9276d7d7e6d86cbd66ea41e27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantb69b77327c6750feb9f914bd13680f813291a3f9276d7d7e6d86cbd66ea41e27","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"b69b77327c6750feb9f914bd13680f813291a3f9276d7d7e6d86cbd66ea41e27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/export/formal/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantb69b77327c6750feb9f914bd13680f813291a3f9276d7d7e6d86cbd66ea41e27

open Lake DSL

package «surface» where
  version := v!"0.1.0"

lean_lib Boolean where
  srcDir := "lib"
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
  srcDir := "lib/SurfaceCore"
  roots := #[
    `Surface.Core.Classification,
    `Surface.Core.TopologySurgeryGame
  ]
```
