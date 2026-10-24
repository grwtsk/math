# Complete source: GRWTSK.Analysis.FiniteCharacterGuardAttempt02.Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b9a99eefbdb251a543576e93b030fbc23fa2265` · SHA-256 `3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
  simpa only [incompleteReconstruction,AddChar.coe_zero] using hsum.symm

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
