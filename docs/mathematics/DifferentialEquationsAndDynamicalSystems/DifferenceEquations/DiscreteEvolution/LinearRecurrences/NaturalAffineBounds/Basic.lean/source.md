# Complete source: GRWTSK.DynamicalSystems.DifferenceEquations.DiscreteEvolution.LinearRecurrences.NaturalAffineBounds.Basic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66779dea219b83824d3a051d49762e96821f2f5a` · SHA-256 `3e2cd00580347f940e53fa1d044e099cb5a22f1e60f4a326f30bf3a390d060c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Init

/-!
# Natural affine recurrence bounds

The recurrence and induction proof are extracted from the integral-gain part
of the archived DefectTransport source, SHA-256
`29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239`.
At math commit `ad0cf0f8a76190ff8cb1b8cf0b172aad7f861462`, that source is
`GRWTSK/SourceCorpus/FormalResearch/Objects/29/29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean`,
Git blob `a2961299747ab39c3d97c068d227855c86e41220`.

This module supplies only natural-number affine iteration. In particular,
it makes no assertion about contraction by a general sub-unit real gain.
-/

namespace GRWTSK.DynamicalSystems.DifferenceEquations.DiscreteEvolution.LinearRecurrences.NaturalAffineBounds

/-- Iterate the constant natural-number affine upper bound. -/
def constantAffineBound (gain localDefect initialDefect : Nat) : Nat → Nat
  | 0 => initialDefect
  | n + 1 => gain * constantAffineBound gain localDefect initialDefect n + localDefect

@[simp] theorem constantAffineBound_zero (gain localDefect initialDefect : Nat) :
    constantAffineBound gain localDefect initialDefect 0 = initialDefect := rfl

@[simp] theorem constantAffineBound_succ (gain localDefect initialDefect n : Nat) :
    constantAffineBound gain localDefect initialDefect (n + 1) =
      gain * constantAffineBound gain localDefect initialDefect n + localDefect := rfl

/-- A pointwise affine step bound propagates from the supplied initial bound. -/
theorem iterated_affine_defect_bound
    (actual : Nat → Nat)
    (gain localDefect initialDefect : Nat)
    (initial : actual 0 ≤ initialDefect)
    (step : ∀ n, actual (n + 1) ≤ gain * actual n + localDefect) :
    ∀ n, actual n ≤ constantAffineBound gain localDefect initialDefect n := by
  intro n
  induction n with
  | zero => exact initial
  | succ n inductionHypothesis =>
      exact Nat.le_trans (step n)
        (Nat.add_le_add_right
          (Nat.mul_le_mul_left gain inductionHypothesis)
          localDefect)

end GRWTSK.DynamicalSystems.DifferenceEquations.DiscreteEvolution.LinearRecurrences.NaturalAffineBounds
```
