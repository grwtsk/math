# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimprocDSL.Variant8ef0484dd35d6987c0f543a110b7deecc88a5f24b484b349a3e04ea6c9cffdcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a8f74c3aeaaa93d706151b627a39280e44b3f31` · SHA-256 `9e2cee43f17c630eef1c6a1ad467213b0fe61d51483255c29e2e0e6969d94034`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variantfe1dda07ace0ffd274be131076acf31f60a1c4015f2f267f20aced899870a1c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe1dda07ace0ffd274be131076acf31f60a1c4015f2f267f20aced899870a1c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactics.Variantfe1dda07ace0ffd274be131076acf31f60a1c4015f2f267f20aced899870a1c0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fe1dda07ace0ffd274be131076acf31f60a1c4015f2f267f20aced899870a1c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Sym/DSimp/DSimprocDSL.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Tactics

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variantfe1dda07ace0ffd274be131076acf31f60a1c4015f2f267f20aced899870a1c0

public section
namespace Lean.Parser.Sym.DSimp

/-!
# DSimproc DSL for `Sym.dsimp`

A syntax category for specifying `pre` and `post` dsimproc chains in `Sym.dsimp` variants.

## Primitives
- `ground` — evaluates ground (fully concrete) terms
- `beta` — beta reduction
- `zeta` - zeta reduction
- `zeta_delta [ids]` - zeta delta reduction
- `proj` - reduce projections
- `match` - reduce match-expressions

## Combinators
- `a >> b` — apply `a`, then apply `b` to the result (andThen)
- `a <|> b` — try `a`, if no progress try `b` (orElse)
-/

declare_syntax_cat sym_dsimproc (behavior := both)

-- Simproc primitives

/-- Do nothing -/
syntax (name := none) "none" : sym_dsimproc

/-- Evaluate ground (fully concrete) terms. -/
syntax (name := ground) "ground" : sym_dsimproc

/-- Beta reduction -/
syntax (name := beta) "beta" : sym_dsimproc

/-- zeta reduction. That is, expands let-expressions. -/
syntax (name := zeta) "zeta" : sym_dsimproc

/-- zeta delta reduction. That is, expands all let-declarations. -/
syntax (name := zetaDelta) "zeta_delta" : sym_dsimproc

/-- Projection reduction. -/
syntax (name := proj) "proj" : sym_dsimproc

/-- `match`-expression reduction. -/
syntax (name := reduceMatch) "match" : sym_dsimproc

-- DSimproc combinators

/-- Apply `a`, then apply `b` to the result. -/
syntax:60 (name := andThen) sym_dsimproc:61 " >> " sym_dsimproc:60 : sym_dsimproc

/-- Try `a`, if no progress try `b`. -/
syntax:20 (name := orElse) sym_dsimproc:21 " <|> " sym_dsimproc:20 : sym_dsimproc

/-- Parenthesized dsimproc expression. -/
syntax (name := dsimprocParen) "(" sym_dsimproc ")" : sym_dsimproc

end Lean.Parser.Sym.DSimp

/-!
## `register_sym_dsimp` command

Declares a named `Sym.dsimp` variant with `pre`/`post` simproc chains and optional config overrides.

```
register_sym_dsimp myVariant where
  pre  := match
  post := ground >> zeta_delta
```
-/

namespace Lean.Parser.Command

declare_syntax_cat sym_dsimp_field (behavior := both)

/-- Pre-processing simproc chain. -/
syntax (name := symDSimpFieldPre) "pre" " := " sym_dsimproc : sym_dsimp_field

/-- Post-processing simproc chain. -/
syntax (name := symDSimpFieldPost) "post" " := " sym_dsimproc : sym_dsimp_field

/-- Maximum number of simplification steps. -/
syntax (name := symDSimpFieldMaxSteps) "maxSteps" " := " num : sym_dsimp_field

/--
Register a named `Sym.dsimp` variant.

```
register_sym_dsimp myVariant where
  pre  := match
  post := ground >> zeta_delta
  maxSteps := 50000
```
-/
syntax (name := registerSymDSimp) "register_sym_dsimp" ident "where"
  (colGt sym_dsimp_field)* : command

end Lean.Parser.Command
````
