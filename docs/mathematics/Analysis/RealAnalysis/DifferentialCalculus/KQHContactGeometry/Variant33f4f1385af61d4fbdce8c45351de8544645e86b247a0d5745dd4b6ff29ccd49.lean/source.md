# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KQHContactGeometry.Variant33f4f1385af61d4fbdce8c45351de8544645e86b247a0d5745dd4b6ff29ccd49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cb86610f4d8014f3b878e3fe63f7e62da6a5412` · SHA-256 `af216772acf202d8a3ef44a73fb5b7ebcd7a14f75972489ee1247315bf78b994`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Point.Variant3f63c6fc997a73d395316bca5589f728225993ebe96c831bbea6d00f1ced2f5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f63c6fc997a73d395316bca5589f728225993ebe96c831bbea6d00f1ced2f5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Point.Variant3f63c6fc997a73d395316bca5589f728225993ebe96c831bbea6d00f1ced2f5b","mathematical_subject":"Analysis.Calculus","original_sha256":"3f63c6fc997a73d395316bca5589f728225993ebe96c831bbea6d00f1ced2f5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/PositiveAtlas/KQHContactGeometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.Calculus.Deriv.Prod
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Complex.Norm
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Push
import Mathlib.Tactic.FieldSimp

/-!
# Exact contact coordinates for the KQH auxiliary model

The ideal model is `Z' = v`, `Y' = -Z + t*v`. Flows act on points;
operators act by pullback, with the composition order explicitly fixed.
These auxiliary laws do not identify the Mangoldt source with a magnetic
operator. AI attribution: Codex derivation and Lean formalization, following
grwtsk contributors's originating KQH research direction.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Point.Variant3f63c6fc997a73d395316bca5589f728225993ebe96c831bbea6d00f1ced2f5b

set_option autoImplicit false
noncomputable section

namespace FormalResearch.PositiveAtlas.KQHContactGeometry

/-- Coordinates in the order `(t,Z,Y)`. -/
abbrev Point := ℝ × ℝ × ℝ

/-- The first exact horizontal flow. -/
def flow0 (a : ℝ) (x : Point) : Point := (x.1 + a, x.2.1, x.2.2 - a*x.2.1)

/-- The second exact horizontal flow. -/
def flow1 (b : ℝ) (x : Point) : Point := (x.1, x.2.1 + b, x.2.2 + b*x.1)

/-- Central translation, preserving both horizontal coordinates. -/
def central (c : ℝ) (x : Point) : Point := (x.1, x.2.1, x.2.2 + c)

theorem flow0_add (a b : ℝ) (x : Point) : flow0 a (flow0 b x) = flow0 (a+b) x := by
  ext <;> simp [flow0] <;> ring

theorem flow1_add (a b : ℝ) (x : Point) : flow1 a (flow1 b x) = flow1 (a+b) x := by
  ext <;> simp [flow1] <;> ring

theorem flow0_inverse (a : ℝ) (x : Point) : flow0 (-a) (flow0 a x) = x := by
  ext <;> simp [flow0]

theorem flow1_inverse (b : ℝ) (x : Point) : flow1 (-b) (flow1 b x) = x := by
  ext <;> simp [flow1]

/-- Successive point motions `a,b,-a,-b` produce the positive central shift. -/
theorem contact_loop (a b : ℝ) (x : Point) :
    flow1 (-b) (flow0 (-a) (flow1 b (flow0 a x))) = central (2*a*b) x := by
  ext <;> simp [flow0, flow1, central]
  ring

/-- First vector field, expressed in the declared coordinate order. -/
def field0 (x : Point) : Point := (1, 0, -x.2.1)

/-- Second vector field. -/
def field1 (x : Point) : Point := (0, 1, x.1)

theorem flow0_derivative (a : ℝ) (x : Point) :
    HasDerivAt (fun s => flow0 s x) (field0 (flow0 a x)) a := by
  convert ((hasDerivAt_const a x.1).add (hasDerivAt_id a)).prodMk
    ((hasDerivAt_const a x.2.1).prodMk
      ((hasDerivAt_const a x.2.2).sub ((hasDerivAt_id a).mul_const x.2.1))) using 1 <;>
    simp [flow0, field0]

