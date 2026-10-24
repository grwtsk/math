# Complete source: GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6c814c9f1d6c293eb72c4e88dcdf16b62cdbec0` · SHA-256 `40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition
import GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence

/-! Literal signed settlement accounting. Both actual source components are
retained in every packet. No separate polynomial estimate for either sector
is assumed or derived. All integrability obligations below are discharged. -/
noncomputable section
open MeasureTheory Set
namespace HSSCP04.Settlement
open PPNCP04 HorizonShell EulerP04RH.NativeWindow

def matureEnergy (b T : ℝ) : ℝ :=
  ∫ u in Icc (T-b) T, matureWave b T u ^ 2

def horizonEnergy (b T : ℝ) : ℝ :=
  ∫ u in Icc (T-b) T, horizonWave b T u ^ 2

def signedCorrelation (b T : ℝ) : ℝ :=
  2 * ∫ u in Icc (T-b) T, matureWave b T u * horizonWave b T u

theorem cross_integrable (b T : ℝ) :
    Integrable (fun u => matureWave b T u * horizonWave b T u) :=
  (matureWave_memLp_two b T).integrable_mul (horizonWave_memLp_two b T)

theorem matureEnergy_nonnegative (b T : ℝ) : 0 ≤ matureEnergy b T :=
  integral_nonneg (fun _ => sq_nonneg _)

theorem horizonEnergy_nonnegative (b T : ℝ) : 0 ≤ horizonEnergy b T :=
  integral_nonneg (fun _ => sq_nonneg _)

theorem localEnergy_eq_signed_source {b T : ℝ} (hb : PinnedShellWidth b) (hT : b ≤ T) :
    localEnergy b T = ∫ u in Icc (T-b) T,
      (matureWave b T u + horizonWave b T u)^2 := by
  rw [LocalEnergyTelescope.localEnergy_common_cutoff]
  apply setIntegral_congr_fun measurableSet_Icc
  intro u hu
  change pickup T u ^ 2 = (matureWave b T u + horizonWave b T u) ^ 2
  rw [pickup_split hb.1.le hb.2 (show u ∈ Icc 0 T by constructor <;> linarith [hu.1,hu.2])]

/-- The complete signed correlation remains intact in the exact energy ledger. -/
theorem settlement_ledger {b T : ℝ} (hb : PinnedShellWidth b) (hT : b ≤ T) :
    localEnergy b T = matureEnergy b T + horizonEnergy b T + signedCorrelation b T := by
  rw [localEnergy_eq_signed_source hb hT]
  have hG := (matureWave_square_integrable b T).restrict (s := Icc (T-b) T)
  have hH := (horizonWave_square_integrable b T).restrict (s := Icc (T-b) T)
  have hC := ((cross_integrable b T).const_mul 2).restrict (s := Icc (T-b) T)
  calc
    _ = ∫ u in Icc (T-b) T,
        (matureWave b T u ^ 2 + horizonWave b T u ^ 2) +
          2 * (matureWave b T u * horizonWave b T u) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun _ => by ring)
    _ = _ := by
      change (∫ u in Icc (T-b) T,
        ((fun u => matureWave b T u ^ 2) + (fun u => horizonWave b T u ^ 2)) u +
          2 * (matureWave b T u * horizonWave b T u)) = _
      rw [integral_add (hG.add hH) hC]
      simp only [Pi.add_apply]
      rw [integral_add hG hH,integral_const_mul]
      rfl

theorem signed_debit_exact {b T : ℝ} (hb : PinnedShellWidth b) (hT : b ≤ T) :
    signedCorrelation b T = localEnergy b T - matureEnergy b T - horizonEnergy b T := by
  linarith [settlement_ledger hb hT]

/-- If the residual is small and the shell is large, the old source must be large too.
This is a necessary matching relation, not a separate mature-source upper bound. -/
theorem shell_requires_mature_energy {b T : ℝ} (hb : PinnedShellWidth b) (hT : b ≤ T) :
    horizonEnergy b T ≤ 2*matureEnergy b T + 2*localEnergy b T := by
  rw [localEnergy_eq_signed_source hb hT]
  have hG := (matureWave_square_integrable b T).restrict (s := Icc (T-b) T)
  have hH := (horizonWave_square_integrable b T).restrict (s := Icc (T-b) T)
  have hC := (cross_integrable b T).restrict (s := Icc (T-b) T)
  have hS : Integrable (fun u => (matureWave b T u+horizonWave b T u)^2)
      (volume.restrict (Icc (T-b) T)) := by
    apply ((hG.add hH).add (hC.const_mul 2)).congr
    exact Filter.Eventually.of_forall (fun _ => by simp only [Pi.add_apply]; ring)
  calc
    horizonEnergy b T ≤ ∫ u in Icc (T-b) T,
        2*(matureWave b T u)^2 + 2*(matureWave b T u+horizonWave b T u)^2 := by
      apply integral_mono hH ((hG.const_mul 2).add (hS.const_mul 2))
      intro u
      change horizonWave b T u ^ 2 ≤
        2 * matureWave b T u ^ 2 + 2 * (matureWave b T u + horizonWave b T u) ^ 2
      nlinarith [sq_nonneg (2*matureWave b T u+horizonWave b T u)]
    _ = _ := by rw [integral_add (hG.const_mul 2) (hS.const_mul 2),integral_const_mul,
        integral_const_mul]; rfl

theorem mature_lower_from_residual {b T budget : ℝ} (hb : PinnedShellWidth b)
    (hT : b ≤ T) (hresidual : localEnergy b T ≤ budget) :
    horizonEnergy b T/2-budget ≤ matureEnergy b T := by
  linarith [shell_requires_mature_energy hb hT]

theorem unsigned_replacement_dominates_shell (b T : ℝ) :
    horizonEnergy b T ≤ matureEnergy b T+horizonEnergy b T+|signedCorrelation b T| := by
  linarith [matureEnergy_nonnegative b T,abs_nonneg (signedCorrelation b T)]

/-- Cutoff consistency of the complete cycle, including the old boundary. -/
theorem previous_cycle_unchanged {b T u : ℝ} (hu : u ≤ T-b) (hb : 0 ≤ b) :
    pickup T u = pickup (T-b) u := by
  rw [pickup_cutoff_consistent (show u ≤ T by linarith),pickup_cutoff_consistent hu]

end HSSCP04.Settlement

#print axioms HSSCP04.Settlement.settlement_ledger
#print axioms HSSCP04.Settlement.shell_requires_mature_energy
```
