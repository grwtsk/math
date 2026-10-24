# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CurvaturePacketCertificates.Variant7fcd5fa366b2ad13e5fda97a8bf71eff3f415d0e89dd3c27fe321e07de469e89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `631ceecaa18c38355f53eda10eba54e67df2ed01` · SHA-256 `7fcd5fa366b2ad13e5fda97a8bf71eff3f415d0e89dd3c27fe321e07de469e89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCriticalGreenReadout
import FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase
import Mathlib.Analysis.Calculus.Deriv.Shift

/-!
# Three-point curvature packets in the actual critical test

The packet has unit signed mass zero, affine moment zero and centered second
moment `a*b`. Its nonnegative tent has mass `a*b/2`. The critical source test
keeps its exponential and all three correlation derivative terms. Neither
nonnegative tents nor unsigned curvature bounds decide a signed arithmetic sum.

Research direction, selection and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex / ChatGPT.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.CurvaturePacketCertificates

open MeasureTheory Set
open scoped Interval
open SourceCriticalGreenTent SourceCriticalGreenReadout SourceCriticalSecondAbel
open SourceFirstPrimeAbel SourceCriticalCurvaturePhase
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- Evaluation of the literal signed three-atom packet. -/
def packetValue (Φ : ℝ → ℝ) (x a b : ℝ) : ℝ :=
  b / (a + b) * Φ (x + a) + a / (a + b) * Φ (x - b) - Φ x

theorem packet_constant {a b : ℝ} (hab : a + b ≠ 0) (x k : ℝ) :
    packetValue (fun _ => k) x a b = 0 := by
  unfold packetValue
  field_simp [hab]
  ring

theorem packet_affine {a b : ℝ} (hab : a + b ≠ 0) (x m k : ℝ) :
    packetValue (fun t => m * t + k) x a b = 0 := by
  unfold packetValue
  field_simp [hab]
  ring

theorem packet_centered_second_moment {a b : ℝ} (hab : a + b ≠ 0) (x : ℝ) :
    packetValue (fun t => (t - x) ^ 2) x a b = a * b := by
  unfold packetValue
  field_simp [hab]
  ring

