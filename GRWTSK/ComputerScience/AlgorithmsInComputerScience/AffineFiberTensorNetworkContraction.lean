/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Data.Matrix.Mul

/-!
# Rectangular factorization of the affine-fiber pixel contraction

The original finite rendering definitions are moved here verbatim from
`AffineFiberTensorNetwork`, keeping their fully qualified names.
The matrix factorization preserves each pixel and color exactly.
-/

namespace Boolean.Cube.AffineFiberTensorNetwork

universe u

/-- RGB channel index. -/
abbrev ColorChannel := Fin 3

/-- RGB vector over a scalar type. -/
abbrev RGB (R : Type u) := ColorChannel → R

/-- Zero RGB vector. -/
def rgbZero [Zero R] : RGB R :=
  fun _ => 0

/-- Pointwise RGB addition. -/
def rgbAdd [Add R] (a b : RGB R) : RGB R :=
  fun c => a c + b c

/-- Scalar multiplication of an RGB vector. -/
def rgbScale [Mul R] (r : R) (v : RGB R) : RGB R :=
  fun c => r * v c

/-- Finite RGB summation. -/
def sumRGB [Zero R] [Add R] : List (RGB R) → RGB R
  | [] => rgbZero
  | v :: vs => rgbAdd v (sumRGB vs)

@[simp] theorem rgbZero_apply [Zero R] (c : ColorChannel) :
    rgbZero (R := R) c = 0 := rfl

@[simp] theorem rgbAdd_apply [Add R] (a b : RGB R) (c : ColorChannel) :
    rgbAdd a b c = a c + b c := rfl

@[simp] theorem rgbScale_apply [Mul R] (r : R) (v : RGB R) (c : ColorChannel) :
    rgbScale r v c = r * v c := rfl

@[simp] theorem sumRGB_nil [Zero R] [Add R] :
    sumRGB ([] : List (RGB R)) = rgbZero := rfl

@[simp] theorem sumRGB_cons [Zero R] [Add R]
    (v : RGB R) (vs : List (RGB R)) :
    sumRGB (v :: vs) = rgbAdd v (sumRGB vs) := rfl

/--
Finite tensor-network form of one image: pixels × atoms × modes × color.
`K` stores visibility/transmittance/opacity gates, `A` stores angular coefficients,
and `Y` stores harmonic evaluation at each pixel direction.
-/
structure PixelTensorNetwork (R : Type u) where
  pixels : Nat
  atoms : Nat
  modes : Nat
  K : Fin pixels → Fin atoms → R
  A : Fin atoms → Fin modes → RGB R
  Y : Fin pixels → Fin modes → R

/-- Render one pixel by contracting `Σᵢ Σₘ K[p,i] A[i,m,c] Y[p,m]`. -/
def PixelTensorNetwork.renderPixel [Zero R] [Add R] [Mul R]
    (T : PixelTensorNetwork R)
    (p : Fin T.pixels) : RGB R :=
  sumRGB
    ((List.finRange T.atoms).flatMap
      (fun i =>
        (List.finRange T.modes).map
          (fun m => rgbScale ((T.K p i) * (T.Y p m)) (T.A i m))))

/-- Rendering all pixels as a finite image table. -/
def PixelTensorNetwork.render [Zero R] [Add R] [Mul R]
    (T : PixelTensorNetwork R) : Fin T.pixels → RGB R :=
  fun p => T.renderPixel p

@[simp] theorem PixelTensorNetwork.render_apply [Zero R] [Add R] [Mul R]
    (T : PixelTensorNetwork R)
    (p : Fin T.pixels) :
    T.render p = T.renderPixel p := rfl

end Boolean.Cube.AffineFiberTensorNetwork

namespace GRWTSK.ComputerScience.AlgorithmsInComputerScience.AffineFiberTensorNetworkContraction

open Boolean.Cube.AffineFiberTensorNetwork
open scoped BigOperators

variable {R : Type*}

private theorem sumRGB_channel [AddMonoid R] (values : List (RGB R)) (c : ColorChannel) :
    sumRGB values c = (values.map (fun value => value c)).sum := by
  induction values with
  | nil => rfl
  | cons value values ih => simp only [sumRGB_cons, rgbAdd_apply, List.map_cons, List.sum_cons, ih]

private theorem sum_flatMap [AddMonoid R] {ι : Type*} (indices : List ι) (f : ι → List R) :
    (indices.flatMap f).sum = (indices.map (fun i => (f i).sum)).sum := by
  induction indices with
  | nil => rfl
  | cons i indices ih => simp only [List.flatMap_cons, List.sum_append, List.map_cons,
      List.sum_cons, ih]

private theorem sum_finRange [AddCommMonoid R] (n : ℕ) (f : Fin n → R) :
    ((List.finRange n).map f).sum = ∑ i, f i := by
  rw [Fin.univ_def]
  rfl

/-- Flatten the angular and color indices into the column index of a matrix. -/
def angularMatrix (T : PixelTensorNetwork R) : Matrix (Fin T.atoms) (Fin T.modes × ColorChannel) R :=
  fun i mc => T.A i mc.1 mc.2

/-- Multiply visibility by the flattened angular matrix, then read each pixel by a dot product. -/
def renderViaMatrix [Semiring R] (T : PixelTensorNetwork R) : Fin T.pixels → RGB R :=
  let visibility : Matrix (Fin T.pixels) (Fin T.atoms) R := T.K
  let product : Matrix (Fin T.pixels) (Fin T.modes × ColorChannel) R :=
    visibility * angularMatrix T
  fun p c => ∑ m : Fin T.modes, T.Y p m * product p (m, c)

/-- The factorization is exact when visibility and harmonic coefficients commute. -/
theorem render_eq_renderViaMatrix_of_commute [Semiring R] (T : PixelTensorNetwork R)
    (h : ∀ (p : Fin T.pixels) (i : Fin T.atoms) (m : Fin T.modes),
      Commute (T.K p i) (T.Y p m)) : T.render = renderViaMatrix T := by
  funext p c
  simp only [PixelTensorNetwork.render_apply, PixelTensorNetwork.renderPixel, sumRGB_channel,
    List.map_flatMap, sum_flatMap, List.map_map, Function.comp_apply, rgbScale_apply, sum_finRange,
    renderViaMatrix]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun m _ => ?_
  change (∑ i, T.K p i * T.Y p m * T.A i m c) = T.Y p m * (∑ i, T.K p i * T.A i m c)
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [(h p i m).eq, mul_assoc]

/-- The original rendering and its rectangular matrix factorization agree over a commutative semiring. -/
theorem render_eq_renderViaMatrix [CommSemiring R] (T : PixelTensorNetwork R) :
    T.render = renderViaMatrix T :=
  render_eq_renderViaMatrix_of_commute T (fun _ _ _ => mul_comm _ _)

end GRWTSK.ComputerScience.AlgorithmsInComputerScience.AffineFiberTensorNetworkContraction
