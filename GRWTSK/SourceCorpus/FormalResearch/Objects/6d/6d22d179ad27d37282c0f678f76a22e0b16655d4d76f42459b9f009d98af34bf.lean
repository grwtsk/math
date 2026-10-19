import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality

/-! Exact complete/incomplete finite-character information for #241.
Research direction grwtsk contributors; scratch proof construction OpenAI Codex.
The analytic Dirichlet source, GRH and source positivity are not asserted. -/
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


/-- All omitted-span elements and only those elements have zero trivial coefficient. -/
theorem mem_nontrivialSpan_iff (f : G → ℂ) :
    f ∈ nontrivialSpan (G := G) ↔ coefficientMap (0 : AddChar G ℂ) f = 0 := by
  classical
  constructor
  · exact fun h => nontrivialSpan_le_trivial_kernel h
  · intro h
    rw [← (incomplete_eq_self_iff f).mpr h]
    unfold incompleteReconstruction
    apply Submodule.sum_mem
    intro character hcharacter
    apply Submodule.smul_mem
    apply Submodule.subset_span
    exact ⟨character,(Finset.mem_erase.mp hcharacter).1,rfl⟩

/-- Literal kernel equality, rather than a claim that an incomplete family is a basis. -/
theorem nontrivialSpan_eq_trivial_kernel :
    nontrivialSpan (G := G) = (coefficientMap (0 : AddChar G ℂ)).ker := by
  ext f
  exact mem_nontrivialSpan_iff f

theorem coefficient_constant (character : AddChar G ℂ) (c : ℂ) :
    coefficientMap character (fun _ : G => c) = if character=0 then c else 0 := by
  have he : (fun _ : G => c) = c • ((0 : AddChar G ℂ) : G → ℂ) := by
    ext x
    simp
  rw [he,map_smul,coefficient_character]
  split_ifs <;> simp

/-- The whole observation omitting the trivial channel; no source coupling is assumed. -/
def nontrivialStack (f : G → ℂ) : {character : AddChar G ℂ // character ≠ 0} → ℂ :=
  fun character => coefficientMap character.1 f

theorem nontrivialStack_add_constant (f : G → ℂ) (c : ℂ) :
    nontrivialStack (f + fun _ : G => c) = nontrivialStack f := by
  ext character
  simp [nontrivialStack,map_add,coefficient_constant,character.2]

/-- The complete discarded ambiguity is exactly one constant component. -/
theorem nontrivialStack_eq_iff_constant_difference (f g : G → ℂ) :
    nontrivialStack f = nontrivialStack g ↔ ∃ c : ℂ, f = g + fun _ : G => c := by
  classical
  constructor
  · intro h
    refine ⟨coefficientMap 0 f-coefficientMap 0 g,?_⟩
    apply (AddChar.complexBasis G).repr.injective
    ext character
    rw [← coefficient_eq_basis_repr,← coefficient_eq_basis_repr,map_add,coefficient_constant]
    by_cases hc : character=0
    · simp [hc]
    · have hsame := congrFun h ⟨character,hc⟩
      simpa [nontrivialStack,hc] using hsame
  · rintro ⟨c,rfl⟩
    exact nontrivialStack_add_constant g c

/-- Even an arbitrary decoder cannot recover the lost coefficient from these channels alone. -/
theorem no_trivial_coefficient_decoder :
    ¬ ∃ decode : ({character : AddChar G ℂ // character ≠ 0} → ℂ) → ℂ,
      ∀ f : G → ℂ, decode (nontrivialStack f) = coefficientMap (0 : AddChar G ℂ) f := by
  rintro ⟨decode,hdecode⟩
  have hzero := hdecode (0 : G → ℂ)
  simp only [map_zero] at hzero
  have hone := hdecode (fun _ : G => (1 : ℂ))
  have hsame : nontrivialStack (fun _ : G => (1 : ℂ)) = nontrivialStack (0 : G → ℂ) := by
    simpa using nontrivialStack_add_constant (0 : G → ℂ) (1 : ℂ)
  rw [hsame,hzero,coefficient_constant] at hone
  exact zero_ne_one (by simpa using hone)

/-- Actual character-indexed scalar fibers: trivial negative, every other one positive. -/
def scalarFiber (character : AddChar G ℂ) : ℝ := if character=0 then -1 else 2

theorem scalarFiber_sum :
    (∑ character : AddChar G ℂ, scalarFiber character) = 2*(Fintype.card G : ℝ)-3 := by
  classical
  have he (character : AddChar G ℂ) : scalarFiber character =
      2-3*(if character=0 then 1 else 0) := by
    unfold scalarFiber
    split_ifs <;> norm_num
  simp only [he,Finset.sum_sub_distrib,← Finset.mul_sum]
  simp [AddChar.card_eq,nsmul_eq_mul]
  ring

/-- The hostile family requires a genuinely nontrivial finite group. -/
theorem scalarFiber_positive_total [Nontrivial G] :
    0 < ∑ character : AddChar G ℂ, scalarFiber character := by
  rw [scalarFiber_sum]
  have hn : 2 ≤ Fintype.card G := by have h := Fintype.one_lt_card (α := G); omega
  have hr : (2 : ℝ) ≤ Fintype.card G := by exact_mod_cast hn
  linarith

theorem scalarFiber_negative_trivial : scalarFiber (0 : AddChar G ℂ) < 0 := by
  simp [scalarFiber]

theorem scalarFiber_positive_nontrivial {character : AddChar G ℂ} (hcharacter : character ≠ 0) :
    0 < scalarFiber character := by
  simp [scalarFiber,hcharacter]

/-- Positive total over the complete character stack is not positivity in every fiber. -/
theorem positive_total_not_fiberwise [Nontrivial G] :
    ¬ (∀ Q : AddChar G ℂ → ℝ, 0 ≤ ∑ character, Q character → ∀ character, 0 ≤ Q character) := by
  intro h
  have hb := h scalarFiber scalarFiber_positive_total.le 0
  exact (not_le_of_gt scalarFiber_negative_trivial) hb

end ContinuousResearch.FiniteCharacterGuard
