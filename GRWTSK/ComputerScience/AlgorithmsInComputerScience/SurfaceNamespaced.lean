-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityBands.Variant96259a972b4059223fa8341ceb61c1cb0d95580884f6b459d8651d1205fc5f2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96259a972b4059223fa8341ceb61c1cb0d95580884f6b459d8651d1205fc5f2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AuthorityBands.Variant96259a972b4059223fa8341ceb61c1cb0d95580884f6b459d8651d1205fc5f2d","mathematical_subject":"Computation.DataStructures","original_sha256":"96259a972b4059223fa8341ceb61c1cb0d95580884f6b459d8651d1205fc5f2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/Surface.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Formal.Surface.Checked
import Formal.Surface.Blueprint
import Formal.Surface.Patches
import Formal.Surface.External
import Formal.Surface.Archive
import Formal.Algorithm
import Formal.Conceptual

/-!
Unified Formal program surface.

This module exposes the authority-band entry points without importing the
large blueprint, patch, external, or archive corpora. It also imports the
conceptual map for navigation. The checked kernel imports only
`Formal.Surface.Checked`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityBands.Variant96259a972b4059223fa8341ceb61c1cb0d95580884f6b459d8651d1205fc5f2d

namespace Formal.Surface

def authorityBands : List String :=
  [ "checked"
  , "blueprint"
  , "patches"
  , "external"
  , "archive"
  ]

theorem authorityBands_count : authorityBands.length = 5 := by
  rfl

def conceptualMapModule : String := "Formal.Conceptual"

def bandVocabularyModule : String := "Formal.Band"

def layoutAlgorithmModule : String := "Formal.Algorithm"

end Formal.Surface
