-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.KernelCone.Variant1d0bc040e938acc330f36ed4aba72f93bde39cfbb87f9f4afd9e1c7ad96b513e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d0bc040e938acc330f36ed4aba72f93bde39cfbb87f9f4afd9e1c7ad96b513e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.KernelCone.Variant1d0bc040e938acc330f36ed4aba72f93bde39cfbb87f9f4afd9e1c7ad96b513e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"1d0bc040e938acc330f36ed4aba72f93bde39cfbb87f9f4afd9e1c7ad96b513e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/Kernels.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Moritz Firsching. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Kurniadi Angdinata, Moritz Firsching, Nikolas Kuhn
-/
import Mathlib.Algebra.Category.Grp.EpiMono
import Mathlib.Algebra.Category.Grp.Preadditive
import Mathlib.CategoryTheory.Limits.Shapes.Kernels

/-!
# The concrete (co)kernels in the category of abelian groups are categorical (co)kernels.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.KernelCone.Variant1d0bc040e938acc330f36ed4aba72f93bde39cfbb87f9f4afd9e1c7ad96b513e

namespace AddCommGrp

open AddMonoidHom CategoryTheory Limits QuotientAddGroup

universe u

variable {G H : AddCommGrp.{u}} (f : G ⟶ H)

/-- The kernel cone induced by the concrete kernel. -/
def kernelCone : KernelFork f :=
  KernelFork.ofι (Z := of f.hom.ker) (ofHom f.hom.ker.subtype) <| ext fun x =>
    x.casesOn fun _ hx => hx

/-- The kernel of a group homomorphism is a kernel in the categorical sense. -/
def kernelIsLimit : IsLimit <| kernelCone f :=
  Fork.IsLimit.mk _
    (fun s => ofHom <| s.ι.hom.codRestrict _ fun c => mem_ker.mpr <|
      ConcreteCategory.congr_hom s.condition c)
    (fun _ => by rfl)
    (fun _ _ h => ext fun x => Subtype.ext_iff_val.mpr <| ConcreteCategory.congr_hom h x)

/-- The cokernel cocone induced by the projection onto the quotient. -/
def cokernelCocone : CokernelCofork f :=
  CokernelCofork.ofπ (Z := of <| H ⧸ f.hom.range) (ofHom (mk' f.hom.range)) <| ext fun x =>
    (eq_zero_iff _).mpr ⟨x, rfl⟩

/-- The projection onto the quotient is a cokernel in the categorical sense. -/
def cokernelIsColimit : IsColimit <| cokernelCocone f :=
  Cofork.IsColimit.mk _
    (fun s => ofHom <| lift _ _ <| (range_le_ker_iff _ _).mpr <|
      congr_arg Hom.hom (CokernelCofork.condition s))
    (fun _ => rfl)
    (fun _ _ h => have : Epi (cokernelCocone f).π := (epi_iff_surjective _).mpr <| mk'_surjective _
      (cancel_epi (cokernelCocone f).π).mp <| by simpa only [parallelPair_obj_one] using h)

end AddCommGrp
