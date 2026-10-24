# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TestFunctions.Variant4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1944378fe59741f7b0cb34becbc8fcbf0d602f96` · SHA-256 `4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic

/-!
# Folder.RH.TestFunctions

Radiation role: test-functions
BinaryMatrix spine: This module fixes the test-function type for trace formulas.
Ontology: rh.test_functions
Pivot role: spectral
Zero typology: zeta
Contract boundary: checked-test-function-type
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

/--
Schwartz test functions for the RH trace-formula layer.

The Schwartz hypothesis is carried by Mathlib's `SchwartzMap` type rather than
by a project-specific proposition field.
-/
structure RHTestFunction where
  func : SchwartzMap ℝ ℂ
  label : String

theorem rh_test_function_has_schwartz_map
    (φ : RHTestFunction) :
    ∃ f : SchwartzMap ℝ ℂ, f = φ.func :=
  ⟨φ.func, rfl⟩

end

end RH
end Folder
```
