# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedRecordConsequences.Variant0c33de2534defab3.FixedTensorWitnessConsequences

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b2eb94f4f93f9d6a98715e56d2e10694b17c08c` · SHA-256 `196ece73ac7d3f56beb411bab5b8d725a19ffce6c7cc7b0dc1637d40a0367921`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact consequences of an already supplied dependent fixed-tensor witness
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 0c33de2534defab3b0c19154dee11063355852aeeb5ced191cfbd15d22c9b3d1
Organized SHA-256: 627d3f485d82fccd3425b33be778b9b1114f1f859e6dd13a56198ea839e0f07d
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
The original full C/F/nabla/H/e/K hypotheses and all three qualified proof calls remain exact.
K already contains the FixedTensor existence witness; these theorems do not derive that witness
from heat, spectral, compactness or analytic hypotheses. The horizontal condition is the supplied
Connection predicate; the fixed-section conclusion contains the actual original e.map equality.
The original contract also has an independent unproved uniqueness? proposition. No uniqueness,
new provider substitution or independent tensor fixed-point theorem is asserted.
-/

import Folder.CrystallineTensor.TensorFixedPointContract

/-!
# Folder.Theorem.CrystallineTensor.TensorFixedPointContract

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the tensor fixed-point contract-composition theorems.
Ontology: proof.crystalline.tensor_fixed_point_contract
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedRecordConsequences.Variant0c33de2534defab3

theorem tensor_fixed_point_exists
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e) :
    ∃ _ : Folder.CrystallineTensor.FixedTensor nabla e K.object, True :=
  Folder.CrystallineTensor.TensorFixedPointContract.tensor_fixed_point_exists K

theorem tensor_fixed_point_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e) :
    ∃ T : Folder.CrystallineTensor.FixedTensor nabla e K.object,
      nabla.horizontal K.object T.tensor.underlyingSection :=
  Folder.CrystallineTensor.TensorFixedPointContract.tensor_fixed_point_horizontal K

theorem tensor_fixed_point_fixed
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e) :
    ∃ T : Folder.CrystallineTensor.FixedTensor nabla e K.object,
      e.map K.object T.tensor.underlyingSection =
        T.tensor.underlyingSection :=
  Folder.CrystallineTensor.TensorFixedPointContract.tensor_fixed_point_fixed K

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedRecordConsequences.Variant0c33de2534defab3
```
