/-
# Individually reviewed mathematical candidate: Dependent section data and existence of its stored rank

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing source notices
remain exact in the archives and copied source documentation.
Original source SHA256: 62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c
Organized source SHA256: d8e108b4eef56688a2d146a042e39520bdc705dbd7c77ab2e63444dcb7e573f8
Review: attribution-254-review-000189.
PMD: 510.0.070.020 dependent type theory; editorial navigation only.
Complete original TensorSection data, actual HasRank equality and exact stored-rank existential. The carrier/value and underlyingSection remain independent, and rank is an arbitrary supplied Nat annotation, not a dimension calculation. There is no horizontal field or differential/tensor-product claim. The same-source rank datatype is imported explicitly, with every original C/F/X/T/r parameter and proof byte preserved.
Original whole-source documentation may describe the complete unsplit context.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.CrystallineTensor.IntegrableConnection

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.RankedDependentSections.Variant62761840450861f2.RankAnnotation

/-!
# Folder.CrystallineTensor.TensorSection

Radiation role: research-boundary
BinaryMatrix spine: This module records tensor-valued crystal sections, not binary quantization.
Ontology: crystalline.tensor_section
Pivot role: spectral
Zero typology: none
Contract boundary: definition
Composite stack role: crystalline-tensor
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.RankedDependentSections.Variant62761840450861f2

open Folder
open Folder.CrystallineTensor

structure TensorSection
    {C : CrystallineSite}
    (F : Crystal C)
    (X : C.Site.Obj) where
  rank : TensorRank
  carrier : Type _
  value : carrier
  underlyingSection : F.Section X

def TensorSection.HasRank
    {C : CrystallineSite}
    {F : Crystal C}
    {X : C.Site.Obj}
    (T : TensorSection F X)
    (r : Nat) : Prop :=
  T.rank.value = r

theorem tensor_section_has_some_rank
    {C : CrystallineSite}
    {F : Crystal C}
    {X : C.Site.Obj}
    (T : TensorSection F X) :
    ∃ r : Nat, T.HasRank r :=
  ⟨T.rank.value, rfl⟩

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.RankedDependentSections.Variant62761840450861f2
