# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ActualMuntzStripZeros.Variantebc3d030ed38c1abc3c6945460098e38c94d691adb5ea0d654a292f083b0024b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c8183af7cb4da0a07d62dcc7b9031bb77830a52` · SHA-256 `ebc3d030ed38c1abc3c6945460098e38c94d691adb5ea0d654a292f083b0024b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualMuntzMellinProduct
import QuarticBumpEnergy

/-! Literal actual source zero transport in its nonvanishing halfstrip.
Direction grwtsk contributors; focused scratch proof OpenAI Codex.
This transform identity does not assert a dilation closure or RH. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzStripZeros
open ContinuousResearch.ActualMuntzMellinDomain ContinuousResearch.ActualMuntzMellinProduct

theorem actual_source_mellin_halfstrip_ne_zero {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) : mellin (complexSource A) s ≠ 0 := by
  exact ContinuousResearch.QuarticBumpEnergy.actual_mellin_halfstrip_nonzero hA hl hu

theorem actual_muntz_mellin_halfstrip_zero_iff {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (complexMuntz A) s = 0 ↔ riemannZeta s = 0 := by
  have hn := actual_source_mellin_halfstrip_ne_zero hA hl hu
  rw [actual_muntz_mellin_strip hA (by linarith) hu,mul_eq_zero]
  simp only [hn,or_false]

theorem actual_muntz_mellin_halfstrip_ne_zero_iff {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (complexMuntz A) s ≠ 0 ↔ riemannZeta s ≠ 0 :=
  not_congr (actual_muntz_mellin_halfstrip_zero_iff hA hl hu)

end ContinuousResearch.ActualMuntzStripZeros

/- Exact public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero
#print ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero

#check ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff
#print ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff

#check ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
#print ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
```
