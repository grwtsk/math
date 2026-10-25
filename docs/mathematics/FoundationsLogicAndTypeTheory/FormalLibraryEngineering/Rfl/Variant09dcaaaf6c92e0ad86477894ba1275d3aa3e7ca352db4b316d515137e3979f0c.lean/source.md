# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variant09dcaaaf6c92e0ad86477894ba1275d3aa3e7ca352db4b316d515137e3979f0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6e6faff318c31cf0173b0fab9ba7c320dc97191` · SHA-256 `fe24f5374f541ee8127dc21d0ec3b31c36574fd71d07122b010112132016628b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variantf72f8008d4080b2f9984e74b1b989e464f39ff48b5ab2cc481b2d1041dfe8d60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f72f8008d4080b2f9984e74b1b989e464f39ff48b5ab2cc481b2d1041dfe8d60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attribute.Variantf72f8008d4080b2f9984e74b1b989e464f39ff48b5ab2cc481b2d1041dfe8d60","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f72f8008d4080b2f9984e74b1b989e464f39ff48b5ab2cc481b2d1041dfe8d60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/BuiltinRules/Rfl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variantf72f8008d4080b2f9984e74b1b989e464f39ff48b5ab2cc481b2d1041dfe8d60

public section

open Lean Lean.Elab.Tactic

namespace Aesop.BuiltinRules

@[aesop safe 0 (rule_sets := [builtin])]
meta def rfl : RuleTac :=
  RuleTac.ofTacticSyntax λ _ => `(tactic| rfl)

end Aesop.BuiltinRules
```
