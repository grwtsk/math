-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrincipalMultiplicity.Variantbee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrincipalMultiplicity.Variantbee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/DirichletGRH/CenteredPsi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.PrimitiveFamily
public import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
public import Mathlib.NumberTheory.Chebyshev
public import Mathlib.NumberTheory.MulChar.Lemmas

/-!
# Centered twisted Chebyshev sums

For a Dirichlet character `chi`, `twistedPsi chi x` is the finite sum

`sum_{1 <= n <= x} chi(n) Lambda(n)`.

The principal channel is centered by subtracting `x`.  This distinction is
part of the exact arithmetic definition and is not an asymptotic theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrincipalMultiplicity.Variantbee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open scoped ArithmeticFunction BigOperators

/-- The natural-valued multiplicity of the principal pole.  Keeping this
quantity in `ℕ` records that it is a divisor multiplicity; analytic formulas
use its complex coercion below. -/
@[expose]
def principalMultiplicity
    {q : ℕ} (chi : DirichletCharacter ℂ q) : ℕ :=
  by
    classical
    exact if chi = 1 then 1 else 0

/-- The complex scalar associated to `principalMultiplicity`. -/
@[expose]
def principalIndicator
    {q : ℕ} (chi : DirichletCharacter ℂ q) : ℂ :=
  (principalMultiplicity chi : ℂ)

/-- Compatibility name retained for the existing Mellin layer. -/
@[expose]
def dirichletPrincipalIndicator
    {q : ℕ} (chi : DirichletCharacter ℂ q) : ℂ :=
  principalIndicator chi

/-- The finite twisted Chebyshev sum through the integer cutoff `x`. -/
@[expose]
def twistedPsi
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 x,
    chi n * (ArithmeticFunction.vonMangoldt n : ℂ)

/-- The twisted Chebyshev sum with its principal main term removed. -/
@[expose]
def centeredTwistedPsi
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) : ℂ :=
  twistedPsi chi x - dirichletPrincipalIndicator chi * (x : ℂ)

@[surface_adapter, simp]
theorem principalMultiplicity_eq_zero_of_ne_one
    {q : ℕ} {chi : DirichletCharacter ℂ q} (hchi : chi ≠ 1) :
    principalMultiplicity chi = 0 := by
  simp [principalMultiplicity, hchi]

@[surface_adapter, simp]
theorem principalMultiplicity_one
    {q : ℕ} :
    principalMultiplicity (1 : DirichletCharacter ℂ q) = 1 := by
  simp [principalMultiplicity]

@[surface_adapter, simp]
theorem principalMultiplicity_inv
    {q : ℕ} (chi : DirichletCharacter ℂ q) :
    principalMultiplicity chi⁻¹ = principalMultiplicity chi := by
  classical
  simp [principalMultiplicity, inv_eq_one]

@[surface_adapter]
theorem principalIndicator_eq_natCast
    {q : ℕ} (chi : DirichletCharacter ℂ q) :
    principalIndicator chi = (principalMultiplicity chi : ℂ) := rfl

@[surface_adapter, simp]
theorem principalIndicator_inv
    {q : ℕ} (chi : DirichletCharacter ℂ q) :
    principalIndicator chi⁻¹ = principalIndicator chi := by
  simp [principalIndicator]

@[surface_adapter]
theorem dirichletPrincipalIndicator_eq_principalIndicator
    {q : ℕ} (chi : DirichletCharacter ℂ q) :
    dirichletPrincipalIndicator chi = principalIndicator chi := rfl

@[surface_novel, surface_published, simp]
theorem dirichletPrincipalIndicator_eq_zero
    {q : ℕ} {chi : DirichletCharacter ℂ q} (hchi : chi ≠ 1) :
    dirichletPrincipalIndicator chi = 0 := by
  simp [dirichletPrincipalIndicator, principalIndicator,
    principalMultiplicity, hchi]

@[surface_novel, surface_published, simp]
theorem dirichletPrincipalIndicator_one
    {q : ℕ} :
    dirichletPrincipalIndicator (1 : DirichletCharacter ℂ q) = 1 := by
  simp [dirichletPrincipalIndicator, principalIndicator]

@[surface_novel, surface_published, simp]
theorem twistedPsi_zero
    {q : ℕ} (chi : DirichletCharacter ℂ q) :
    twistedPsi chi 0 = 0 := by
  simp [twistedPsi]

@[surface_novel, surface_published, simp]
theorem centeredTwistedPsi_zero
    {q : ℕ} (chi : DirichletCharacter ℂ q) :
    centeredTwistedPsi chi 0 = 0 := by
  simp [centeredTwistedPsi]

/-- A nonprincipal character has no centering term. -/
@[surface_novel, surface_published, simp]
theorem centeredTwistedPsi_eq_twistedPsi_of_ne_one
    {q : ℕ} {chi : DirichletCharacter ℂ q} (hchi : chi ≠ 1) (x : ℕ) :
    centeredTwistedPsi chi x = twistedPsi chi x := by
  simp [centeredTwistedPsi, dirichletPrincipalIndicator,
    principalIndicator, hchi]

