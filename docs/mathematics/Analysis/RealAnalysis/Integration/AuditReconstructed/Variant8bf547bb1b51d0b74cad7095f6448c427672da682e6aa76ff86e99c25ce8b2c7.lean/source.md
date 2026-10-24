# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.AuditReconstructed.Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b6c2a162365ed26f8c6c1f5485429e0a8c764b1` · SHA-256 `afa751aaff3698f926908834e9a38cd3be46bba022845eac8887f2ddac3b7ed6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PlaneCode.Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PlaneCode.Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b","mathematical_subject":"Analysis.Integration","original_sha256":"3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/reification-phase-20261005/native-review/failed-audit-v1/Audit-reconstructed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Field.ZMod
import Mathlib.NumberTheory.Padics.PadicNumbers
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Reified rational phases on the coordinate plane

The represented move updates homogeneous numerators and their common denominator
without performing division. Interpretation is division into the literal field
plane, and the theorem `interpret_move` checks that this represented move has
the intended rational-coordinate meaning. Its supported domain is explicit.

The preserved observable is `x² + y²`. Over an arbitrary field this is a
quadratic form, not an ordered-positive norm. No arithmetic-source comparison,
integral reduction, or infinite local limit is supplied by these laws.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PlaneCode.Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b

namespace FormalResearch.PositiveAtlas.RationalPhase

universe u

variable {K : Type u} [Field K]

/-- Fraction-free coordinates with a common nonzero interpretation denominator. -/
structure PlaneCode (K : Type u) [Field K] where
  first : K
  second : K
  denominator : K
  denominator_ne_zero : denominator ≠ 0

/-- Encode a literal coordinate pair with interpretation denominator one. -/
def encode (x : K × K) : PlaneCode K :=
  ⟨x.1, x.2, 1, one_ne_zero⟩

/-- Interpret a represented plane point as its literal field coordinate pair. -/
def interpret (x : PlaneCode K) : K × K :=
  (x.first / x.denominator, x.second / x.denominator)

/-- The field-domain condition for the finite rational phase chart. -/
def Supported (t : K) : Prop := 1 + t ^ 2 ≠ 0

/-- The diagonal and upper-right entries of the interpreted rational matrix. -/
def coefficients (t : K) : K × K :=
  ((1 - t ^ 2) / (1 + t ^ 2), 2 * t / (1 + t ^ 2))

/-- The literal coordinate operation of `((1-t²)I + 2tJ)/(1+t²)`. -/
def operation (t : K) (x : K × K) : K × K :=
  (((1 - t ^ 2) * x.1 + 2 * t * x.2) / (1 + t ^ 2),
    (-2 * t * x.1 + (1 - t ^ 2) * x.2) / (1 + t ^ 2))

/-- The represented move performs polynomial arithmetic before interpretation. -/
def move (t : K) (ht : Supported t) (x : PlaneCode K) : PlaneCode K where
  first := (1 - t ^ 2) * x.first + 2 * t * x.second
  second := -2 * t * x.first + (1 - t ^ 2) * x.second
  denominator := (1 + t ^ 2) * x.denominator
  denominator_ne_zero := mul_ne_zero ht x.denominator_ne_zero

/-- The literal operation is multiplication by the specified skew-phase matrix. -/
theorem operation_eq_coefficients (t : K) (x : K × K) :
    operation t x =
      ((coefficients t).1 * x.1 + (coefficients t).2 * x.2,
        -(coefficients t).2 * x.1 + (coefficients t).1 * x.2) := by
  dsimp [operation, coefficients]
  ext <;> ring

/-- The interpretation of an encoded field vector recovers that vector. -/
@[simp]
theorem interpret_encode (x : K × K) : interpret (encode x) = x := by
  simp [interpret, encode]

/-- Representation arithmetic commutes with interpretation on its supported domain. -/
theorem interpret_move (t : K) (ht : Supported t) (x : PlaneCode K) :
    interpret (move t ht x) = operation t (interpret x) := by
  dsimp [interpret, move, operation]
  ext <;> field_simp [ht, x.denominator_ne_zero]

/-- The requested encoding-move-interpretation contract. -/
theorem interpret_move_encode (t : K) (ht : Supported t) (x : K × K) :
    interpret (move t ht (encode x)) = operation t x := by
  rw [interpret_move, interpret_encode]

/-- The declared quadratic observable; positivity is not part of the definition. -/
def quadratic (x : K × K) : K := x.1 ^ 2 + x.2 ^ 2

