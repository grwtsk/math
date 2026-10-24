# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InboundChannels.Variant0e6e29cac9ae10c0bc2d7faf49e3ed38cec17f594cb495622c811fc5cf51fa3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a3a44f491476b2ef14ca9d306485ee7f82a7c4d` · SHA-256 `0e6e29cac9ae10c0bc2d7faf49e3ed38cec17f594cb495622c811fc5cf51fa3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# The marked one-plus-six inbound decomposition and its readout ledger

Batch 22's geometric seven-slot model is represented literally by one fixed
real coordinate and six orbit coordinates. The six-coordinate mean and
centered variation give exact reconstruction, zero centered sum, orthogonal
energy and independent uncontrolled roots. A declared linear readout retains
the exact loss of projection to the fixed channel, with a paid next consumer.

This is the marked scalar model. It does not construct the actual degree-six
number field, M23 candidate family, fibre transition cocycle or RH readout.
Human programme: grwtsk contributors. Local formalization: OpenAI Codex.
Standard finite linear algebra retains Mathlib's upstream identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.InboundChannels

open scoped BigOperators
noncomputable section

abbrev Packet := ℝ × (Fin 6 → ℝ)

def orbitMean (v : Fin 6 → ℝ) : ℝ := (∑ i, v i) / 6
def orbitVariation (v : Fin 6 → ℝ) (i : Fin 6) : ℝ := v i - orbitMean v
def fixedPart (m : Packet) : Packet := (m.1, 0)
def orbitPart (m : Packet) : Packet := (0, m.2)
def meanPart (m : Packet) : Packet := (0, fun _ ↦ orbitMean m.2)
def variationPart (m : Packet) : Packet := (0, orbitVariation m.2)
def packetEnergy (m : Packet) : ℝ := m.1 ^ 2 + ∑ i, m.2 i ^ 2

def orbitSum : (Fin 6 → ℝ) →ₗ[ℝ] ℝ where
  toFun v := ∑ i, v i
  map_add' v w := by simp [Finset.sum_add_distrib]
  map_smul' c v := by simp [← Finset.mul_sum]

def variationSpace : Submodule ℝ (Fin 6 → ℝ) := LinearMap.ker orbitSum

def fixedEmbedding : ℝ →ₗ[ℝ] Packet where
  toFun a := (a, 0)
  map_add' a b := by simp
  map_smul' c a := by simp

def meanEmbedding : ℝ →ₗ[ℝ] Packet where
  toFun a := (0, fun _ ↦ a)
  map_add' a b := by ext <;> simp
  map_smul' c a := by ext <;> simp

theorem fixed_channel_dimension : Module.finrank ℝ (LinearMap.range fixedEmbedding) = 1 := by
  have hi : Function.Injective fixedEmbedding := by
    intro a b h
    exact congrArg Prod.fst h
  simpa using LinearMap.finrank_range_of_inj hi

theorem mean_channel_dimension : Module.finrank ℝ (LinearMap.range meanEmbedding) = 1 := by
  have hi : Function.Injective meanEmbedding := by
    intro a b h
    exact congrArg (fun m : Packet ↦ m.2 0) h
  simpa using LinearMap.finrank_range_of_inj hi

theorem marked_packet_dimension : Module.finrank ℝ Packet = 7 := by
  simp [Packet]

theorem variation_dimension : Module.finrank ℝ variationSpace = 5 := by
  have hs : Function.Surjective orbitSum := by
    intro x
    refine ⟨fun _ ↦ x / 6, ?_⟩
    simp [orbitSum]
    ring
  have hr : LinearMap.range orbitSum = ⊤ := LinearMap.range_eq_top.mpr hs
  have h := orbitSum.finrank_range_add_finrank_ker
  rw [hr, finrank_top, Module.finrank_self, Module.finrank_fin_fun] at h
  change 1 + Module.finrank ℝ variationSpace = 6 at h
  omega

theorem mean_of_constant (c : ℝ) : orbitMean (fun _ : Fin 6 ↦ c) = c := by
  simp [orbitMean]

theorem orbit_reconstruction (v : Fin 6 → ℝ) (i : Fin 6) :
    orbitMean v + orbitVariation v i = v i := by
  unfold orbitVariation
  ring

theorem variation_sum_zero (v : Fin 6 → ℝ) : ∑ i, orbitVariation v i = 0 := by
  simp only [orbitVariation, Finset.sum_sub_distrib, Finset.sum_const,
    Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, orbitMean]
  ring

