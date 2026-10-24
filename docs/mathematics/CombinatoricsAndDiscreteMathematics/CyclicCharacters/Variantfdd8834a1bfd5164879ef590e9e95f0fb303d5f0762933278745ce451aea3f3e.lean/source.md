# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CyclicCharacters.Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12a4c44a8c8b263c063549c4a0d7af018da77194` · SHA-256 `34d86c0d7726c80efe98adb90c315788de2db853ad0e8fe3cc108fdc7cea059a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CyclicSignal.Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CyclicSignal.Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Oracle/Naming/CyclicCharacters.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Naming.CyclicCubical
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar

/-!
# Cyclic turn characters and exact mode projectors

These are additive characters of the finite cyclic turn group `ZMod n`.
They are deliberately not called Dirichlet characters: a number-theoretic
Dirichlet-character fiber requires an additional certified map involving a
unit group and conductor/primitivity data.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CyclicSignal.Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e

namespace Mathematics.Oracle.Naming

open scoped BigOperators ComplexConjugate
open Finset

variable {n : Nat} [NeZero n]

abbrev CyclicSignal (n : Nat) := ZMod n → ℂ

/-- The mode-`j` character `r ↦ exp(2πijr/n)`. -/
noncomputable def cyclicCharacter (j r : ZMod n) : ℂ :=
  ZMod.stdAddChar (j * r)

/-- Unnormalized coefficient against the cyclic character `j`. -/
noncomputable def cyclicCharacterCoefficient
    (j : ZMod n) (signal : CyclicSignal n) : ℂ :=
  ∑ r : ZMod n, conj (cyclicCharacter j r) * signal r

/--
The exact rank-one character projector
`P_j f = n⁻¹ χ_j ⟨χ_j,f⟩`.
-/
noncomputable def cyclicCharacterProjector
    (j : ZMod n) (signal : CyclicSignal n) : CyclicSignal n :=
  fun r ↦
    (n : ℂ)⁻¹ * cyclicCharacter j r *
      cyclicCharacterCoefficient j signal

/-- The finite counting inner product on cyclic signals. -/
noncomputable def cyclicInnerProduct
    (left right : CyclicSignal n) : ℂ :=
  ∑ r : ZMod n, conj (left r) * right r

private theorem cyclicCharacter_normSq (j r : ZMod n) :
    Complex.normSq (cyclicCharacter j r) = 1 := by
  change Complex.normSq (ZMod.stdAddChar (j * r)) = 1
  rw [ZMod.stdAddChar_apply]
  exact Circle.normSq_coe _

private theorem cyclicCharacter_conj_mul_self (j r : ZMod n) :
    conj (cyclicCharacter j r) * cyclicCharacter j r = 1 := by
  rw [← Complex.normSq_eq_conj_mul_self]
  exact_mod_cast cyclicCharacter_normSq j r

private theorem cyclicCharacterCoefficient_projector
    (j : ZMod n) (signal : CyclicSignal n) :
    cyclicCharacterCoefficient j (cyclicCharacterProjector j signal) =
      cyclicCharacterCoefficient j signal := by
  classical
  have hn : (n : ℂ) ≠ 0 := by
    exact_mod_cast (NeZero.ne n)
  unfold cyclicCharacterCoefficient cyclicCharacterProjector
  calc
    (∑ r : ZMod n,
        conj (cyclicCharacter j r) *
          ((n : ℂ)⁻¹ * cyclicCharacter j r *
            ∑ s : ZMod n, conj (cyclicCharacter j s) * signal s)) =
        ∑ r : ZMod n,
          (n : ℂ)⁻¹ *
            (∑ s : ZMod n, conj (cyclicCharacter j s) * signal s) := by
      apply Finset.sum_congr rfl
      intro r _
      calc
        conj (cyclicCharacter j r) *
              ((n : ℂ)⁻¹ * cyclicCharacter j r *
                ∑ s : ZMod n, conj (cyclicCharacter j s) * signal s) =
            ((n : ℂ)⁻¹ *
              (∑ s : ZMod n, conj (cyclicCharacter j s) * signal s)) *
              (conj (cyclicCharacter j r) * cyclicCharacter j r) := by
          ring
        _ = (n : ℂ)⁻¹ *
              (∑ s : ZMod n, conj (cyclicCharacter j s) * signal s) := by
          rw [cyclicCharacter_conj_mul_self, mul_one]
    _ = (n : ℂ) *
          ((n : ℂ)⁻¹ *
            (∑ s : ZMod n, conj (cyclicCharacter j s) * signal s)) := by
      simp [ZMod.card]
    _ = ∑ s : ZMod n, conj (cyclicCharacter j s) * signal s := by
      rw [← mul_assoc, mul_inv_cancel₀ hn, one_mul]

