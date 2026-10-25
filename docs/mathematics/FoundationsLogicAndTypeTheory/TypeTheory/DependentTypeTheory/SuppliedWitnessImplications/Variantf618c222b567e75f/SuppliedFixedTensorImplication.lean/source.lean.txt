/-
Individually read source: A supplied typed implication and its conditional application.
Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic recombination,
and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established model mechanisms
or final per-declaration authorship. Original source notices remain exact in the archives.
Original source SHA256: f618c222b567e75f48d75b96edd46ffcd2b4278c5b8d5891ad17c8a81e2d76c7
Review: attribution-254-review-000169.
PMD: 510.0.070.020 dependent type theory; secondary dependent functions/propositional logic;
editorial navigation only.
The complete record stores an actual typed implication; the theorem applies that supplied field.
N.nonzeroIndex is the original supplied predicate, not a derived numerical nonzero statement.
B already carries a fixed-point contract whose fields include the same existence witness.
All C/F/nabla/Hflow/e/D/H/T/N/B/hN premises are retained. No independent analytic index theorem,
nonzero-to-fixed-tensor derivation or fixed-point existence construction is claimed.
The original imports remain unchanged and unreplayed; no reviewed provider is substituted.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.CrystallineTensor.TensorFixedPointContract
import Folder.CrystallineIndex.NonvanishingIndex

/-!
# Folder.CrystallineIndex.IndexFixedTensorBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges index contracts to fixed tensors, not BinaryMatrix fixed points.
Ontology: crystalline_index.index_fixed_tensor_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedWitnessImplications.Variantf618c222b567e75f

open Folder
open Folder.CrystallineIndex

/--
Bridge from supplied nonzero index data to a supplied fixed tensor contract.

This is the explicit theorem-target boundary where nonzero index may produce
fixed tensor data.
-/
structure IndexToFixedTensorBridge
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    (N : @NonvanishingIndex C F nabla D H T) where
  fixedPointContract :
    CrystallineTensor.TensorFixedPointContract nabla Hflow e
  nonzeroIndexSuppliesFixedTensor :
    N.nonzeroIndex →
      ∃ _ : CrystallineTensor.FixedTensor nabla e fixedPointContract.object, True

namespace IndexFixedTensorBridge

theorem fixed_tensor_from_nonzero_index
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    {N : @NonvanishingIndex C F nabla D H T}
    (B : @IndexToFixedTensorBridge C F nabla Hflow e D H T N)
    (hN : N.nonzeroIndex) :
    ∃ _ : CrystallineTensor.FixedTensor nabla e B.fixedPointContract.object, True :=
  B.nonzeroIndexSuppliesFixedTensor hN

end IndexFixedTensorBridge

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedWitnessImplications.Variantf618c222b567e75f
