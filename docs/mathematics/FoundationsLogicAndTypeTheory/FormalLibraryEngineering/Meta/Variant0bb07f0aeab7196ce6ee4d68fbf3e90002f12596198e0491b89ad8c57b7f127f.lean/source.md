# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant0bb07f0aeab7196ce6ee4d68fbf3e90002f12596198e0491b89ad8c57b7f127f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5f520e115d3733b7db11ee371555cd0efbda27f` · SHA-256 `e25de1c89db5514ce836c24f8c78c700226679b2a4353c58b068feb11deb163c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant6ec5bbae3da3c03a6b0c9cdce2f60b6c2ac6f8c4eab112055d02673e81d706f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ec5bbae3da3c03a6b0c9cdce2f60b6c2ac6f8c4eab112055d02673e81d706f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Meta.Variant6ec5bbae3da3c03a6b0c9cdce2f60b6c2ac6f8c4eab112055d02673e81d706f5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6ec5bbae3da3c03a6b0c9cdce2f60b6c2ac6f8c4eab112055d02673e81d706f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Meta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura and Sebastian Ullrich

Additional goodies for writing macros
-/
module
prelude
public import Init.Meta.Defs
public meta import Init.Meta.Defs
public meta import Init.Syntax

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant6ec5bbae3da3c03a6b0c9cdce2f60b6c2ac6f8c4eab112055d02673e81d706f5

public section
namespace Lean

macro_rules
  | `(prec| $a + $b) => do `(prec| $(quote <| (← evalPrec a) + (← evalPrec b)):num)

macro_rules
  | `(prec| $a - $b) => do `(prec| $(quote <| (← evalPrec a) - (← evalPrec b)):num)

macro "eval_prec " p:prec:max : term => return quote (k := `term) (← evalPrec p)

macro_rules
  | `(prio| $a + $b) => do `(prio| $(quote <| (← evalPrio a) + (← evalPrio b)):num)

macro_rules
  | `(prio| $a - $b) => do `(prio| $(quote <| (← evalPrio a) - (← evalPrio b)):num)

macro "eval_prio " p:prio:max : term => return quote (k := `term) (← evalPrio p)

namespace Parser.Tactic

/-- `erw [rules]` is a shorthand for `rw (transparency := .default) [rules]`.
This does rewriting up to unfolding of regular definitions (by comparison to regular `rw`
which only unfolds `@[reducible]` definitions). -/
macro "erw" c:optConfig s:rwRuleSeq loc:(location)? : tactic => do
  `(tactic| rw $[$(getConfigItems c)]* (transparency := .default) $s:rwRuleSeq $(loc)?)

syntax simpAllKind := atomic(" (" &"all") " := " &"true" ")"
syntax dsimpKind   := atomic(" (" &"dsimp") " := " &"true" ")"

macro (name := declareSimpLikeTactic) doc?:(docComment)?
    "declare_simp_like_tactic" opt:((simpAllKind <|> dsimpKind)?)
    ppSpace tacName:ident ppSpace tacToken:str ppSpace cfg:optConfig : command => do
  let (kind, tkn, stx) ←
    if opt.raw.isNone then
      pure (← `(``simp), ← `("simp"), ← `($[$doc?:docComment]? syntax (name := $tacName) $tacToken:str optConfig (discharger)? (&" only")? (" [" (simpStar <|> simpErase <|> simpLemma),* "]")? (location)? : tactic))
    else if opt.raw[0].getKind == ``simpAllKind then
      pure (← `(``simpAll), ← `("simp_all"), ← `($[$doc?:docComment]? syntax (name := $tacName) $tacToken:str optConfig (discharger)? (&" only")? (" [" (simpErase <|> simpLemma),* "]")? : tactic))
    else
      pure (← `(``dsimp), ← `("dsimp"), ← `($[$doc?:docComment]? syntax (name := $tacName) $tacToken:str optConfig (discharger)? (&" only")? (" [" (simpErase <|> simpLemma),* "]")? (location)? : tactic))
  `($stx:command
    @[macro $tacName] meta def expandSimp : Macro := fun s => do
      let cfg ← `(optConfig| $cfg)
      let s := s.setKind $kind
      let s := s.setArg 0 (mkAtomFrom s[0] $tkn (canonical := true))
      let s := s.setArg 1 (appendConfig s[1] cfg)
      let s := s.mkSynthetic
      return s)

/-- `simp!` is shorthand for `simp` with `autoUnfold := true`.
This will unfold applications of functions defined by pattern matching, when one of the patterns applies.
This can be used to partially evaluate many definitions. -/
declare_simp_like_tactic simpAutoUnfold "simp! " (autoUnfold := true)

/--
`simp_arith` has been deprecated. It was a shorthand for `simp +arith +decide`.
Note that `+decide` is not needed for reducing arithmetic terms since simprocs have been added to Lean.
-/
syntax (name := simpArith) "simp_arith " optConfig (discharger)? (&" only")? (" [" (simpStar <|> simpErase <|> simpLemma),* "]")? (location)? : tactic

/--
`simp_arith!` has been deprecated. It was a shorthand for `simp! +arith +decide`.
Note that `+decide` is not needed for reducing arithmetic terms since simprocs have been added to Lean.
-/
syntax (name := simpArithBang) "simp_arith! " optConfig (discharger)? (&" only")? (" [" (simpStar <|> simpErase <|> simpLemma),* "]")? (location)? : tactic

/-- `simp_all!` is shorthand for `simp_all` with `autoUnfold := true`.
This will unfold applications of functions defined by pattern matching, when one of the patterns applies.
This can be used to partially evaluate many definitions. -/
declare_simp_like_tactic (all := true) simpAllAutoUnfold "simp_all! " (autoUnfold := true)

/--
`simp_all_arith` has been deprecated. It was a shorthand for `simp_all +arith +decide`.
Note that `+decide` is not needed for reducing arithmetic terms since simprocs have been added to Lean.
-/
syntax (name := simpAllArith) "simp_all_arith" optConfig (discharger)? (&" only")? (" [" (simpErase <|> simpLemma),* "]")? : tactic

/--
`simp_all_arith!` has been deprecated. It was a shorthand for `simp_all! +arith +decide`.
Note that `+decide` is not needed for reducing arithmetic terms since simprocs have been added to Lean.
-/
syntax (name := simpAllArithBang) "simp_all_arith!" optConfig (discharger)? (&" only")? (" [" (simpErase <|> simpLemma),* "]")? : tactic


/-- `dsimp!` is shorthand for `dsimp` with `autoUnfold := true`.
This will unfold applications of functions defined by pattern matching, when one of the patterns applies.
This can be used to partially evaluate many definitions. -/
declare_simp_like_tactic (dsimp := true) dsimpAutoUnfold "dsimp! " (autoUnfold := true)
```
