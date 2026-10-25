# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3FiniteCharacterG.Variant538b2999b16f014b0b7be4d59cc33343f848551504469b83358b6cacde831c97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3776d2816ba2863b8682fac571011784a705e7c9` · SHA-256 `2ad9b829b664e6d7423d8971555c7bf87dcae3c99851f2d77feae70a8c0c8e36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Average.Variantce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Average.Variantce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/ce/ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3--FiniteCharacterGuard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality
import Mathlib.LinearAlgebra.Basis.Basic
import Mathlib.Tactic

/-!
# UNELABORATED DRAFT: the missing trivial-character coordinate

This ignored draft has NOT been run through Lean. It has no acceptance status.
Do not cite the proof bodies as checked declarations until a source-branch replay
has elaborated and audited them in the pinned environment.

The character type and complete basis are Mathlib's existing `AddChar` and
`AddChar.complexBasis`; the trivial additive character `0` is constant `1`.
The new maps merely expose the mean and restrict the existing basis coordinates.
Mean-zero/orthogonality facts are reused directly from Mathlib.

The decoder obstruction quantifies over the full finite function space. A
restricted arithmetic source family needs its own coupling/reconstruction
hypotheses. The hostile fibers below are actual character-indexed finite scalar
fibers; they are not values of a constructed Dirichlet-L or Weil source.

AI attribution: Codex authored this unelaborated draft.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Average.Variantce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3

namespace FormalResearch.MathematicalTooling.FiniteCharacterGuard

open scoped BigOperators

variable {G : Type*} [AddCommGroup G] [Fintype G]

/-- The normalized mean on the finite function space, independently of the
character coordinates. This is the existing `Finset.expect` bundled linearly. -/
noncomputable def average : (G → ℂ) →ₗ[ℂ] ℂ where
  toFun f := 𝔼 g, f g
  map_add' f h := Finset.expect_add_distrib Finset.univ f h
  map_smul' c f := by
    simpa using (Finset.smul_expect c Finset.univ f).symm

/-- The independently defined mean is exactly the existing trivial-character
coordinate. No alternative character basis or Fourier normalization is added. -/
theorem average_eq_trivial_coord :
    average (G := G) = (AddChar.complexBasis G).coord 0 := by
  classical
  let b := AddChar.complexBasis G
  apply b.ext
  intro χ
  change average (b χ) = b.repr (b χ) 0
  rw [b.repr_self_apply]
  rw [show b χ = (χ : G → ℂ) by exact AddChar.complexBasis_apply χ]
  exact AddChar.expect_eq_ite χ

/-- Recognition of the constant Fourier coefficient as the exact group mean. -/
theorem trivial_coefficient_eq_average (f : G → ℂ) :
    (AddChar.complexBasis G).repr f 0 = average f := by
  rw [average_eq_trivial_coord]
  rfl

/-- The span of exactly the nontrivial characters in Mathlib's complete basis. -/
noncomputable def nontrivialSpan : Submodule ℂ (G → ℂ) :=
  Submodule.span ℂ ((AddChar.complexBasis G) '' {χ | χ ≠ 0})

/-- A vector belongs to the nontrivial character span precisely when its
trivial Fourier coordinate, equivalently its group mean, vanishes. -/
theorem mem_nontrivialSpan_iff_average_eq_zero (f : G → ℂ) :
    f ∈ nontrivialSpan ↔ average f = 0 := by
  classical
  rw [nontrivialSpan, (AddChar.complexBasis G).mem_span_image,
    Finsupp.support_subset_iff]
  constructor
  · intro h
    have hzero := h 0 (by simp)
    simpa only [trivial_coefficient_eq_average] using hzero
  · intro hf χ hχ
    have hzero : χ = 0 := by simpa using hχ
    subst χ
    rw [trivial_coefficient_eq_average]
    exact hf

/-- Exact submodule equality: nontrivial characters span the mean-zero space. -/
theorem nontrivialSpan_eq_ker_average :
    nontrivialSpan (G := G) = LinearMap.ker (average (G := G)) := by
  ext f
  rw [mem_nontrivialSpan_iff_average_eq_zero, LinearMap.mem_ker]

/-- The constant vector is absent from the nontrivial-character span, including
when the group itself is trivial. -/
theorem constant_not_mem_nontrivialSpan :
    (fun _ : G ↦ (1 : ℂ)) ∉ nontrivialSpan := by
  intro h
  have hmean := (mem_nontrivialSpan_iff_average_eq_zero _).mp h
  have hconstant : average (fun _ : G ↦ (1 : ℂ)) = 1 :=
    Fintype.expect_const 1
  exact one_ne_zero (hconstant.symm.trans hmean)