theorem flow1_derivative (b : ℝ) (x : Point) :
    HasDerivAt (fun s => flow1 s x) (field1 (flow1 b x)) b := by
  convert (hasDerivAt_const b x.1).prodMk
    (((hasDerivAt_const b x.2.1).add (hasDerivAt_id b)).prodMk
      ((hasDerivAt_const b x.2.2).add ((hasDerivAt_id b).mul_const x.1))) using 1 <;>
    simp [flow1, field1]

/-- The only nonconstant coefficient in the first field has this derivative. -/
theorem field0_directional_derivative (x v : Point) :
    HasDerivAt (fun s : ℝ => -(x.2.1 + s*v.2.1)) (-v.2.1) 0 := by
  convert! ((hasDerivAt_const (0 : ℝ) x.2.1).add
    ((hasDerivAt_id (0 : ℝ)).mul_const v.2.1)).neg using 1
  simp

/-- The only nonconstant coefficient in the second field has this derivative. -/
theorem field1_directional_derivative (x v : Point) :
    HasDerivAt (fun s : ℝ => x.1 + s*v.1) v.1 0 := by
  convert! (hasDerivAt_const (0 : ℝ) x.1).add
    ((hasDerivAt_id (0 : ℝ)).mul_const v.1) using 1
  simp

/-- Coordinate bracket `D(field1) field0 - D(field0) field1`. -/
def bracket (x : Point) : Point := (0, 0, (field0 x).1 - (-(field1 x).2.1))

theorem contact_bracket (x : Point) : bracket x = (0, 0, 2) := by
  norm_num [bracket, field0, field1]

/-- Exact trajectory with constant control, including its initial point. -/
def segment (c T : ℝ) (x : Point) : Point :=
  (T, x.2.1 + c*(T-x.1), x.2.2 + (c*x.1-x.2.1)*(T-x.1))

theorem segment_horizontal (c T : ℝ) (x : Point) :
    -((segment c T x).2.1) + T*c = c*x.1-x.2.1 := by
  simp [segment]
  ring

/-- Three constant controls with two internal switch times and a final time. -/
def endpoint (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) : Point :=
  segment c₃ τ₃ (segment c₂ τ₂ (segment c₁ τ₁ x))

/-- Polynomial endpoint formula, valid without ordering restrictions. -/
theorem endpoint_formula (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) :
    endpoint c₁ c₂ c₃ τ₁ τ₂ τ₃ x =
      (τ₃,
        x.2.1-c₁*x.1+(c₁-c₂)*τ₁+(c₂-c₃)*τ₂+c₃*τ₃,
        x.2.2+(c₁*x.1-x.2.1)*(τ₃-x.1)+
          (c₂-c₁)*τ₁*(τ₃-τ₁)+(c₃-c₂)*τ₂*(τ₃-τ₂)) := by
  ext <;> simp [endpoint, segment] <;> ring

/-- Matrix of polynomial partial derivatives in `(τ₁,τ₂,τ₃)`. -/
def endpointJacobian (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) : Matrix (Fin 3) (Fin 3) ℝ :=
  !![0, 0, 1;
     c₁-c₂, c₂-c₃, c₃;
     (c₂-c₁)*(τ₃-2*τ₁), (c₃-c₂)*(τ₃-2*τ₂),
       c₁*x.1-x.2.1+(c₂-c₁)*τ₁+(c₃-c₂)*τ₂]

theorem endpoint_Y_partial1 (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) :
    HasDerivAt (fun u => (endpoint c₁ c₂ c₃ u τ₂ τ₃ x).2.2)
      ((c₂-c₁)*(τ₃-2*τ₁)) τ₁ := by
  simp only [endpoint_formula]
  convert! ((hasDerivAt_const τ₁
    (x.2.2+(c₁*x.1-x.2.1)*(τ₃-x.1))).add
    (((hasDerivAt_id τ₁).const_mul (c₂-c₁)).mul
      ((hasDerivAt_const τ₁ τ₃).sub (hasDerivAt_id τ₁)))).add
      (hasDerivAt_const τ₁ ((c₃-c₂)*τ₂*(τ₃-τ₂))) using 1
  simp only [Pi.sub_apply, id_eq]
  ring

