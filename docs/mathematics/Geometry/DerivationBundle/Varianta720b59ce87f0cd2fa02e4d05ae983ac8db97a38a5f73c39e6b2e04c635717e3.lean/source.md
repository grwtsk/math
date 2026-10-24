# Complete source: GRWTSK.Geometry.DerivationBundle.Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f9cd3ac0af40c9d788231ab3a486a658df88299` · SHA-256 `e6a1216211b40444228b61cef888e033ebab9d04609d0f5bada71b8ddb2d1a04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.PointedContMDiffMap.Variant0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PointedContMDiffMap.Variant0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Manifold/DerivationBundle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri
-/
import Mathlib.Geometry.Manifold.Algebra.SmoothFunctions
import Mathlib.RingTheory.Derivation.Basic

/-!

# Derivation bundle

In this file we define the derivations at a point of a manifold on the algebra of smooth functions.
Moreover, we define the differential of a function in terms of derivations.

The content of this file is not meant to be regarded as an alternative definition to the current
tangent bundle but rather as a purely algebraic theory that provides a purely algebraic definition
of the Lie algebra for a Lie group. This theory coincides with the usual tangent bundle in the
case of finite-dimensional `C^∞` real manifolds, but not in the general case.
-/



namespace GRWTSK.Geometry.PointedContMDiffMap.Variant0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5

variable (𝕜 : Type*) [NontriviallyNormedField 𝕜] {E : Type*} [NormedAddCommGroup E]
  [NormedSpace 𝕜 E] {H : Type*} [TopologicalSpace H] (I : ModelWithCorners 𝕜 E H) (M : Type*)
  [TopologicalSpace M] [ChartedSpace H M] (n : WithTop ℕ∞)

open scoped Manifold ContDiff

-- the following two instances prevent poorly understood type class inference timeout problems
instance smoothFunctionsAlgebra : Algebra 𝕜 C^∞⟮I, M; 𝕜⟯ := by infer_instance

instance smooth_functions_tower : IsScalarTower 𝕜 C^∞⟮I, M; 𝕜⟯ C^∞⟮I, M; 𝕜⟯ := by infer_instance

/-- Type synonym, introduced to put a different `SMul` action on `C^n⟮I, M; 𝕜⟯`
which is defined as `f • r = f(x) * r`.
Denoted as `C^n⟮I, M; 𝕜⟯⟨x⟩` within the `Derivation` namespace. -/
@[nolint unusedArguments]
def PointedContMDiffMap (_ : M) :=
  C^n⟮I, M; 𝕜⟯

@[deprecated (since := "2025-01-09")] alias PointedSmoothMap := PointedContMDiffMap

@[inherit_doc]
scoped[Derivation] notation "C^" n "⟮" I ", " M "; " 𝕜 "⟯⟨" x "⟩" => PointedContMDiffMap 𝕜 I M n x

variable {𝕜 M}

namespace PointedContMDiffMap

open scoped Derivation

instance instFunLike {x : M} : FunLike C^∞⟮I, M; 𝕜⟯⟨x⟩ M 𝕜 :=
  ContMDiffMap.instFunLike

instance {x : M} : CommRing C^∞⟮I, M; 𝕜⟯⟨x⟩ :=
  ContMDiffMap.commRing

instance {x : M} : Algebra 𝕜 C^∞⟮I, M; 𝕜⟯⟨x⟩ :=
  ContMDiffMap.algebra

instance {x : M} : Inhabited C^∞⟮I, M; 𝕜⟯⟨x⟩ :=
  ⟨0⟩

instance {x : M} : Algebra C^∞⟮I, M; 𝕜⟯⟨x⟩ C^∞⟮I, M; 𝕜⟯ :=
  Algebra.id C^∞⟮I, M; 𝕜⟯

instance {x : M} : IsScalarTower 𝕜 C^∞⟮I, M; 𝕜⟯⟨x⟩ C^∞⟮I, M; 𝕜⟯ :=
  IsScalarTower.right

variable {I}

/-- `ContMDiffMap.evalRingHom` gives rise to an algebra structure of `C^∞⟮I, M; 𝕜⟯` on `𝕜`. -/
instance evalAlgebra {x : M} : Algebra C^∞⟮I, M; 𝕜⟯⟨x⟩ 𝕜 :=
  (ContMDiffMap.evalRingHom x : C^∞⟮I, M; 𝕜⟯⟨x⟩ →+* 𝕜).toAlgebra

/-- With the `evalAlgebra` algebra structure evaluation is actually an algebra morphism. -/
def eval (x : M) : C^∞⟮I, M; 𝕜⟯ →ₐ[C^∞⟮I, M; 𝕜⟯⟨x⟩] 𝕜 :=
  Algebra.ofId C^∞⟮I, M; 𝕜⟯⟨x⟩ 𝕜

theorem smul_def (x : M) (f : C^∞⟮I, M; 𝕜⟯⟨x⟩) (k : 𝕜) : f • k = f x * k :=
  rfl

instance (x : M) : IsScalarTower 𝕜 C^∞⟮I, M; 𝕜⟯⟨x⟩ 𝕜 where
  smul_assoc k f h := by
    rw [smul_def, smul_def, ContMDiffMap.coe_smul, Pi.smul_apply, smul_eq_mul, smul_eq_mul,
      mul_assoc]

