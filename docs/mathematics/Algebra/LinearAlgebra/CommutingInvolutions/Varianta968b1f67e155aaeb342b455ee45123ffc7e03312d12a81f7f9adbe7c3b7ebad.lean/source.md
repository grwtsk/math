# Complete source: GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe805f9cd5ec5c6397f26c1262bf4818580f9d32` · SHA-256 `54e34a9d349cd33232d6238ba81c1232438fba18b440044b04a2f6a1ad35d984`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Varianta4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CommutingInvolutions.Varianta4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/CommutingInvolutions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Varianta4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90

namespace FormalResearch.PositiveAtlas

universe u

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

/-- The +1 spectral projector associated to a linear involution. -/
noncomputable def involutionPlus (J : V →ₗ[ℝ] V) : V →ₗ[ℝ] V :=
  (1 / 2 : ℝ) • (LinearMap.id + J)

/-- The -1 spectral projector associated to a linear involution. -/
noncomputable def involutionMinus (J : V →ₗ[ℝ] V) : V →ₗ[ℝ] V :=
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
    ∀ x, involutionPlus J (involutionPlus J x) = involutionPlus J x := by
  intro x
  simp only [involutionPlus_apply, map_smul, map_add, hJ]
  module

/-- The - projector is idempotent when J² = I. -/
theorem involutionMinus_idempotent
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) :
    ∀ x, involutionMinus J (involutionMinus J x) = involutionMinus J x := by
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
  /-- First linear involution of the pair. -/
  first : V →ₗ[ℝ] V
  /-- Second linear involution of the pair. -/
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
noncomputable def sectorPP : V →ₗ[ℝ] V :=
  (involutionPlus C.first).comp (involutionPlus C.second)

/-- The +- sector projector. -/
noncomputable def sectorPM : V →ₗ[ℝ] V :=
  (involutionPlus C.first).comp (involutionMinus C.second)

/-- The -+ sector projector. -/
noncomputable def sectorMP : V →ₗ[ℝ] V :=
  (involutionMinus C.first).comp (involutionPlus C.second)

/-- The -- sector projector. -/
noncomputable def sectorMM : V →ₗ[ℝ] V :=
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
    (hP : ∀ x, P (P x) = P x)
    (hQ : ∀ x, Q (Q x) = Q x)
    (hPQ : ∀ x, P (Q x) = Q (P x)) :
    ∀ x, P (Q (P (Q x))) = P (Q x) := by
  intro x
  rw [← hPQ (Q x), hP (Q (Q x)), hQ x]

/-- The ++ sector projector is idempotent. -/
theorem sectorPP_idempotent :
    ∀ x, C.sectorPP (C.sectorPP x) = C.sectorPP x :=
  idempotent_comp_of_commute
    (involutionPlus C.first) (involutionPlus C.second)
    (involutionPlus_idempotent C.first C.first_sq)
    (involutionPlus_idempotent C.second C.second_sq)
    C.plusPlus_commute

/-- The +- sector projector is idempotent. -/
theorem sectorPM_idempotent :
    ∀ x, C.sectorPM (C.sectorPM x) = C.sectorPM x :=
  idempotent_comp_of_commute
    (involutionPlus C.first) (involutionMinus C.second)
    (involutionPlus_idempotent C.first C.first_sq)
    (involutionMinus_idempotent C.second C.second_sq)
    C.plusMinus_commute

/-- The -+ sector projector is idempotent. -/
theorem sectorMP_idempotent :
    ∀ x, C.sectorMP (C.sectorMP x) = C.sectorMP x :=
  idempotent_comp_of_commute
    (involutionMinus C.first) (involutionPlus C.second)
    (involutionMinus_idempotent C.first C.first_sq)
    (involutionPlus_idempotent C.second C.second_sq)
    C.minusPlus_commute

/-- The -- sector projector is idempotent. -/
theorem sectorMM_idempotent :
    ∀ x, C.sectorMM (C.sectorMM x) = C.sectorMM x :=
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

/-- -+ annihilates ++. -/
theorem sectorMP_after_PP (x : V) :
    C.sectorMP (C.sectorPP x) = 0 := by
  change involutionMinus C.first
      (involutionPlus C.second
        (involutionPlus C.first (involutionPlus C.second x))) = 0
  rw [← C.plusPlus_commute (involutionPlus C.second x)]
  rw [involutionPlus_idempotent C.second C.second_sq]
  rw [involutionMinus_after_plus C.first C.first_sq]

/-- ++ annihilates --. -/
theorem sectorPP_after_MM (x : V) :
    C.sectorPP (C.sectorMM x) = 0 := by
  change involutionPlus C.first
      (involutionPlus C.second
        (involutionMinus C.first (involutionMinus C.second x))) = 0
  rw [← C.minusPlus_commute (involutionMinus C.second x)]
  rw [involutionPlus_after_minus C.second C.second_sq]
  simp

/-- The -- sector annihilates ++. -/
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

/-- -+ annihilates +-. -/
theorem sectorMP_after_PM (x : V) :
    C.sectorMP (C.sectorPM x) = 0 := by
  change involutionMinus C.first
      (involutionPlus C.second
        (involutionPlus C.first (involutionMinus C.second x))) = 0
  rw [← C.plusPlus_commute (involutionMinus C.second x)]
  rw [involutionMinus_after_plus C.first C.first_sq]

/-- +- annihilates --. -/
theorem sectorPM_after_MM (x : V) :
    C.sectorPM (C.sectorMM x) = 0 := by
  change involutionPlus C.first
      (involutionMinus C.second
        (involutionMinus C.first (involutionMinus C.second x))) = 0
  rw [← C.minusMinus_commute (involutionMinus C.second x)]
  rw [involutionMinus_idempotent C.second C.second_sq]
  rw [involutionPlus_after_minus C.first C.first_sq]

/-- The -- sector annihilates +-. -/
theorem sectorMM_after_PM (x : V) :
    C.sectorMM (C.sectorPM x) = 0 := by
  change involutionMinus C.first
      (involutionMinus C.second
        (involutionPlus C.first (involutionMinus C.second x))) = 0
  rw [← C.plusMinus_commute (involutionMinus C.second x)]
  rw [involutionMinus_idempotent C.second C.second_sq]
  rw [involutionMinus_after_plus C.first C.first_sq]

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

/-- The -- sector annihilates -+. -/
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
noncomputable def interventionSector : V →ₗ[ℝ] V :=
  C.sectorPM

/-- The distinguished intervention sector remains a projector. -/
theorem interventionSector_idempotent :
    ∀ x, C.interventionSector (C.interventionSector x) = C.interventionSector x :=
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
  simp only [map_neg]

end CommutingInvolutions

end FormalResearch.PositiveAtlas
```
