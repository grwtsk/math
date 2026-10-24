-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TangentAtOne.Variant06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TangentAtOne.Variant06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/06/06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5--SourcePhaseJet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCharacteristicInventory


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TangentAtOne.Variant06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5

namespace FormalResearch.RiemannHypothesis.SourceCharacteristicInventory
open Polynomial
open FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical
open FormalResearch.RiemannHypothesis.PhaseDeformationQuantities
open FormalResearch.RiemannHypothesis.MultiplicativePhase
noncomputable section

def tangentAtOne (v : ℂ) : CharacteristicOne →ₐ[ℂ] DualNumber ℂ :=
  AdjoinRoot.liftAlgHom _ (Algebra.ofId ℂ (DualNumber ℂ))
    (1 + algebraMap ℂ (DualNumber ℂ) v * DualNumber.eps) (by
      simp [mul_pow])

theorem tangent_at_one_root (v : ℂ) :
    tangentAtOne v (AdjoinRoot.root ((X - C (1 : ℂ)) ^ 2)) =
      1 + algebraMap ℂ (DualNumber ℂ) v * DualNumber.eps := by
  simp [tangentAtOne]

theorem tangent_at_one_infinitesimal (v : ℂ) :
    tangentAtOne v infinitesimalOne = algebraMap ℂ (DualNumber ℂ) v * DualNumber.eps := by
  simp [tangentAtOne, infinitesimalOne]

def sourcePhaseJet (n : ℕ) : CharacteristicOne →ₐ[ℂ] DualNumber ℂ :=
  tangentAtOne (deriv (fun ξ : ℝ ↦ chi ξ n) 0)

theorem source_phase_jet_infinitesimal (n : ℕ) :
    sourcePhaseJet n infinitesimalOne =
      TrivSqZeroExt.inr (Complex.I * (Real.log n : ℂ)) := by
  rw [sourcePhaseJet, tangent_at_one_infinitesimal, deriv_chi_zero]
  ext <;> simp [TrivSqZeroExt.algebraMap_eq_inl]

theorem tangent_at_one_observation (v : ℂ) (z : CharacteristicOne) :
    (tangentAtOne v z).fst = observeOne z := by
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective z
  induction p using Polynomial.induction_on' with
  | add p q hp hq => simp only [map_add, TrivSqZeroExt.fst_add, hp, hq]
  | monomial k a =>
    simp [tangentAtOne, observeOne, Polynomial.eval₂_monomial,
      TrivSqZeroExt.algebraMap_eq_inl]

theorem source_phase_jet_root (n : ℕ) :
    sourcePhaseJet n (AdjoinRoot.root ((X - C (1 : ℂ)) ^ 2)) =
      1 + TrivSqZeroExt.inr (Complex.I * (Real.log n : ℂ)) := by
  rw [sourcePhaseJet, tangent_at_one_root, deriv_chi_zero]
  congr 1
  ext <;> simp [TrivSqZeroExt.algebraMap_eq_inl]

def sourceTangent (A : ℝ) : LowerPowerZeroFiber A :=
  fun n ↦ algebraMap ℂ CharacteristicOne
    (Complex.I * (Real.log (n : ℕ) : ℂ)) * infinitesimalOne

theorem source_tangent_mem_jacobson (A : ℝ) :
    sourceTangent A ∈ Ring.jacobson (LowerPowerZeroFiber A) := by
  rw [source_zero_fiber_jacobson]
  intro n
  exact (Ring.jacobson CharacteristicOne).mul_mem_left _ infinitesimal_one_mem_jacobson

theorem source_tangent_observation (A : ℝ) : sourceZeroObservation A (sourceTangent A) = 0 := by
  funext n
  change observeOne (sourceTangent A n) = 0
  simp [sourceTangent, observe_one_infinitesimal]

theorem source_tangent_coordinate_jet (A : ℝ) (n : LowerPowerLabel A) :
    tangentAtOne 1 (sourceTangent A n) =
      sourcePhaseJet (n : ℕ) infinitesimalOne := by
  rw [sourceTangent, map_mul, AlgHom.commutes, tangent_at_one_infinitesimal,
    sourcePhaseJet, tangent_at_one_infinitesimal, deriv_chi_zero]
  simp

end
end FormalResearch.RiemannHypothesis.SourceCharacteristicInventory
