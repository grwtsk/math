/-
ExplicitFailureOfInjectivity — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: da282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893
Organized SHA-256: 7a97762b922ac9456ac1ca33bf866f8576fba44814cd7905908f408dec8806de
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The exact full noninjectivity theorem for a one-cell one-channel unit-threshold map, using original constant0 and constant1/4 witnesses and all unchanged proof terms. No general quantization impossibility or residual reconstruction asserted. -/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa.CompleteThresholdSpecification
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa.ChannelApplication
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa.UnitThresholdConstruction

import Folder.Carrier.BinaryMatrix
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Quantization

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.quantization
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa

open Folder
open Folder.Spectral

open Carrier

theorem quantization_not_declared_injective :
    ¬ Function.Injective
      (fun X : SpectralTensor ⟨1, 1⟩ 1 =>
        quantizeChannel unitThresholdQuantizer 0 X) := by
  intro hinj
  let X0 : SpectralTensor ⟨1, 1⟩ 1 :=
    SpectralTensor.constant ⟨1, 1⟩ (fun _ => 0)
  let Xq : SpectralTensor ⟨1, 1⟩ 1 :=
    SpectralTensor.constant ⟨1, 1⟩ (fun _ => (1 / 4 : ℝ))
  have hq :
      quantizeChannel unitThresholdQuantizer 0 X0 =
        quantizeChannel unitThresholdQuantizer 0 Xq := by
    apply BinaryMatrix.ext_entries
    intro i j
    fin_cases i
    fin_cases j
    norm_num [quantizeChannel, unitThresholdQuantizer, X0, Xq]
  have hx := hinj hq
  have hv := congrArg
    (fun X : SpectralTensor ⟨1, 1⟩ 1 =>
      X.value (⟨0, by decide⟩, ⟨0, by decide⟩) 0) hx
  simp [X0, Xq] at hv

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa
