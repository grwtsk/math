# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedrootsCount80ce23443926.Variantb2e96de794729be8f3b7a44f5f50b93cc904c724979c99fdcaf28e242dde2ce4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `334be991a97849997da03e4d96f18b17899b738f` · SHA-256 `9cd1b9858bbac4eef0d30daea7b84fbcce88633cd096dbd7b40ffdf6da1dbac1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedRoots.Variantdd89e6dfb03d175ba82618fb1ee9cca129e80057c6d79106c8da7951d2ce6a33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd89e6dfb03d175ba82618fb1ee9cca129e80057c6d79106c8da7951d2ce6a33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CheckedRoots.Variantdd89e6dfb03d175ba82618fb1ee9cca129e80057c6d79106c8da7951d2ce6a33","mathematical_subject":"Computation.DataStructures","original_sha256":"dd89e6dfb03d175ba82618fb1ee9cca129e80057c6d79106c8da7951d2ce6a33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/src/formal/Formal/Surface/finite_bit_boundary/checkedroots_count_80ce23443926.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Formal.Ast.Surface.finite_bit_boundary.checkedmodules_count_f3acdd737477

/-!
Checked Formal authority kernel.

This root is the only default authority surface for `src/formal`. It imports
the first-party, dependency-minimal theorem surfaces that currently typecheck
inside this Lake package. Analytic/PNT blueprints, local Mathlib patches,
experimental tactics, and archived scratch files are intentionally excluded and
recorded in `formal_organization_manifest.yml`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedRoots.Variantdd89e6dfb03d175ba82618fb1ee9cca129e80057c6d79106c8da7951d2ce6a33

namespace Formal.Kernel

def checkedRoots : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem checkedRoots_count : checkedRoots.length = 4 := by
  rfl

end Formal.Kernel
```