/-- Literal rational phases preserve the stated quadratic form. -/
theorem operation_quadratic (t : K) (ht : Supported t) (x : K × K) :
    quadratic (operation t x) = quadratic x := by
  change 1 + t ^ 2 ≠ 0 at ht
  dsimp [quadratic, operation]
  field_simp [ht]
  ring

/-- The represented move preserves its interpreted quadratic form. -/
theorem move_quadratic (t : K) (ht : Supported t) (x : PlaneCode K) :
    quadratic (interpret (move t ht x)) = quadratic (interpret x) := by
  rw [interpret_move, operation_quadratic t ht]

/-- Coordinate reflection across the first axis. -/
def reflection (x : K × K) : K × K := (x.1, -x.2)

/-- Coordinate reflection squares to the identity. -/
@[simp]
theorem reflection_sq (x : K × K) : reflection (reflection x) = x := by
  simp [reflection]

/-- Reflection reverses the phase, with no order or trigonometric hypotheses. -/
theorem reflection_reversal (t : K) (x : K × K) :
    reflection (operation t (reflection x)) = operation (-t) x := by
  dsimp [reflection, operation]
  ext <;> simp only [neg_sq] <;> ring

/-- Opposite finite-chart phases are inverse on the explicit supported domain. -/
theorem operation_inverse (t : K) (ht : Supported t) (x : K × K) :
    operation t (operation (-t) x) = x := by
  change 1 + t ^ 2 ≠ 0 at ht
  dsimp [operation]
  ext <;> simp only [neg_sq] <;> field_simp [ht] <;> ring

/-- A phase-dependent reflection. -/
def phaseReflection (t : K) (x : K × K) : K × K :=
  operation t (reflection x)

/-- The phase-dependent reflection is an involution on the supported domain. -/
theorem phaseReflection_sq (t : K) (ht : Supported t) (x : K × K) :
    phaseReflection t (phaseReflection t x) = x := by
  unfold phaseReflection
  rw [reflection_reversal, operation_inverse t ht]

section CharacteristicZero

variable [CharZero K]

/-- The displayed denominator at phase one cancels in the actual coefficients. -/
theorem coefficients_one : coefficients (1 : K) = (0, 1) := by
  norm_num [coefficients]

/-- Phase one is the literal quarter-turn after justified exact cancellation. -/
theorem operation_one (x : K × K) : operation (1 : K) x = (x.2, -x.1) := by
  rw [operation_eq_coefficients, coefficients_one]
  simp

end CharacteristicZero

section IntegralCorrection

variable (p : ℕ) [Fact p.Prime]

/-- Actual coefficient integrality uses the local field's closed unit ball.
The displayed syntactic denominator is not used as an integrality criterion.
The phase-domain condition `Supported t` remains a separate requirement:
Lean's totalized division also defines `operation t` outside that domain. -/
def IntegralAt (t : ℚ_[p]) : Prop :=
  ‖(coefficients t).1‖ ≤ 1 ∧ ‖(coefficients t).2‖ ≤ 1

/-- Actual integrality of a vector in the local field. -/
def IntegralVector (x : ℚ_[p] × ℚ_[p]) : Prop := ‖x.1‖ ≤ 1 ∧ ‖x.2‖ ≤ 1

/-- The actual coefficient check licenses preservation of integral coordinates. -/
theorem operation_integral {t : ℚ_[p]} (ht : IntegralAt p t)
    {x : ℚ_[p] × ℚ_[p]} (hx : IntegralVector p x) :
    IntegralVector p (operation t x) := by
  change ‖(coefficients t).1‖ ≤ 1 ∧ ‖(coefficients t).2‖ ≤ 1 at ht
  change ‖x.1‖ ≤ 1 ∧ ‖x.2‖ ≤ 1 at hx
  unfold IntegralVector
  rw [operation_eq_coefficients]
  have hmul (a b : ℚ_[p]) (ha : ‖a‖ ≤ 1) (hb : ‖b‖ ≤ 1) : ‖a * b‖ ≤ 1 := by
    rw [norm_mul]
    exact mul_le_one₀ ha (norm_nonneg _) hb
  constructor
  · exact (Padic.nonarchimedean _ _).trans
      (max_le (hmul _ _ ht.1 hx.1) (hmul _ _ ht.2 hx.2))
  · exact (Padic.nonarchimedean _ _).trans
      (max_le (hmul _ _ (by simpa using ht.2) hx.1) (hmul _ _ ht.1 hx.2))