theorem endpoint_Y_partial2 (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) :
    HasDerivAt (fun u => (endpoint c₁ c₂ c₃ τ₁ u τ₃ x).2.2)
      ((c₃-c₂)*(τ₃-2*τ₂)) τ₂ := by
  simp only [endpoint_formula]
  convert! (hasDerivAt_const τ₂
    (x.2.2+(c₁*x.1-x.2.1)*(τ₃-x.1)+(c₂-c₁)*τ₁*(τ₃-τ₁))).add
    (((hasDerivAt_id τ₂).const_mul (c₃-c₂)).mul
      ((hasDerivAt_const τ₂ τ₃).sub (hasDerivAt_id τ₂))) using 1
  simp only [Pi.sub_apply, id_eq]
  ring

theorem endpoint_Y_partial3 (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) :
    HasDerivAt (fun u => (endpoint c₁ c₂ c₃ τ₁ τ₂ u x).2.2)
      (c₁*x.1-x.2.1+(c₂-c₁)*τ₁+(c₃-c₂)*τ₂) τ₃ := by
  simp only [endpoint_formula]
  convert! (((hasDerivAt_const τ₃ x.2.2).add
    (((hasDerivAt_id τ₃).sub_const x.1).const_mul (c₁*x.1-x.2.1))).add
    (((hasDerivAt_id τ₃).sub_const τ₁).const_mul ((c₂-c₁)*τ₁))).add
    (((hasDerivAt_id τ₃).sub_const τ₂).const_mul ((c₃-c₂)*τ₂)) using 1
  simp

theorem endpoint_jacobian_det (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) :
    (endpointJacobian c₁ c₂ c₃ τ₁ τ₂ τ₃ x).det =
      2*(c₂-c₁)*(c₃-c₂)*(τ₂-τ₁) := by
  rw [Matrix.det_fin_three]
  simp [endpointJacobian]
  ring

/-- Endpoint coincidence reduces to a quadratic moment fiber. -/
theorem endpoint_fiber_moments (c₁ c₂ c₃ u v u₀ v₀ T : ℝ) (x : Point)
    (h : endpoint c₁ c₂ c₃ u v T x = endpoint c₁ c₂ c₃ u₀ v₀ T x) :
    (c₂-c₁)*u+(c₃-c₂)*v = (c₂-c₁)*u₀+(c₃-c₂)*v₀ ∧
    (c₂-c₁)*u^2+(c₃-c₂)*v^2 = (c₂-c₁)*u₀^2+(c₃-c₂)*v₀^2 := by
  rw [endpoint_formula, endpoint_formula] at h
  have hz := congrArg (fun p : Point => p.2.1) h
  have hy := congrArg (fun p : Point => p.2.2) h
  dsimp at hz hy
  have hs : (c₂-c₁)*u+(c₃-c₂)*v = (c₂-c₁)*u₀+(c₃-c₂)*v₀ := by
    linarith
  have hTs := congrArg (fun r : ℝ => T*r) hs
  constructor
  · exact hs
  · nlinarith [hTs]

