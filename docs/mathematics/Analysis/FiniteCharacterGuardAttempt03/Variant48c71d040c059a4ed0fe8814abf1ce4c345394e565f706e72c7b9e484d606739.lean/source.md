# Complete source: GRWTSK.Analysis.FiniteCharacterGuardAttempt03.Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdbdbe2984f1c89ca7fb1f820af52bead5e15808` · SHA-256 `b005f1ea5eebfae2a58866404366228ddbf948208e22161a2f1d8e6278bed482`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.CoefficientMap.Variantf849dc5dd6b3c74c8e3a3c41e8fc45aa63fa795a25240b43b9844c096b31dbb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f849dc5dd6b3c74c8e3a3c41e8fc45aa63fa795a25240b43b9844c096b31dbb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CoefficientMap.Variantf849dc5dd6b3c74c8e3a3c41e8fc45aa63fa795a25240b43b9844c096b31dbb9","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f849dc5dd6b3c74c8e3a3c41e8fc45aa63fa795a25240b43b9844c096b31dbb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass18/dirichlet_review/FiniteCharacterGuard-attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality

/-! Exact complete/incomplete finite-character information for #241.
Research direction grwtsk contributors; scratch proof construction OpenAI Codex.
The analytic Dirichlet source, GRH and source positivity are not asserted. -/

namespace GRWTSK.Analysis.CoefficientMap.Variantf849dc5dd6b3c74c8e3a3c41e8fc45aa63fa795a25240b43b9844c096b31dbb9

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.FiniteCharacterGuard
open Finset RCLike
open scoped BigOperators ComplexConjugate
variable {G : Type*} [AddCommGroup G] [Fintype G]

/-- Actual normalized character coefficient, linear in the observed function. -/
def coefficientMap (character : AddChar G ℂ) : (G → ℂ) →ₗ[ℂ] ℂ where
  toFun f := wInner (𝕜 := ℂ) cWeight (character : G → ℂ) f
  map_add' f g := wInner_add_right _ _ _ _
  map_smul' c f := by simp [wInner_smul_right]

/-- The convention is conjugate-character times the function, averaged over the group. -/
theorem coefficient_eq_expect (character : AddChar G ℂ) (f : G → ℂ) :
    coefficientMap character f = 𝔼 x, conj (character x) * f x := by
  simp [coefficientMap,wInner_cWeight_eq_expect,RCLike.inner_apply,mul_comm]

/-- AddChar's zero is the actual trivial character, taking the value one everywhere. -/
theorem trivial_coefficient_eq_mean (f : G → ℂ) :
    coefficientMap (0 : AddChar G ℂ) f = 𝔼 x, f x := by
  simp [coefficient_eq_expect]

/-- Reuse actual normalized orthogonality, including the trivial character. -/
theorem coefficient_character (a b : AddChar G ℂ) :
    coefficientMap a (b : G → ℂ) = if a=b then 1 else 0 := by
  exact AddChar.wInner_cWeight_eq_boole a b

/-- Actual coefficient agrees with the complete complex character basis coordinate. -/
theorem coefficient_eq_basis_repr (character : AddChar G ℂ) (f : G → ℂ) :
    coefficientMap character f = (AddChar.complexBasis G).repr f character := by
  classical
  conv_lhs => rw [← (AddChar.complexBasis G).sum_repr f]
  simp only [map_sum,map_smul,AddChar.complexBasis_apply,coefficient_character]
  simp [smul_eq_mul]

/-- Full reconstruction retains the complete character family. -/
theorem complete_reconstruction (f : G → ℂ) :
    (∑ character : AddChar G ℂ, coefficientMap character f • (character : G → ℂ)) = f := by
  simpa only [coefficient_eq_basis_repr,AddChar.complexBasis_apply] using
    (AddChar.complexBasis G).sum_repr f

/-- The independently defined decoder that discards the trivial channel. -/
def incompleteReconstruction (f : G → ℂ) : G → ℂ :=
  ∑ character ∈ Finset.univ.erase (0 : AddChar G ℂ),
    coefficientMap character f • (character : G → ℂ)

/-- The discarded term is exactly the constant/trivial component. -/
theorem reconstruction_split (f : G → ℂ) :
    f = incompleteReconstruction f +
      coefficientMap (0 : AddChar G ℂ) f • (fun _ : G => (1 : ℂ)) := by
  classical
  have hsum := Finset.sum_erase_add Finset.univ
    (fun character : AddChar G ℂ => coefficientMap character f • (character : G → ℂ))
    (Finset.mem_univ (0 : AddChar G ℂ))
  rw [complete_reconstruction f] at hsum
  apply funext
  intro x
  simpa only [incompleteReconstruction,Pi.add_apply,Pi.smul_apply,smul_eq_mul,
    AddChar.zero_apply,mul_one] using congrFun hsum.symm x

/-- Actual incomplete reconstruction is exact precisely for zero mean. -/
theorem incomplete_eq_self_iff (f : G → ℂ) :
    incompleteReconstruction f = f ↔ coefficientMap (0 : AddChar G ℂ) f = 0 := by
  constructor
  · intro h
    have hs := congrFun (reconstruction_split f) (0 : G)
    rw [h] at hs
    simp only [Pi.add_apply,Pi.smul_apply,smul_eq_mul,mul_one] at hs
    exact add_eq_left.mp hs.symm
  · intro h
    simpa [h] using (reconstruction_split f).symm

/-- The span omitting the trivial basis vector. -/
def nontrivialSpan : Submodule ℂ (G → ℂ) :=
  Submodule.span ℂ (((⇑) : AddChar G ℂ → G → ℂ) '' {character | character ≠ 0})

theorem nontrivialSpan_le_trivial_kernel :
    nontrivialSpan (G := G) ≤ (coefficientMap (0 : AddChar G ℂ)).ker := by
  classical
  apply Submodule.span_le.mpr
  rintro f ⟨character,hcharacter,rfl⟩
  change coefficientMap 0 (character : G → ℂ) = 0
  simp [coefficient_character,Ne.symm hcharacter]

/-- A nonzero trivial character cannot be recovered from the omitted span. -/
theorem trivial_not_mem_nontrivialSpan :
    (fun _ : G => (1 : ℂ)) ∉ nontrivialSpan (G := G) := by
  intro h
  have hz := nontrivialSpan_le_trivial_kernel h
  change coefficientMap 0 (fun _ : G => (1 : ℂ)) = 0 at hz
  have he : coefficientMap (0 : AddChar G ℂ) (fun _ : G => (1 : ℂ)) = 1 := by
    simp [trivial_coefficient_eq_mean]
  rw [he] at hz
  exact one_ne_zero hz

end ContinuousResearch.FiniteCharacterGuard
```
