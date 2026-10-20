/-
StrictPositivityFromContrast — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9
Organized SHA-256: cf6798c6c78ddd3b1436623b014c51bc892f72b717a5cdc08b184286fb1a0f73
PMD: 510.7.030.080 spectral graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact universal adjacent-pair contrast predicate and full conditional strict-positivity proof, retaining epsilon>0, all contrast hypotheses and existence of an edge. No unconditional energy bound or spectral estimate. -/

import GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteSquaredDifferences.Variant095db63c5a49f882.EdgeChannelSum
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.OrientedFiniteGraphEnergy.Variant095db63c5a49f882.NeighborAndTotalSums

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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.OrientedFiniteGraphEnergy.Variant095db63c5a49f882

open Folder
open Folder.Spectral

open Carrier

open GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteSquaredDifferences.Variant095db63c5a49f882
def HasChannelContrast {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (ε : ℝ)
    (X : SpectralTensor s k) :
    Prop :=
  ∀ c d, G.Adj c d →
    ∃ q, ε ≤ |X.value c q - X.value d q|

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

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.OrientedFiniteGraphEnergy.Variant095db63c5a49f882