/-- The coefficient criterion is also necessary for preservation of every integral vector. -/
theorem integralAt_iff_preserves_integral (t : ℚ_[p]) :
    IntegralAt p t ↔ ∀ x, IntegralVector p x → IntegralVector p (operation t x) := by
  constructor
  · intro ht x hx
    exact operation_integral p ht hx
  · intro h
    have hv : IntegralVector p ((1 : ℚ_[p]), 0) := by simp [IntegralVector]
    have hc := h _ hv
    simpa [IntegralAt, IntegralVector, operation_eq_coefficients] using hc

end IntegralCorrection

section LocalDomainFixtures

local instance : Fact (Nat.Prime 2) := ⟨by decide⟩
local instance : Fact (Nat.Prime 5) := ⟨by decide⟩

/-- The phase-two matrix has the stated exact rational entries. -/
theorem coefficients_two_rat :
    coefficients (2 : ℚ) = (-3 / 5, 4 / 5) := by
  norm_num [coefficients]

/-- Phase two is field-valid in the actual five-adic field. -/
theorem phase_two_supported_five : Supported (2 : ℚ_[5]) := by
  norm_num [Supported]

/-- Its diagonal coefficient has five-adic norm five, so it is not integral. -/
theorem coefficients_two_five_diagonal_norm :
    ‖(coefficients (2 : ℚ_[5])).1‖ = 5 := by
  have h3 : ‖(3 : ℚ_[5])‖ = 1 :=
    (Padic.norm_natCast_eq_one_iff (p := 5) (n := 3)).2 (by decide)
  have h5 : ‖(5 : ℚ_[5])‖ = (5 : ℝ)⁻¹ := Padic.norm_p
  have hc : (coefficients (2 : ℚ_[5])).1 = -3 / 5 := by
    norm_num [coefficients]
  rw [hc, norm_div, norm_neg, h3, h5]
  norm_num

/-- Field validity does not establish integrality of the resulting matrix. -/
theorem phase_two_five_not_integral :
    ¬ IntegralAt 5 (2 : ℚ_[5]) := by
  unfold IntegralAt
  rw [coefficients_two_five_diagonal_norm]
  norm_num

/-- The original denominator fails directly in the finite residue field at five. -/
theorem phase_two_not_supported_mod_five : ¬ Supported (2 : ZMod 5) := by
  norm_num [Supported]
  exact ZMod.natCast_self 5

/-- The displayed denominator at phase one also vanishes in the residue field at two. -/
theorem phase_one_not_supported_mod_two : ¬ Supported (1 : ZMod 2) := by
  norm_num [Supported]
  exact ZMod.natCast_self 2

/-- Phase one is field-valid even though its denominator is not a unit in the two-adic integers. -/
theorem phase_one_supported_two : Supported (1 : ℚ_[2]) := by
  norm_num [Supported]

/-- The displayed denominator's norm is one half at the cancellation fixture. -/
theorem phase_one_two_denominator_norm : ‖1 + (1 : ℚ_[2]) ^ 2‖ = 1 / 2 := by
  have h2 : ‖(2 : ℚ_[2])‖ = (2 : ℝ)⁻¹ := Padic.norm_p
  convert h2 using 1 <;> norm_num

/-- Nonetheless exact field cancellation gives an integral matrix in the two-adics. -/
theorem phase_one_two_integral :
    IntegralAt 2 (1 : ℚ_[2]) := by
  unfold IntegralAt
  rw [coefficients_one]
  norm_num

/-- The five-adic phase-two move actually sends an integral basis vector out of the lattice. -/
theorem phase_two_five_basis_nonintegral :
    ¬ IntegralVector 5 (operation (2 : ℚ_[5]) (1, 0)) := by
  simpa [IntegralVector, operation_eq_coefficients, IntegralAt]
    using phase_two_five_not_integral

/-- The canceled two-adic phase-one move preserves every integral vector. -/
theorem phase_one_two_preserves_integral :
    ∀ x, IntegralVector 2 x → IntegralVector 2 (operation (1 : ℚ_[2]) x) :=
  (integralAt_iff_preserves_integral 2 1).1 phase_one_two_integral

end LocalDomainFixtures

end FormalResearch.PositiveAtlas.RationalPhase

