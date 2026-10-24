/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.Algebra.LinearAlgebra.OrientedRealLine.Coherence
import GRWTSK.Algebra.LinearAlgebra.OrientedRealLine.FiniteComparison
import GRWTSK.NumberTheory.ArithmeticGeometry.LogThetaComparison

set_option autoImplicit false

noncomputable section

open GRWTSK.Algebra.LinearAlgebra.OrientedRealLine
open scoped BigOperators

example {L M N : Line} (f : PositiveScaleEquiv L M) (g : PositiveScaleEquiv M N) :
    (f.trans g).scale = g.scale * f.scale := f.scale_trans g

example (C : Chain) (n : ℕ)
    (close : PositiveScaleEquiv (C.object n) (C.object 0))
    (commutes : ((C.transport n).trans close).linearEquiv =
      LinearEquiv.refl ℝ (C.object 0).Carrier) :
    close.scale * (∏ i ∈ Finset.range n, (C.edge i).scale) = 1 :=
  C.cycle_scale n close commutes

example {ι : Type*} {object : ι → Line} (D : CommonComparison object) (i j k : ι) :
    (D.toCocycle.arrow k i).scale *
      ((D.toCocycle.arrow j k).scale * (D.toCocycle.arrow i j).scale) = 1 :=
  D.toCocycle.triangle_scale i j k

example {L : Line} (j : ℕ) (hj : 1 < j) (f : PositiveScaleEquiv L L)
    (hf : f.scale = (j : ℝ) ^ 2) :
    f.linearEquiv ≠ LinearEquiv.refl ℝ L.Carrier :=
  square_scale_cycle_not_identity j hj f hf

example : ∃ P : PolyIsomorphism PositiveScaleEquiv.realLine PositiveScaleEquiv.realLine,
      (∃ f ∈ P, PositiveScaleEquiv.realLine.coordinate
        (f.linearEquiv (PositiveScaleEquiv.realLine.coordinate.symm 1)) ≤ 1) ∧
      ¬ (∀ f ∈ P, PositiveScaleEquiv.realLine.coordinate
        (f.linearEquiv (PositiveScaleEquiv.realLine.coordinate.symm 1)) ≤ 1) :=
  poly_isomorphism_some_bound_not_all

private def numericalRepair : FiniteComparisonRepair Unit where
  comparison := PositiveScaleEquiv.realLine
  thetaObject := fun _ => PositiveScaleEquiv.realLine
  qObject := PositiveScaleEquiv.realLine
  theta := fun _ => PositiveScaleEquiv.realLine.coordinate.symm 2
  q := PositiveScaleEquiv.realLine.coordinate.symm 3
  thetaMap := fun _ => PositiveScaleEquiv.dilation 2 (by norm_num)
  qMap := PositiveScaleEquiv.dilation 2 (by norm_num)
  coefficient := fun _ => 1
  error := fun _ => 0
  pointwise := by
    intro i
    rw [(PositiveScaleEquiv.dilation 2 (by norm_num)).realizes_scale,
      (PositiveScaleEquiv.dilation 2 (by norm_num)).realizes_scale]
    norm_num [PositiveScaleEquiv.dilation]

example : (∑ i : Unit, (numericalRepair.thetaObject i).coordinate (numericalRepair.theta i)) ≤ 3 := by
  have h := numericalRepair.weighted_degree_le (fun _ => 1) 2 2 1 0 (by norm_num)
    (by intro i; norm_num)
    (by intro i; change (0 : ℝ) ≤ 2; norm_num)
    (by change (0 : ℝ) ≤ 3; norm_num)
    (by intro i; norm_num [numericalRepair])
    (by intro i; change (2 : ℝ) ≤ 2; norm_num)
    (by change (2 : ℝ) ≤ 2; norm_num)
    (by norm_num [numericalRepair])
    (by norm_num [numericalRepair])
  change (∑ i : Unit, (1 : ℝ) * 2) ≤ ((1 : ℝ) * 2 * 3 + 0) / 2 at h
  change (∑ i : Unit, (2 : ℝ)) ≤ 3
  simpa using h
