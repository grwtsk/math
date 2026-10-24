# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNineHeightBernstein

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a10109909f4be0897b4e2f88952583c653a148d` · SHA-256 `d00375c79b572f4a9a0b7136e33873837672ec359dafe27941b6cd0b40eebe6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein

set_option autoImplicit false

/-!
# Joint polynomial certificate using the measured sextic-tail saving

The source numerator and denominator are UNCHANGED. The first-tail saving33/40
allows a larger geometric ratio155/132, since their product is31/32. The complete
66-coefficient identity proves the new comparison on1/2<=x<=1,0<=y<=81. y is
squared imaginary height. Exact ring identity and domain are both necessary.
SOURCE SCRIPTS / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.NineHeightCertificate
open QuarticPrimitive.SevenHeightCertificate (boxBasis tensorValue tensorValue_nonneg)
open EightHeightCertificate (numerator denominator quadraticNormSq)
noncomputable section

def gap (x y : ℝ) : ℝ := 24025 * denominator x y - 17424 * numerator x y

def coefficients : Fin 11 → Fin 6 → ℕ :=
  ![
    ![2865296706063561, 24016730545957149, 87043474486723194, 180204090441157530, 178299362422306125, 1775491671281625],
    ![29356096248164532, 243391775370221940, 877036625951156616, 1816138421776207848, 1798525354258752900, 23269669744678500],
    ![135299197934790484, 1109329031222746148, 3974039819807379016, 8232394009766036296, 8160286820192859044, 128370853894900180],
    ![369407812017476960, 2994442428075595600, 10663864471903596416, 22102133295623036768, 21930945128764684960, 402223174183536848],
    ![661677199151822784, 5301276613246961136, 18765869401569016224, 38920647079520134848, 38661831628479670176, 802972135527132240],
    ![812440929204660224, 6431647027508578432, 22628633289057270848, 46971137469383539904, 46714448619368318656, 1075359459650594240],
    ![692532043909135360, 5415389024025833216, 18935079790968376000, 39343647975974361664, 39179099291028398144, 983191724999433664],
    ![404668050073706496, 3124657385549205504, 10856488054881907200, 22584421423804991232, 22521319696960585728, 607978477758413568],
    ![155130814886068224, 1182388242970202112, 4081678423558124544, 8502610965311335680, 8491633294163574528, 243911381274883584],
    ![35231204258611200, 264961547716755456, 908634176915226624, 1895758810503763968, 1896395431681161216, 57422245067513856],
    ![3599539214745600, 26700522208690176, 90945708319604736, 190085300078579712, 190483834746728448, 6031439037112320]
  ]

theorem tensor_identity (u v : ℝ) :
    tensorValue coefficients u v = 1024 * gap ((1 + u) / 2) (81 * v) := by
  norm_num [tensorValue, coefficients, boxBasis, Fin.sum_univ_succ,
    gap, numerator, denominator, quadraticNormSq] <;> ring

theorem gap_nonneg {x y : ℝ}
    (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) (hy : 0 ≤ y) (hy81 : y ≤ 81) :
    0 ≤ gap x y := by
  have hu : 0 ≤ 2 * x - 1 := by linarith
  have hu1 : 2 * x - 1 ≤ 1 := by linarith
  have hv : 0 ≤ y / 81 := by positivity
  have hv1 : y / 81 ≤ 1 := by linarith
  have h := tensorValue_nonneg coefficients hu hu1 hv hv1
  rw [tensor_identity, show (1 + (2 * x - 1)) / 2 = x by ring,
    show 81 * (y / 81) = y by ring] at h
  linarith

theorem squared_ratio_bound {x y : ℝ}
    (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) (hy : 0 ≤ y) (hy81 : y ≤ 81) :
    17424 * numerator x y ≤ 24025 * denominator x y := by
  have h := gap_nonneg hx hx1 hy hy81
  unfold gap at h
  linarith

/-- Failure of this sufficient comparison is not a target zero or a failure of RH. -/
theorem height_ten_gap_negative : gap (1 / 2) 100 < 0 := by
  norm_num [gap, numerator, denominator, quadraticNormSq]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.NineHeightCertificate
```
