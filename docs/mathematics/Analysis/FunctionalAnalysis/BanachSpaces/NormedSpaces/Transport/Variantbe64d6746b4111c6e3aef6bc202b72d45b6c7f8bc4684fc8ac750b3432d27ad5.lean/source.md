# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Transport.Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b667fd54e8c7ef97251658c28af1ffcdc0f8ac9` · SHA-256 `be64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.NeuralDiffusion.State
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

/-!
# Convolution--involution transport and graph-functional bounds

The analytic objects are certificate-bearing interfaces.  In particular,
sectoriality and functional-calculus facts are imported through the
`LinearDiffuser` laws; they are not manufactured by a neural parameter.
-/

namespace Mathematics.NeuralDiffusion

universe u v

noncomputable section

/-- The exact laws required of the transport convolution and involution. -/
structure ConvolutionInvolution (A : Type u) where
  conv : A → A → A
  star : A → A
  conv_assoc : ∀ a b c, conv (conv a b) c = conv a (conv b c)
  star_conv : ∀ a b, star (conv a b) = conv (star b) (star a)
  star_involutive : ∀ a, star (star a) = a

namespace ConvolutionInvolution

variable {A : Type u}

@[simp] theorem star_star (algebra : ConvolutionInvolution A) (a : A) :
    algebra.star (algebra.star a) = a :=
  algebra.star_involutive a

end ConvolutionInvolution

/--
A diffuser-relative graph norm and a bounded analytic semigroup certificate.
The `graphNorm` is intended to realize `‖(I + L)^(s/2) x‖`.
-/
structure LinearDiffuser
    (B : Type u) [NormedAddCommGroup B] [NormedSpace ℝ B] where
  graphNorm : B → ℝ
  graphNorm_nonnegative : ∀ x, 0 ≤ graphNorm x
  step : ℝ → B →L[ℝ] B
  semigroup_zero : step 0 = ContinuousLinearMap.id ℝ B
  semigroup_add :
    ∀ {s t : ℝ}, 0 ≤ s → 0 ≤ t →
      step (s + t) = (step s).comp (step t)
  boundConstant : ℝ
  decayRate : ℝ
  boundConstant_nonnegative : 0 ≤ boundConstant
  decayRate_nonnegative : 0 ≤ decayRate
  analytic_bound :
    ∀ (t : ℝ), 0 ≤ t → ∀ x,
      graphNorm (step t x) ≤
        boundConstant * Real.exp (-decayRate * t) * graphNorm x

namespace LinearDiffuser

variable {B : Type u} [NormedAddCommGroup B] [NormedSpace ℝ B]

def factor (diffuser : LinearDiffuser B) (t : ℝ) : ℝ :=
  diffuser.boundConstant * Real.exp (-diffuser.decayRate * t)

theorem factor_nonnegative (diffuser : LinearDiffuser B) (t : ℝ) :
    0 ≤ diffuser.factor t :=
  mul_nonneg diffuser.boundConstant_nonnegative (Real.exp_pos _).le

end LinearDiffuser

/--
A bounded representation of exact transports, including the commutation and
graph-norm estimates needed by the analytic proof.
-/
structure CompatibleTransport
    (A : Type u) (B : Type v)
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    (algebra : ConvolutionInvolution A)
    (diffuser : LinearDiffuser B) where
  representation : A → B →L[ℝ] B
  representation_conv :
    ∀ a b,
      representation (algebra.conv a b) =
        (representation a).comp (representation b)
  commutes_with_diffuser :
    ∀ a t,
      (diffuser.step t).comp (representation a) =
        (representation a).comp (diffuser.step t)
  transportSize : A → ℝ
  transportSize_nonnegative : ∀ a, 0 ≤ transportSize a
  paired_bound :
    ∀ a x,
      diffuser.graphNorm
        (((2 : ℝ)⁻¹) •
          (representation a + representation (algebra.star a)) x) ≤
        transportSize a * diffuser.graphNorm x

namespace CompatibleTransport

variable
    {A : Type u} {B : Type v}
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    {algebra : ConvolutionInvolution A}
    {diffuser : LinearDiffuser B}

/-- Forward convolution paired with its exact reverse involution channel. -/
def paired
    (transport : CompatibleTransport A B algebra diffuser)
    (a : A) :
    B →L[ℝ] B :=
  ((2 : ℝ)⁻¹) •
    (transport.representation a +
      transport.representation (algebra.star a))

@[simp] theorem paired_star
    (transport : CompatibleTransport A B algebra diffuser)
    (a : A) :
    transport.paired (algebra.star a) = transport.paired a := by
  simp only [paired, algebra.star_involutive]
  rw [add_comm]

theorem paired_graph_bound
    (transport : CompatibleTransport A B algebra diffuser)
    (a : A) (x : B) :
    diffuser.graphNorm (transport.paired a x) ≤
      transport.transportSize a * diffuser.graphNorm x :=
  transport.paired_bound a x

end CompatibleTransport

