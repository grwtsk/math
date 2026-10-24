# Complete source: GRWTSK.Algebra.UniversalAlgebra.RightActions.Variant2571b3ab69e11905cf6c2aa1a97526c6fe128da56d52d51eeb44e495afd0862d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36aef71ccdd1fcf5ea663566cc97f2dd87c248f7` · SHA-256 `e83517fde281328bee3361866ec96a22a85a4ef132d20c68b158138b518e420d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Opposite.Variantbf89cf35e7767b9212845ef86222bd96a2276a508e6bfe7c4198f4e68f3f7196","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf89cf35e7767b9212845ef86222bd96a2276a508e6bfe7c4198f4e68f3f7196","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Opposite.Variantbf89cf35e7767b9212845ef86222bd96a2276a508e6bfe7c4198f4e68f3f7196","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"bf89cf35e7767b9212845ef86222bd96a2276a508e6bfe7c4198f4e68f3f7196","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/right_actions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.GroupWithZero.Action.Opposite


namespace GRWTSK.Algebra.UniversalAlgebra.Opposite.Variantbf89cf35e7767b9212845ef86222bd96a2276a508e6bfe7c4198f4e68f3f7196

open MulOpposite renaming op → mop
open AddOpposite renaming op → aop

variable {α β : Type*} [SMul α β] [SMul αᵐᵒᵖ β] [VAdd α β] [VAdd αᵃᵒᵖ β] {a a₁ a₂ a₃ a₄ : α} {b : β}

section delaborators

section without_scope

/-- info: a • b : β -/
#guard_msgs in
#check a • b

/-- info: MulOpposite.op a • b : β -/
#guard_msgs in
#check mop a • b

/-- info: a +ᵥ b : β -/
#guard_msgs in
#check a +ᵥ b

/-- info: AddOpposite.op a +ᵥ b : β -/
#guard_msgs in
#check aop a +ᵥ b

end without_scope

section with_scope
open scoped RightActions

/-- info: a •> b : β -/
#guard_msgs in
#check a • b

/-- info: b <• a : β -/
#guard_msgs in
#check mop a • b

/-- info: a +ᵥ> b : β -/
#guard_msgs in
#check a +ᵥ b

/-- info: b <+ᵥ a : β -/
#guard_msgs in
#check aop a +ᵥ b

end with_scope

end delaborators

open scoped RightActions

example : a •> b = a • b := rfl
example : b <• a = mop a • b := rfl

example : a +ᵥ> b = a +ᵥ b := rfl
example : b <+ᵥ a = aop a +ᵥ b := rfl

-- Left actions right-associate, right actions left-associate
example : a₁ •> a₂ •> b = a₁ •> (a₂ •> b) := rfl
example : b <• a₂ <• a₁ = (b <• a₂) <• a₁ := rfl

example : a₁ +ᵥ> a₂ +ᵥ> b = a₁ +ᵥ> (a₂ +ᵥ> b) := rfl
example : b <+ᵥ a₂ <+ᵥ a₁ = (b <+ᵥ a₂) <+ᵥ a₁ := rfl

-- When left and right actions coexist, they associate to the left
example : a₁ •> b <• a₂ = (a₁ •> b) <• a₂ := rfl
example : a₁ •> a₂ •> b <• a₃ <• a₄ = ((a₁ •> (a₂ •> b)) <• a₃) <• a₄ := rfl

example : a₁ +ᵥ> b <+ᵥ a₂ = (a₁ +ᵥ> b) <+ᵥ a₂ := rfl
example : a₁ +ᵥ> a₂ +ᵥ> b <+ᵥ a₃ <+ᵥ a₄ = ((a₁ +ᵥ> (a₂ +ᵥ> b)) <+ᵥ a₃) <+ᵥ a₄ := rfl

-- association is chosen to match multiplication and addition
example {M} [Mul M] {x y z : M} : x •> y <• z = x * y * z := rfl
example {A} [Add A] {x y z : A} : x +ᵥ> y <+ᵥ z = x + y + z := rfl
```
