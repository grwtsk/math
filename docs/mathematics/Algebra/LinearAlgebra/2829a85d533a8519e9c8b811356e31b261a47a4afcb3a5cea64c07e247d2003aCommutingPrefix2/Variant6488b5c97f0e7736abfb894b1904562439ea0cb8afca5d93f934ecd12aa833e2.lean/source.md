# Complete source: GRWTSK.Algebra.LinearAlgebra.2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2.Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e36eb986893660c7c68962b60847392aba13d399` · SHA-256 `2097aa5604f9902f775dd797197874a96ca75f284b42f0b21c1e9ee0e556f25a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CommutingInvolutions.Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/28/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a--CommutingPrefix282.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a

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


end CommutingInvolutions
end FormalResearch.PositiveAtlas
```
