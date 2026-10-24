# Complete source: GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc7ab20d6fe8a462950e2d32f65e4348db9b0c86` · SHA-256 `c404b4b243e73ad6505313b5c4b55140bd9fadab0d1bf86da1a3719e7ca31f7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CommutingInvolutions.Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/CommutingInvolutions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import Mathlib.Tactic.Module

/-!
# Four sectors from commuting involutions

This module continues Phase III of the Positive Atlas.

Two commuting involutions J and K split a real module into four algebraic
sectors according to their ±1 eigen-signs.  The one-involution projectors are

  P₊(J) = (I + J)/2,
  P₋(J) = (I - J)/2,

and similarly for K.  The four sector projectors are the commuting products

  P₊₊ = P₊(J) P₊(K),
  P₊₋ = P₊(J) P₋(K),
  P₋₊ = P₋(J) P₊(K),
  P₋₋ = P₋(J) P₋(K).

They are idempotent, sum to the identity, and distinct sectors annihilate each
other.  The (+,-) sector is exposed as the distinguished Phase-III intervention
channel.

These are algebraic projector statements.  Metric orthogonality would require
additional self-adjoint/isometric hypotheses and is not asserted here.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613

namespace FormalResearch.PositiveAtlas

universe u

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

/-- The +1 spectral projector associated to a linear involution. -/
def involutionPlus (J : V →ₗ[ℝ] V) : V →ₗ[ℝ] V :=
  (1 / 2 : ℝ) • (LinearMap.id + J)

/-- The -1 spectral projector associated to a linear involution. -/
def involutionMinus (J : V →ₗ[ℝ] V) : V →ₗ[ℝ] V :=
  (1 / 2 : ℝ) • (LinearMap.id - J)

@[simp]
theorem involutionPlus_apply (J : V →ₗ[ℝ] V) (x : V) :
    involutionPlus J x = (1 / 2 : ℝ) • (x + J x) := by
  simp [involutionPlus]

@[simp]
theorem involutionMinus_apply (J : V →ₗ[ℝ] V) (x : V) :
    involutionMinus J x = (1 / 2 : ℝ) • (x - J x) := by
  simp [involutionMinus]

/-- The two spectral projectors of one involution sum to the identity. -/
theorem involution_projection_decomposition
    (J : V →ₗ[ℝ] V) (x : V) :
    involutionPlus J x + involutionMinus J x = x := by
  simp only [involutionPlus_apply, involutionMinus_apply]
  module

/-- The + projector is idempotent when J² = I. -/
theorem involutionPlus_idempotent
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) :
    Function.Idempotent (involutionPlus J : V → V) := by
  intro x
  simp only [involutionPlus_apply, map_smul, map_add, hJ]
  module

/-- The - projector is idempotent when J² = I. -/
theorem involutionMinus_idempotent
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) :
    Function.Idempotent (involutionMinus J : V → V) := by
  intro x
  simp only [involutionMinus_apply, map_smul, map_sub, hJ]
  module

/-- Opposite spectral projectors annihilate. -/
theorem involutionPlus_after_minus
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) (x : V) :
    involutionPlus J (involutionMinus J x) = 0 := by
  simp only [involutionPlus_apply, involutionMinus_apply, map_smul, map_sub, hJ]
  module

/-- Opposite spectral projectors annihilate in the reverse order. -/
theorem involutionMinus_after_plus
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) (x : V) :
    involutionMinus J (involutionPlus J x) = 0 := by
  simp only [involutionMinus_apply, involutionPlus_apply, map_smul, map_add, hJ]
  module

/-- J acts as +1 on its + projector. -/
theorem involution_on_plus
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) (x : V) :
    J (involutionPlus J x) = involutionPlus J x := by
  simp only [involutionPlus_apply, map_smul, map_add, hJ]
  module

/-- J acts as -1 on its - projector. -/
theorem involution_on_minus
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) (x : V) :
    J (involutionMinus J x) = -involutionMinus J x := by
  simp only [involutionMinus_apply, map_smul, map_sub, hJ]
  module

