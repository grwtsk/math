# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variant95b22f5907f4ccd53d5d3b24cfe3a736ffc63faebbd0b5620d04674a416d7406

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2fedc75f2d1818041af8711db50ad103ba5adb7` · SHA-256 `cad5002c3560aad17285e3fc6684de7c9e6099f808650c9c8e1b39322d73dc44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunMatchAlts.Variant01e158c2c2ac0249aae9eb4bd2bd6f01caacbb241affe9a2831e9ecb5cbdd7db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01e158c2c2ac0249aae9eb4bd2bd6f01caacbb241affe9a2831e9ecb5cbdd7db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FunMatchAlts.Variant01e158c2c2ac0249aae9eb4bd2bd6f01caacbb241affe9a2831e9ecb5cbdd7db","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"01e158c2c2ac0249aae9eb4bd2bd6f01caacbb241affe9a2831e9ecb5cbdd7db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finsupp/Notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.Finsupp.Single

/-!
# Notation for `Finsupp`

This file provides `fun₀ | 3 => a | 7 => b` notation for `Finsupp`, which desugars to
`Finsupp.update` and `Finsupp.single`, in the same way that `{a, b}` desugars to `insert` and
`singleton`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunMatchAlts.Variant01e158c2c2ac0249aae9eb4bd2bd6f01caacbb241affe9a2831e9ecb5cbdd7db

namespace Finsupp

open Lean Parser Term

-- A variant of `Lean.Parser.Term.matchAlts` with less line wrapping.
@[nolint docBlame] -- we do not want any doc hover on this notation.
def fun₀.matchAlts : Parser :=
  leading_parser withPosition <| ppRealGroup <| many1Indent (ppSpace >> ppGroup matchAlt)

/-- `fun₀ | i => a` is notation for `Finsupp.single i a`, and with multiple match arms,
`fun₀ ... | i => a` is notation for `Finsupp.update (fun₀ ...) i a`.

As a result, if multiple match arms coincide, the last one takes precedence. -/
@[term_parser]
def fun₀ := leading_parser:maxPrec
  ppAllowUngrouped >> unicodeSymbol "λ₀" "fun₀" >> fun₀.matchAlts

/-- Implementation detail for `fun₀`, used by both `Finsupp` and `DFinsupp` -/
local syntax:lead (name := stxSingle₀) "single₀" term:arg term:arg : term
/-- Implementation detail for `fun₀`, used by both `Finsupp` and `DFinsupp` -/
local syntax:lead (name := stxUpdate₀) "update₀" term:arg term:arg term:arg : term

/-- `Finsupp` elaborator for `single₀`. -/
@[term_elab stxSingle₀]
def elabSingle₀ : Elab.Term.TermElab
  | `(term| single₀ $i $x) => fun ty => do Elab.Term.elabTerm (← `(Finsupp.single $i $x)) ty
  | _ => fun _ => Elab.throwUnsupportedSyntax

/-- `Finsupp` elaborator for `update₀`. -/
@[term_elab stxUpdate₀]
def elabUpdate₀ : Elab.Term.TermElab
  | `(term| update₀ $f $i $x) => fun ty => do Elab.Term.elabTerm (← `(Finsupp.update $f $i $x)) ty
  | _ => fun _ => Elab.throwUnsupportedSyntax

macro_rules
  | `(term| fun₀ $x:matchAlt*) => do
    let mut stx : Term ← `(0)
    let mut fst : Bool := true
    for xi in x do
      for xii in (← Elab.Term.expandMatchAlt xi) do
        match xii with
        | `(matchAltExpr| | $pat => $val) =>
          if fst then
            stx ← `(single₀ $pat $val)
          else
            stx ← `(update₀ $stx $pat $val)
          fst := false
        | _ => Macro.throwUnsupported
    pure stx

/-- Unexpander for the `fun₀ | i => x` notation. -/
@[app_unexpander Finsupp.single]
def singleUnexpander : Lean.PrettyPrinter.Unexpander
  | `($_ $pat $val) => `(fun₀ | $pat => $val)
  | _ => throw ()

/-- Unexpander for the `fun₀ | i => x` notation. -/
@[app_unexpander Finsupp.update]
def updateUnexpander : Lean.PrettyPrinter.Unexpander
  | `($_ $f $pat $val) => match f with
    | `(fun₀ $xs:matchAlt*) => `(fun₀ $xs:matchAlt* | $pat => $val)
    | _ => throw ()
  | _ => throw ()

/-- Display `Finsupp` using `fun₀` notation. -/
unsafe instance instRepr {α β} [Repr α] [Repr β] [Zero β] : Repr (α →₀ β) where
  reprPrec f p :=
    if f.support.card = 0 then
      "0"
    else
      let ret : Std.Format := f!"fun₀" ++ .nest 2 (
        .group (.join <| f.support.val.unquot.map fun a =>
          .line ++ .group (f!"| {repr a} =>" ++ .line ++ repr (f a))))
      if p ≥ leadPrec then Format.paren ret else ret

-- This cannot be put in `Mathlib/Data/DFinsupp/Notation.lean` where it belongs, since doc-strings
-- can only be added/modified in the file where the corresponding declaration is defined.
extend_docs Finsupp.fun₀ after
  "If the expected type is `Π₀ i, α i` (`DFinsupp`)
  and `Mathlib/Data/DFinsupp/Notation.lean` is imported,
  then this is notation for `DFinsupp.single` and  `Dfinsupp.update` instead."

end Finsupp
```
