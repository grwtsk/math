/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenPhase
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightBernstein

set_option autoImplicit false

/-!
# Exact polynomial bounds for adverse projection and cutoff-two tail

All tables are identified with their target polynomials by ordinary finite ring
normalization. The coefficients alone are not proof evidence. The common domain
is x in [1/2,1] and y=Im(s)^2 in [144,169], including every closed boundary.
The original projection polynomials, tail numerator and positive-real weight
are reused, not replaced by sample tables. SOURCE SCRIPTS / NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.ThirteenHeightCertificate
open QuarticPrimitive.SevenHeightCertificate TwelveHeightCertificate
noncomputable section

def adverse (x y : ℝ) : ℝ :=
  (37 / 40) * projectionReal x y - (3 / 200) * (y + 156) * projectionSlope x y

def lossGap (x y : ℝ) : ℝ :=
  (2 / 5) * CutoffTwo.ThirteenPhase.weightRoot x * 967680 * ((x - 1) ^ 2 + y) - adverse x y

def tailGap (x y : ℝ) : ℝ :=
  100 * 967680 ^ 2 * (x + 5) ^ 2 - 81 * CutoffTwoCertificate.tailNumerator x y

def projectionCoefficients : Fin 8 → Fin 4 → ℕ :=
  ![
    ![15656921361, 51661649983, 56835765883, 20856037261],
    ![111429776334, 367833013802, 404858518602, 148635281134],
    ![339751756772, 1121992943016, 1235472355716, 453786169472],
    ![575304044936, 1900625774208, 2093733813608, 769362084336],
    ![584301826400, 1931075988800, 2128130048400, 782330886000],
    ![355947475200, 1176802176000, 1297384106400, 477129405600],
    ![120427075584, 398281300352, 439252293952, 161603069184],
    ![17456283648, 57750918144, 63714025344, 23449390848]
  ]

theorem projection_identity (u v : ℝ) :
    tensorValue projectionCoefficients u v = 128 * projectionReal ((1 + u) / 2) (144 + 25 * v) := by
  norm_num [tensorValue, projectionCoefficients, boxBasis, Fin.sum_univ_succ,
    lossGap, adverse, tailGap, projectionReal, projectionSlope,
    CutoffTwo.ThirteenPhase.weightRoot, CutoffTwoCertificate.tailNumerator] <;> ring

def slopeCoefficients : Fin 7 → Fin 4 → ℕ :=
  ![
    ![578761977, 1950031831, 2185487731, 815217877],
    ![3431018128, 11562661384, 12961508384, 4835865128],
    ![8470925676, 28553517328, 32014717628, 11947125976],
    ![11148765040, 37588106320, 42153557520, 15734216240],
    ![8249488288, 27819337664, 31205120464, 11650271088],
    ![3253865472, 10975310016, 12313823616, 4598379072],
    ![534472704, 1803190912, 2023563712, 755845504]
  ]

theorem slope_identity (u v : ℝ) :
    tensorValue slopeCoefficients u v = 64 * projectionSlope ((1 + u) / 2) (144 + 25 * v) := by
  norm_num [tensorValue, slopeCoefficients, boxBasis, Fin.sum_univ_succ,
    lossGap, adverse, tailGap, projectionReal, projectionSlope,
    CutoffTwo.ThirteenPhase.weightRoot, CutoffTwoCertificate.tailNumerator] <;> ring

def lossCoefficients : Fin 8 → Fin 5 → ℕ :=
  ![
    ![366488822193, 1364893303882, 1855580115488, 1083384908102, 226539274303],
    ![2624788533942, 9609758604818, 12750712327802, 7175576476918, 1412144219992],
    ![8058769961636, 29022168844964, 37578225194076, 20330699699804, 3722803389056],
    ![13750992284648, 48743373539072, 61587524104328, 31946399730032, 5362806880128],
    ![14084940316640, 49175748577600, 60636842702960, 30071697439680, 4537212997680],
    ![8661006781440, 29805084317760, 35874150116640, 16961138705760, 2237996125440],
    ![2960621402112, 10049871379328, 11811955797312, 5309050065088, 588654244992],
    ![434032902144, 1454465642496, 1670217258624, 711717198336, 62262680064]
  ]

theorem loss_identity (u v : ℝ) :
    tensorValue lossCoefficients u v = 56320 * lossGap ((1 + u) / 2) (144 + 25 * v) := by
  norm_num [tensorValue, lossCoefficients, boxBasis, Fin.sum_univ_succ,
    lossGap, adverse, tailGap, projectionReal, projectionSlope,
    CutoffTwo.ThirteenPhase.weightRoot, CutoffTwoCertificate.tailNumerator] <;> ring