end PointedContMDiffMap

open scoped Derivation

/-- The derivations at a point of a manifold. Some regard this as a possible definition of the
tangent space, as this coincides with the usual tangent space for finite-dimensional `C^∞` real
manifolds. The identification is not true in general, though. -/
abbrev PointDerivation (x : M) :=
  Derivation 𝕜 C^∞⟮I, M; 𝕜⟯⟨x⟩ 𝕜

section

open scoped Derivation

variable (X : Derivation 𝕜 C^∞⟮I, M; 𝕜⟯ C^∞⟮I, M; 𝕜⟯) (f : C^∞⟮I, M; 𝕜⟯)

/-- Evaluation at a point gives rise to a `C^∞⟮I, M; 𝕜⟯`-linear map between `C^∞⟮I, M; 𝕜⟯` and `𝕜`.
-/
def ContMDiffFunction.evalAt (x : M) : C^∞⟮I, M; 𝕜⟯ →ₗ[C^∞⟮I, M; 𝕜⟯⟨x⟩] 𝕜 :=
  (PointedContMDiffMap.eval x).toLinearMap

@[deprecated (since := "2025-01-09")] alias SmoothFunction.evalAt := ContMDiffFunction.evalAt

namespace Derivation

variable {I}

/-- The evaluation at a point as a linear map. -/
def evalAt (x : M) : Derivation 𝕜 C^∞⟮I, M; 𝕜⟯ C^∞⟮I, M; 𝕜⟯ →ₗ[𝕜] PointDerivation I x :=
  (ContMDiffFunction.evalAt I x).compDer

theorem evalAt_apply (x : M) : evalAt x X f = (X f) x :=
  rfl

end Derivation

variable {I} {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] {H' : Type*}
  [TopologicalSpace H'] {I' : ModelWithCorners 𝕜 E' H'} {M' : Type*} [TopologicalSpace M']
  [ChartedSpace H' M']

/-- The heterogeneous differential as a linear map, denoted as `𝒅ₕ` within the `Manifold` namespace.
Instead of taking a function as an argument this
differential takes `h : f x = y`. It is particularly handy to deal with situations where the points
on where it has to be evaluated are equal but not definitionally equal. -/
def hfdifferential {f : C^∞⟮I, M; I', M'⟯} {x : M} {y : M'} (h : f x = y) :
    PointDerivation I x →ₗ[𝕜] PointDerivation I' y where
  toFun v :=
    Derivation.mk'
      { toFun := fun g => v (g.comp f)
        map_add' := fun g g' => by rw [ContMDiffMap.add_comp, Derivation.map_add]
        map_smul' := fun k g => by
          dsimp; rw [ContMDiffMap.smul_comp, Derivation.map_smul, smul_eq_mul] }
      fun g g' => by
        dsimp
        rw [ContMDiffMap.mul_comp, Derivation.leibniz,
          PointedContMDiffMap.smul_def, ContMDiffMap.comp_apply,
          PointedContMDiffMap.smul_def, ContMDiffMap.comp_apply, h]
        norm_cast
  map_smul' _ _ := rfl
  map_add' _ _ := rfl

/-- The homogeneous differential as a linear map, denoted as `𝒅` within the `Manifold` namespace. -/
def fdifferential (f : C^∞⟮I, M; I', M'⟯) (x : M) :
    PointDerivation I x →ₗ[𝕜] PointDerivation I' (f x) :=
  hfdifferential (rfl : f x = f x)

-- Standard notation for the differential. The abbreviation is `MId`.
@[inherit_doc] scoped[Manifold] notation "𝒅" => fdifferential

-- Standard notation for the differential. The abbreviation is `MId`.
@[inherit_doc] scoped[Manifold] notation "𝒅ₕ" => hfdifferential

@[simp]
theorem fdifferential_apply (f : C^∞⟮I, M; I', M'⟯) {x : M} (v : PointDerivation I x)
    (g : C^∞⟮I', M'; 𝕜⟯) : 𝒅 f x v g = v (g.comp f) :=
  rfl
@[deprecated (since := "2024-11-11")] alias apply_fdifferential := fdifferential_apply

@[simp]
theorem hfdifferential_apply {f : C^∞⟮I, M; I', M'⟯} {x : M} {y : M'} (h : f x = y)
    (v : PointDerivation I x) (g : C^∞⟮I', M'; 𝕜⟯) : 𝒅ₕ h v g = 𝒅 f x v g :=
  rfl
@[deprecated (since := "2024-11-11")] alias apply_hfdifferential := hfdifferential_apply

variable {E'' : Type*} [NormedAddCommGroup E''] [NormedSpace 𝕜 E''] {H'' : Type*}
  [TopologicalSpace H''] {I'' : ModelWithCorners 𝕜 E'' H''} {M'' : Type*} [TopologicalSpace M'']
  [ChartedSpace H'' M'']

@[simp]
theorem fdifferential_comp (g : C^∞⟮I', M'; I'', M''⟯) (f : C^∞⟮I, M; I', M'⟯) (x : M) :
    𝒅 (g.comp f) x = (𝒅 g (f x)).comp (𝒅 f x) :=
  rfl

end
```
