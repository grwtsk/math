# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.LeftInvariantDerivation.Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53fdd16318ac95af37d0a32e78c10e94bd38d982` · SHA-256 `1e65062dd6fd45b758e5ee61baf1a85d6cae5ce498cf9f87a69b737e4fc60e8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.LeftInvariantDerivation.Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.LeftInvariantDerivation.Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd","mathematical_subject":"Logic.ProofTheory","original_sha256":"07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Geometry/Manifold/Algebra/LeftInvariantDerivation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright © 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri
-/
import Mathlib.RingTheory.Derivation.Lie
import Mathlib.Geometry.Manifold.DerivationBundle


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.LeftInvariantDerivation.Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd

#align_import geometry.manifold.algebra.left_invariant_derivation from "leanprover-community/mathlib"@"b608348ffaeb7f557f2fd46876037abafd326ff3"

/-!

# Left invariant derivations

In this file we define the concept of left invariant derivation for a Lie group. The concept is
analogous to the more classical concept of left invariant vector fields, and it holds that the
derivation associated to a vector field is left invariant iff the field is.

Moreover we prove that `LeftInvariantDerivation I G` has the structure of a Lie algebra, hence
implementing one of the possible definitions of the Lie algebra attached to a Lie group.

-/


noncomputable section

open scoped LieGroup Manifold Derivation

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {E : Type*} [NormedAddCommGroup E]
  [NormedSpace 𝕜 E] {H : Type*} [TopologicalSpace H] (I : ModelWithCorners 𝕜 E H) (G : Type*)
  [TopologicalSpace G] [ChartedSpace H G] [Monoid G] [SmoothMul I G] (g h : G)

-- Generate trivial has_sizeof instance. It prevents weird type class inference timeout problems
-- @[local nolint instance_priority, local instance 10000]
-- private def disable_has_sizeof {α} : SizeOf α :=
--   ⟨fun _ => 0⟩

/-- Left-invariant global derivations.

A global derivation is left-invariant if it is equal to its pullback along left multiplication by
an arbitrary element of `G`.
-/
structure LeftInvariantDerivation extends Derivation 𝕜 C^∞⟮I, G; 𝕜⟯ C^∞⟮I, G; 𝕜⟯ where
  left_invariant'' :
    ∀ g, 𝒅ₕ (smoothLeftMul_one I g) (Derivation.evalAt 1 toDerivation) =
      Derivation.evalAt g toDerivation
#align left_invariant_derivation LeftInvariantDerivation

variable {I G}

namespace LeftInvariantDerivation

instance : Coe (LeftInvariantDerivation I G) (Derivation 𝕜 C^∞⟮I, G; 𝕜⟯ C^∞⟮I, G; 𝕜⟯) :=
  ⟨toDerivation⟩

attribute [coe] toDerivation

theorem toDerivation_injective :
    Function.Injective (toDerivation : LeftInvariantDerivation I G → _) :=
  fun X Y h => by cases X; cases Y; congr
#align left_invariant_derivation.coe_derivation_injective LeftInvariantDerivation.toDerivation_injective

instance : LinearMapClass (LeftInvariantDerivation I G) 𝕜 C^∞⟮I, G; 𝕜⟯ C^∞⟮I, G; 𝕜⟯ where
  coe f := f.toDerivation
  coe_injective' _ _ h := toDerivation_injective <| FunLike.ext' h
  map_add f := map_add f.1
  map_smulₛₗ f := map_smul f.1.1

instance : CoeFun (LeftInvariantDerivation I G) fun _ => C^∞⟮I, G; 𝕜⟯ → C^∞⟮I, G; 𝕜⟯ :=
  ⟨FunLike.coe⟩

variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M] {x : M} {r : 𝕜}
  {X Y : LeftInvariantDerivation I G} {f f' : C^∞⟮I, G; 𝕜⟯}

theorem toFun_eq_coe : X.toFun = ⇑X :=
  rfl
#align left_invariant_derivation.to_fun_eq_coe LeftInvariantDerivation.toFun_eq_coe

#noalign left_invariant_derivation.coe_to_linear_map

-- Porting note: now LHS is the same as RHS
#noalign left_invariant_derivation.to_derivation_eq_coe

theorem coe_injective :
    @Function.Injective (LeftInvariantDerivation I G) (_ → C^∞⟮I, G; 𝕜⟯) FunLike.coe :=
  FunLike.coe_injective
#align left_invariant_derivation.coe_injective LeftInvariantDerivation.coe_injective

@[ext]
theorem ext (h : ∀ f, X f = Y f) : X = Y := FunLike.ext _ _ h
#align left_invariant_derivation.ext LeftInvariantDerivation.ext

variable (X Y f)

theorem coe_derivation :
    ⇑(X : Derivation 𝕜 C^∞⟮I, G; 𝕜⟯ C^∞⟮I, G; 𝕜⟯) = (X : C^∞⟮I, G; 𝕜⟯ → C^∞⟮I, G; 𝕜⟯) :=
  rfl
#align left_invariant_derivation.coe_derivation LeftInvariantDerivation.coe_derivation

/-- Premature version of the lemma. Prefer using `left_invariant` instead. -/
theorem left_invariant' :
    𝒅ₕ (smoothLeftMul_one I g) (Derivation.evalAt (1 : G) ↑X) = Derivation.evalAt g ↑X :=
  left_invariant'' X g
#align left_invariant_derivation.left_invariant' LeftInvariantDerivation.left_invariant'

-- Porting note: was `@[simp]` but `_root_.map_add` can prove it now
protected theorem map_add : X (f + f') = X f + X f' := map_add X f f'
#align left_invariant_derivation.map_add LeftInvariantDerivation.map_add

-- Porting note: was `@[simp]` but `_root_.map_zero` can prove it now
protected theorem map_zero : X 0 = 0 := map_zero X
#align left_invariant_derivation.map_zero LeftInvariantDerivation.map_zero

-- Porting note: was `@[simp]` but `_root_.map_neg` can prove it now
protected theorem map_neg : X (-f) = -X f := map_neg X f
#align left_invariant_derivation.map_neg LeftInvariantDerivation.map_neg

-- Porting note: was `@[simp]` but `_root_.map_sub` can prove it now
protected theorem map_sub : X (f - f') = X f - X f' := map_sub X f f'
#align left_invariant_derivation.map_sub LeftInvariantDerivation.map_sub

-- Porting note: was `@[simp]` but `_root_.map_smul` can prove it now
protected theorem map_smul : X (r • f) = r • X f := map_smul X r f
#align left_invariant_derivation.map_smul LeftInvariantDerivation.map_smul

@[simp]
theorem leibniz : X (f * f') = f • X f' + f' • X f :=
  X.leibniz' _ _
#align left_invariant_derivation.leibniz LeftInvariantDerivation.leibniz

instance : Zero (LeftInvariantDerivation I G) :=
  ⟨⟨0, fun g => by simp only [_root_.map_zero]⟩⟩

instance : Inhabited (LeftInvariantDerivation I G) :=
  ⟨0⟩

instance : Add (LeftInvariantDerivation I G) where
  add X Y :=
    ⟨X + Y, fun g => by
      simp only [map_add, Derivation.coe_add, left_invariant', Pi.add_apply]⟩

set_option maxHeartbeats 400000 in
instance : Neg (LeftInvariantDerivation I G) where
  neg X := ⟨-X, fun g => by
    -- porting note: was simp [left_invariant']
    -- `rw` fails without detailed type annotations too; also it needs a lot of time
    rw [map_neg (Derivation.evalAt (𝕜 := 𝕜) (1 : G)), map_neg (𝒅ₕ (smoothLeftMul_one I g)),
      left_invariant', map_neg (Derivation.evalAt (𝕜 := 𝕜) g)]⟩

set_option maxHeartbeats 400000 in
instance : Sub (LeftInvariantDerivation I G) where
  sub X Y := ⟨X - Y, fun g => by
    -- porting note: was simp [left_invariant']
    -- `rw` fails without detailed type annotations too; also it needs a lot of time
    rw [map_sub (Derivation.evalAt (𝕜 := 𝕜) (1 : G)), map_sub (𝒅ₕ (smoothLeftMul_one I g)),
      map_sub (Derivation.evalAt (𝕜 := 𝕜) g), left_invariant', left_invariant']⟩

@[simp]
theorem coe_add : ⇑(X + Y) = X + Y :=
  rfl
#align left_invariant_derivation.coe_add LeftInvariantDerivation.coe_add

@[simp]
theorem coe_zero : ⇑(0 : LeftInvariantDerivation I G) = 0 :=
  rfl
#align left_invariant_derivation.coe_zero LeftInvariantDerivation.coe_zero

@[simp]
theorem coe_neg : ⇑(-X) = -X :=
  rfl
#align left_invariant_derivation.coe_neg LeftInvariantDerivation.coe_neg

@[simp]
theorem coe_sub : ⇑(X - Y) = X - Y :=
  rfl
#align left_invariant_derivation.coe_sub LeftInvariantDerivation.coe_sub

@[simp, norm_cast]
theorem lift_add : (↑(X + Y) : Derivation 𝕜 C^∞⟮I, G; 𝕜⟯ C^∞⟮I, G; 𝕜⟯) = X + Y :=
  rfl
#align left_invariant_derivation.lift_add LeftInvariantDerivation.lift_add

@[simp, norm_cast]
theorem lift_zero :
    (↑(0 : LeftInvariantDerivation I G) : Derivation 𝕜 C^∞⟮I, G; 𝕜⟯ C^∞⟮I, G; 𝕜⟯) = 0 :=
  rfl
#align left_invariant_derivation.lift_zero LeftInvariantDerivation.lift_zero

instance hasNatScalar : SMul ℕ (LeftInvariantDerivation I G) where
  smul r X := ⟨r • X.1, fun g => by simp_rw [LinearMap.map_smul_of_tower _ r, left_invariant']⟩
#align left_invariant_derivation.has_nat_scalar LeftInvariantDerivation.hasNatScalar

instance hasIntScalar : SMul ℤ (LeftInvariantDerivation I G) where
  smul r X := ⟨r • X.1, fun g => by simp_rw [LinearMap.map_smul_of_tower _ r, left_invariant']⟩
#align left_invariant_derivation.has_int_scalar LeftInvariantDerivation.hasIntScalar

instance : AddCommGroup (LeftInvariantDerivation I G) :=
  coe_injective.addCommGroup _ coe_zero coe_add coe_neg coe_sub (fun _ _ => rfl) fun _ _ => rfl

instance : SMul 𝕜 (LeftInvariantDerivation I G) where
  smul r X := ⟨r • X.1, fun g => by simp_rw [LinearMap.map_smul, left_invariant']⟩

variable (r)

@[simp]
theorem coe_smul : ⇑(r • X) = r • ⇑X :=
  rfl
#align left_invariant_derivation.coe_smul LeftInvariantDerivation.coe_smul

@[simp]
theorem lift_smul (k : 𝕜) : (k • X).1 = k • X.1 :=
  rfl
#align left_invariant_derivation.lift_smul LeftInvariantDerivation.lift_smul

variable (I G)

/-- The coercion to function is a monoid homomorphism. -/
@[simps]
def coeFnAddMonoidHom : LeftInvariantDerivation I G →+ C^∞⟮I, G; 𝕜⟯ → C^∞⟮I, G; 𝕜⟯ :=
  ⟨⟨FunLike.coe, coe_zero⟩, coe_add⟩
#align left_invariant_derivation.coe_fn_add_monoid_hom LeftInvariantDerivation.coeFnAddMonoidHom

variable {I G}

instance : Module 𝕜 (LeftInvariantDerivation I G) :=
  coe_injective.module _ (coeFnAddMonoidHom I G) coe_smul

/-- Evaluation at a point for left invariant derivation. Same thing as for generic global
derivations (`Derivation.evalAt`). -/
def evalAt : LeftInvariantDerivation I G →ₗ[𝕜] PointDerivation I g where
  toFun X := Derivation.evalAt g X.1
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
#align left_invariant_derivation.eval_at LeftInvariantDerivation.evalAt

theorem evalAt_apply : evalAt g X f = (X f) g :=
  rfl
#align left_invariant_derivation.eval_at_apply LeftInvariantDerivation.evalAt_apply

@[simp]
theorem evalAt_coe : Derivation.evalAt g ↑X = evalAt g X :=
  rfl
#align left_invariant_derivation.eval_at_coe LeftInvariantDerivation.evalAt_coe

theorem left_invariant : 𝒅ₕ (smoothLeftMul_one I g) (evalAt (1 : G) X) = evalAt g X :=
  X.left_invariant'' g
#align left_invariant_derivation.left_invariant LeftInvariantDerivation.left_invariant

theorem evalAt_mul : evalAt (g * h) X = 𝒅ₕ (L_apply I g h) (evalAt h X) := by
  ext f
  rw [← left_invariant, apply_hfdifferential, apply_hfdifferential, L_mul, fdifferential_comp,
    apply_fdifferential]
  -- Porting note: more agressive here
  erw [LinearMap.comp_apply]
  rw [apply_fdifferential, ← apply_hfdifferential, left_invariant]
#align left_invariant_derivation.eval_at_mul LeftInvariantDerivation.evalAt_mul

theorem comp_L : (X f).comp (𝑳 I g) = X (f.comp (𝑳 I g)) := by
  ext h
  rw [ContMDiffMap.comp_apply, L_apply, ← evalAt_apply, evalAt_mul, apply_hfdifferential,
    apply_fdifferential, evalAt_apply]
set_option linter.uppercaseLean3 false in
#align left_invariant_derivation.comp_L LeftInvariantDerivation.comp_L

set_option maxHeartbeats 400000 in
instance : Bracket (LeftInvariantDerivation I G) (LeftInvariantDerivation I G) where
  bracket X Y :=
    ⟨⁅(X : Derivation 𝕜 C^∞⟮I, G; 𝕜⟯ C^∞⟮I, G; 𝕜⟯), Y⁆, fun g => by
      ext f
      have hX := Derivation.congr_fun (left_invariant' g X) (Y f)
      have hY := Derivation.congr_fun (left_invariant' g Y) (X f)
      rw [apply_hfdifferential, apply_fdifferential, Derivation.evalAt_apply] at hX hY ⊢
      rw [comp_L] at hX hY
      rw [Derivation.commutator_apply, SmoothMap.coe_sub, Pi.sub_apply, coe_derivation]
      rw [coe_derivation] at hX hY ⊢
      rw [hX, hY]
      rfl⟩

@[simp]
theorem commutator_coe_derivation :
    ⇑⁅X, Y⁆ =
      (⁅(X : Derivation 𝕜 C^∞⟮I, G; 𝕜⟯ C^∞⟮I, G; 𝕜⟯), Y⁆ :
        Derivation 𝕜 C^∞⟮I, G; 𝕜⟯ C^∞⟮I, G; 𝕜⟯) :=
  rfl
#align left_invariant_derivation.commutator_coe_derivation LeftInvariantDerivation.commutator_coe_derivation

theorem commutator_apply : ⁅X, Y⁆ f = X (Y f) - Y (X f) :=
  rfl
#align left_invariant_derivation.commutator_apply LeftInvariantDerivation.commutator_apply

instance : LieRing (LeftInvariantDerivation I G) where
  add_lie X Y Z := by
    ext1
    simp only [commutator_apply, coe_add, Pi.add_apply, map_add]
    ring
  lie_add X Y Z := by
    ext1
    simp only [commutator_apply, coe_add, Pi.add_apply, map_add]
    ring
  lie_self X := by ext1; simp only [commutator_apply, sub_self]; rfl
  leibniz_lie X Y Z := by
    ext1
    simp only [commutator_apply, coe_add, coe_sub, map_sub, Pi.add_apply]
    ring

instance : LieAlgebra 𝕜 (LeftInvariantDerivation I G) where
  lie_smul r Y Z := by
    ext1
    simp only [commutator_apply, map_smul, smul_sub, coe_smul, Pi.smul_apply]

end LeftInvariantDerivation
```
