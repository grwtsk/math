# Complete source: GRWTSK.Topology.GeneralTopology.PathConnectedSpaceStdSimplex.Variant242742abce7ce7ea80b3aee06160ec95bb3cb2030dfea8834ab613872cbe7293

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97b4660febdae458af228bb40cae11d5ac8eaa17` · SHA-256 `242742abce7ce7ea80b3aee06160ec95bb3cb2030dfea8834ab613872cbe7293`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Geometry.Convex.ConvexSpace.Topology
public import Mathlib.Topology.Connected.PathConnected

/-!
# The standard simplex is path-connected

-/

public section

namespace Convexity.StdSimplex

open Classical in
@[fun_prop]
lemma continuous_convexCombPair {M : Type*} (x y : StdSimplex ℝ M) :
    Continuous (fun t ↦ convexCombPair (R := ℝ) (unitInterval.symm t) t
        (unitInterval.nonneg _) (unitInterval.nonneg _) (by simp) x y) := by
  wlog hM : Finite M
  · let s : Finset M := x.weights.support ∪ y.weights.support
    let ι : s → M := Subtype.val
    obtain ⟨x', hx⟩ := (mem_range_map_iff ι x).2 (by aesop)
    obtain ⟨y', hy⟩ := (mem_range_map_iff ι y).2 (by aesop)
    simp only [← hx, ← hy]
    convert (StdSimplex.continuous_map (R := ℝ) ι).comp
      (this x' y' (by dsimp [s]; infer_instance)) using 1
    ext t : 1
    exact ((isAffineMap_map ℝ ι).map_convexCombPair ..).symm
  rw [(StdSimplex.isEmbedding_toFun_comp_weights _ _).continuous_iff]
  unfold Function.comp
  refine continuous_pi (fun i ↦ ?_)
  simp only [unitInterval.coe_symm_eq, weights_convexCombPair, Finsupp.coe_add,
    Finsupp.coe_smul, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  fun_prop

@[fun_prop]
lemma continuous_duple {M : Type*} (x y : M) :
    Continuous (fun t ↦ duple x y
      (unitInterval.nonneg (unitInterval.symm t)) (unitInterval.nonneg t) (by simp)) := by
  convert continuous_convexCombPair (.single x) (.single y)
  aesop

instance pathConnectedSpace
    (M : Type*) [Nonempty M] : PathConnectedSpace (StdSimplex ℝ M) where
  nonempty := by infer_instance
  joined x y :=
  ⟨{toContinuousMap := ⟨_, continuous_convexCombPair x y⟩
    source' := by simp
    target' := by simp }⟩

/-- The standard one-dimensional simplex is homeomorphic to the unit interval. -/
noncomputable def homeomorphI : StdSimplex ℝ (Fin 2) ≃ₜ unitInterval where
  toEquiv := equivIcc

@[local simp]
lemma homeomorphI_apply_coe (s : StdSimplex ℝ (Fin 2)) :
    (homeomorphI s).val = s.weights 1 := by
  rfl

@[simp]
lemma homeomorphI_single_zero : homeomorphI (.single 0) = 0 := by aesop

@[simp]
lemma homeomorphI_single_one : homeomorphI (.single 1) = 1 := by aesop

@[simp]
lemma homeomorphI_symm_zero : homeomorphI.symm 0 = .single 0 :=
  homeomorphI.injective (by simp)

@[simp]
lemma homeomorphI_symm_one : homeomorphI.symm 1 = .single 1 :=
  homeomorphI.injective (by simp)

end Convexity.StdSimplex
```