def tailCoefficients : Fin 13 → Fin 7 → ℕ :=
  ![
    ![6899488452511644375, 36852392587605383250, 78941419488858020625, 84839610915911137500, 45854699492664455625, 10088180950070531250, 84496019552931375],
    ![84377968853890552380, 451307482784976554280, 968791323063047645700, 1044924592670700087600, 568862744747621645700, 127810972373794154280, 2010039164910952380],
    ![472818725296178824548, 2532236559698988860688, 5446706625092851835220, 5894721456048931224960, 3230873095100088902220, 739937182006920114288, 16491406265720637948],
    ![1605281659907832487008, 8607948809768847420048, 18550568527091490795120, 20140948039327778720160, 11109207806973378285120, 2589121434332141412048, 72942469456065985008],
    ![3677810038110624212496, 19744692198915722756976, 42627878170949600047440, 46423008326346356869920, 25757850334630334707440, 6100077411705130484976, 204199298276651144496],
    ![5990252700020862651840, 32195393108367115559040, 69627820744098819057600, 76044367778410413676800, 42428308942210942497600, 10196927787235518311040, 390242135682423339840],
    ![7112309232704922214848, 38266838963440188732288, 82893241062399199158720, 90777832153092781608960, 50913304767670003974720, 12402909277767049385088, 528650487525894378048],
    ![6202513700101837587456, 33405642540040036052736, 72474836410978491651840, 79571899847291549829120, 44847129769774896291840, 11062346405599954964736, 515344760076315315456],
    ![3943111616900921456640, 21257340599604957891840, 46186197303726649209600, 50831761703145087052800, 28780830112541622969600, 7181610412835320899840, 360533587416172208640],
    ![1782121956092647686144, 9616199466302083620864, 20922280600427176412160, 23079381465724823162880, 13123920499008531932160, 3309876377196768036864, 177116433695318790144],
    ![543539478109728522240, 2935435063758983331840, 6395110920523281945600, 7069682733784904908800, 4036417987396128537600, 1028089531774124605440, 58133597288873840640],
    ![100446373833139814400, 542913749715256934400, 1184255720357308416000, 1311840745125124608000, 751841656573395456000, 193256391263204966400, 11466163339742822400],
    ![8505779235323904000, 46009378971869184000, 100477823835893760000, 111516485216417280000, 64140422457922560000, 16627370962765824000, 1029128621912064000]
  ]

theorem tail_identity (u v : ℝ) :
    tensorValue tailCoefficients u v = 4096 * tailGap ((1 + u) / 2) (144 + 25 * v) := by
  norm_num [tensorValue, tailCoefficients, boxBasis, Fin.sum_univ_succ,
    lossGap, adverse, tailGap, projectionReal, projectionSlope,
    CutoffTwo.ThirteenPhase.weightRoot, CutoffTwoCertificate.tailNumerator] <;> ring

theorem bounds {x y : ℝ} (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1)
    (hy : (144 : ℝ) ≤ y) (hy1 : y ≤ 169) :
    0 ≤ projectionReal x y ∧ 0 ≤ projectionSlope x y ∧
      adverse x y ≤ (2 / 5) * CutoffTwo.ThirteenPhase.weightRoot x * 967680 * ((x - 1) ^ 2 + y) ∧
      81 * CutoffTwoCertificate.tailNumerator x y ≤ 100 * 967680 ^ 2 * (x + 5) ^ 2 := by
  have hu : 0 ≤ 2 * x - 1 := by linarith
  have hu1 : 2 * x - 1 ≤ 1 := by linarith
  have hv : 0 ≤ (y - 144) / 25 := div_nonneg (sub_nonneg.mpr hy) (by norm_num)
  have hv1 : (y - 144) / 25 ≤ 1 := by linarith
  have hP := tensorValue_nonneg projectionCoefficients hu hu1 hv hv1
  have hQ := tensorValue_nonneg slopeCoefficients hu hu1 hv hv1
  have hL := tensorValue_nonneg lossCoefficients hu hu1 hv hv1
  have hT := tensorValue_nonneg tailCoefficients hu hu1 hv hv1
  rw [projection_identity, show (1 + (2 * x - 1)) / 2 = x by ring,
    show 144 + 25 * ((y - 144) / 25) = y by ring] at hP
  rw [slope_identity, show (1 + (2 * x - 1)) / 2 = x by ring,
    show 144 + 25 * ((y - 144) / 25) = y by ring] at hQ
  rw [loss_identity, show (1 + (2 * x - 1)) / 2 = x by ring,
    show 144 + 25 * ((y - 144) / 25) = y by ring] at hL
  rw [tail_identity, show (1 + (2 * x - 1)) / 2 = x by ring,
    show 144 + 25 * ((y - 144) / 25) = y by ring] at hT
  unfold lossGap at hL
  unfold tailGap at hT
  exact ⟨by linarith, by linarith, by linarith, by linarith⟩

/-- Failure of this sufficient bound is not a zeta-zero witness. -/
theorem tail_gap_negative_at_fourteen : tailGap (1 / 2) 196 < 0 := by
  norm_num [tailGap, CutoffTwoCertificate.tailNumerator]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.ThirteenHeightCertificate