/-- Character projectors are idempotent. -/
theorem cyclicCharacterProjector_idempotent
    (j : ZMod n) (signal : CyclicSignal n) :
    cyclicCharacterProjector j (cyclicCharacterProjector j signal) =
      cyclicCharacterProjector j signal := by
  funext r
  change
    (n : ℂ)⁻¹ * cyclicCharacter j r *
        cyclicCharacterCoefficient j (cyclicCharacterProjector j signal) =
      (n : ℂ)⁻¹ * cyclicCharacter j r *
        cyclicCharacterCoefficient j signal
  rw [cyclicCharacterCoefficient_projector]

private theorem conj_cyclicCharacterCoefficient
    (j : ZMod n) (signal : CyclicSignal n) :
    conj (cyclicCharacterCoefficient j signal) =
      ∑ r : ZMod n, conj (signal r) * cyclicCharacter j r := by
  classical
  unfold cyclicCharacterCoefficient
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro r _
  rw [map_mul]
  simp only [starRingEnd_apply, star_star]
  ring

omit [NeZero n] in
private theorem conj_natCast_inv :
    conj ((n : ℂ)⁻¹) = (n : ℂ)⁻¹ := by
  rw [map_inv₀, map_natCast]

private theorem cyclicInnerProduct_projector_left
    (j : ZMod n) (left right : CyclicSignal n) :
    cyclicInnerProduct (cyclicCharacterProjector j left) right =
      conj ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j left) *
        cyclicCharacterCoefficient j right := by
  classical
  unfold cyclicInnerProduct cyclicCharacterProjector
  calc
    (∑ r : ZMod n,
        conj ((n : ℂ)⁻¹ * cyclicCharacter j r *
          cyclicCharacterCoefficient j left) * right r) =
        ∑ r : ZMod n,
          conj ((n : ℂ)⁻¹ *
            cyclicCharacterCoefficient j left) *
            (conj (cyclicCharacter j r) * right r) := by
      apply Finset.sum_congr rfl
      intro r _
      simp only [map_mul]
      ring
    _ = conj ((n : ℂ)⁻¹ *
          cyclicCharacterCoefficient j left) *
        ∑ r : ZMod n, conj (cyclicCharacter j r) * right r := by
      symm
      exact Finset.mul_sum
        (Finset.univ : Finset (ZMod n))
        (fun r ↦ conj (cyclicCharacter j r) * right r)
        (conj ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j left))
    _ = conj ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j left) *
        cyclicCharacterCoefficient j right := rfl

private theorem cyclicInnerProduct_projector_right
    (j : ZMod n) (left right : CyclicSignal n) :
    cyclicInnerProduct left (cyclicCharacterProjector j right) =
      ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j right) *
        conj (cyclicCharacterCoefficient j left) := by
  classical
  unfold cyclicInnerProduct cyclicCharacterProjector
  calc
    (∑ r : ZMod n,
        conj (left r) *
          ((n : ℂ)⁻¹ * cyclicCharacter j r *
            cyclicCharacterCoefficient j right)) =
        ∑ r : ZMod n,
          ((n : ℂ)⁻¹ *
            cyclicCharacterCoefficient j right) *
            (conj (left r) * cyclicCharacter j r) := by
      apply Finset.sum_congr rfl
      intro r _
      ring
    _ = ((n : ℂ)⁻¹ *
          cyclicCharacterCoefficient j right) *
        ∑ r : ZMod n, conj (left r) * cyclicCharacter j r := by
      symm
      exact Finset.mul_sum
        (Finset.univ : Finset (ZMod n))
        (fun r ↦ conj (left r) * cyclicCharacter j r)
        ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j right)
    _ = ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j right) *
        conj (cyclicCharacterCoefficient j left) := by
      rw [conj_cyclicCharacterCoefficient]

/-- Character projectors are self-adjoint for the finite counting inner product. -/
theorem cyclicCharacterProjector_selfAdjoint
    (j : ZMod n) (left right : CyclicSignal n) :
    cyclicInnerProduct (cyclicCharacterProjector j left) right =
      cyclicInnerProduct left (cyclicCharacterProjector j right) := by
  rw [cyclicInnerProduct_projector_left,
    cyclicInnerProduct_projector_right]
  simp only [map_mul, conj_natCast_inv]
  ring

end Mathematics.Oracle.Naming
```
