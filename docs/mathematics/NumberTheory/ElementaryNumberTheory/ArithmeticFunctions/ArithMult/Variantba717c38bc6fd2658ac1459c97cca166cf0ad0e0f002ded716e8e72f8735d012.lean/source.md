# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithMult.Variantba717c38bc6fd2658ac1459c97cca166cf0ad0e0f002ded716e8e72f8735d012

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7102f0c1a959b95da85ed6a87b620733d927ae2b` · SHA-256 `5b4177ce5b736ae39f53329e0a48f9e7a90fc6166bdf3fd82a80540016550bf2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Tactic.Variant6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.Tactic.Variant6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ArithMult.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Arend Mellendijk. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arend Mellendijk
-/

import Mathlib.Tactic.Basic
import Mathlib.Tactic.ArithMult.Init

/-!
# Multiplicativity

We define the arith_mult tactic using aesop

-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Tactic.Variant6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b

namespace ArithmeticFunction

/--
The `arith_mult` attribute used to tag `IsMultiplicative` statements for the
`arith_mult` tactic. -/
macro "arith_mult" : attr =>
  `(attr|aesop safe apply (rule_sets := [$(Lean.mkIdent `IsMultiplicative):ident]))

/--
`arith_mult` solves goals of the form `IsMultiplicative f` for `f : ArithmeticFunction R`
by applying lemmas tagged with the user attribute `arith_mult`. -/
macro (name := arith_mult) "arith_mult" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  { aesop $c* (config :=
    { destructProductsTransparency := .reducible,
      applyHypsTransparency := .default,
      introsTransparency? := some .reducible,
      enableSimp := false } )
  (rule_sets := [$(Lean.mkIdent `IsMultiplicative):ident])})

/--
`arith_mult` solves goals of the form `IsMultiplicative f` for `f : ArithmeticFunction R`
by applying lemmas tagged with the user attribute `arith_mult`, and prints out the generated
proof term. -/
macro (name := arith_mult?) "arith_mult?" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  { show_term { arith_mult $c* } })

end ArithmeticFunction
```
