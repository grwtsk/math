# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestReifyReflect.Variantcd6e843b053d047b4adc99b03ae5871d9a4c326b82e86c2e1ffdec4d7fd6f9db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c64db5054ae759f85c521cf7d02019fe8bce8f7c` · SHA-256 `cd6e843b053d047b4adc99b03ae5871d9a4c326b82e86c2e1ffdec4d7fd6f9db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Meta.ToExpr
import LeanCert.Tactic.IntervalAuto

-- Reflection smoke tests: these fail to compile if reification cannot parse the form.
#leancert_reflect (fun x : Real => x + 1)
#leancert_reflect (fun x : Real => x - 1)
#leancert_reflect (fun x : Real => x / 2)
#leancert_reflect (fun x : Real => abs x)
#leancert_reflect (fun x : Real => x ^ ((1 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ ((2 : Real)⁻¹))
#leancert_reflect (fun x : Real => x ^ ((3 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ (1.5 : Real))
#leancert_reflect (fun x : Real => x ^ ((5 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ ((-1 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ ((-3 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ ((-2 : Real)))
#leancert_reflect (fun x : Real => x ^ ((1 : Real) / 3))
#leancert_reflect (fun x : Real => x ^ ((2 : Real) / 3))
#leancert_reflect (fun x : Real => x ^ ((1 : Real) / 5))
#leancert_reflect (fun x : Real => x ^ ((-2 : Real) / 3))
#leancert_reflect (fun x : Real => Real.sinh x + Real.cosh x + Real.tanh x)
#leancert_reflect (fun x : Real => max x (1 / 2 : Real))
#leancert_reflect (fun x : Real => min x (1 / 2 : Real))

theorem reify_norm_sub_div :
    ∀ x ∈ Set.Icc (1 : Real) 2, x - x / 2 ≤ (2 : Rat) := by
  interval_bound

theorem reify_norm_casts :
    ∀ x ∈ Set.Icc (0 : Real) 1, x + ((1 : Nat) : Real) ≤ (2 : Rat) := by
  interval_bound

theorem reify_norm_max :
    ∀ x ∈ Set.Icc (0 : Real) 1, max x (1 / 2 : Real) ≤ (2 : Rat) := by
  interval_bound

theorem reify_norm_min :
    ∀ x ∈ Set.Icc (0 : Real) 1, (-1 : Rat) ≤ min x (1 / 2 : Real) := by
  interval_bound
theorem reify_rpow_thirds_bound :
    ∀ x ∈ Set.Icc (2 : Real) 3, x ^ ((1 : Real) / 3) ≤ (2 : Rat) := by
  interval_bound

theorem reify_rpow_neg_thirds_bound :
    ∀ x ∈ Set.Icc (2 : Real) 3, x ^ ((-2 : Real) / 3) ≤ (1 : Rat) := by
  interval_bound
```