private theorem constant_eq_smul_trivial (c : ℂ) :
    (fun _ : G ↦ c) = c • (AddChar.complexBasis G) 0 := by
  ext g
  simp [AddChar.complexBasis_apply]

/-- Adding a constant changes exactly the trivial coordinate, with its full
coefficient shown instead of only a noninjectivity conclusion. -/
theorem coefficient_add_constant (f : G → ℂ) (c : ℂ) (χ : AddChar G ℂ) :
    (AddChar.complexBasis G).repr (f + fun _ ↦ c) χ =
      (AddChar.complexBasis G).repr f χ + if χ = 0 then c else 0 := by
  classical
  rw [constant_eq_smul_trivial, map_add, map_smul,
    (AddChar.complexBasis G).repr_self]
  simp [Finsupp.single_apply, eq_comm]

/-- Every retained nontrivial coordinate is insensitive to an added constant. -/
theorem nontrivial_coefficient_add_constant (f : G → ℂ) (c : ℂ)
    (χ : AddChar G ℂ) (hχ : χ ≠ 0) :
    (AddChar.complexBasis G).repr (f + fun _ ↦ c) χ =
      (AddChar.complexBasis G).repr f χ := by
  simpa only [if_neg hχ, add_zero] using coefficient_add_constant f c χ

/-- The omitted coordinate changes by the entire added constant. -/
theorem trivial_coefficient_add_constant (f : G → ℂ) (c : ℂ) :
    (AddChar.complexBasis G).repr (f + fun _ ↦ c) 0 =
      (AddChar.complexBasis G).repr f 0 + c := by
  simpa only [if_pos rfl] using coefficient_add_constant f c 0

