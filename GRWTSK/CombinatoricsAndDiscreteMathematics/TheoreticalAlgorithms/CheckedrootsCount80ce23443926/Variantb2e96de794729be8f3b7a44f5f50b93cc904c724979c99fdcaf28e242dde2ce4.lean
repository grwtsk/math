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
