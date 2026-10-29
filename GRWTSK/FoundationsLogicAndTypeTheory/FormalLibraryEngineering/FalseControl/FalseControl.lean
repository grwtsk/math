import formal.c2.C1
open C2
/- Expected checker failure: false arithmetic must not be admitted. -/
example : unsigned (digits 1) = some 2 := by decide