/-- In the principal channel the centered sum is exactly `twistedPsi - x`. -/
@[surface_novel, surface_published, simp]
theorem centeredTwistedPsi_one
    {q : ℕ} (x : ℕ) :
    centeredTwistedPsi (1 : DirichletCharacter ℂ q) x =
      twistedPsi (1 : DirichletCharacter ℂ q) x - (x : ℂ) := by
  simp [centeredTwistedPsi, dirichletPrincipalIndicator,
    principalIndicator]

/-- One-step expansion of the finite twisted sum. -/
@[surface_novel, surface_published]
theorem twistedPsi_succ
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) :
    twistedPsi chi (x + 1) = twistedPsi chi x +
      chi ((x + 1 : ℕ) : ZMod q) *
        (ArithmeticFunction.vonMangoldt (x + 1) : ℂ) := by
  simpa only [twistedPsi] using
    (Finset.sum_Icc_succ_top (f := fun n ↦
      chi n * (ArithmeticFunction.vonMangoldt n : ℂ))
      (show 1 ≤ x + 1 by omega))

/-- Twisting by the inverse character complex-conjugates the finite
Chebyshev sum. -/
@[surface_adapter]
theorem twistedPsi_inv
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) :
    twistedPsi chi⁻¹ x = star (twistedPsi chi x) := by
  classical
  change (∑ n ∈ Finset.Icc 1 x,
      chi⁻¹ (n : ZMod q) * (ArithmeticFunction.vonMangoldt n : ℂ)) =
    (starRingEnd ℂ) (∑ n ∈ Finset.Icc 1 x,
      chi (n : ZMod q) * (ArithmeticFunction.vonMangoldt n : ℂ))
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [map_mul]
  simp only [starRingEnd_apply, MulChar.star_apply' chi]
  simp

/-- Centering is compatible with inversion: the inverse-character error
is the complex conjugate of the original error. -/
@[surface_adapter]
theorem centeredTwistedPsi_inv
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) :
    centeredTwistedPsi chi⁻¹ x = star (centeredTwistedPsi chi x) := by
  rw [centeredTwistedPsi, centeredTwistedPsi, twistedPsi_inv]
  have hindicator :
      dirichletPrincipalIndicator chi⁻¹ =
        star (dirichletPrincipalIndicator chi) := by
    rw [dirichletPrincipalIndicator_eq_principalIndicator,
      dirichletPrincipalIndicator_eq_principalIndicator,
      principalIndicator_inv]
    unfold principalIndicator
    simp
  rw [hindicator]
  change star (twistedPsi chi x) -
      star (dirichletPrincipalIndicator chi) * (x : ℂ) =
    (starRingEnd ℂ) (twistedPsi chi x -
      dirichletPrincipalIndicator chi * (x : ℂ))
  rw [map_sub, map_mul]
  simp only [starRingEnd_apply]
  simp

/-- Inverse characters have exactly the same centered-error norm. -/
@[surface_adapter, simp]
theorem centeredTwistedPsi_inv_norm
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) :
    ‖centeredTwistedPsi chi⁻¹ x‖ = ‖centeredTwistedPsi chi x‖ := by
  rw [centeredTwistedPsi_inv, norm_star]

/-- At modulus one, the twisted sum is mathlib's ordinary Chebyshev
`psi` function. -/
@[surface_adapter]
theorem twistedPsi_modOne_eq_chebyshevPsi
    (chi : DirichletCharacter ℂ 1) (x : ℕ) :
    twistedPsi chi x = (Chebyshev.psi x : ℂ) := by
  classical
  have hchi : chi = 1 := Subsingleton.elim _ _
  subst chi
  change (∑ n ∈ Finset.Icc 1 x,
      (1 : DirichletCharacter ℂ 1) (n : ZMod 1) *
        (ArithmeticFunction.vonMangoldt n : ℂ)) =
    ((∑ n ∈ Finset.Ioc 0 ⌊(x : ℝ)⌋₊,
      ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)
  rw [Nat.floor_natCast]
  have hsets : Finset.Icc 1 x = Finset.Ioc 0 x := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_Ioc]
    omega
  rw [hsets]
  push_cast
  apply Finset.sum_congr rfl
  intro n hn
  have hn_one : (n : ZMod 1) = 1 := Subsingleton.elim _ _
  simp [hn_one]

/-- The centered modulus-one channel is exactly `psi(x) - x`. -/
@[surface_adapter]
theorem centeredTwistedPsi_modOne_eq
    (chi : DirichletCharacter ℂ 1) (x : ℕ) :
    centeredTwistedPsi chi x =
      (Chebyshev.psi x : ℂ) - (x : ℂ) := by
  rw [centeredTwistedPsi, twistedPsi_modOne_eq_chebyshevPsi]
  have hchi : chi = 1 := Subsingleton.elim _ _
  simp [dirichletPrincipalIndicator, principalIndicator, hchi]

end

end Surface.Core.DirichletGRH
