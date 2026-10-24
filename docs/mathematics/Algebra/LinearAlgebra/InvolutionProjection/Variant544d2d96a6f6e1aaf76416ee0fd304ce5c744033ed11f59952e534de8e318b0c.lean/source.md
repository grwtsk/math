# Complete source: GRWTSK.Algebra.LinearAlgebra.InvolutionProjection.Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f72e2e2ede90b344b33000883be057c7bf5724a0` · SHA-256 `86c622d0c81e6c1617a8005aaaeaafb2c68d57e744b31c86b8d1ad4d08cd9248`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BitMatrixAlgebraInvolutionProjection.Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BitMatrixAlgebraInvolutionProjection.Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Algebra/InvolutionProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Geometry.GlobalProjection
import BitMatrix.FiniteField.Galois
import DAF.FiniteDynamics.Involution
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Binary matrix realization of a certified finite involution

The state action is encoded as a Boolean permutation matrix and separately as
a matrix over `ZMod 2`.  The two representations are connected entrywise.
The resulting `ZMod 2` action squares to the identity, but its determinant is
not used to infer integral permutation parity, orientation, or move legality.
-/


namespace GRWTSK.Algebra.LinearAlgebra.BitMatrixAlgebraInvolutionProjection.Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6

open FinitePermutationDynamics

/-- Exact Boolean and `GF(2)` realization of a finite certified involution. -/
structure BitMatrix.Algebra.InvolutionProjection
    (X : Type*) [Fintype X] [DecidableEq X] where
  width : Nat
  encode : X ≃ Fin width
  source : CertifiedInvolution X
  actionMatrix : BitMatrix width width
  action_spec :
    ∀ i j, actionMatrix i j = true ↔
      encode (source.act (encode.symm j)) = i
  f2Matrix : Matrix (Fin width) (Fin width) (ZMod 2)
  f2_spec :
    ∀ i j, f2Matrix i j = if actionMatrix i j then 1 else 0

namespace BitMatrix.Algebra.InvolutionProjection

variable {X : Type*} [Fintype X] [DecidableEq X]

/-- Canonical realization generated directly from the certified action. -/
def ofCertified
    (width : Nat) (encode : X ≃ Fin width)
    (source : CertifiedInvolution X) : BitMatrix.Algebra.InvolutionProjection X where
  width := width
  encode := encode
  source := source
  actionMatrix i j := decide (encode (source.act (encode.symm j)) = i)
  action_spec i j := by simp
  f2Matrix i j := if decide (encode (source.act (encode.symm j)) = i) then 1 else 0
  f2_spec _ _ := rfl

variable (P : BitMatrix.Algebra.InvolutionProjection X)

theorem actionMatrix_eq_iff (i j : Fin P.width) :
    P.actionMatrix i j = true ↔
      P.encode (P.source.act (P.encode.symm j)) = i :=
  P.action_spec i j

/-- Exactly one matrix row is selected in each column. -/
theorem existsUnique_true_in_column (j : Fin P.width) :
    ∃! i, P.actionMatrix i j = true := by
  let i := P.encode (P.source.act (P.encode.symm j))
  refine ⟨i, (P.action_spec i j).mpr rfl, ?_⟩
  intro k hk
  exact ((P.action_spec k j).mp hk).symm

/-- Involutivity supplies the unique preimage selected in every row. -/
theorem existsUnique_true_in_row (i : Fin P.width) :
    ∃! j, P.actionMatrix i j = true := by
  let j := P.encode (P.source.act (P.encode.symm i))
  refine ⟨j, ?_, ?_⟩
  · apply (P.action_spec i j).mpr
    simp [j]
  · intro k hk
    have hstate : P.source.act (P.encode.symm k) = P.encode.symm i := by
      apply P.encode.injective
      simpa using (P.action_spec i k).mp hk
    have hkstate :
        P.encode.symm k = P.source.act (P.encode.symm i) := by
      have hact := congrArg P.source.act hstate
      simpa using hact
    apply P.encode.symm.injective
    simpa [j] using hkstate

theorem actionMatrix_column (i j : Fin P.width) :
    P.actionMatrix i j = true ↔
      i = P.encode (P.source.act (P.encode.symm j)) := by
  rw [P.action_spec]
  exact eq_comm