/-- Two commuting linear involutions. -/
structure CommutingInvolutions (V : Type u) [AddCommGroup V] [Module ℝ V] where
  first : V →ₗ[ℝ] V
  second : V →ₗ[ℝ] V
  first_sq : ∀ x, first (first x) = x
  second_sq : ∀ x, second (second x) = x
  commute : ∀ x, first (second x) = second (first x)

namespace CommutingInvolutions

variable (C : CommutingInvolutions V)

/-- The first + projector commutes with the second + projector. -/
theorem plusPlus_commute (x : V) :
    involutionPlus C.first (involutionPlus C.second x) =
      involutionPlus C.second (involutionPlus C.first x) := by
  simp only [involutionPlus_apply, map_smul, map_add]
  rw [C.commute]
  module

/-- The first + projector commutes with the second - projector. -/
theorem plusMinus_commute (x : V) :
    involutionPlus C.first (involutionMinus C.second x) =
      involutionMinus C.second (involutionPlus C.first x) := by
  simp only [involutionPlus_apply, involutionMinus_apply, map_smul, map_add, map_sub]
  rw [C.commute]
  module

/-- The first - projector commutes with the second + projector. -/
theorem minusPlus_commute (x : V) :
    involutionMinus C.first (involutionPlus C.second x) =
      involutionPlus C.second (involutionMinus C.first x) := by
  simp only [involutionMinus_apply, involutionPlus_apply, map_smul, map_add, map_sub]
  rw [C.commute]
  module

/-- The first - projector commutes with the second - projector. -/
theorem minusMinus_commute (x : V) :
    involutionMinus C.first (involutionMinus C.second x) =
      involutionMinus C.second (involutionMinus C.first x) := by
  simp only [involutionMinus_apply, map_smul, map_sub]
  rw [C.commute]
  module

/-- The ++ sector projector. -/
def sectorPP : V →ₗ[ℝ] V :=
  (involutionPlus C.first).comp (involutionPlus C.second)

/-- The +- sector projector. -/
def sectorPM : V →ₗ[ℝ] V :=
  (involutionPlus C.first).comp (involutionMinus C.second)

/-- The -+ sector projector. -/
def sectorMP : V →ₗ[ℝ] V :=
  (involutionMinus C.first).comp (involutionPlus C.second)

/-- The -- sector projector. -/
def sectorMM : V →ₗ[ℝ] V :=
  (involutionMinus C.first).comp (involutionMinus C.second)

@[simp]
theorem sectorPP_apply (x : V) :
    C.sectorPP x =
      involutionPlus C.first (involutionPlus C.second x) :=
  rfl

@[simp]
theorem sectorPM_apply (x : V) :
    C.sectorPM x =
      involutionPlus C.first (involutionMinus C.second x) :=
  rfl

@[simp]
theorem sectorMP_apply (x : V) :
    C.sectorMP x =
      involutionMinus C.first (involutionPlus C.second x) :=
  rfl

@[simp]
theorem sectorMM_apply (x : V) :
    C.sectorMM x =
      involutionMinus C.first (involutionMinus C.second x) :=
  rfl

private theorem idempotent_comp_of_commute
    (P Q : V →ₗ[ℝ] V)
    (hP : Function.Idempotent (P : V → V))
    (hQ : Function.Idempotent (Q : V → V))
    (hPQ : ∀ x, P (Q x) = Q (P x)) :
    Function.Idempotent ((P.comp Q : V →ₗ[ℝ] V) : V → V) := by
  intro x
  change P (Q (P (Q x))) = P (Q x)
  rw [← hPQ (Q x), hP (Q (Q x)), hQ x]

/-- The ++ sector projector is idempotent. -/
theorem sectorPP_idempotent :
    Function.Idempotent (C.sectorPP : V → V) :=
  idempotent_comp_of_commute
    (involutionPlus C.first) (involutionPlus C.second)
    (involutionPlus_idempotent C.first C.first_sq)
    (involutionPlus_idempotent C.second C.second_sq)
    C.plusPlus_commute

/-- The +- sector projector is idempotent. -/
theorem sectorPM_idempotent :
    Function.Idempotent (C.sectorPM : V → V) :=
  idempotent_comp_of_commute
    (involutionPlus C.first) (involutionMinus C.second)
    (involutionPlus_idempotent C.first C.first_sq)
    (involutionMinus_idempotent C.second C.second_sq)
    C.plusMinus_commute

