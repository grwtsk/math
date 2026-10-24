# Complete source: GRWTSK.Analysis.DirichletSeriesFinite.Variant52d34d99924e36c35dae3f7128d424dfb6792f88813305b2da70d9768c0e9b2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `703f8a1910f0c908c567f29678d129827b616af7` · SHA-256 `52d34d99924e36c35dae3f7128d424dfb6792f88813305b2da70d9768c0e9b2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.DirichletConvolution
import Mathlib.Analysis.SpecialFunctions.Pow.Complex

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletSeriesFinite

Finite Dirichlet sums and linear finite identities.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def finiteDirichletSum
    (a : Nat → ℂ)
    (s : ℂ)
    (N : Nat) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N, a n / (n : ℂ) ^ s

theorem finiteDirichletSum_add
    (a b : Nat → ℂ)
    (s : ℂ)
    (N : Nat) :
    finiteDirichletSum (fun n => a n + b n) s N =
      finiteDirichletSum a s N + finiteDirichletSum b s N := by
  simp [finiteDirichletSum, add_div, Finset.sum_add_distrib]

theorem finiteDirichletSum_zero
    (s : ℂ)
    (N : Nat) :
    finiteDirichletSum (fun _ => 0) s N = 0 := by
  simp [finiteDirichletSum]

end AnalyticNumberTheory
end Rebuild
end Folder
```
