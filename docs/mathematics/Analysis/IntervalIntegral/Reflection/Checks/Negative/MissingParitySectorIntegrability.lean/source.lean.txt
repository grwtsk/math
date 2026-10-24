import GRWTSK.Analysis.IntervalReflection
open GRWTSK.Analysis.IntervalReflection MeasureTheory
example (a b : ℝ) (f g : ℝ → ℝ)
    (hpp : IntervalIntegrable (fun t ↦ evenPart a b f t * evenPart a b g t) volume a b)
    (hmm : IntervalIntegrable (fun t ↦ oddPart a b f t * oddPart a b g t) volume a b) :
    (∫ t in a..b, f t * g t) = (∫ t in a..b, evenPart a b f t * evenPart a b g t) + (∫ t in a..b, oddPart a b f t * oddPart a b g t) :=
  integral_product_eq_even_add_odd a b f g hpp hmm
