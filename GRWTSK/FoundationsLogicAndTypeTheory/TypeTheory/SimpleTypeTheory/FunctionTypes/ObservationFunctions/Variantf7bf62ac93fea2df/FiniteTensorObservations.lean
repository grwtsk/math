/-
Exact mean, graph-energy and cell-count observation definitions
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f7bf62ac93fea2dfc54ffd123ed007a80ade877816c31bab62c4705468fb2728
Organized SHA-256: edadeff84a15b9198711092e4897081ea9cecfdd7fc99a25f679d9f40d8e08c4
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- All three original concrete observer definitions under full s/k/G and original tensor/graph providers. Mean and graph energy use their exact original functions; cell count is the constant Nat product. No observer consistency, inverse, positivity or spectral theorem is asserted; zero dimensions/channels remain allowed. -/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ObservationFunctions.Variantf7bf62ac93fea2df.ObserverAndConsistency
import Folder.Spectral.Energy
import Folder.Spectral.Expansion

/-!
# Folder.Spectral.Witness

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.witness
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


open Folder
open Folder.Spectral

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ObservationFunctions.Variantf7bf62ac93fea2df

open Carrier

noncomputable def meanWitness (s : GridShape) (k : Nat) :
    Witness (SpectralTensor s k) ℝ where
  observe := SpectralTensor.mean

noncomputable def energyWitness {s : GridShape} (k : Nat)
    (G : CellGraph s) :
    Witness (SpectralTensor s k) ℝ where
  observe := energy G

def cellCountWitness (s : GridShape) (k : Nat) :
    Witness (SpectralTensor s k) Nat where
  observe := fun _ => s.rows * s.cols * k

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ObservationFunctions.Variantf7bf62ac93fea2df
