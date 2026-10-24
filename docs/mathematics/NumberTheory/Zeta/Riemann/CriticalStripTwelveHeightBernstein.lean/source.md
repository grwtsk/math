# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightBernstein

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59b5ef636b4a618349f33aa53d7888d14d04f310` · SHA-256 `a4b7fcbd2c9b74a72154e614c0e72b54f6a3f2b3f7d8dc695df42115a220e14b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripElevenHeightBernstein

set_option autoImplicit false

/-!
# Signed-projection and tail polynomials for the closed band 11 <= |Im(s)| <= 12
All tables represent exact identities, not samples. The projection polynomials
come from scaledCoefficient(s)*conj(s-1). The tail is the unchanged cutoff-two
six-factor product. Coefficient positivity is used only after its identity.
SOURCE SCRIPTS: elaboration and transitive axiom audit NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.TwelveHeightCertificate
open QuarticPrimitive.SevenHeightCertificate
noncomputable section

def projectionReal (x y : ℝ) : ℝ :=
  x^7 + 8*x^6 - 9*x^5*y - 152*x^5 - 30*x^4*y - 178*x^4 - 5*x^3*y^2 + 376*x^3*y + 40783*x^3 - 60*x^2*y^2 - 858*x^2*y + 403370*x^2 + 5*x*y^3 + 384*x*y^2 + 39499*x*y + 1007688*x + 10*y^3 + 464*y^2 + 484294*y - 1451520

def projectionSlope (x y : ℝ) : ℝ :=
  5*x^6 + 30*x^5 - 5*x^4*y - 474*x^4 + 20*x^3*y - 70*x^3 - 9*x^2*y^2 - 196*x^2*y + 41425*x^2 - 42*x*y^2 - 1214*x*y - 80924*x + y^3 + 134*y^2 + 40141*y - 1895352

def slopeGap (x y : ℝ) : ℝ := 132*projectionSlope x y-7*projectionReal x y
def tailGap (x y : ℝ) : ℝ :=
  9*967680^2*(x+5)^2-16*CutoffTwoCertificate.tailNumerator x y

def projectionCoefficients : Fin 8 → Fin 4 → ℕ :=
  ![
    ![23461690010, 77497079798, 85310298110, 31313842722],
    ![166752869852, 551031922836, 606858277972, 222859552668],
    ![507785469568, 1678619522568, 1849473222864, 679503513544],
    ![858793526496, 2840016116944, 3130351173120, 1150608089872],
    ![871217546976, 2882109556512, 3177977220736, 1168603652800],
    ![530148610368, 1754386996032, 1935198910464, 711894950400],
    ![179176727040, 593124156032, 654482318080, 240854151168],
    ![25946426880, 85915279104, 94834698240, 34912567296]
  ]

def slopeCoefficients : Fin 8 → Fin 4 → ℕ :=
  ![
    ![46816319770, 176323177846, 215757676414, 86389424802],
    ![293921705164, 1120620651300, 1382930235812, 557147026764],
    ![779694214784, 3018572288904, 3763996121040, 1527701733704],
    ![1128217336416, 4454870536976, 5627559665664, 2304940068944],
    ![955788798432, 3874857020448, 4977359346560, 2062052187584],
    ![469321777728, 1974548051520, 2593639292928, 1090506132480],
    ![121491426816, 540607414912, 732736290560, 314263498752],
    ![12329940480, 60320662272, 85720240128, 37813616640]
  ]

