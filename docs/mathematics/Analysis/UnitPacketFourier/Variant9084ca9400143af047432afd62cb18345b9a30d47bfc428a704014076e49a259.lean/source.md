# Complete source: GRWTSK.Analysis.UnitPacketFourier.Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d14f0855c6a6bdc40ab6c504fe3b0e8226be7238` · SHA-256 `9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PortBudget
import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality

/-!
# Finite unit-group Fourier reconstruction retains centering and the nonunit port

Batch 19 B19-L8 uses the actual complete complex character basis from Mathlib.
The principal coordinate is the packet mean. Subtracting that mean kills exactly
the principal coordinate and leaves every nontrivial coordinate unchanged; the
full nontrivial family reconstructs the centered packet. The next consumer uses
the literal centered Mangoldt integer row and the actual unit test in ZMod q.
Nonunit mass and the principal mean remain explicit in the exact total ledger.
No progression dispersion, uniform character estimate or Type-III separation
is inferred from this finite transform identity.

Human centering/correction requirement: grwtsk contributors. Local exact packet
and arithmetic consumer: OpenAI Codex. Mathlib's complete character basis and
orthogonality retain their external identity and named author notices.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.UnitPacketFourier
open scoped BigOperators
noncomputable section

/-- The coefficient in this module, with the following exact parameterization.

def coefficient {G : Type*} [AddCommGroup G] [Fintype G] (f : G → ℂ) (psi : AddChar G ℂ) : ℂ
:= (AddChar.complexBasis G).repr f psi
-/
def coefficient {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) (psi : AddChar G ℂ) : ℂ := (AddChar.complexBasis G).repr f psi
/-- The packet mean in this module, with the following exact parameterization.

def packetMean {G : Type*} [Fintype G] (f : G → ℂ) : ℂ := (∑ x, f x) / Fintype.card G
-/
def packetMean {G : Type*} [Fintype G] (f : G → ℂ) : ℂ := (∑ x, f x) / Fintype.card G
/-- The centered in this module, with the following exact parameterization.

def centered {G : Type*} [Fintype G] (f : G → ℂ) (x : G) : ℂ := f x - packetMean f
-/
def centered {G : Type*} [Fintype G] (f : G → ℂ) (x : G) : ℂ := f x - packetMean f

theorem complete_character_reconstruction {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) (x : G) : (∑ psi : AddChar G ℂ, coefficient f psi * psi x) = f x := by
  have h := congrFun ((AddChar.complexBasis G).sum_repr f) x
  simpa [coefficient, Fintype.sum_apply, Pi.smul_apply, smul_eq_mul] using h

