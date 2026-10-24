# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5SourcePhaseJet.Variant06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `898414865f19ca4006f77ac5251b089cdf62f086` · SHA-256 `06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCharacteristicInventory

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
```
