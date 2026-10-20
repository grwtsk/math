/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein

set_option autoImplicit false

/-!
# Joint height-ten geometry for the unchanged sextic source
The cutoff-one saving5/7 combines with geometric ratio139/100 to139/140<1.
The complete tensor identity controls the continuum rectangle x in[1/2,1],
y in[0,100], with y=Im(s)^2. No bound at height11 is inferred.
SOURCE SCRIPTS: NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.TenHeightCertificate
open QuarticPrimitive.SevenHeightCertificate (boxBasis tensorValue tensorValue_nonneg)
open EightHeightCertificate (numerator denominator quadraticNormSq)
noncomputable section

def gap (x y : ℝ) : ℝ := 19321 * denominator x y - 10000 * numerator x y

def coefficients : Fin 11 → Fin 6 → ℕ :=
  ![
    ![2304283155122025, 21142506400843725, 85631709139194650, 207329642867741850, 244325497745664525, 1389340771395625],
    ![23608291066996020, 213963469982300100, 861761560488040200, 2091131203088280200, 2470047032506660100, 26322210991116020],
    ![108808161481207764, 973786953134845220, 3900023735721543240, 9487064555199636040, 11233618642767984420, 173599031636254164],
    ![297079254552228192, 2624620570233126560, 10452243033268784320, 25494899032889875520, 30266064606144763360, 607867290842773792],
    ![532123473129852864, 4639311068725467520, 18370336993488461440, 44942267358803107840, 53496718479993437120, 1313600519083176064],
    ![653368264947689472, 5619418365438056960, 22123481881680133120, 54300878517632952320, 64819697959239285760, 1871451222796099072],
    ![556937046199434240, 4723529917955430400, 18488496903125939200, 45540636125847577600, 54524240418341888000, 1801508323864253440],
    ![325435660410544128, 2720676098832343040, 10586565717926010880, 26177791529561415680, 31439843461021450240, 1165377210964246528],
    ![124756817118511104, 1027635830718955520, 3974908014287831040, 9870294155174871040, 11893370768769515520, 487105614282031104],
    ![28333073776508928, 229843089541693440, 883670739725844480, 2204308601964462080, 2665322495635619840, 119174617631817728],
    ![2894763669848064, 23115317092024320, 88325577325936640, 221417047244144640, 268701746929336320, 12989723588952064]
  ]

theorem tensor_identity (u v : ℝ) :
    tensorValue coefficients u v = 1024 * gap ((1 + u) / 2) (100 * v) := by
  norm_num [tensorValue, coefficients, boxBasis, Fin.sum_univ_succ,
    gap, numerator, denominator, quadraticNormSq] <;> ring

theorem gap_nonneg {x y : ℝ}
    (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) (hy : 0 ≤ y) (hy100 : y ≤ 100) :
    0 ≤ gap x y := by
  have hu : 0 ≤ 2 * x - 1 := by linarith
  have hu1 : 2 * x - 1 ≤ 1 := by linarith
  have hv : 0 ≤ y / 100 := by positivity
  have hv1 : y / 100 ≤ 1 := by linarith
  have h := tensorValue_nonneg coefficients hu hu1 hv hv1
  rw [tensor_identity, show (1 + (2 * x - 1)) / 2 = x by ring,
    show 100 * (y / 100) = y by ring] at h
  linarith

theorem squared_ratio_bound {x y : ℝ}
    (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) (hy : 0 ≤ y) (hy100 : y ≤ 100) :
    10000 * numerator x y ≤ 19321 * denominator x y := by
  have h := gap_nonneg hx hx1 hy hy100
  unfold gap at h
  linarith

/-- Failure of this sufficient comparison is not a target zero or a failure of RH. -/
theorem height_eleven_gap_negative : gap (1 / 2) 121 < 0 := by
  norm_num [gap, numerator, denominator, quadraticNormSq]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.TenHeightCertificate