/-- A certified nonlinearity on the diffuser-relative domain. -/
structure CertifiedNonlinearity
    (B : Type u) [AddGroup B]
    (graphNorm : B → ℝ) where
  apply : B → B
  lipschitzConstant : ℝ
  lipschitzConstant_nonnegative : 0 ≤ lipschitzConstant
  lipschitz :
    ∀ x y,
      graphNorm (apply x - apply y) ≤
        lipschitzConstant * graphNorm (x - y)

/-- One analytic convolution--involution diffusion layer. -/
structure AnalyticLayer
    (A : Type u) (B : Type v)
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    (algebra : ConvolutionInvolution A)
    (diffuser : LinearDiffuser B)
    (transport : CompatibleTransport A B algebra diffuser) where
  kernel : A
  diffusionTime : ℝ
  diffusionTime_nonnegative : 0 ≤ diffusionTime
  nonlinearity : CertifiedNonlinearity B diffuser.graphNorm

namespace AnalyticLayer

variable
    {A : Type u} {B : Type v}
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    {algebra : ConvolutionInvolution A}
    {diffuser : LinearDiffuser B}
    {transport : CompatibleTransport A B algebra diffuser}

def candidate
    (layer : AnalyticLayer A B algebra diffuser transport)
    (x : B) :
    B :=
  layer.nonlinearity.apply
    (diffuser.step layer.diffusionTime
      (transport.paired layer.kernel x))

def stabilityFactor
    (layer : AnalyticLayer A B algebra diffuser transport) :
    ℝ :=
  layer.nonlinearity.lipschitzConstant *
    diffuser.boundConstant *
    Real.exp (-diffuser.decayRate * layer.diffusionTime) *
    transport.transportSize layer.kernel

/-- The stated candidate graph-functional estimate, derived from the three certificates. -/
theorem candidate_graphFunctional_lipschitz
    (layer : AnalyticLayer A B algebra diffuser transport)
    (x y : B) :
    diffuser.graphNorm (layer.candidate x - layer.candidate y) ≤
      layer.stabilityFactor * diffuser.graphNorm (x - y) := by
  have hnonlinear :=
    layer.nonlinearity.lipschitz
      (diffuser.step layer.diffusionTime
        (transport.paired layer.kernel x))
      (diffuser.step layer.diffusionTime
        (transport.paired layer.kernel y))
  have hdiff :
      diffuser.step layer.diffusionTime
          (transport.paired layer.kernel x) -
        diffuser.step layer.diffusionTime
          (transport.paired layer.kernel y) =
      diffuser.step layer.diffusionTime
        (transport.paired layer.kernel (x - y)) := by
    simp
  rw [hdiff] at hnonlinear
  have hdiffuser :=
    diffuser.analytic_bound layer.diffusionTime
      layer.diffusionTime_nonnegative
      (transport.paired layer.kernel (x - y))
  have htransport :=
    transport.paired_graph_bound layer.kernel (x - y)
  calc
    diffuser.graphNorm (layer.candidate x - layer.candidate y)
        ≤ layer.nonlinearity.lipschitzConstant *
            diffuser.graphNorm
              (diffuser.step layer.diffusionTime
                (transport.paired layer.kernel (x - y))) := hnonlinear
    _ ≤ layer.nonlinearity.lipschitzConstant *
          (diffuser.factor layer.diffusionTime *
            diffuser.graphNorm (transport.paired layer.kernel (x - y))) := by
          exact mul_le_mul_of_nonneg_left hdiffuser
            layer.nonlinearity.lipschitzConstant_nonnegative
    _ ≤ layer.nonlinearity.lipschitzConstant *
          (diffuser.factor layer.diffusionTime *
            (transport.transportSize layer.kernel *
              diffuser.graphNorm (x - y))) := by
          exact mul_le_mul_of_nonneg_left
            (mul_le_mul_of_nonneg_left htransport
              (diffuser.factor_nonnegative layer.diffusionTime))
            layer.nonlinearity.lipschitzConstant_nonnegative
    _ = layer.stabilityFactor * diffuser.graphNorm (x - y) := by
          simp [LinearDiffuser.factor, stabilityFactor]
          ring

theorem nonexpansive_of_factor_le_one
    (layer : AnalyticLayer A B algebra diffuser transport)
    (hfactor : layer.stabilityFactor ≤ 1)
    (x y : B) :
    diffuser.graphNorm (layer.candidate x - layer.candidate y) ≤
      diffuser.graphNorm (x - y) := by
  calc
    diffuser.graphNorm (layer.candidate x - layer.candidate y)
        ≤ layer.stabilityFactor * diffuser.graphNorm (x - y) :=
      layer.candidate_graphFunctional_lipschitz x y
    _ ≤ 1 * diffuser.graphNorm (x - y) :=
      mul_le_mul_of_nonneg_right hfactor
        (diffuser.graphNorm_nonnegative (x - y))
    _ = diffuser.graphNorm (x - y) := one_mul _

end AnalyticLayer

end

end Mathematics.NeuralDiffusion
```
