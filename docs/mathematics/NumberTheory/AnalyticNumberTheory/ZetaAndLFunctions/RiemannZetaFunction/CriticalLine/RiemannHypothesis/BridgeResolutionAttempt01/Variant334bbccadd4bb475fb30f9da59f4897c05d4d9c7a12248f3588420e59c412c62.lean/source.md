# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BridgeResolutionAttempt01.Variant334bbccadd4bb475fb30f9da59f4897c05d4d9c7a12248f3588420e59c412c62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca3ec186e3c9265289ad2f369e05a41bd21068e5` · SHA-256 `334bbccadd4bb475fb30f9da59f4897c05d4d9c7a12248f3588420e59c412c62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BridgeLipschitz

/-! Actual coefficient-resolution schedule as arithmetic range grows.
This controls Gamma values only; a complete curvature pairing needs its own signed
budget and weighted-error contract. Direction grwtsk contributors; OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.BridgeResolution
open Set BridgeLipschitz
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy

def bridgeResolutionCount (A η : ℝ) : ℕ := ⌈((389/20:ℝ)*A)/η⌉₊+1

theorem bridgeResolutionCount_pos (A η : ℝ) : 0<bridgeResolutionCount A η := by
  unfold bridgeResolutionCount
  omega

theorem bridgeResolutionCount_mono {A B η : ℝ} (hη : 0<η) (hAB : A≤B) :
    bridgeResolutionCount A η≤bridgeResolutionCount B η := by
  unfold bridgeResolutionCount
  apply Nat.add_le_add_right
  apply Nat.ceil_mono
  exact div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_left hAB (by norm_num)) hη.le

theorem actual_mesh_error {A s t : ℝ} {n : ℕ} (hA : 0<A) (hn : 0<n)
    (hs : s∈Icc (0:ℝ) (2*A)) (ht : t∈Icc (0:ℝ) (2*A))
    (hmesh : |t-s|≤2*A/(n:ℝ)) :
    |criticalDiscrepancyBridge A t-criticalDiscrepancyBridge A s|≤
      (389/20:ℝ)*A/n := by
  calc
    _ ≤ (389/40:ℝ)*|t-s| := actual_bridge_lipschitz hA hs ht
    _ ≤ (389/40:ℝ)*(2*A/(n:ℝ)) :=
      mul_le_mul_of_nonneg_left hmesh (by norm_num)
    _ = _ := by ring

theorem selected_mesh_budget {A η : ℝ} {n : ℕ} (hη : 0<η)
    (hn : bridgeResolutionCount A η≤n) :
    (389/20:ℝ)*A/n≤η := by
  have hp : 0<n := (bridgeResolutionCount_pos A η).trans_le hn
  have hnr : (0:ℝ)<n := by exact_mod_cast hp
  have hceil := Nat.le_ceil (((389/20:ℝ)*A)/η)
  have hc : (⌈((389/20:ℝ)*A)/η⌉₊:ℝ)≤n := by
    exact_mod_cast (by unfold bridgeResolutionCount at hn;omega :
      ⌈((389/20:ℝ)*A)/η⌉₊≤n)
  have hh : (389/20:ℝ)*A/η≤n := hceil.trans hc
  apply (div_le_iff₀ hnr).mpr
  have ht := (div_le_iff₀ hη).mp hh
  nlinarith

/-- Increasing the resolution preserves accuracy at every real arithmetic range. -/
theorem actual_joint_mesh_accuracy {A η s t : ℝ} {n : ℕ}
    (hA : 0<A) (hη : 0<η) (hn : bridgeResolutionCount A η≤n)
    (hs : s∈Icc (0:ℝ) (2*A)) (ht : t∈Icc (0:ℝ) (2*A))
    (hmesh : |t-s|≤2*A/(n:ℝ)) :
    |criticalDiscrepancyBridge A t-criticalDiscrepancyBridge A s|≤η :=
  (actual_mesh_error hA ((bridgeResolutionCount_pos A η).trans_le hn) hs ht hmesh).trans
    (selected_mesh_budget hη hn)

#print axioms bridgeResolutionCount
#print axioms bridgeResolutionCount_pos
#print axioms bridgeResolutionCount_mono
#print axioms actual_mesh_error
#print axioms selected_mesh_budget
#print axioms actual_joint_mesh_accuracy
end ContinuousResearch.BridgeResolution
```