theorem principal_coordinate_is_mean {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) : coefficient f 0 = packetMean f := by
  classical
  have hs : (∑ x, f x) = coefficient f 0 * Fintype.card G := by
    calc
      _ = ∑ x, ∑ psi : AddChar G ℂ, coefficient f psi * psi x := by
        apply Finset.sum_congr rfl
        intro x _
        exact (complete_character_reconstruction f x).symm
      _ = ∑ psi : AddChar G ℂ, coefficient f psi * ∑ x, psi x := by
        rw [Finset.sum_comm]
        simp_rw [Finset.mul_sum]
      _ = _ := by simp [AddChar.sum_eq_ite]
  have hn : (Fintype.card G : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr Fintype.card_ne_zero
  unfold packetMean
  rw [hs, mul_div_cancel_right₀ _ hn]

theorem constant_packet_coordinates {G : Type*} [AddCommGroup G] [Fintype G]
    (c : ℂ) (psi : AddChar G ℂ) :
    coefficient (fun _ : G ↦ c) psi = if psi = 0 then c else 0 := by
  classical
  have he : (fun _ : G ↦ c) = c • (AddChar.complexBasis G) 0 := by
    funext x
    simp
  rw [coefficient, he, map_smul]
  rw [(AddChar.complexBasis G).repr_self]
  simp [Finsupp.single_apply, eq_comm]

theorem centered_coordinates {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) (psi : AddChar G ℂ) :
    coefficient (centered f) psi = coefficient f psi - if psi = 0 then packetMean f else 0 := by
  classical
  change (AddChar.complexBasis G).repr (f - fun _ ↦ packetMean f) psi = _
  rw [map_sub]
  change coefficient f psi - coefficient (fun _ : G ↦ packetMean f) psi = _
  rw [constant_packet_coordinates]

theorem centered_principal_zero {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) : coefficient (centered f) 0 = 0 := by
  rw [centered_coordinates, if_pos rfl, principal_coordinate_is_mean, sub_self]

theorem nontrivial_coordinate_unchanged {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) {psi : AddChar G ℂ} (hpsi : psi ≠ 0) :
    coefficient (centered f) psi = coefficient f psi := by
  rw [centered_coordinates, if_neg hpsi, sub_zero]

theorem complete_nontrivial_reconstruction {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) (x : G) :
    (∑ psi ∈ Finset.univ.erase (0 : AddChar G ℂ), coefficient f psi * psi x) = centered f x := by
  classical
  have h := complete_character_reconstruction (centered f) x
  rw [← Finset.sum_erase_add _ _ (Finset.mem_univ (0 : AddChar G ℂ))] at h
  simp only [centered_principal_zero, zero_mul, add_zero] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro psi hpsi
  rw [nontrivial_coordinate_unchanged f (Finset.mem_erase.mp hpsi).1]

/-- The unit packet in this module, with the following exact parameterization.

def unitPacket {ι G : Type*} [Fintype ι] [DecidableEq G] (label : ι → Option G) (a : ι → ℂ) (g
: G) : ℂ := PortBudget.joinedPort label a (some g)
-/
def unitPacket {ι G : Type*} [Fintype ι] [DecidableEq G]
    (label : ι → Option G) (a : ι → ℂ) (g : G) : ℂ := PortBudget.joinedPort label a (some g)
/-- The nonunit port in this module, with the following exact parameterization.

def nonunitPort {ι G : Type*} [Fintype ι] [DecidableEq G] (label : ι → Option G) (a : ι → ℂ) :
ℂ := PortBudget.joinedPort label a none
-/
def nonunitPort {ι G : Type*} [Fintype ι] [DecidableEq G]
    (label : ι → Option G) (a : ι → ℂ) : ℂ := PortBudget.joinedPort label a none

theorem complete_unit_nonunit_ledger {ι G : Type*}
    [Fintype ι] [Fintype G] [DecidableEq G] [Nonempty G]
    (label : ι → Option G) (a : ι → ℂ) :
    nonunitPort label a + (Fintype.card G : ℂ) * packetMean (unitPacket label a) = ∑ i, a i := by
  have hs := PortBudget.total_joined_eq label a
  rw [Fintype.sum_option] at hs
  have hm : (Fintype.card G : ℂ) * packetMean (unitPacket label a) = ∑ g, unitPacket label a g := by
    have hn : (Fintype.card G : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr Fintype.card_ne_zero
    unfold packetMean
    field_simp
  rw [hm]
  exact hs

/-- The arithmetic label in this module, with the following exact parameterization.

def arithmeticLabel (q n : ℕ) : Option (Additive (ZMod q)ˣ)  (implemented by the following
proof).
-/
def arithmeticLabel (q n : ℕ) : Option (Additive (ZMod q)ˣ) := by
  classical
  exact if h : IsUnit (n : ZMod q) then some (Additive.ofMul h.unit) else none

theorem arithmetic_label_nonunit_iff (q n : ℕ) :
    arithmeticLabel q n = none ↔ ¬ IsUnit (n : ZMod q) := by
  classical
  unfold arithmeticLabel
  split_ifs with h <;> simp [h]

/-- The actual row in this module, with the following exact parameterization.

def actualRow (N : ℕ) (w : ℕ → ℂ) (n : ↥(Finset.Icc 1 N)) : ℂ := w n *
(CenteredVaughan.centeredMangoldt n : ℂ)
-/
def actualRow (N : ℕ) (w : ℕ → ℂ) (n : ↥(Finset.Icc 1 N)) : ℂ :=
  w n * (CenteredVaughan.centeredMangoldt n : ℂ)

/-- The actual unit packet in this module, with the following exact parameterization.

def actualUnitPacket (q N : ℕ) (w : ℕ → ℂ) : Additive (ZMod q)ˣ → ℂ  (implemented by the
following proof).
-/
def actualUnitPacket (q N : ℕ) (w : ℕ → ℂ) : Additive (ZMod q)ˣ → ℂ := by
  classical
  exact unitPacket (fun n : ↥(Finset.Icc 1 N) ↦ arithmeticLabel q n) (actualRow N w)

/-- The actual nonunit port in this module, with the following exact parameterization.

def actualNonunitPort (q N : ℕ) (w : ℕ → ℂ) : ℂ  (implemented by the following proof).
-/
def actualNonunitPort (q N : ℕ) (w : ℕ → ℂ) : ℂ := by
  classical
  exact nonunitPort (fun n : ↥(Finset.Icc 1 N) ↦ arithmeticLabel q n) (actualRow N w)

theorem actual_mangoldt_complete_port_ledger (q N : ℕ) [NeZero q] (w : ℕ → ℂ) :
    actualNonunitPort q N w + (Fintype.card (ZMod q)ˣ : ℂ) * packetMean (actualUnitPacket q N w) =
      ∑ n : ↥(Finset.Icc 1 N), w n * (CenteredVaughan.centeredMangoldt n : ℂ) := by
  classical
  have h := complete_unit_nonunit_ledger
    (fun n : ↥(Finset.Icc 1 N) ↦ arithmeticLabel q n) (actualRow N w)
  have hc := Fintype.card_congr (Additive.ofMul : (ZMod q)ˣ ≃ Additive (ZMod q)ˣ)
  simpa only [actualNonunitPort, actualUnitPacket, actualRow, ← hc] using h

theorem actual_mangoldt_centered_unit_reconstruction (q N : ℕ) [NeZero q] (w : ℕ → ℂ)
    (u : Additive (ZMod q)ˣ) :
    (∑ psi ∈ Finset.univ.erase (0 : AddChar (Additive (ZMod q)ˣ) ℂ),
      coefficient (actualUnitPacket q N w) psi * psi u) =
        actualUnitPacket q N w u - packetMean (actualUnitPacket q N w) :=
  complete_nontrivial_reconstruction _ _

end
end GRWTSK.RiemannHypothesis.Conversation.UnitPacketFourier
```
