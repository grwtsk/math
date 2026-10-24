# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3facf2f54d177468f833364a17e61cd7570b6df` · SHA-256 `fd5a07d53d622ecdee08be4755959fe2fc9aa0824ef0ae6290def171047d6ad3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightBernstein

set_option autoImplicit false

/-!
# Joint degree-(10,5) certificate for the new sextic source

The existing generic nonnegative tensor basis is reused. All 66 natural
coefficients are identified with the target polynomial by an exact ring identity.
The domain variable y is SQUARED imaginary height, and Re(s)+5 is a real scalar.
No sample test or table provenance proves the polynomial equality.
SOURCE SCRIPTS: elaboration and transitive axiom audit are NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.EightHeightCertificate

open QuarticPrimitive.SevenHeightCertificate (boxBasis tensorValue tensorValue_nonneg)
noncomputable section

def numerator (x y : ℝ) : ℝ :=
  (x ^ 2 + y) * ((x - 1) ^ 2 + y) * ((x + 1) ^ 2 + y) *
    ((x + 3) ^ 2 + y) * ((x + 5) ^ 2 + y)

def quadraticNormSq (x y : ℝ) : ℝ :=
  (x ^ 2 - 10 * x + 45 - y) ^ 2 + (2 * x - 10) ^ 2 * y

def denominator (x y : ℝ) : ℝ :=
  (x + 5) ^ 2 * ((x + 6) ^ 2 + y) * ((x + 7) ^ 2 + y) * quadraticNormSq x y

def gap (x y : ℝ) : ℝ := 961 * denominator x y - 1024 * numerator x y

def coefficients : Fin 11 → Fin 6 → ℕ :=
  ![
    ![114611850791361, 879309353233605, 2859836144079242, 5088003699132810, 4244053798641861, 125288834303425],
    ![1174243655621652, 8924506191841380, 28859647704303816, 51263996025077960, 42715708407970916, 1302098482550804],
    ![5411966980067508, 40738959717368708, 130973751134086920, 232293477411243784, 193350569139966852, 6038354317590708],
    ![14776309920577632, 110143529335707104, 352011362762826688, 623385785789881280, 518311454539516384, 16461823276217440],
    ![26467083633321408, 195317293943941312, 620458820041025920, 1097177085431480704, 911231656869997760, 29224200731972032],
    ![32497632512894976, 237369575665805312, 749407462925897728, 1323309159409504256, 1097803543716628480, 35303127555770368],
    ![27701278653619200, 200217631699520512, 628140151216936960, 1107631320286074880, 917831894969388032, 29385392417397760],
    ![16186720829497344, 115737468663652352, 360764673249034240, 635292405718630400, 525823192559411200, 16636723434545152],
    ![6205232402546688, 43879509264908288, 135873718220390400, 238952432571154432, 197546483133923328, 6127996112879616],
    ![1409248170344448, 9852534866313216, 30301629013032960, 53221036198461440, 43946724761796608, 1325031811973120],
    ![143981568589824, 994910744346624, 3038498898575360, 5330063742468096, 4395966073405440, 127572146913280]
  ]

/-- An identity for every real u,v; positivity is restricted to the unit square. -/
theorem tensor_identity (u v : ℝ) :
    tensorValue coefficients u v = 1024 * gap ((1 + u) / 2) (64 * v) := by
  norm_num [tensorValue, coefficients, boxBasis, Fin.sum_univ_succ,
    gap, numerator, denominator, quadraticNormSq] <;> ring

theorem gap_nonneg {x y : ℝ}
    (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) (hy : 0 ≤ y) (hy64 : y ≤ 64) :
    0 ≤ gap x y := by
  have hu : 0 ≤ 2 * x - 1 := by linarith
  have hu1 : 2 * x - 1 ≤ 1 := by linarith
  have hv : 0 ≤ y / 64 := by positivity
  have hv1 : y / 64 ≤ 1 := by linarith
  have h := tensorValue_nonneg coefficients hu hu1 hv hv1
  rw [tensor_identity, show (1 + (2 * x - 1)) / 2 = x by ring,
    show 64 * (y / 64) = y by ring] at h
  linarith

theorem squared_ratio_bound {x y : ℝ}
    (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) (hy : 0 ≤ y) (hy64 : y ≤ 64) :
    1024 * numerator x y ≤ 961 * denominator x y := by
  have h := gap_nonneg hx hx1 hy hy64
  unfold gap at h
  linarith

/-- Failure of this sufficient comparison, NOT a zeta zero or a failure of RH. -/
theorem height_nine_gap_negative : gap (1 / 2) 81 < 0 := by
  norm_num [gap, numerator, denominator, quadraticNormSq]

theorem zero_table_is_not_certificate :
    tensorValue (fun (_ : Fin 11) (_ : Fin 6) => 0) 0 0 ≠ 1024 * gap (1 / 2) 0 := by
  norm_num [tensorValue, boxBasis, gap, numerator, denominator, quadraticNormSq]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.EightHeightCertificate
```
