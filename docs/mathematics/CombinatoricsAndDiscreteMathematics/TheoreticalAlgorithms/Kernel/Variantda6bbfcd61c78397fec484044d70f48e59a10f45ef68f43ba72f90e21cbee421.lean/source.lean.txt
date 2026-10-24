-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedRoots.Variantc17df86b030fcc6a2ace55dd67fc7c3dd51cb86c1d895a79be7d2d2120d97bea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c17df86b030fcc6a2ace55dd67fc7c3dd51cb86c1d895a79be7d2d2120d97bea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CheckedRoots.Variantc17df86b030fcc6a2ace55dd67fc7c3dd51cb86c1d895a79be7d2d2120d97bea","mathematical_subject":"Computation.DataStructures","original_sha256":"c17df86b030fcc6a2ace55dd67fc7c3dd51cb86c1d895a79be7d2d2120d97bea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/Kernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Formal.Surface.Checked

/-!
Checked Formal authority kernel.

This root is the only default authority surface for `src/formal`. It imports
the first-party, dependency-minimal theorem surfaces that currently typecheck
inside this Lake package. Analytic/PNT blueprints, local Mathlib patches,
experimental tactics, and archived scratch files are intentionally excluded and
recorded in `formal_organization_manifest.yml`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedRoots.Variantc17df86b030fcc6a2ace55dd67fc7c3dd51cb86c1d895a79be7d2d2120d97bea

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
