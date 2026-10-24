# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UnitPacketDispersion.Variante49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `506e74dc6274c5a9402fffea8c305448e00a42fa` · SHA-256 `e49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.UnitPacketFourier

/-!
# Complete nontrivial character payments bound the actual centered unit packet

The next Batch 19 B19-L8 consumer uses every retained nonprincipal coordinate.
It bounds pointwise dispersion by their complete norm sum, and by (group
cardinality minus one) times a supplied common cap. The actual centered Mangoldt
packet is consumed without changing its unit test, cutoff, or principal mean.
No cap is proved here; the nonunit port remains in the separate total ledger.

Human complete-channel requirement: grwtsk contributors. Local finite Fourier
bound and actual-source consumer: OpenAI Codex. Qualified Mathlib character
norm and cardinality facts retain upstream identity and source notices.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.UnitPacketDispersion
open UnitPacketFourier
open scoped BigOperators
noncomputable section

theorem complete_character_payment {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) (x : G) :
    ‖f x - packetMean f‖ ≤
      ∑ psi ∈ Finset.univ.erase (0 : AddChar G ℂ), ‖coefficient f psi‖ := by
  classical
  change ‖centered f x‖ ≤ _
  rw [← complete_nontrivial_reconstruction f x]
  calc
    _ ≤ ∑ psi ∈ Finset.univ.erase (0 : AddChar G ℂ), ‖coefficient f psi * psi x‖ :=
      norm_sum_le _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro psi _
      rw [norm_mul, psi.norm_apply, mul_one]

theorem supplied_character_cap_pays_cardinality {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) {B : ℝ} (hcap : ∀ psi : AddChar G ℂ, psi ≠ 0 → ‖coefficient f psi‖ ≤ B)
    (x : G) : ‖f x - packetMean f‖ ≤ ((Fintype.card G - 1 : ℕ) : ℝ) * B := by
  classical
  calc
    _ ≤ ∑ psi ∈ Finset.univ.erase (0 : AddChar G ℂ), ‖coefficient f psi‖ :=
      complete_character_payment f x
    _ ≤ ∑ psi ∈ Finset.univ.erase (0 : AddChar G ℂ), B :=
      Finset.sum_le_sum (fun psi hpsi ↦ hcap psi (Finset.mem_erase.mp hpsi).1)
    _ = _ := by simp

theorem actual_mangoldt_complete_character_payment (q N : ℕ) [NeZero q] (w : ℕ → ℂ)
    (u : Additive (ZMod q)ˣ) :
    ‖actualUnitPacket q N w u - packetMean (actualUnitPacket q N w)‖ ≤
      ∑ psi ∈ Finset.univ.erase (0 : AddChar (Additive (ZMod q)ˣ) ℂ),
        ‖coefficient (actualUnitPacket q N w) psi‖ :=
  complete_character_payment _ _

theorem actual_mangoldt_character_cap_consumer (q N : ℕ) [NeZero q] (w : ℕ → ℂ)
    {B : ℝ}
    (hcap : ∀ psi : AddChar (Additive (ZMod q)ˣ) ℂ, psi ≠ 0 →
      ‖coefficient (actualUnitPacket q N w) psi‖ ≤ B) (u : Additive (ZMod q)ˣ) :
    ‖actualUnitPacket q N w u - packetMean (actualUnitPacket q N w)‖ ≤
      ((Fintype.card (Additive (ZMod q)ˣ) - 1 : ℕ) : ℝ) * B :=
  supplied_character_cap_pays_cardinality _ hcap _

end
end GRWTSK.RiemannHypothesis.Conversation.UnitPacketDispersion
```
