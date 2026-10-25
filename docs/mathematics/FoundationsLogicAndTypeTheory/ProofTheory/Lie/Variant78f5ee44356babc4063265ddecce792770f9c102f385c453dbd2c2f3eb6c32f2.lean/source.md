# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Lie.Variant78f5ee44356babc4063265ddecce792770f9c102f385c453dbd2c2f3eb6c32f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd45e31035d97d0acef146026a36c28daadc4695` · SHA-256 `53eb4359846253b728a4cbe502a5ecd7f439a2af141e3c92174001c0e8007671`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CommutatorCoeLinearMap.Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.CommutatorCoeLinearMap.Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f","mathematical_subject":"Logic.ProofTheory","original_sha256":"0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/RingTheory/Derivation/Lie.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright © 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri, Andrew Yang
-/
import Mathlib.Algebra.Lie.OfAssociative
import Mathlib.RingTheory.Derivation.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CommutatorCoeLinearMap.Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f

#align_import ring_theory.derivation.lie from "leanprover-community/mathlib"@"b608348ffaeb7f557f2fd46876037abafd326ff3"

/-!
# Results

- `Derivation.instLieAlgebra`: The `R`-derivations from `A` to `A` form a Lie algebra over `R`.

-/


namespace Derivation

variable {R : Type*} [CommRing R]

variable {A : Type*} [CommRing A] [Algebra R A]

variable (D : Derivation R A A) {D1 D2 : Derivation R A A} (a : A)

section LieStructures

/-! # Lie structures -/


/-- The commutator of derivations is again a derivation. -/
instance : Bracket (Derivation R A A) (Derivation R A A) :=
  ⟨fun D1 D2 =>
    mk' ⁅(D1 : Module.End R A), (D2 : Module.End R A)⁆ fun a b => by
      simp only [Ring.lie_def, map_add, Algebra.id.smul_eq_mul, LinearMap.mul_apply, leibniz,
        coeFn_coe, LinearMap.sub_apply]
      ring⟩

@[simp]
theorem commutator_coe_linear_map : ↑⁅D1, D2⁆ = ⁅(D1 : Module.End R A), (D2 : Module.End R A)⁆ :=
  rfl
#align derivation.commutator_coe_linear_map Derivation.commutator_coe_linear_map

theorem commutator_apply : ⁅D1, D2⁆ a = D1 (D2 a) - D2 (D1 a) :=
  rfl
#align derivation.commutator_apply Derivation.commutator_apply

instance : LieRing (Derivation R A A) where
  add_lie d e f := by ext a; simp only [commutator_apply, add_apply, map_add]; ring
  lie_add d e f := by ext a; simp only [commutator_apply, add_apply, map_add]; ring
  lie_self d := by ext a; simp only [commutator_apply, add_apply, map_add]; ring_nf; simp
  leibniz_lie d e f := by ext a; simp only [commutator_apply, add_apply, sub_apply, map_sub]; ring

instance instLieAlgebra: LieAlgebra R (Derivation R A A) :=
  { Derivation.instModule with
    lie_smul := fun r d e => by
      ext a; simp only [commutator_apply, map_smul, smul_sub, smul_apply] }

end LieStructures

end Derivation
```
