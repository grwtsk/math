# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DelabNonCanonical.Variant832051fd5026f7c7e3eaf40d90949e0f68446ce8d1a83cb2d747ab846607831c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ba629a58084e505d3250e7ab2b7e09f4d2c7ba6` · SHA-256 `7cebb9fe77b66bf1b2c48c9edd7148993cb59a8f8916cb4920bd8495c35cf696`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMetaIsCanonicalInstance.Variantd705efed2062bcdb0e0149cceaa169d2248e643c996adac8c759862e76992d91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d705efed2062bcdb0e0149cceaa169d2248e643c996adac8c759862e76992d91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanMetaIsCanonicalInstance.Variantd705efed2062bcdb0e0149cceaa169d2248e643c996adac8c759862e76992d91","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d705efed2062bcdb0e0149cceaa169d2248e643c996adac8c759862e76992d91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Util/DelabNonCanonical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robert Maxton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Maxton
-/
module

public import Mathlib.Init
public meta import Lean.PrettyPrinter.Delaborator.Builtins

/-!
# Delaborating non-canonical instances

Provides a series of monadic functions in `DelabM` for delaborating expressions differently
if their given instances differ (by definitional equality) with what is synthesized.
Synthesized instances are considered 'canonical' for this purpose.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMetaIsCanonicalInstance.Variantd705efed2062bcdb0e0149cceaa169d2248e643c996adac8c759862e76992d91

public meta section
open Lean Meta PrettyPrinter.Delaborator SubExpr

/-- Returns `true` iff the given instance is defeq to the instance synthesized for its type, and
returns `false` otherwise (including if instance synthesis fails). -/
def Lean.Meta.isCanonicalInstance (inst : Expr) : MetaM Bool := do
  let type ← inferType inst
  let .some synthInst ← trySynthInstance type | return false
  isDefEqI inst synthInst

/-- When the delab reader is pointed at an expression for an instance, returns `(true, t)`
iff instance synthesis succeeds and produces a defeq instance; otherwise returns `(false, t)`.
-/
def delabCheckingCanonical : DelabM (Bool × Term) := do
  let inst ← getExpr
  if ← isCanonicalInstance inst then
    return (true, ← withAnnotateTermInfo `(_))
  else
    return (false, ← delab)

namespace Delab.Noncanonical

/-- Delaborate an expression with arity `arity` into a unary notation `mkStx` iff the argument
`arg` is a non-canonical instance (is not defeq to what is synthesized for its type, or else
instance synthesis fails). -/
def delabUnary (arity arg : Nat) (mkStx : Term → Delab) : Delab :=
  whenPPOption Lean.getPPNotation <| whenNotPPOption getPPExplicit <| withOverApp arity <| do
    let (false, instD) ← withNaryArg arg delabCheckingCanonical | failure
    mkStx instD

/-- Delaborate an expression with arity `arity` into a binary notation `mkStx` iff either
argument `arg₁` or `arg₂` are non-canonical instances (are not defeq to what is synthesized for
its type, or else instance synthesis fails). -/
def delabBinary (arity arg₁ arg₂ : Nat) (mkStx : Term → Term → DelabM Term) : Delab :=
  whenPPOption Lean.getPPNotation <| whenNotPPOption getPPExplicit <| withOverApp arity <| do
    let (canonα?, instDα) ← withNaryArg arg₁ delabCheckingCanonical
    let (canonβ?, instDβ) ← withNaryArg arg₂ delabCheckingCanonical
    if canonα? && canonβ? then failure
    mkStx instDα instDβ

end Delab.Noncanonical
```