/-- Weak form: C1 test and absolutely continuous first derivative suffice. -/
theorem packet_green_local {a b : ℝ} (ha : 0 < a) (hb : 0 < b)
    {D : ℝ → ℝ} (hD : ContDiff ℝ 1 D)
    (hD' : AbsolutelyContinuousOnInterval (deriv D) 0 (a + b)) :
    packetValue D b a b =
      ∫ u in 0..a + b, criticalDirichletTent (a + b) u b * deriv (deriv D) u := by
  have hi := dirichletTent_integral_second_deriv_eq_endpoint_interpolation
    (show 0 < a + b by linarith) (show b ∈ Icc 0 (a + b) by constructor <;> linarith)
    hD hD'
  rw [hi]
  unfold packetValue
  simp only [sub_self]
  rw [add_comm b a]
  field_simp [show a + b ≠ 0 by linarith]
  ring

/-- Exact translated tent identity for a C2 test, with no limiting kernel. -/
theorem packet_green {a b : ℝ} (ha : 0 < a) (hb : 0 < b)
    {Φ : ℝ → ℝ} (hΦ : ContDiff ℝ 2 Φ) (x : ℝ) :
    packetValue Φ x a b =
      ∫ u in 0..a + b, criticalDirichletTent (a + b) u b *
        deriv (deriv Φ) (u + (x - b)) := by
  let D : ℝ → ℝ := fun u => Φ (u + (x - b))
  have hD : ContDiff ℝ 2 D := hΦ.comp (contDiff_id.add contDiff_const)
  have hD1 : ContDiff ℝ 1 D := hD.of_le (by norm_num)
  have hd : deriv D = fun u => deriv Φ (u + (x - b)) :=
    funext (fun u => deriv_comp_add_const Φ (x - b) u)
  have hdd : deriv (deriv D) = fun u => deriv (deriv Φ) (u + (x - b)) := by
    rw [hd]
    exact funext (fun u => deriv_comp_add_const (deriv Φ) (x - b) u)
  have hi := packet_green_local ha hb hD1
    hD.deriv'.contDiffOn.absolutelyContinuousOnInterval
  have hp : packetValue D b a b = packetValue Φ x a b := by
    unfold packetValue D
    rw [show b + a + (x - b) = x + a by ring,
      show b - b + (x - b) = x - b by ring,
      show b + (x - b) = x by ring]
  rw [hp, hdd] at hi
  exact hi

/-- The tent mass is half the centered second moment, fixing the scaling. -/
theorem packet_tent_mass {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    (∫ u in 0..a + b, criticalDirichletTent (a + b) u b) = a * b / 2 := by
  have hD : ContDiff ℝ 2 (fun u : ℝ => u ^ 2) := contDiff_id.pow 2
  have hd : deriv (fun u : ℝ => u ^ 2) = fun u => 2 * u := by
    funext u
    simp
  have hdd : deriv (deriv (fun u : ℝ => u ^ 2)) = fun _ => (2 : ℝ) := by
    rw [hd]
    funext u
    simp
  have hi := packet_green_local ha hb (hD.of_le (by norm_num))
    hD.deriv'.contDiffOn.absolutelyContinuousOnInterval
  rw [hdd, intervalIntegral.integral_mul_const] at hi
  have hp : packetValue (fun u : ℝ => u ^ 2) b a b = a * b := by
    unfold packetValue
    field_simp [show a + b ≠ 0 by linarith]
    ring
  rw [hp] at hi
  linarith

/-- A curvature envelope costs exactly M*a*b/2, not M*a*b.
Signed coefficient combinations may be sharper than summing this envelope. -/
theorem packet_abs_le_curvature {a b M : ℝ} (ha : 0 < a) (hb : 0 < b)
    {Φ : ℝ → ℝ} (hΦ : ContDiff ℝ 2 Φ) (x : ℝ)
    (hbound : ∀ u ∈ Icc 0 (a + b), |deriv (deriv Φ) (u + (x - b))| ≤ M) :
    |packetValue Φ x a b| ≤ M * (a * b / 2) := by
  have ht : Continuous (fun u => criticalDirichletTent (a + b) u b) := by
    unfold criticalDirichletTent
    fun_prop
  have hi := intervalIntegral.norm_integral_le_of_norm_le
    (μ := volume)
    (f := fun u => criticalDirichletTent (a + b) u b *
      deriv (deriv Φ) (u + (x - b)))
    (g := fun u => M * criticalDirichletTent (a + b) u b)
    (show 0 ≤ a + b by linarith)
    (Filter.Eventually.of_forall (fun u hu => by
      have hn := criticalDirichletTent_nonneg (show 0 < a + b by linarith)
        (show u ∈ Icc 0 (a + b) from ⟨hu.1.le, hu.2⟩)
        (show b ∈ Icc 0 (a + b) by constructor <;> linarith)
      simp only [Real.norm_eq_abs, abs_mul, abs_of_nonneg hn]
      calc
        _ ≤ criticalDirichletTent (a + b) u b * M :=
          mul_le_mul_of_nonneg_left (hbound u ⟨hu.1.le, hu.2⟩) hn
        _ = _ := mul_comm _ _))
    ((ht.const_mul M).intervalIntegrable _ _)
  rw [intervalIntegral.integral_const_mul, packet_tent_mass ha hb] at hi
  simpa only [Real.norm_eq_abs, ← packet_green ha hb hΦ x] using hi

/-- The complete A-dependent exponential critical test is a valid packet test. -/
theorem critical_packet_green {A a b : ℝ} (hA : 1 ≤ A) (ha : 0 < a) (hb : 0 < b)
    (x : ℝ) :
    packetValue (criticalPrimeTest A) x a b =
      ∫ u in 0..a + b, criticalDirichletTent (a + b) u b *
        (Real.exp ((u + (x - b)) / 2) *
          (SourcePairing.sourceCorrelation explicitSecondDerivative A (u + (x - b)) / 4 +
           deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) (u + (x - b)) +
           deriv (deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A))
             (u + (x - b)))) := by
  rw [packet_green ha hb (criticalPrimeTest_contDiff_two (show 0 < A by linarith))]
  apply intervalIntegral.integral_congr
  intro u _
  dsimp only
  rw [criticalPrimeTest_second_deriv_eq_correlation (show 0 < A by linarith)]

end FormalResearch.RiemannHypothesis.CurvaturePacketCertificates
```
