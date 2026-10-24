# Complete source: GRWTSK.Topology.GeneralTopology.Notation.Variant34db071e22af54576868c866476620e5202aed10ab15ebce6a39750bd3f79ae5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c26e19d8c9434977888ac9a6cbbd3f0b9d33c817` · SHA-256 `35054d3767a5b4da6505f27a53b472d65a4cdd3a3e5cd1c85e40eea31331d8e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ElabSingle.Variant360d55b92c7afdefb9aae592ced7a402162a6945fb47eb0afe59484e0e98fd12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"360d55b92c7afdefb9aae592ced7a402162a6945fb47eb0afe59484e0e98fd12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ElabSingle.Variant360d55b92c7afdefb9aae592ced7a402162a6945fb47eb0afe59484e0e98fd12","mathematical_subject":"Topology.GeneralTopology","original_sha256":"360d55b92c7afdefb9aae592ced7a402162a6945fb47eb0afe59484e0e98fd12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/DFinsupp/Notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.DFinsupp.Defs
import Mathlib.Data.Finsupp.Notation

/-!
# Notation for `DFinsupp`

This file extends the existing `fun₀ | 3 => a | 7 => b` notation to work for `DFinsupp`,
which desugars to `DFinsupp.update` and `DFinsupp.single`,
in the same way that `{a, b}` desugars to `insert` and `singleton`.

Note that this syntax is for `Finsupp` by default, but works for `DFinsupp` if the expected type
is correct.
-/


namespace GRWTSK.Topology.GeneralTopology.ElabSingle.Variant360d55b92c7afdefb9aae592ced7a402162a6945fb47eb0afe59484e0e98fd12

namespace DFinsupp

open Lean Parser Term

attribute [term_parser] Finsupp.stxSingle₀ Finsupp.stxUpdate₀

/-- `DFinsupp` elaborator for `single₀`. -/
@[term_elab Finsupp.stxSingle₀]
def elabSingle₀ : Elab.Term.TermElab
  | `(term| single₀ $i $x) => fun ty? => do
    Elab.Term.tryPostponeIfNoneOrMVar ty?
    let .some ty := ty? | Elab.throwUnsupportedSyntax
    let_expr DFinsupp _ _ _ := ← Meta.withReducible (Meta.whnf ty) | Elab.throwUnsupportedSyntax
    Elab.Term.elabTerm (← `(DFinsupp.single $i $x)) ty?
  | _ => fun _ => Elab.throwUnsupportedSyntax

/-- `DFinsupp` elaborator for `update₀`. -/
@[term_elab Finsupp.stxUpdate₀]
def elabUpdate₀ : Elab.Term.TermElab
  | `(term| update₀ $f $i $x) => fun ty? => do
    Elab.Term.tryPostponeIfNoneOrMVar ty?
    let .some ty := ty? | Elab.throwUnsupportedSyntax
    let_expr DFinsupp _ _ _ := ← Meta.withReducible (Meta.whnf ty) | Elab.throwUnsupportedSyntax
    Elab.Term.elabTerm (← `(DFinsupp.update $f $i $x)) ty?
  | _ => fun _ => Elab.throwUnsupportedSyntax

/-- Unexpander for the `fun₀ | i => x` notation. -/
@[app_unexpander DFinsupp.single]
def singleUnexpander : Lean.PrettyPrinter.Unexpander
  | `($_ $pat $val) => `(fun₀ | $pat => $val)
  | _ => throw ()

/-- Unexpander for the `fun₀ | i => x` notation. -/
@[app_unexpander DFinsupp.update]
def updateUnexpander : Lean.PrettyPrinter.Unexpander
  | `($_ $f $pat $val) => match f with
    | `(fun₀ $xs:matchAlt*) => `(fun₀ $xs:matchAlt* | $pat => $val)
    | _ => throw ()
  | _ => throw ()

/-- Display `DFinsupp` using `fun₀` notation. -/
unsafe instance {α : Type*} {β : α → Type*} [Repr α] [∀ i, Repr (β i)] [∀ i, Zero (β i)] :
    Repr (Π₀ a, β a) where
  reprPrec f p :=
    let vals :=
      ((f.support'.unquot.val.map fun i => (repr i, repr (f i))).filter
        (fun p => toString p.2 != "0")).unquot
    let vals_dedup := vals.foldl (fun xs x => x :: xs.eraseP (toString ·.1 == toString x.1)) []
    if vals.length = 0 then
      "0"
    else
      let ret : Std.Format := f!"fun₀" ++ .nest 2 (
        .group (.join <| vals_dedup.map fun a =>
          .line ++ .group (f!"| {a.1} =>" ++ .line ++ a.2)))
      if p ≥ leadPrec then Format.paren ret else ret

end DFinsupp
```
