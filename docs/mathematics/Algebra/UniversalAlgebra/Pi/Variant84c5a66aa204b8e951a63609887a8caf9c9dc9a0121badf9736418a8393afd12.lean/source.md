# Complete source: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2982fb62ed21fb946eed28eb9d73c16036fd088` · SHA-256 `07cdc02767b5a2970c6227c7774248f4f0532da67baa5cdc34253079c9e6c929`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.RootIsSMulRegularPi.Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.RootIsSMulRegularPi.Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon, Patrick Massot
-/
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Regular.SMul
import Mathlib.Algebra.Ring.Pi

/-!
# Pi instances for modules

This file defines instances for module and related structures on Pi Types
-/



namespace GRWTSK.Algebra.UniversalAlgebra.RootIsSMulRegularPi.Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b

universe u v w

variable {I : Type u}

-- The indexing type
variable {f : I → Type v}

namespace Pi

theorem _root_.GRWTSK.Algebra.UniversalAlgebra.RootIsSMulRegularPi.Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.IsSMulRegular.pi {α : Type*} [∀ i, SMul α <| f i] {k : α}
    (hk : ∀ i, IsSMulRegular (f i) k) : IsSMulRegular (∀ i, f i) k := fun _ _ h =>
  funext fun i => hk i (congr_fun h i :)

instance smulWithZero (α) [Zero α] [∀ i, Zero (f i)] [∀ i, SMulWithZero α (f i)] :
    SMulWithZero α (∀ i, f i) :=
  { Pi.instSMul with
    smul_zero := fun _ => funext fun _ => smul_zero _
    zero_smul := fun _ => funext fun _ => zero_smul _ _ }

instance smulWithZero' {g : I → Type*} [∀ i, Zero (g i)] [∀ i, Zero (f i)]
    [∀ i, SMulWithZero (g i) (f i)] : SMulWithZero (∀ i, g i) (∀ i, f i) :=
  { Pi.smul' with
    smul_zero := fun _ => funext fun _ => smul_zero _
    zero_smul := fun _ => funext fun _ => zero_smul _ _ }

instance mulActionWithZero (α) [MonoidWithZero α] [∀ i, Zero (f i)]
    [∀ i, MulActionWithZero α (f i)] : MulActionWithZero α (∀ i, f i) :=
  { Pi.mulAction _, Pi.smulWithZero _ with }

instance mulActionWithZero' {g : I → Type*} [∀ i, MonoidWithZero (g i)] [∀ i, Zero (f i)]
    [∀ i, MulActionWithZero (g i) (f i)] : MulActionWithZero (∀ i, g i) (∀ i, f i) :=
  { Pi.mulAction', Pi.smulWithZero' with }

variable (I f)

instance module (α) {r : Semiring α} {m : ∀ i, AddCommMonoid <| f i} [∀ i, Module α <| f i] :
    @Module α (∀ i : I, f i) r (@Pi.addCommMonoid I f m) :=
  { Pi.distribMulAction _ with
    add_smul := fun _ _ _ => funext fun _ => add_smul _ _ _
    zero_smul := fun _ => funext fun _ => zero_smul α _ }

/- Extra instance to short-circuit type class resolution.
For unknown reasons, this is necessary for certain inference problems. E.g., for this to succeed:
```lean
example (β X : Type*) [NormedAddCommGroup β] [NormedSpace ℝ β] : Module ℝ (X → β) := inferInstance
```
See: https://leanprover.zulipchat.com/#narrow/stream/113488-general/topic/Typeclass.20resolution.20under.20binders/near/281296989
-/
/-- A special case of `Pi.module` for non-dependent types. Lean struggles to elaborate
definitions elsewhere in the library without this. -/
instance Function.module (α β : Type*) [Semiring α] [AddCommMonoid β] [Module α β] :
    Module α (I → β) :=
  Pi.module _ _ _

variable {I f}

instance module' {g : I → Type*} {r : ∀ i, Semiring (f i)} {m : ∀ i, AddCommMonoid (g i)}
    [∀ i, Module (f i) (g i)] : Module (∀ i, f i) (∀ i, g i) where
  add_smul := by
    intros
    ext1
    apply add_smul
  zero_smul := by
    intros
    ext1
    rw [zero_smul]

end Pi
````
