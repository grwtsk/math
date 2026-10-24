# Complete source: GRWTSK.Algebra.LinearAlgebra.Curry.Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5074fccd45a79860952b5b6667b717155c2f0cf` · SHA-256 `598a9e2b6c12f046fea31a5b228ea74fc8c7cace438c5c37c28a3a192a638be7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CurryLeft.Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CurryLeft.Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Alternating/Curry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.Alternating.Basic
import Mathlib.LinearAlgebra.Multilinear.Curry

/-!
# Currying alternating forms

In this file we define `AlternatingMap.curryLeft`
which interprets an alternating map in `n + 1` variables
as a linear map in the 0th variable taking values in the alternating maps in `n` variables.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CurryLeft.Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768

variable {R : Type*} {M M₂ N N₂ : Type*} [CommSemiring R] [AddCommMonoid M]
  [AddCommMonoid M₂] [AddCommMonoid N] [AddCommMonoid N₂] [Module R M] [Module R M₂]
  [Module R N] [Module R N₂]

namespace AlternatingMap

/-- Given an alternating map `f` in `n+1` variables, split the first variable to obtain
a linear map into alternating maps in `n` variables, given by `x ↦ (m ↦ f (Matrix.vecCons x m))`.
It can be thought of as a map $Hom(\bigwedge^{n+1} M, N) \to Hom(M, Hom(\bigwedge^n M, N))$.

This is `MultilinearMap.curryLeft` for `AlternatingMap`. See also
`AlternatingMap.curryLeftLinearMap`. -/
@[simps]
def curryLeft {n : ℕ} (f : M [⋀^Fin n.succ]→ₗ[R] N) :
    M →ₗ[R] M [⋀^Fin n]→ₗ[R] N where
  toFun m :=
    { f.toMultilinearMap.curryLeft m with
      toFun := fun v => f (Matrix.vecCons m v)
      map_eq_zero_of_eq' := fun v i j hv hij =>
        f.map_eq_zero_of_eq _ (by
          rwa [Matrix.cons_val_succ, Matrix.cons_val_succ]) ((Fin.succ_injective _).ne hij) }
  map_add' _ _ := ext fun _ => f.map_vecCons_add _ _ _
  map_smul' _ _ := ext fun _ => f.map_vecCons_smul _ _ _

@[simp]
theorem curryLeft_zero {n : ℕ} : curryLeft (0 : M [⋀^Fin n.succ]→ₗ[R] N) = 0 :=
  rfl

@[simp]
theorem curryLeft_add {n : ℕ} (f g : M [⋀^Fin n.succ]→ₗ[R] N) :
    curryLeft (f + g) = curryLeft f + curryLeft g :=
  rfl

@[simp]
theorem curryLeft_smul {n : ℕ} (r : R) (f : M [⋀^Fin n.succ]→ₗ[R] N) :
    curryLeft (r • f) = r • curryLeft f :=
  rfl

/-- `AlternatingMap.curryLeft` as a `LinearMap`. This is a separate definition as dot notation
does not work for this version. -/
@[simps]
def curryLeftLinearMap {n : ℕ} :
    (M [⋀^Fin n.succ]→ₗ[R] N) →ₗ[R] M →ₗ[R] M [⋀^Fin n]→ₗ[R] N where
  toFun f := f.curryLeft
  map_add' := curryLeft_add
  map_smul' := curryLeft_smul

/-- Currying with the same element twice gives the zero map. -/
@[simp]
theorem curryLeft_same {n : ℕ} (f : M [⋀^Fin n.succ.succ]→ₗ[R] N) (m : M) :
    (f.curryLeft m).curryLeft m = 0 :=
  ext fun _ => f.map_eq_zero_of_eq _ (by simp) Fin.zero_ne_one

@[simp]
theorem curryLeft_compAlternatingMap {n : ℕ} (g : N →ₗ[R] N₂)
    (f : M [⋀^Fin n.succ]→ₗ[R] N) (m : M) :
    (g.compAlternatingMap f).curryLeft m = g.compAlternatingMap (f.curryLeft m) :=
  rfl

@[simp]
theorem curryLeft_compLinearMap {n : ℕ} (g : M₂ →ₗ[R] M) (f : M [⋀^Fin n.succ]→ₗ[R] N) (m : M₂) :
    (f.compLinearMap g).curryLeft m = (f.curryLeft (g m)).compLinearMap g :=
  ext fun v => congr_arg f <| funext <| by
    refine Fin.cases ?_ ?_
    · rfl
    · simp

end AlternatingMap

```
