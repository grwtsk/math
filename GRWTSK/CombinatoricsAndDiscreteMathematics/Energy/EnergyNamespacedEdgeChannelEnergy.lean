-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EdgeChannelEnergy.Variant095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EdgeChannelEnergy.Variant095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Energy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Graph
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Energy

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.energy
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EdgeChannelEnergy.Variant095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9

namespace Folder
namespace Spectral

open Carrier

noncomputable def edgeChannelEnergy {s : GridShape} {k : Nat}
    (X : SpectralTensor s k)
    (c d : Cell s) :
    ℝ :=
  ∑ q : Fin k, (X.value c q - X.value d q) ^ 2

noncomputable def cellEnergy {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k)
    (c : Cell s) :
    ℝ := by
  classical
  letI := G.finite_neighbors c
  exact ∑ d : {d : Cell s // G.Adj c d}, edgeChannelEnergy X c d.1

/--
Oriented graph energy: each undirected edge contributes twice, once per
orientation. This keeps the finite sum simple and is enough for positivity.
-/
noncomputable def energy {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k) :
    ℝ :=
  ∑ c : Cell s, cellEnergy G X c

def HasChannelContrast {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (ε : ℝ)
    (X : SpectralTensor s k) :
    Prop :=
  ∀ c d, G.Adj c d →
    ∃ q, ε ≤ |X.value c q - X.value d q|

def CenteredAroundHalf {s : GridShape} {k : Nat}
    (ε : ℝ)
    (X : SpectralTensor s k) :
    Prop :=
  |SpectralTensor.mean X - (1 / 2 : ℝ)| ≤ ε

theorem edgeChannelEnergy_nonneg {s : GridShape} {k : Nat}
    (X : SpectralTensor s k)
    (c d : Cell s) :
    0 ≤ edgeChannelEnergy X c d := by
  classical
  unfold edgeChannelEnergy
  exact Finset.sum_nonneg fun q _ => sq_nonneg _

theorem cellEnergy_nonneg {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k)
    (c : Cell s) :
    0 ≤ cellEnergy G X c := by
  classical
  unfold cellEnergy
  letI := G.finite_neighbors c
  exact Finset.sum_nonneg fun d _ => edgeChannelEnergy_nonneg X c d.1

theorem energy_nonneg {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k) :
    0 ≤ energy G X := by
  classical
  unfold energy
  exact Finset.sum_nonneg fun c _ => cellEnergy_nonneg G X c

theorem energy_positive_of_contrast {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (ε : ℝ)
    (X : SpectralTensor s k)
    (hε : 0 < ε)
    (h : HasChannelContrast G ε X)
    (hedge : ∃ c d, G.Adj c d) :
    0 < energy G X := by
  classical
  rcases hedge with ⟨c, d, hadj⟩
  rcases h c d hadj with ⟨q, hq⟩
  have h_abs_pos : 0 < |X.value c q - X.value d q| :=
    lt_of_lt_of_le hε hq
  have hdiff_ne : X.value c q - X.value d q ≠ 0 :=
    (abs_pos.mp h_abs_pos)
  have hterm_pos : 0 < (X.value c q - X.value d q) ^ 2 := by
    exact sq_pos_of_ne_zero hdiff_ne
  have hterm_le_edge :
      (X.value c q - X.value d q) ^ 2 ≤ edgeChannelEnergy X c d := by
    unfold edgeChannelEnergy
    exact Finset.single_le_sum
      (fun q' _ => sq_nonneg (X.value c q' - X.value d q'))
      (by simp)
  have hedge_energy_pos : 0 < edgeChannelEnergy X c d :=
    lt_of_lt_of_le hterm_pos hterm_le_edge
  let nd : {d : Cell s // G.Adj c d} := ⟨d, hadj⟩
  have hneighbor_le_cell :
      edgeChannelEnergy X c d ≤ cellEnergy G X c := by
    unfold cellEnergy
    letI := G.finite_neighbors c
    let nd : {d : Cell s // G.Adj c d} := ⟨d, hadj⟩
    exact Finset.single_le_sum
      (s := (Finset.univ : Finset {d : Cell s // G.Adj c d}))
      (f := fun d' => edgeChannelEnergy X c d'.1)
      (fun d' _ => edgeChannelEnergy_nonneg X c d'.1)
      (show nd ∈ (Finset.univ : Finset {d : Cell s // G.Adj c d}) by simp)
  have hcell_pos : 0 < cellEnergy G X c :=
    lt_of_lt_of_le hedge_energy_pos hneighbor_le_cell
  have hcell_le_energy :
      cellEnergy G X c ≤ energy G X := by
    unfold energy
    exact Finset.single_le_sum
      (fun c' _ => cellEnergy_nonneg G X c')
      (by simp)
  exact lt_of_lt_of_le hcell_pos hcell_le_energy

end Spectral
end Folder
