# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant2359df995da3a32c78bbe4e95206a145e322890933f358fcad7a1959b34bacaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef45a0bd198a048242650bf0158766aef6961832` · SHA-256 `76756714e86a56c336a07e21ad2c0ced8f21a0abd8f1bc60a1c2c417d265b678`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnitExt.Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UnitExt.Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Mario Carneiro
-/
module

prelude
public import Init.RCases


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnitExt.Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4

public section

namespace Lean
namespace Parser.Attr

/--
The flag `(iff := false)` prevents `ext` from generating an `ext_iff` lemma.
-/
syntax extIff := atomic("(" &"iff" " := " &"false" ")")

/--
The flag `(flat := false)` causes `ext` to not flatten parents' fields when generating an `ext` lemma.
-/
syntax extFlat := atomic("(" &"flat" " := " &"false" ")")

/--
Registers an extensionality theorem.

* When `@[ext]` is applied to a theorem, the theorem is registered for the `ext` tactic, and it generates an "`ext_iff`" theorem.
  The name of the theorem is from adding the suffix `_iff` to the theorem name.

* When `@[ext]` is applied to a structure, it generates an `.ext` theorem and applies the `@[ext]` attribute to it.
  The result is an `.ext` and an `.ext_iff` theorem with the `.ext` theorem registered for the `ext` tactic.

* An optional natural number argument, e.g. `@[ext 9000]`, specifies a priority for the `ext` lemma.
  Higher-priority lemmas are chosen first, and the default is `1000`.

* The flag `@[ext (iff := false)]` disables generating an `ext_iff` theorem.

* The flag `@[ext (flat := false)]` causes generated structure extensionality theorems to show inherited fields based on their representation,
  rather than flattening the parents' fields into the lemma's equality hypotheses.
-/
syntax (name := ext) "ext" (ppSpace extIff)? (ppSpace extFlat)? (ppSpace prio)? : attr
end Parser.Attr

-- TODO: rename this namespace?
namespace Elab.Tactic.Ext

/--
Applies extensionality lemmas that are registered with the `@[ext]` attribute.
* `ext pat*` applies extensionality theorems as much as possible,
  using the patterns `pat*` to introduce the variables in extensionality theorems using `rintro`.
  For example, the patterns are used to name the variables introduced by lemmas such as `funext`.
* Without patterns,`ext` applies extensionality lemmas as much
  as possible but introduces anonymous hypotheses whenever needed.
* `ext pat* : n` applies ext theorems only up to depth `n`.

The `ext1 pat*` tactic is like `ext pat*` except that it only applies a single extensionality theorem.

Unused patterns will generate warning.
Patterns that don't match the variables will typically result in the introduction of anonymous hypotheses.
-/
syntax (name := ext) "ext" (colGt ppSpace rintroPat)* (" : " num)? : tactic

/-- Apply a single extensionality theorem to the current goal. -/
syntax (name := applyExtTheorem) "apply_ext_theorem" : tactic

/--
`ext1 pat*` is like `ext pat*` except that it only applies a single extensionality theorem rather
than recursively applying as many extensionality theorems as possible.

The `pat*` patterns are processed using the `rintro` tactic.
If no patterns are supplied, then variables are introduced anonymously using the `intros` tactic.
-/
macro "ext1" xs:(colGt ppSpace rintroPat)* : tactic =>
  if xs.isEmpty then `(tactic| apply_ext_theorem <;> intros)
  else `(tactic| apply_ext_theorem <;> rintro $xs*)

end Elab.Tactic.Ext
end Lean

attribute [ext] Prod PProd Sigma PSigma
attribute [ext] funext propext Subtype.ext Array.ext Char.ext

attribute [grind ext] funext Array.ext

attribute [ext] PUnit.ext
protected theorem Unit.ext (x y : Unit) : x = y := rfl

@[ext] protected theorem Thunk.ext : {a b : Thunk α} → a.get = b.get → a = b
  | {..}, {..}, heq => congrArg _ <| funext fun _ => heq
```