/-- The -+ sector projector is idempotent. -/
theorem sectorMP_idempotent :
    Function.Idempotent (C.sectorMP : V → V) :=
  idempotent_comp_of_commute
    (involutionMinus C.first) (involutionPlus C.second)
    (involutionMinus_idempotent C.first C.first_sq)
    (involutionPlus_idempotent C.second C.second_sq)
    C.minusPlus_commute

/-- The -- sector projector is idempotent. -/
theorem sectorMM_idempotent :
    Function.Idempotent (C.sectorMM : V → V) :=
  idempotent_comp_of_commute
    (involutionMinus C.first) (involutionMinus C.second)
    (involutionMinus_idempotent C.first C.first_sq)
    (involutionMinus_idempotent C.second C.second_sq)
    C.minusMinus_commute

/-- The four sectors sum to the original vector. -/
theorem four_sector_decomposition (x : V) :
    C.sectorPP x + C.sectorPM x + C.sectorMP x + C.sectorMM x = x := by
  simp only [sectorPP_apply, sectorPM_apply, sectorMP_apply, sectorMM_apply,
    involutionPlus_apply, involutionMinus_apply, map_smul, map_add, map_sub]
  module

/-- ++ annihilates +-. -/
theorem sectorPP_after_PM (x : V) :
    C.sectorPP (C.sectorPM x) = 0 := by
  change involutionPlus C.first
      (involutionPlus C.second
        (involutionPlus C.first (involutionMinus C.second x))) = 0
  rw [← C.plusPlus_commute (involutionMinus C.second x)]
  rw [involutionPlus_idempotent C.first C.first_sq]
  rw [involutionPlus_after_minus C.second C.second_sq]
  simp

/-- +- annihilates ++. -/
theorem sectorPM_after_PP (x : V) :
    C.sectorPM (C.sectorPP x) = 0 := by
  change involutionPlus C.first
      (involutionMinus C.second
        (involutionPlus C.first (involutionPlus C.second x))) = 0
  rw [← C.plusMinus_commute (involutionPlus C.second x)]
  rw [involutionPlus_idempotent C.first C.first_sq]
  rw [involutionMinus_after_plus C.second C.second_sq]
  simp

/-- ++ annihilates -+. -/
theorem sectorPP_after_MP (x : V) :
    C.sectorPP (C.sectorMP x) = 0 := by
  change involutionPlus C.first
      (involutionPlus C.second
        (involutionMinus C.first (involutionPlus C.second x))) = 0
  rw [← C.minusPlus_commute (involutionPlus C.second x)]
  rw [involutionPlus_idempotent C.second C.second_sq]
  rw [involutionPlus_after_minus C.first C.first_sq]
  simp

/-- -+ annihilates ++. -/
theorem sectorMP_after_PP (x : V) :
    C.sectorMP (C.sectorPP x) = 0 := by
  change involutionMinus C.first
      (involutionPlus C.second
        (involutionPlus C.first (involutionPlus C.second x))) = 0
  rw [← C.plusPlus_commute (involutionPlus C.second x)]
  rw [involutionPlus_idempotent C.second C.second_sq]
  rw [involutionMinus_after_plus C.first C.first_sq]
  simp

/-- ++ annihilates --. -/
theorem sectorPP_after_MM (x : V) :
    C.sectorPP (C.sectorMM x) = 0 := by
  change involutionPlus C.first
      (involutionPlus C.second
        (involutionMinus C.first (involutionMinus C.second x))) = 0
  rw [← C.minusPlus_commute (involutionMinus C.second x)]
  rw [involutionPlus_after_minus C.second C.second_sq]
  simp

/-- -- annihilates ++. -/
theorem sectorMM_after_PP (x : V) :
    C.sectorMM (C.sectorPP x) = 0 := by
  change involutionMinus C.first
      (involutionMinus C.second
        (involutionPlus C.first (involutionPlus C.second x))) = 0
  rw [← C.plusMinus_commute (involutionPlus C.second x)]
  rw [involutionMinus_after_plus C.second C.second_sq]
  simp

