/-
# Individually reviewed complete-profile Yoneda wrapper

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Original documentation
and source notices remain exact in the source archives and copied text.
Original source SHA256: 0b03aa3c9f9a9fb6d1f4c6496fcca8b2aec43f92f7d721c1a0e51d0dc4bc4b84
Organized source SHA256: cb904c2401940dbfe33dd7613351a8356795ae652098ab9df9b5d785320e9b64
Review: attribution-254-review-000052.
PMD: 510.9.010.070.030 yoneda embedding; secondary 510.9.010.070.010 representable functors.
The taxonomy is editorial navigation only.
Reconstruction requires an isomorphism of complete representable profiles;
it produces an object isomorphism, not object equality or finite-shadow reconstruction.
Legacy Mathematics.Terrain.YonedaProfile and its qualified declarations remain
explicit and unresolved for replay. No provider alias or substitution is added.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Mathematics.Terrain.YonedaProfile

/-!
# Complete morphism profiles

Only the complete representable profile has Yoneda reconstruction authority.
A finite incidence sketch or Boolean shadow does not.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaTheory.YonedaEmbedding.CompleteProfiles.Variant0b03aa3c9f9a9fb6

open CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

abbrev CompleteMorphismProfile (object : C) :=
  Mathematics.Terrain.YonedaProfile.CompleteMorphismProfile object

noncomputable def reconstructFromCompleteProfile
    {left right : C}
    (profileIso :
      CompleteMorphismProfile left ≅ CompleteMorphismProfile right) :
    left ≅ right :=
  Mathematics.Terrain.YonedaProfile.reconstructIso profileIso

theorem complete_profile_reconstructs_up_to_iso
    (left right : C) :
    Nonempty
        (CompleteMorphismProfile left ≅ CompleteMorphismProfile right) ↔
      Nonempty (left ≅ right) :=
  Mathematics.Terrain.YonedaProfile.profileIso_nonempty_iff_objectIso_nonempty
    left right

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaTheory.YonedaEmbedding.CompleteProfiles.Variant0b03aa3c9f9a9fb6
