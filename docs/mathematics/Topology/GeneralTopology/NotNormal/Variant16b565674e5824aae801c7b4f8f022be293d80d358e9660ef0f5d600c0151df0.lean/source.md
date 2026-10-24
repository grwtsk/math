# Complete source: GRWTSK.Topology.GeneralTopology.NotNormal.Variant16b565674e5824aae801c7b4f8f022be293d80d358e9660ef0f5d600c0151df0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8d39ada852153639c6c140c139bd454ed32f6e1` · SHA-256 `16b565674e5824aae801c7b4f8f022be293d80d358e9660ef0f5d600c0151df0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Real.Cardinality
import Mathlib.Topology.TietzeExtension
/-!
# Not normal topological spaces

In this file we prove (see `IsClosed.not_normal_of_continuum_le_mk`) that a separable space with a
discrete subspace of cardinality continuum is not a normal topological space.
-/

open Set Function Cardinal Topology TopologicalSpace

universe u
variable {X : Type u} [TopologicalSpace X] [SeparableSpace X]

/-- Let `s` be a closed set in a separable normal space. If the induced topology on `s` is discrete,
then `s` has cardinality less than continuum.

The proof follows
https://en.wikipedia.org/wiki/Moore_plane#Proof_that_the_Moore_plane_is_not_normal -/
theorem IsClosed.mk_lt_continuum [NormalSpace X] {s : Set X} (hs : IsClosed s)
    [DiscreteTopology s] : #s < 𝔠 := by
  -- Proof by contradiction: assume `𝔠 ≤ #s`
  by_contra! h
  -- Choose a countable dense set `t : Set X`
  rcases exists_countable_dense X with ⟨t, htc, htd⟩
  haveI := htc.to_subtype
  -- To obtain a contradiction, we will prove `2 ^ 𝔠 ≤ 𝔠`.
  refine (Cardinal.cantor 𝔠).not_le ?_
  calc
    -- Any function `s → ℝ` is continuous, hence `2 ^ 𝔠 ≤ #C(s, ℝ)`
    2 ^ 𝔠 ≤ #C(s, ℝ) := by
      rw [ContinuousMap.equivFnOfDiscrete.cardinal_eq, mk_arrow, mk_real, lift_continuum,
        lift_uzero]
      exact (power_le_power_left two_ne_zero h).trans (power_le_power_right (nat_lt_continuum 2).le)
    -- By the Tietze Extension Theorem, any function `f : C(s, ℝ)` can be extended to `C(X, ℝ)`,
    -- hence `#C(s, ℝ) ≤ #C(X, ℝ)`
    _ ≤ #C(X, ℝ) := by
      choose f hf using ContinuousMap.exists_restrict_eq (Y := ℝ) hs
      have hfi : Injective f := LeftInverse.injective hf
      exact mk_le_of_injective hfi
    -- Since `t` is dense, restriction `C(X, ℝ) → C(t, ℝ)` is injective, hence `#C(X, ℝ) ≤ #C(t, ℝ)`
    _ ≤ #C(t, ℝ) := mk_le_of_injective <| ContinuousMap.injective_restrict htd
    _ ≤ #(t → ℝ) := mk_le_of_injective DFunLike.coe_injective
    -- Since `t` is countable, we have `#(t → ℝ) ≤ 𝔠`
    _ ≤ 𝔠 := by
      rw [mk_arrow, mk_real, lift_uzero, lift_continuum, continuum, ← power_mul]
      exact power_le_power_left two_ne_zero mk_le_aleph0

/-- Let `s` be a closed set in a separable space. If the induced topology on `s` is discrete and `s`
has cardinality at least continuum, then the ambient space is not a normal space. -/
theorem IsClosed.not_normal_of_continuum_le_mk {s : Set X} (hs : IsClosed s) [DiscreteTopology s]
    (hmk : 𝔠 ≤ #s) : ¬NormalSpace X := fun _ ↦ hs.mk_lt_continuum.not_le hmk
```
