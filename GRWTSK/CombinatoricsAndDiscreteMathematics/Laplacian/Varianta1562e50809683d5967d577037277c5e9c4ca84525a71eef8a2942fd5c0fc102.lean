-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Degree.Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Degree.Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Laplacian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Graph
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Laplacian

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.laplacian
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Degree.Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331

namespace Folder
namespace Spectral

open Carrier

namespace CellGraph

noncomputable def degree {s : GridShape}
    (G : CellGraph s)
    (c : Cell s) :
    Nat := by
  classical
  letI := G.finite_neighbors c
  exact Fintype.card {d : Cell s // G.Adj c d}

noncomputable def laplacian {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k) :
    SpectralTensor s k where
  value := fun c q => by
    classical
    letI := G.finite_neighbors c
    exact (degree G c : ℝ) * X.value c q -
      ∑ d : {d : Cell s // G.Adj c d}, X.value d.1 q

theorem laplacian_constant_zero {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (a : Fin k → ℝ) :
    laplacian G (SpectralTensor.constant s a) =
      SpectralTensor.zero s k := by
  classical
  ext c q
  letI := G.finite_neighbors c
  simp [laplacian, degree, SpectralTensor.constant, SpectralTensor.zero]

end CellGraph

export CellGraph (degree laplacian laplacian_constant_zero)

end Spectral
end Folder