/-- +- annihilates -+. -/
theorem sectorPM_after_MP (x : V) :
    C.sectorPM (C.sectorMP x) = 0 := by
  change involutionPlus C.first
      (involutionMinus C.second
        (involutionMinus C.first (involutionPlus C.second x))) = 0
  rw [← C.minusMinus_commute (involutionPlus C.second x)]
  rw [involutionPlus_after_minus C.first C.first_sq]
  simp

/-- -+ annihilates +-. -/
theorem sectorMP_after_PM (x : V) :
    C.sectorMP (C.sectorPM x) = 0 := by
  change involutionMinus C.first
      (involutionPlus C.second
        (involutionPlus C.first (involutionMinus C.second x))) = 0
  rw [← C.plusPlus_commute (involutionMinus C.second x)]
  rw [involutionMinus_after_plus C.first C.first_sq]
  simp

/-- +- annihilates --. -/
theorem sectorPM_after_MM (x : V) :
    C.sectorPM (C.sectorMM x) = 0 := by
  change involutionPlus C.first
      (involutionMinus C.second
        (involutionMinus C.first (involutionMinus C.second x))) = 0
  rw [← C.minusMinus_commute (involutionMinus C.second x)]
  rw [involutionMinus_idempotent C.second C.second_sq]
  rw [involutionPlus_after_minus C.first C.first_sq]
  simp

/-- -- annihilates +-. -/
theorem sectorMM_after_PM (x : V) :
    C.sectorMM (C.sectorPM x) = 0 := by
  change involutionMinus C.first
      (involutionMinus C.second
        (involutionPlus C.first (involutionMinus C.second x))) = 0
  rw [← C.plusMinus_commute (involutionMinus C.second x)]
  rw [involutionMinus_idempotent C.second C.second_sq]
  rw [involutionMinus_after_plus C.first C.first_sq]
  simp

/-- -+ annihilates --. -/
theorem sectorMP_after_MM (x : V) :
    C.sectorMP (C.sectorMM x) = 0 := by
  change involutionMinus C.first
      (involutionPlus C.second
        (involutionMinus C.first (involutionMinus C.second x))) = 0
  rw [← C.minusPlus_commute (involutionMinus C.second x)]
  rw [involutionMinus_idempotent C.first C.first_sq]
  rw [involutionPlus_after_minus C.second C.second_sq]
  simp

/-- -- annihilates -+. -/
theorem sectorMM_after_MP (x : V) :
    C.sectorMM (C.sectorMP x) = 0 := by
  change involutionMinus C.first
      (involutionMinus C.second
        (involutionMinus C.first (involutionPlus C.second x))) = 0
  rw [← C.minusMinus_commute (involutionPlus C.second x)]
  rw [involutionMinus_idempotent C.first C.first_sq]
  rw [involutionMinus_after_plus C.second C.second_sq]
  simp

/-- The distinguished Phase-III intervention sector is the (+,-) sector. -/
def interventionSector : V →ₗ[ℝ] V :=
  C.sectorPM

/-- The distinguished intervention sector remains a projector. -/
theorem interventionSector_idempotent :
    Function.Idempotent (C.interventionSector : V → V) :=
  C.sectorPM_idempotent

/-- The first involution acts with sign +1 on the intervention sector. -/
theorem first_on_interventionSector (x : V) :
    C.first (C.interventionSector x) = C.interventionSector x := by
  change C.first
      (involutionPlus C.first (involutionMinus C.second x)) =
    involutionPlus C.first (involutionMinus C.second x)
  exact involution_on_plus C.first C.first_sq _

/-- The second involution acts with sign -1 on the intervention sector. -/
theorem second_on_interventionSector (x : V) :
    C.second (C.interventionSector x) = -C.interventionSector x := by
  change C.second
      (involutionPlus C.first (involutionMinus C.second x)) =
    -involutionPlus C.first (involutionMinus C.second x)
  have hcomm :
      C.second (involutionPlus C.first (involutionMinus C.second x)) =
        involutionPlus C.first
          (C.second (involutionMinus C.second x)) := by
    simp only [involutionPlus_apply, map_smul, map_add]
    rw [← C.commute]
  rw [hcomm, involution_on_minus C.second C.second_sq]
  simp

end CommutingInvolutions

end FormalResearch.PositiveAtlas
```
