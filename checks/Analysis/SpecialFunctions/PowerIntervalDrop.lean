import GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop

open GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop

example {x a : ℝ} (hx : 0 < x) (ha : 0 ≤ a) :
    x ^ (-a) - (x + 1) ^ (-a) ≤ a * x ^ (-a - 1) :=
  rpow_sub_rpow_add_one_le hx ha

#print axioms GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop.rpow_sub_rpow_add_one_le