/-- Entry formula independent of the intermediate Boolean representation. -/
theorem f2Matrix_eq_ite (i j : Fin P.width) :
    P.f2Matrix i j =
      if P.encode (P.source.act (P.encode.symm j)) = i then 1 else 0 := by
  rw [P.f2_spec]
  by_cases h : P.encode (P.source.act (P.encode.symm j)) = i
  · have hb : P.actionMatrix i j = true := (P.action_spec i j).mpr h
    simp [hb, h]
  · have hb : P.actionMatrix i j = false := by
      cases hvalue : P.actionMatrix i j
      · rfl
      · exact False.elim (h ((P.action_spec i j).mp hvalue))
    simp [hb, h]

/-- One-hot vector representing a state under the selected encoding. -/
def stateVector (x : X) : Fin P.width → ZMod 2 :=
  fun i => if P.encode x = i then 1 else 0

@[simp]
theorem stateVector_apply (x : X) (i : Fin P.width) :
    P.stateVector x i = if P.encode x = i then 1 else 0 :=
  rfl

/-- Matrix action commutes with the encoded state action. -/
theorem mulVec_stateVector (x : X) :
    P.f2Matrix.mulVec (P.stateVector x) =
      P.stateVector (P.source.act x) := by
  funext i
  classical
  rw [Matrix.mulVec, dotProduct]
  let j := P.encode x
  rw [Finset.sum_eq_single j]
  · simp [P.f2Matrix_eq_ite, stateVector, j]
  · intro b _ hb
    have hne : P.encode x ≠ b := by simpa [j] using hb.symm
    simp [stateVector, hne]
  · simp

/-- The `GF(2)` permutation matrix of the involution squares to identity. -/
theorem f2Matrix_mul_self : P.f2Matrix * P.f2Matrix = 1 := by
  ext i j
  classical
  rw [Matrix.mul_apply]
  let k := P.encode (P.source.act (P.encode.symm j))
  rw [Finset.sum_eq_single k]
  · simp [P.f2Matrix_eq_ite, k, Matrix.one_apply, eq_comm]
  · intro b _ hb
    have hne : P.encode (P.source.act (P.encode.symm j)) ≠ b := by
      simpa [k] using hb.symm
    simp [P.f2Matrix_eq_ite, hne]
  · simp

/-- Associated linear map on `GF(2)` vectors. -/
def f2LinearMap :
    (Fin P.width → ZMod 2) →ₗ[ZMod 2] (Fin P.width → ZMod 2) :=
  Matrix.mulVecLin P.f2Matrix

@[simp]
theorem f2LinearMap_apply (v : Fin P.width → ZMod 2) :
    P.f2LinearMap v = P.f2Matrix.mulVec v :=
  rfl

@[simp]
theorem f2LinearMap_involutive (v : Fin P.width → ZMod 2) :
    P.f2LinearMap (P.f2LinearMap v) = v := by
  change P.f2Matrix.mulVec (P.f2Matrix.mulVec v) = v
  rw [Matrix.mulVec_mulVec, P.f2Matrix_mul_self]
  simp

/-- The matrix action as a self-inverse linear equivalence. -/
def f2LinearEquiv :
    (Fin P.width → ZMod 2) ≃ₗ[ZMod 2] (Fin P.width → ZMod 2) where
  toFun := P.f2LinearMap
  invFun := P.f2LinearMap
  map_add' := P.f2LinearMap.map_add
  map_smul' := P.f2LinearMap.map_smul
  left_inv := P.f2LinearMap_involutive
  right_inv := P.f2LinearMap_involutive

theorem f2LinearMap_injective : Function.Injective P.f2LinearMap := by
  intro u v h
  calc
    u = P.f2LinearMap (P.f2LinearMap u) :=
      (P.f2LinearMap_involutive u).symm
    _ = P.f2LinearMap (P.f2LinearMap v) := congrArg P.f2LinearMap h
    _ = v := P.f2LinearMap_involutive v

theorem f2LinearMap_ker : P.f2LinearMap.ker = ⊥ := by
  rw [LinearMap.ker_eq_bot']
  intro v hv
  calc
    v = P.f2LinearMap (P.f2LinearMap v) :=
      (P.f2LinearMap_involutive v).symm
    _ = P.f2LinearMap 0 := by rw [hv]
    _ = 0 := P.f2LinearMap.map_zero

end BitMatrix.Algebra.InvolutionProjection
```