/-- The incomplete observation is a restriction of the existing complete
coordinate map; it carries the exact actual-character subtype as its index. -/
noncomputable def nontrivialCoefficients :
    (G → ℂ) →ₗ[ℂ] ({χ : AddChar G ℂ // χ ≠ 0} → ℂ) :=
  LinearMap.pi fun χ ↦ (AddChar.complexBasis G).coord χ.val

@[simp]
theorem nontrivialCoefficients_apply (f : G → ℂ)
    (χ : {χ : AddChar G ℂ // χ ≠ 0}) :
    nontrivialCoefficients f χ = (AddChar.complexBasis G).repr f χ.val := rfl

/-- The full incomplete stack remains identical under an arbitrary constant
shift. No basis channels are relabelled or conflated in this statement. -/
theorem nontrivialCoefficients_add_constant (f : G → ℂ) (c : ℂ) :
    nontrivialCoefficients (f + fun _ ↦ c) = nontrivialCoefficients f := by
  ext χ
  exact nontrivial_coefficient_add_constant f c χ.val χ.property

/-- The nontrivial-character stack fails to determine the whole finite signal. -/
theorem nontrivialCoefficients_not_injective :
    ¬ Function.Injective (nontrivialCoefficients (G := G)) := by
  intro hinj
  have heq : nontrivialCoefficients (fun _ : G ↦ (1 : ℂ)) =
      nontrivialCoefficients (0 : G → ℂ) := by
    simpa only [zero_add] using
      nontrivialCoefficients_add_constant (0 : G → ℂ) (1 : ℂ)
  have hconstant := hinj heq
  have hvalue := congrFun hconstant (0 : G)
  norm_num at hvalue

/-- Exact decoder impossibility on the entire function space. A decoder for a
restricted source family must supply additional hypotheses reducing this kernel. -/
theorem no_complete_decoder_from_nontrivial_coefficients :
    ¬ ∃ decode : ({χ : AddChar G ℂ // χ ≠ 0} → ℂ) → (G → ℂ),
      ∀ f : G → ℂ, decode (nontrivialCoefficients f) = f := by
  rintro ⟨decode, hdecode⟩
  have hleft : Function.LeftInverse decode (nontrivialCoefficients (G := G)) := hdecode
  exact nontrivialCoefficients_not_injective hleft.injective

/-- Complete reconstruction retains every actual character, including `0`.
The theorem is the existing Mathlib basis reconstruction in the same coordinates. -/
theorem complete_character_reconstruction (f : G → ℂ) :
    ∑ χ : AddChar G ℂ, (AddChar.complexBasis G).repr f χ • (χ : G → ℂ) = f := by
  simpa only [AddChar.complexBasis_apply] using (AddChar.complexBasis G).sum_repr f

namespace Fixtures

/-- Actual characters of the additive group `ZMod 2`: negative trivial fiber,
positive nontrivial fibers. This is not Dirichlet character data modulo two. -/
noncomputable def hostileFibers (χ : AddChar (ZMod 2) ℂ) : ℝ :=
  if χ = 0 then -1 else 2

private theorem hostileFibers_as_boole (χ : AddChar (ZMod 2) ℂ) :
    hostileFibers χ = 2 - 3 * (if χ = 0 then (1 : ℝ) else 0) := by
  classical
  by_cases hχ : χ = 0 <;> simp [hostileFibers, hχ]

/-- Positive total sum despite the negative trivial fiber. -/
theorem hostile_fiber_sum : ∑ χ : AddChar (ZMod 2) ℂ, hostileFibers χ = 1 := by
  classical
  calc
    (∑ χ : AddChar (ZMod 2) ℂ, hostileFibers χ) =
        (∑ _χ : AddChar (ZMod 2) ℂ, (2 : ℝ)) -
          3 * ∑ χ : AddChar (ZMod 2) ℂ, if χ = 0 then (1 : ℝ) else 0 := by
      simp only [hostileFibers_as_boole, Finset.sum_sub_distrib, Finset.mul_sum]
    _ = 1 := by simp [AddChar.card_eq, ZMod.card]

/-- Exact positive average over the character-indexed scalar fibers. -/
theorem hostile_fiber_average : (𝔼 χ : AddChar (ZMod 2) ℂ, hostileFibers χ) = 1 / 2 := by
  rw [Fintype.expect_eq_sum_div_card, hostile_fiber_sum, AddChar.card_eq, ZMod.card]
  norm_num

/-- The trivial fiber retains its negative sign. -/
theorem hostile_trivial_fiber : hostileFibers (0 : AddChar (ZMod 2) ℂ) = -1 := by
  simp [hostileFibers]

/-- Every nontrivial fiber passes the scalar positivity test. -/
theorem hostile_nontrivial_fiber_positive (χ : AddChar (ZMod 2) ℂ) (hχ : χ ≠ 0) :
    0 < hostileFibers χ := by
  simp only [hostileFibers, if_neg hχ]
  norm_num

/-- A positive character average cannot certify the sign of each fiber. -/
theorem positive_average_negative_trivial :
    0 < (𝔼 χ : AddChar (ZMod 2) ℂ, hostileFibers χ) ∧
      hostileFibers (0 : AddChar (ZMod 2) ℂ) < 0 ∧
      (∀ χ : AddChar (ZMod 2) ℂ, χ ≠ 0 → 0 < hostileFibers χ) ∧
      ¬ (∀ χ : AddChar (ZMod 2) ℂ, 0 ≤ hostileFibers χ) := by
  refine ⟨?_, ?_, hostile_nontrivial_fiber_positive, ?_⟩
  · rw [hostile_fiber_average]
    norm_num
  · rw [hostile_trivial_fiber]
    norm_num
  · intro h
    have ht := h 0
    rw [hostile_trivial_fiber] at ht
    norm_num at ht

/-- The exact finite signal with the displayed scalar fibers as its character
coordinates. It uses the original Mathlib complete basis without changing it. -/
noncomputable def hostileSignal : ZMod 2 → ℂ :=
  ∑ χ : AddChar (ZMod 2) ℂ,
    (hostileFibers χ : ℂ) • (AddChar.complexBasis (ZMod 2)) χ

/-- All displayed fibers are actual coordinates of the reconstructed signal. -/
theorem hostile_signal_coordinates (χ : AddChar (ZMod 2) ℂ) :
    (AddChar.complexBasis (ZMod 2)).repr hostileSignal χ = (hostileFibers χ : ℂ) := by
  classical
  simp only [hostileSignal, (AddChar.complexBasis (ZMod 2)).repr_sum_self]

/-- The negative trivial coefficient is exactly the signal's group mean,
while the character-fiber average above remains positive. -/
theorem hostile_signal_average : average hostileSignal = -1 := by
  rw [← trivial_coefficient_eq_average, hostile_signal_coordinates, hostile_trivial_fiber]
  norm_num

end Fixtures

end FormalResearch.MathematicalTooling.FiniteCharacterGuard
```
