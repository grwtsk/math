# Complete source: GRWTSK.Algebra.Hecke.RankOneBarCoordinates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58dac61a28644df3cf2717934e55800843562911` · SHA-256 `0f8b3a7ef404f6b79dccd1bfbc22d616699d0faa39f8119ebd3fbf87be4bee0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.Hecke.RankOneNormalizedBasis

/-! Semilinear rank-one bar on unique normal-form coordinates, for K1/K2.
The coefficient automorphism and parameter inversion laws are supplied.
No general Coxeter bar or Laurent coefficient automorphism is constructed. -/
namespace GRWTSK.Algebra.Hecke
variable {R : Type*} [CommRing R]

/-- Coordinates of normal-form multiplication, matching rankOne_normalForm_mul. -/
def rankOneCoordinateMul (q : R) (x y : R × R) : R × R :=
  (x.1 * y.1 + x.2 * y.2 * q,
    x.1 * y.2 + x.2 * y.1 + x.2 * y.2 * (q - 1))

/-- Semilinear bar sends T to q⁻¹T+(q⁻¹−1)I. -/
def rankOneBarCoordinates (σ : R ≃+* R) (qinv : R) (x : R × R) : R × R :=
  (σ x.1 + (qinv - 1) * σ x.2, qinv * σ x.2)

/-- The coordinate bar fixes the identity and sends T to its inverse coordinates. -/
theorem rankOne_bar_generators (σ : R ≃+* R) (qinv : R) :
    rankOneBarCoordinates σ qinv (1, 0) = (1, 0) ∧
      rankOneBarCoordinates σ qinv (0, 1) = (qinv - 1, qinv) := by
  simp [rankOneBarCoordinates]

/-- Involutivity requires actual coefficient involutivity and parameter inversion. -/
theorem rankOne_bar_involutive (σ : R ≃+* R) (q qinv : R)
    (hσ : Function.Involutive σ) (hparam : σ qinv = q) (hq : q * qinv = 1) :
    Function.Involutive (rankOneBarCoordinates σ qinv) := by
  intro x
  have hx1 : σ (σ x.1) = x.1 := hσ x.1
  have hx2 : σ (σ x.2) = x.2 := hσ x.2
  apply Prod.ext <;>
    simp [rankOneBarCoordinates, map_add, map_mul, map_sub, hparam, hx1, hx2] <;>
    linear_combination x.2 * hq

/-- The semilinear bar respects the actual two-coordinate multiplication. -/
theorem rankOne_bar_mul (σ : R ≃+* R) (q qinv : R)
    (hparam : σ q = qinv) (hq : q * qinv = 1) (x y : R × R) :
    rankOneBarCoordinates σ qinv (rankOneCoordinateMul q x y) =
      rankOneCoordinateMul q (rankOneBarCoordinates σ qinv x)
        (rankOneBarCoordinates σ qinv y) := by
  apply Prod.ext <;>
    simp [rankOneBarCoordinates, rankOneCoordinateMul, map_add, map_mul, map_sub, hparam] <;>
    linear_combination -(σ x.2 * σ y.2 * qinv) * hq

/-- The normalized C=v⁻¹(I+T) has fixed coordinates when σ(v⁻¹)=v. -/
theorem rankOne_bar_normalized_fixed (σ : R ≃+* R) (v vinv : R)
    (hparam : σ vinv = v) (hv : v * vinv = 1) :
    rankOneBarCoordinates σ (vinv ^ 2) (vinv, vinv) = (vinv, vinv) := by
  apply Prod.ext <;>
    simp [rankOneBarCoordinates, hparam] <;>
    linear_combination vinv * hv
end GRWTSK.Algebra.Hecke
```
