-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SimplicialShape.Variantedbcc97e17c002b42873552a631f6a4a11876bef7f4cee4e796b016c6f9760e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"edbcc97e17c002b42873552a631f6a4a11876bef7f4cee4e796b016c6f9760e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SimplicialShape.Variantedbcc97e17c002b42873552a631f6a4a11876bef7f4cee4e796b016c6f9760e5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"edbcc97e17c002b42873552a631f6a4a11876bef7f4cee4e796b016c6f9760e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Fabric/Simplicial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity
import Mathlib.Data.Finset.Basic

/-! # Simplicial presentation fabric -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SimplicialShape.Variantedbcc97e17c002b42873552a631f6a4a11876bef7f4cee4e796b016c6f9760e5

namespace Mathematics.Fabric

universe u

/-- A finite abstract simplicial shape with explicit downward closure. -/
structure SimplicialShape (Vertex : Type u) where
  simplices : List (Finset Vertex)
  downwardClosed :
    ∀ simplex face,
      simplex ∈ simplices → face ⊆ simplex → face ∈ simplices

/-- A semantic carrier and a presentation shape remain separate data. -/
structure Presentation (Vertex : Type u) where
  carrier : ElementRef
  shape : SimplicialShape Vertex
  presentationDigest : Digest

end Mathematics.Fabric
