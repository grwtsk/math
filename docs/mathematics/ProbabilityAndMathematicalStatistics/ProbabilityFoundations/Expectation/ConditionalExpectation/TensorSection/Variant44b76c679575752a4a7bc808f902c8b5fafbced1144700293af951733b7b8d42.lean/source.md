# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.TensorSection.Variant44b76c679575752a4a7bc808f902c8b5fafbced1144700293af951733b7b8d42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `149ef5f011a2c8ddc57d02d073ea8eb973b59d69` · SHA-256 `44b76c679575752a4a7bc808f902c8b5fafbced1144700293af951733b7b8d42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.TensorSection
import Folder.CrystallineTensor.ChromaticHeight
import Folder.CrystallineTensor.HodgeDeRhamFiltration

/-!
# Folder.Theorem.CrystallineTensor.TensorSection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports tensor-section, chromatic-height, and filtration boundary facts.
Ontology: proof.crystalline.tensor_section
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace TensorSection

theorem tensor_section_has_some_rank
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.TensorSection F X) :
    ∃ r : Nat, T.HasRank r :=
  Folder.CrystallineTensor.tensor_section_has_some_rank T

theorem height_rank_rule_monotone_if_supplied
    (R : Folder.CrystallineTensor.HeightRankRule) :
    R.monotone :=
  Folder.CrystallineTensor.height_rank_rule_monotone_if_supplied R

theorem filtration_exhaustive
    (F : Folder.CrystallineTensor.Filtration) :
    F.exhaustive :=
  Folder.CrystallineTensor.filtration_exhaustive F

theorem filtration_separated
    (F : Folder.CrystallineTensor.Filtration) :
    F.separated :=
  Folder.CrystallineTensor.filtration_separated F

end TensorSection
end CrystallineTensor
end Theorem
end Folder
```