def tailCoefficients : Fin 13 → Fin 7 → ℕ :=
  ![
    ![43089989295787775, 235378307850792850, 520472764080992505, 587576020176263452, 347021343972258113, 94833055559868210, 7202679882884775],
    ![526053903260341500, 2875847553077939880, 6366713266810138692, 7201319158175863344, 4267690810433528004, 1175110096806592680, 91811551296371580],
    ![2942792320659571900, 16099862588546802928, 35682998491854380428, 40433592217136190592, 24039353487667502740, 6665972382857871760, 534242868929321508],
    ![9974724779791335408, 54610028470325394128, 121164180178578687040, 137529229024080052640, 82014516929210667120, 22891621898409916048, 1877324107134377568],
    ![22816215539635008816, 124999007856331864816, 277616316915224132080, 315618879007881124640, 188753111539459255120, 53006620367125235056, 4438563091294163216],
    ![37104194042520225600, 203404475018116956800, 452178916780779425600, 514854735809534281984, 308727635758666582976, 87192707470360369280, 7440691482884309440],
    ![43987570542301457984, 241282366088197524608, 536861690694276390464, 612144619145650331648, 367986949312009631168, 104480742412344650624, 9070956825583785408],
    ![38304129348691021056, 210224496450389463296, 468148456350047215616, 534508625895941146624, 322071286962719102720, 91895934712944586496, 8104704164656792576],
    ![24315970612377776640, 133522940415542053120, 297575203636289148160, 340181748723047459840, 205428941771645981440, 58884001386873376000, 5268274359424317440],
    ![10974379123775852544, 60291433830311266304, 134466727951541724160, 153899481326802391040, 93127586774738764800, 26808038487934296064, 2430126396891316224],
    ![3342551861197852672, 18371743130019512320, 41002125433906478080, 46978894660119642112, 28482255846747378688, 8231509456463921152, 755174085321277440],
    ![616878454530785280, 3391984695239147520, 7575052375499722752, 8688069479349325824, 5276761246009933824, 1530612895178096640, 141967717466112000],
    ![52168787102105600, 286967630971617280, 641238967625392128, 736150919872049152, 447845180276572160, 130346500408934400, 12211509893529600]
  ]

theorem projection_identity (u v : ℝ) :
    tensorValue projectionCoefficients u v = 256*projectionReal ((1+u)/2) (121+23*v) := by
  norm_num [tensorValue, projectionCoefficients, boxBasis, Fin.sum_univ_succ,
    projectionReal, projectionSlope, slopeGap, tailGap, CutoffTwoCertificate.tailNumerator] <;> ring

theorem slope_identity (u v : ℝ) :
    tensorValue slopeCoefficients u v = 256*slopeGap ((1+u)/2) (121+23*v) := by
  norm_num [tensorValue, slopeCoefficients, boxBasis, Fin.sum_univ_succ,
    projectionReal, projectionSlope, slopeGap, tailGap, CutoffTwoCertificate.tailNumerator] <;> ring

theorem tail_identity (u v : ℝ) :
    tensorValue tailCoefficients u v = 256*tailGap ((1+u)/2) (121+23*v) := by
  norm_num [tensorValue, tailCoefficients, boxBasis, Fin.sum_univ_succ,
    projectionReal, projectionSlope, slopeGap, tailGap, CutoffTwoCertificate.tailNumerator] <;> ring

theorem bounds {x y : ℝ} (hx : (1/2 : ℝ) ≤ x) (hx1 : x ≤ 1)
    (hy : (121 : ℝ) ≤ y) (hy1 : y ≤ 144) :
    0 ≤ projectionReal x y ∧ 7*projectionReal x y ≤ 132*projectionSlope x y ∧
      16*CutoffTwoCertificate.tailNumerator x y ≤ 9*967680^2*(x+5)^2 := by
  have hu : 0 ≤ 2*x-1 := by linarith
  have hu1 : 2*x-1 ≤ 1 := by linarith
  have hv : 0 ≤ (y-121)/23 := div_nonneg (sub_nonneg.mpr hy) (by norm_num)
  have hv1 : (y-121)/23 ≤ 1 := by linarith
  have hP := tensorValue_nonneg projectionCoefficients hu hu1 hv hv1
  have hQ := tensorValue_nonneg slopeCoefficients hu hu1 hv hv1
  have hT := tensorValue_nonneg tailCoefficients hu hu1 hv hv1
  rw [projection_identity, show (1+(2*x-1))/2=x by ring,
    show 121+23*((y-121)/23)=y by ring] at hP
  rw [slope_identity, show (1+(2*x-1))/2=x by ring,
    show 121+23*((y-121)/23)=y by ring] at hQ
  rw [tail_identity, show (1+(2*x-1))/2=x by ring,
    show 121+23*((y-121)/23)=y by ring] at hT
  unfold slopeGap at hQ
  unfold tailGap at hT
  constructor
  · linarith
  constructor <;> linarith

/-- This polynomial guard cannot simply be reused at height thirteen. -/
theorem tail_gap_negative_at_thirteen : tailGap (1/2) 169 < 0 := by
  norm_num [tailGap, CutoffTwoCertificate.tailNumerator]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.TwelveHeightCertificate
```