theorem variation_mean_zero (v : Fin 6 → ℝ) : orbitMean (orbitVariation v) = 0 := by
  simp [orbitMean, variation_sum_zero]

theorem variation_idempotent (v : Fin 6 → ℝ) :
    orbitVariation (orbitVariation v) = orbitVariation v := by
  funext i
  simp [orbitVariation, variation_mean_zero]

theorem fixed_orbit_reconstruction (m : Packet) : fixedPart m + orbitPart m = m := by
  ext <;> simp [fixedPart, orbitPart]

theorem three_channel_reconstruction (m : Packet) :
    fixedPart m + meanPart m + variationPart m = m := by
  ext
  · simp [fixedPart, meanPart, variationPart]
  · simp [fixedPart, meanPart, variationPart, orbitVariation]

theorem orbit_energy_identity (v : Fin 6 → ℝ) :
    ∑ i, v i ^ 2 = 6 * orbitMean v ^ 2 + ∑ i, orbitVariation v i ^ 2 := by
  have he : (∑ i, v i ^ 2) =
      (∑ i, ((orbitVariation v i) ^ 2 + 2 * orbitMean v * orbitVariation v i +
        orbitMean v ^ 2)) := by
    apply Finset.sum_congr rfl
    intro i hi
    unfold orbitVariation
    ring
  rw [he]
  simp only [Finset.sum_add_distrib, ← Finset.mul_sum, variation_sum_zero,
    mul_zero, add_zero, Finset.sum_const, Finset.card_univ, Fintype.card_fin,
    nsmul_eq_mul]
  ring

theorem exact_packet_energy (m : Packet) :
    packetEnergy m = m.1 ^ 2 + 6 * orbitMean m.2 ^ 2 +
      ∑ i, orbitVariation m.2 i ^ 2 := by
  unfold packetEnergy
  rw [orbit_energy_identity]
  ring

theorem mean_variation_orthogonal (v : Fin 6 → ℝ) :
    ∑ i, orbitMean v * orbitVariation v i = 0 := by
  rw [← Finset.mul_sum, variation_sum_zero, mul_zero]

theorem two_roots_survive_zero_variation (a b : ℝ) :
    let m : Packet := (a, fun _ ↦ b)
    (∀ i, orbitVariation m.2 i = 0) ∧ m.1 = a ∧ orbitMean m.2 = b := by
  simp [orbitVariation, mean_of_constant]

theorem either_invariant_root_unbounded (B : ℝ) :
    ∃ m : Packet, (∀ i, orbitVariation m.2 i = 0) ∧ B < m.1 ∧ B < orbitMean m.2 := by
  refine ⟨(|B| + 1, fun _ ↦ |B| + 1), ?_, ?_, ?_⟩
  · intro i
    simp [orbitVariation, mean_of_constant]
  · exact lt_of_le_of_lt (le_abs_self B) (lt_add_one _)
  · simpa [mean_of_constant] using lt_of_le_of_lt (le_abs_self B) (lt_add_one _)

theorem exact_readout_ledger (ell : Packet →ₗ[ℝ] ℝ) (m : Packet) :
    ell m = ell (fixedPart m) + ell (orbitPart m) := by
  rw [← ell.map_add, fixed_orbit_reconstruction]

theorem exact_projection_loss (ell : Packet →ₗ[ℝ] ℝ) (m : Packet) :
    ell m - ell (fixedPart m) = ell (orbitPart m) := by
  rw [exact_readout_ledger]
  ring

theorem projection_preserves_readout_iff (ell : Packet →ₗ[ℝ] ℝ) (m : Packet) :
    ell (fixedPart m) = ell m ↔ ell (orbitPart m) = 0 := by
  have h := exact_projection_loss ell m
  constructor
  · intro he
    rw [← he, sub_self] at h
    exact h.symm
  · intro he
    rw [he] at h
    exact (sub_eq_zero.mp h).symm

theorem discarded_budget_pays_readout (ell : Packet →ₗ[ℝ] ℝ) (m : Packet)
    {B E : ℝ} (hfixed : ell (fixedPart m) ≤ B) (hloss : |ell (orbitPart m)| ≤ E) :
    ell m ≤ B + E := by
  rw [exact_readout_ledger]
  exact add_le_add hfixed (le_trans (le_abs_self _) hloss)

end
end GRWTSK.RiemannHypothesis.Conversation.InboundChannels
```
