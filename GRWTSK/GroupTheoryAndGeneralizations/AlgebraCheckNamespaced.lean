-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Divisors.Variantdd33b89efdf8f2af0cf347effb218b524bc568dd75ec0e392bda3d9e07f2a8ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd33b89efdf8f2af0cf347effb218b524bc568dd75ec0e392bda3d9e07f2a8ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Divisors.Variantdd33b89efdf8f2af0cf347effb218b524bc568dd75ec0e392bda3d9e07f2a8ae","mathematical_subject":"Algebra.Groups","original_sha256":"dd33b89efdf8f2af0cf347effb218b524bc568dd75ec0e392bda3d9e07f2a8ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/algebra-check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Factorization.Divisors
import Mathlib.GroupTheory.SpecificGroups.Cyclic
import Mathlib.GroupTheory.QuotientGroup.Defs
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace GRWTSK.Algebra.GroupTheory.Divisors.Variantdd33b89efdf8f2af0cf347effb218b524bc568dd75ec0e392bda3d9e07f2a8ae

#check IsAddCyclic.ext
#check AddSubgroup.isAddCyclic_iff_exists_zmultiples_eq_top
#check IsAddCyclic.ext
#check IsCyclic.ext
#check IsAddCyclic.card_nsmul_eq_zero_le
#check Nat.card_zmultiples
#check addOrderOf_dvd_natCard
#check addOrderOf_dvd_of_mem_zmultiples
#check addOrderOf_dvd_iff_nsmul_eq_zero
#check AddSubgroup.orderIsoAddCon
#check ZMod.natCast_zmod_val
#check ZMod.addOrderOf_coe
#check AddSubgroup.mem_zmultiples_iff
#check AddSubgroup.mem_zmultiples
#check Nat.div_dvd_of_dvd
#check Nat.div_mul_cancel
#check Nat.mul_div_cancel_left
#check AddSubgroup.isAddCyclic
#check AddSubgroup.card_eq_iff_eq_top
#check AddSubgroup.eq_of_le_of_card_ge
#check AddSubgroup.card_dvd_of_le
#check AddSubgroup.card_subgroup_dvd_card
#check AddSubgroup.card_dvd
#check IsAddCyclic.exists_generator
#check AddMonoidHom.ker
#check nsmulAddMonoidHom
#check Fintype.card_coe
#check Fintype.card_subtype
#check Nat.card_eq_fintype_card
#check AddSubgroup.zmultiples_le_of_mem
#check Nat.div_dvd_of_dvd
#check Nat.mul_div_cancel'
