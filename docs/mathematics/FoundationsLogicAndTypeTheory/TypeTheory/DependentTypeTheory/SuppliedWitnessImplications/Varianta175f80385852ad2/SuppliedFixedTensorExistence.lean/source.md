# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedWitnessImplications.Varianta175f80385852ad2.SuppliedFixedTensorExistence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `572b3077489d40b1f672a976ac16fc62252da21f` · SHA-256 `ddf320ba3fb69d602ff9692a9e709e5c77ae0544550cb04b2b37b19e8fafdb7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Individually read source: Applying an already supplied fixed-tensor existence implication.
Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic recombination,
and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established model mechanisms
or final per-declaration authorship. Original source notices remain exact in the archives.
Original source SHA256: a175f80385852ad236e22b363833f2ae4340dfb6d3e3a0a73883dead96887b53
Review: attribution-254-review-000170.
PMD: 510.0.070.020 dependent type theory; editorial navigation only.
The original N.nonzeroIndex is a supplied proposition, not a computed numerical/index nonzero fact.
The complete original bridge B and its typed implication must already be supplied, as must hN.
B.fixedPointContract itself already contains a fixed-tensor existence witness without hN.
This exact conditional wrapper constructs no bridge or fixed-point theorem from analytic data.
All C/F/nabla/Hflow/e/D/H/T/N/B/hN parameters and the qualified provider proof remain exact.
The preexisting import retains its original unresolved binding; the newly reviewed bridge is not
silently substituted. No independent index-to-fixed-tensor construction is asserted.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.CrystallineIndex.IndexFixedTensorBridge

/-!
# Folder.Theorem.CrystallineIndex.IndexFixedTensorBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports index-to-fixed-tensor bridge facts.
Ontology: proof.crystalline_index.index_fixed_tensor_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedWitnessImplications.Varianta175f80385852ad2

theorem fixed_tensor_from_nonzero_index
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {Hflow : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    {N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T}
    (B : @Folder.CrystallineIndex.IndexToFixedTensorBridge C F nabla Hflow e D H T N)
    (hN : N.nonzeroIndex) :
    ∃ _ :
      Folder.CrystallineTensor.FixedTensor nabla e B.fixedPointContract.object,
      True :=
  Folder.CrystallineIndex.IndexFixedTensorBridge.fixed_tensor_from_nonzero_index B hN

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedWitnessImplications.Varianta175f80385852ad2
```
