# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Constructor.Variant071f46e4f347464b171255f416e65bb2725583bef8a93a28e4fe8ef0ee3c7fe7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd200a7cf4c5500338a998f8e14d6fe3f7090c85` · SHA-256 `7eef1714c86e1ab6398dbf97710f4eabab7dd799cbad9934b20054fa8c53341a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SyntheticMVars.Variantec1931f7524867b495f7ca55269cd9f47b7c7dfee6a1c83c1f5017bf86d4fa42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec1931f7524867b495f7ca55269cd9f47b7c7dfee6a1c83c1f5017bf86d4fa42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SyntheticMVars.Variantec1931f7524867b495f7ca55269cd9f47b7c7dfee6a1c83c1f5017bf86d4fa42","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ec1931f7524867b495f7ca55269cd9f47b7c7dfee6a1c83c1f5017bf86d4fa42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Constructor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Newell Jensen
-/
import Mathlib.Init
import Lean.Elab.SyntheticMVars
import Lean.Meta.Tactic.Constructor

/-!
# The `fconstructor` and `econstructor` tactics

The `fconstructor` and `econstructor` tactics are variants of the `constructor` tactic in Lean core,
except that
- `fconstructor` does not reorder goals
- `econstructor` adds only non-dependent premises as new goals.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SyntheticMVars.Variantec1931f7524867b495f7ca55269cd9f47b7c7dfee6a1c83c1f5017bf86d4fa42

open Lean Elab Tactic

/--
`fconstructor` is like `constructor`
(it calls `apply` using the first matching constructor of an inductive datatype)
except that it does not reorder goals.
-/
elab "fconstructor" : tactic => withMainContext do
  let mvarIds' ← (← getMainGoal).constructor {newGoals := .all}
  Term.synthesizeSyntheticMVarsNoPostponing
  replaceMainGoal mvarIds'

/--
`econstructor` is like `constructor`
(it calls `apply` using the first matching constructor of an inductive datatype)
except only non-dependent premises are added as new goals.
-/
elab "econstructor" : tactic => withMainContext do
  let mvarIds' ← (← getMainGoal).constructor {newGoals := .nonDependentOnly}
  Term.synthesizeSyntheticMVarsNoPostponing
  replaceMainGoal mvarIds'
```
