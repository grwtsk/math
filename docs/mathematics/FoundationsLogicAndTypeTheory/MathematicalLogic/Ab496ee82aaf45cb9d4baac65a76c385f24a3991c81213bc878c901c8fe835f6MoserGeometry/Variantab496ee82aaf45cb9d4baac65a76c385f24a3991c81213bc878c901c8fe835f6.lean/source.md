# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6MoserGeometry.Variantab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d23a8e1ce7562e1ea938447d3c5499abce9e462` · SHA-256 `ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.HadwigerNelson.Moser

namespace FormalResearch.HadwigerNelson

lemma radicalProduct_bounds : 5 < Real.sqrt 3 * Real.sqrt 11 ∧
    Real.sqrt 3 * Real.sqrt 11 < 6 := by
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  have hp : (Real.sqrt 3 * Real.sqrt 11)^2 = 33 := by
    calc _ = (Real.sqrt 3)^2 * (Real.sqrt 11)^2 := by ring
         _ = 33 := by rw [h3, h11]; norm_num
  have hn : 0 ≤ Real.sqrt 3 * Real.sqrt 11 := by positivity
  constructor <;> nlinarith

set_option maxHeartbeats 1600000 in
lemma moser_normSq_unit_iff (i j : Fin 7) :
    Complex.normSq (moserPoint i - moserPoint j) = 1 ↔
    (i, j) ∈ moserEdges ∨ (j, i) ∈ moserEdges := by
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  obtain ⟨hlo, hhi⟩ := radicalProduct_bounds
  fin_cases i <;> fin_cases j <;>
    norm_num [Fin.ext_iff, moserEdges, moserPoint, moserA, moserB, moserT, moserU,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im,
      Complex.div_ofReal_re, Complex.div_ofReal_im, Complex.sub_re, Complex.sub_im,
      Complex.add_re, Complex.add_im] <;>
    (try ring_nf) <;> norm_num [h3, h11] <;> intro h <;> nlinarith

set_option maxHeartbeats 1600000 in
lemma moserPoint_injective : Function.Injective moserPoint := by
  intro i j h
  have hs : Complex.normSq (moserPoint i - moserPoint j) = 0 := by rw [h, sub_self]; simp
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  obtain ⟨hlo, hhi⟩ := radicalProduct_bounds
  fin_cases i <;> fin_cases j <;> try rfl
  all_goals
    norm_num [moserPoint, moserA, moserB, moserT, moserU,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im,
      Complex.div_ofReal_re, Complex.div_ofReal_im, Complex.sub_re, Complex.sub_im,
      Complex.add_re, Complex.add_im] at hs <;>
      (try ring_nf at hs) <;> norm_num [h3, h11] at hs <;> nlinarith

end FormalResearch.HadwigerNelson
```