#check FormalResearch.PositiveAtlas.RationalPhase.PlaneCode
#print axioms FormalResearch.PositiveAtlas.RationalPhase.PlaneCode
#check FormalResearch.PositiveAtlas.RationalPhase.encode
#print axioms FormalResearch.PositiveAtlas.RationalPhase.encode
#check FormalResearch.PositiveAtlas.RationalPhase.interpret
#print axioms FormalResearch.PositiveAtlas.RationalPhase.interpret
#check FormalResearch.PositiveAtlas.RationalPhase.Supported
#print axioms FormalResearch.PositiveAtlas.RationalPhase.Supported
#check FormalResearch.PositiveAtlas.RationalPhase.coefficients
#print axioms FormalResearch.PositiveAtlas.RationalPhase.coefficients
#check FormalResearch.PositiveAtlas.RationalPhase.operation
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation
#check FormalResearch.PositiveAtlas.RationalPhase.move
#print axioms FormalResearch.PositiveAtlas.RationalPhase.move
#check FormalResearch.PositiveAtlas.RationalPhase.operation_eq_coefficients
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_eq_coefficients
#check FormalResearch.PositiveAtlas.RationalPhase.interpret_encode
#print axioms FormalResearch.PositiveAtlas.RationalPhase.interpret_encode
#check FormalResearch.PositiveAtlas.RationalPhase.interpret_move
#print axioms FormalResearch.PositiveAtlas.RationalPhase.interpret_move
#check FormalResearch.PositiveAtlas.RationalPhase.interpret_move_encode
#print axioms FormalResearch.PositiveAtlas.RationalPhase.interpret_move_encode
#check FormalResearch.PositiveAtlas.RationalPhase.quadratic
#print axioms FormalResearch.PositiveAtlas.RationalPhase.quadratic
#check FormalResearch.PositiveAtlas.RationalPhase.operation_quadratic
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_quadratic
#check FormalResearch.PositiveAtlas.RationalPhase.move_quadratic
#print axioms FormalResearch.PositiveAtlas.RationalPhase.move_quadratic
#check FormalResearch.PositiveAtlas.RationalPhase.reflection
#print axioms FormalResearch.PositiveAtlas.RationalPhase.reflection
#check FormalResearch.PositiveAtlas.RationalPhase.reflection_sq
#print axioms FormalResearch.PositiveAtlas.RationalPhase.reflection_sq
#check FormalResearch.PositiveAtlas.RationalPhase.reflection_reversal
#print axioms FormalResearch.PositiveAtlas.RationalPhase.reflection_reversal
#check FormalResearch.PositiveAtlas.RationalPhase.operation_inverse
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_inverse
#check FormalResearch.PositiveAtlas.RationalPhase.phaseReflection
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phaseReflection
#check FormalResearch.PositiveAtlas.RationalPhase.phaseReflection_sq
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phaseReflection_sq
#check FormalResearch.PositiveAtlas.RationalPhase.coefficients_one
#print axioms FormalResearch.PositiveAtlas.RationalPhase.coefficients_one
#check FormalResearch.PositiveAtlas.RationalPhase.operation_one
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_one
#check FormalResearch.PositiveAtlas.RationalPhase.IntegralAt
#print axioms FormalResearch.PositiveAtlas.RationalPhase.IntegralAt
#check FormalResearch.PositiveAtlas.RationalPhase.IntegralVector
#print axioms FormalResearch.PositiveAtlas.RationalPhase.IntegralVector
#check FormalResearch.PositiveAtlas.RationalPhase.operation_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_integral
#check FormalResearch.PositiveAtlas.RationalPhase.integralAt_iff_preserves_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.integralAt_iff_preserves_integral
#check FormalResearch.PositiveAtlas.RationalPhase.coefficients_two_rat
#print axioms FormalResearch.PositiveAtlas.RationalPhase.coefficients_two_rat
#check FormalResearch.PositiveAtlas.RationalPhase.phase_two_supported_five
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_two_supported_five
#check FormalResearch.PositiveAtlas.RationalPhase.coefficients_two_five_diagonal_norm
#print axioms FormalResearch.PositiveAtlas.RationalPhase.coefficients_two_five_diagonal_norm
#check FormalResearch.PositiveAtlas.RationalPhase.phase_two_five_not_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_two_five_not_integral
#check FormalResearch.PositiveAtlas.RationalPhase.phase_two_not_supported_mod_five
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_two_not_supported_mod_five
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_not_supported_mod_two
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_not_supported_mod_two
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_supported_two
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_supported_two
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_denominator_norm
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_denominator_norm
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_integral
#check FormalResearch.PositiveAtlas.RationalPhase.phase_two_five_basis_nonintegral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_two_five_basis_nonintegral
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_preserves_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_preserves_integral

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let entries := env.constants.toList.filter fun item =>
    (`FormalResearch.PositiveAtlas.RationalPhase).isPrefixOf item.1
  for (name, info) in entries.mergeSort (fun a b => Name.lt a.1 b.1) do
    let axioms ← collectAxioms name
    logInfo m!"AUDIT_NAME {name}\nAUDIT_TYPE {info.type}\nAUDIT_AXIOMS {axioms.qsort Name.lt |>.toList}"
```