/-- The centered contact dilation sends differential residual to residual / H. -/
theorem centered_residual (H t Z v Y' tc Zc : ℝ) (hH : H ≠ 0) :
    (Y'+Zc-tc*v)/H + (Z-Zc)/H - ((t-tc)/H)*v = (Y'+Z-t*v)/H := by
  field_simp [hH]
  ring

theorem centered_residual_bound (H t Z v Y' tc Zc η : ℝ) (hH : 0 < H)
    (he : |Y'+Z-t*v| ≤ η) :
    |(Y'+Zc-tc*v)/H + (Z-Zc)/H - ((t-tc)/H)*v| ≤ η/H := by
  rw [centered_residual H t Z v Y' tc Zc (ne_of_gt hH), abs_div, abs_of_pos hH]
  exact div_le_div_of_nonneg_right he hH.le

/-- Central characters use the angular `exp(i κ s)` convention. -/
def phase (κ s : ℝ) : ℂ := Complex.exp ((κ*s : ℝ) * Complex.I)

theorem phase_add (κ s t : ℝ) : phase κ (s+t) = phase κ s * phase κ t := by
  unfold phase
  rw [← Complex.exp_add]
  congr 1
  push_cast
  ring

theorem phase_norm (κ s : ℝ) : ‖phase κ s‖ = 1 :=
  Complex.norm_exp_ofReal_mul_I _

/-- Pullback on the central Fourier fiber by the first point flow. -/
def U (κ a : ℝ) (g : ℝ × ℝ → ℂ) (p : ℝ × ℝ) : ℂ :=
  phase κ (-a*p.2) * g (p.1+a, p.2)

/-- Pullback on the central Fourier fiber by the second point flow. -/
def V (κ b : ℝ) (g : ℝ × ℝ → ℂ) (p : ℝ × ℝ) : ℂ :=
  phase κ (b*p.1) * g (p.1, p.2+b)

/-- A central Fourier mode, before quotienting by null sets. -/
def centralMode (κ : ℝ) (g : ℝ × ℝ → ℂ) (x : Point) : ℂ :=
  phase κ x.2.2 * g (x.1, x.2.1)

theorem pullback_flow0 (κ a : ℝ) (g : ℝ × ℝ → ℂ) (x : Point) :
    centralMode κ g (flow0 a x) = centralMode κ (U κ a g) x := by
  simp only [centralMode, flow0, U, sub_eq_add_neg, phase_add]
  rw [neg_mul]
  ring

theorem pullback_flow1 (κ b : ℝ) (g : ℝ × ℝ → ℂ) (x : Point) :
    centralMode κ g (flow1 b x) = centralMode κ (V κ b g) x := by
  simp only [centralMode, flow1, V, phase_add]
  ring

/-- The exact positive Weyl phase for this pullback convention. -/
theorem fiber_weyl (κ a b : ℝ) (g : ℝ × ℝ → ℂ) (p : ℝ × ℝ) :
    U κ a (V κ b g) p = phase κ (2*a*b) * V κ b (U κ a g) p := by
  simp only [U, V, ← mul_assoc, ← phase_add]
  congr 2
  ring

theorem U_comp (κ a b : ℝ) (g : ℝ × ℝ → ℂ) (p : ℝ × ℝ) :
    U κ a (U κ b g) p = U κ (a+b) g p := by
  simp only [U, ← mul_assoc, ← phase_add]
  congr 2 <;> ring

theorem V_comp (κ a b : ℝ) (g : ℝ × ℝ → ℂ) (p : ℝ × ℝ) :
    V κ a (V κ b g) p = V κ (a+b) g p := by
  simp only [V, ← mul_assoc, ← phase_add]
  congr 2 <;> ring

theorem U_inverse (κ a : ℝ) (g : ℝ × ℝ → ℂ) (p : ℝ × ℝ) :
    U κ (-a) (U κ a g) p = g p := by
  rw [U_comp]
  simp [U, phase]

theorem V_inverse (κ b : ℝ) (g : ℝ × ℝ → ℂ) (p : ℝ × ℝ) :
    V κ (-b) (V κ b g) p = g p := by
  rw [V_comp]
  simp [V, phase]

theorem U_norm (κ a : ℝ) (g : ℝ × ℝ → ℂ) (p : ℝ × ℝ) :
    ‖U κ a g p‖ = ‖g (p.1+a,p.2)‖ := by
  rw [U, Complex.norm_mul, phase_norm, one_mul]

theorem V_norm (κ b : ℝ) (g : ℝ × ℝ → ℂ) (p : ℝ × ℝ) :
    ‖V κ b g p‖ = ‖g (p.1,p.2+b)‖ := by
  rw [V, Complex.norm_mul, phase_norm, one_mul]

end FormalResearch.PositiveAtlas.KQHContactGeometry
```
