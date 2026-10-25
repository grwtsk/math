# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WPApp.Variantb63cab7defc0e2fcaea55b3cd06f3719183929e0c04b5207b75e6401c6545dd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea44e32fc29a7b2480dcbea24ee92610fab2c3a0` · SHA-256 `4622d8e99c0ca3696d241eabac28e4f185908ea564117317c34554dcb851fdd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VCGenWPApp.Variant5e2cb994c7a0b506946d3abe5030abfe4f78caf7ac7e33779548feb7c08c0fa0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e2cb994c7a0b506946d3abe5030abfe4f78caf7ac7e33779548feb7c08c0fa0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.VCGenWPApp.Variant5e2cb994c7a0b506946d3abe5030abfe4f78caf7ac7e33779548feb7c08c0fa0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5e2cb994c7a0b506946d3abe5030abfe4f78caf7ac7e33779548feb7c08c0fa0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/Internal/VCGen/WPApp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf, Vladimir Gladshtein
-/
module

prelude
public import Lean.Meta.Sym.SymM
import Std.Internal.Do.WP.Basic

/-!
`WPApp`: metadata for a goal whose right-hand side is a `wp` application, with `isWPApp?` to
recognize one.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VCGenWPApp.Variant5e2cb994c7a0b506946d3abe5030abfe4f78caf7ac7e33779548feb7c08c0fa0

open Lean Meta Sym

namespace Lean.Elab.Tactic.Do.Internal

/--
Common metadata for a goal whose right-hand side is a weakest-precondition application
`pre ⊑ wp Prog Value Pred EPred instAL instEAL instWP prog post epost s₁ ... sₙ`.
-/
public structure VCGen.WPApp where
  /-- The `wp` function head, separated from its explicit core arguments. -/
  head : Expr
  /-- The ordered core arguments of the `wp` application:
  `#[Prog, Value, Pred, EPred, instAL, instEAL, instWP, prog, post, epost]`. -/
  args : Array Expr
  /-- Extra arguments applied after `wp … prog post epost`, usually concrete state arguments. -/
  excessArgs : Array Expr

namespace VCGen.WPApp

/-- Program type argument of `wp` (e.g. `m α` or a non-monadic program type). -/
public def Prog (info : WPApp) : Expr := info.args[0]!
/-- The monad of an `m α`-shaped program type, obtained by dropping the value type `α`. For a
non-monadic program type the type itself is returned. -/
public def M (info : WPApp) : Expr :=
  if info.args[0]!.isApp then info.args[0]!.appFn! else info.args[0]!
/-- Result/value type argument of `wp`. -/
public def Value (info : WPApp) : Expr := info.args[1]!
/-- Predicate/lattice type argument of `wp`. -/
public def Pred (info : WPApp) : Expr := info.args[2]!
/-- Exception postcondition type argument of `wp`. -/
public def EPred (info : WPApp) : Expr := info.args[3]!
/-- `WP` instance argument of `wp`. -/
public def instWP (info : WPApp) : Expr := info.args[6]!
/-- Program expression classified by VCGen. -/
public def prog (info : WPApp) : Expr := info.args[7]!
/-- Postcondition argument of `wp`. -/
public def post (info : WPApp) : Expr := info.args[8]!

end VCGen.WPApp

/-- The `wp` metadata of `rhs`, or `none` when `rhs` is not a `wp` application. -/
public def VCGen.isWPApp? (rhs : Expr) : Option VCGen.WPApp :=
  rhs.withApp fun head args =>
    if head.isConstOf ``Std.Internal.Do.wp && args.size ≥ 10 then
      some { head, args := args.take 10, excessArgs := args.drop 10 }
    else
      none

end Lean.Elab.Tactic.Do.Internal
```
