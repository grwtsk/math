# Complete source: GRWTSK.Topology.GeneralTopology.FredholmDetShift.Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c3eac756cd6d3d081d523017134232781c14964` · SHA-256 `15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  spectral-rh/Spectral/Ext/FredholmDetShift.lean
  ---------------------------------------------
  Fredholm determinant for the holomorphic family
      λ ↦ (T − λ • Id)
  when `T` has compact resolvent, plus the
  “zero ↔ spectrum” characterisation.
-/

import Mathlib.Analysis.Fredholm
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Topology.Algebra.Module  -- for `ContinuousLinearMap.id`

open Spectrum ContinuousLinearMap

namespace Fredholm.Determinant

variable {𝕜 : Type*} [IsROrC 𝕜]
variable {E  : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/-- Continuous endomorphisms. -/
abbrev Endo := E →L[𝕜] E

variable (T : Endo)

/-- **Assumption** : `T` has compact resolvent, provided by the caller. -/
variable (hComp : Compact (T.comp (ContinuousLinearMap.id 𝕜 E)))

/-! --------------------------------------------------------------------!
    1.  Holomorphic shift family and determinant
    -------------------------------------------------------------------- -/

/-- The family `λ ↦ T - λ • Id`. -/
@[simp] noncomputable
def shiftOp (λ : 𝕜) : Endo :=
  T - λ • ContinuousLinearMap.id 𝕜 E

/-- `λ ↦ shiftOp T λ` is continuous (helpful for holomorphy statements). -/
lemma shiftOp_continuous : Continuous (shiftOp T) := by
  simpa using
    (continuous_const.sub
      (continuous_const.smul continuous_id))

/-- The Fredholm determinant `det_F( T − λ·Id )`. -/
noncomputable
def shift (λ : 𝕜) : 𝕜 :=
  fredholmDet (shiftOp T λ)

/-! --------------------------------------------------------------------!
    2.  Zero set equals the spectrum
    -------------------------------------------------------------------- -/

/--
For a compact-resolvent operator `T`,
`shift T λ = 0` **iff** `λ` belongs to the spectrum of `T`.
-/
lemma shift_zero_iff (λ : 𝕜) :
    shift T λ = 0 ↔ λ ∈ spectrum 𝕜 T := by
  -- `fredholmDet_zero_iff_eigenvalue_of_compact` is exactly this statement.
  simpa [shift, shiftOp] using
    fredholmDet_zero_iff_eigenvalue_of_compact hComp λ

end Fredholm.Determinant
```
