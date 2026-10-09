/- Reader coordinates: R.A. Jacob Martone, with OpenAI Codex assistance. MIT. -/
import GRWTSK.Combinatorics.GraphTheory.HadwigerNelson.MoserSource

namespace GRWTSK.Combinatorics.GraphTheory.HadwigerNelson

noncomputable section

/-- The product radical used by the exact coordinate table equals `√33`. -/
theorem sqrt_three_mul_sqrt_eleven : Real.sqrt 3 * Real.sqrt 11 = Real.sqrt 33 := by
  rw [← Real.sqrt_mul (show (0 : ℝ) ≤ 3 by norm_num)]
  norm_num

/-- Exact reader coordinates in the basis `1, √3, √11, √3√11 = √33`. -/
def packetCoordinates : Fin 7 → ℝ × ℝ := ![
  (0, 0),
  ((1 / 2 : ℝ) * (Real.sqrt 3), (1 / 2 : ℝ)),
  ((1 / 2 : ℝ) * (Real.sqrt 3), (-1 / 2 : ℝ)),
  ((1 : ℝ) * (Real.sqrt 3), 0),
  ((5 / 12 : ℝ) * (Real.sqrt 3) + (-1 / 12 : ℝ) * (Real.sqrt 11),
    (5 / 12 : ℝ) + (1 / 12 : ℝ) * (Real.sqrt 3 * Real.sqrt 11)),
  ((5 / 12 : ℝ) * (Real.sqrt 3) + (1 / 12 : ℝ) * (Real.sqrt 11),
    (-5 / 12 : ℝ) + (1 / 12 : ℝ) * (Real.sqrt 3 * Real.sqrt 11)),
  ((5 / 6 : ℝ) * (Real.sqrt 3), (1 / 6 : ℝ) * (Real.sqrt 3 * Real.sqrt 11))]

/-- The reader's exact coordinate table is the source-pinned complex point map. -/
theorem moserPoint_coordinates (i : Fin 7) :
    ((moserPoint i).re, (moserPoint i).im) = packetCoordinates i := by
  fin_cases i <;> apply Prod.ext <;>
    norm_num [packetCoordinates, moserPoint, moserA, moserB, moserT, moserU,
      Complex.mul_re, Complex.mul_im, Complex.div_ofReal_re, Complex.div_ofReal_im,
      Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im] <;> ring

end

end GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
