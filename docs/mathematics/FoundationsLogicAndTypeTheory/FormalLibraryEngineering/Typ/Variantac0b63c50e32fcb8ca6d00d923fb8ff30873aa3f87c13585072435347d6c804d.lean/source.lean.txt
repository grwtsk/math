-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuotedDefEq.Variantc984b4d5879b6c9aea1a789492db0585f2a0db0222d34e81212c5a47d80e53b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c984b4d5879b6c9aea1a789492db0585f2a0db0222d34e81212c5a47d80e53b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.QuotedDefEq.Variantc984b4d5879b6c9aea1a789492db0585f2a0db0222d34e81212c5a47d80e53b6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c984b4d5879b6c9aea1a789492db0585f2a0db0222d34e81212c5a47d80e53b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/Qq/Typ.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean.Meta.Check


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuotedDefEq.Variantc984b4d5879b6c9aea1a789492db0585f2a0db0222d34e81212c5a47d80e53b6

public section
open Lean

set_option linter.unusedVariables false

namespace Qq

/--
`Quoted α` is the type of Lean expressions having type `α`.

You should usually write this using the notation `Q($α)`.
-/
@[expose, implicit_reducible] def Quoted (α : Expr) := Expr

/--
Creates a quoted expression.  Requires that `e` has type `α`.

You should usually write this using the notation `q($e)`.
-/
@[expose] protected def Quoted.unsafeMk (e : Expr) : Quoted α := e

instance : BEq (Quoted α) := inferInstanceAs (BEq Expr)
instance : Hashable (Quoted α) := inferInstanceAs (Hashable Expr)
instance : Inhabited (Quoted α) := inferInstanceAs (Inhabited Expr)
instance : ToString (Quoted α) := inferInstanceAs (ToString Expr)
instance : Repr (Quoted α) := inferInstanceAs (Repr Expr)

instance : CoeOut (Quoted α) Expr where coe e := e
instance : CoeOut (Quoted α) MessageData where coe := .ofExpr
instance : ToMessageData (Quoted α) where toMessageData := .ofExpr

/-- Gets the type of a quoted expression.  -/
protected abbrev Quoted.ty (t : Quoted α) : Expr := α

/--
`QuotedDefEq lhs rhs` says that the expressions `lhs` and `rhs` are definitionally equal.

You should usually write this using the notation `$lhs =Q $rhs`.
-/
structure QuotedDefEq {α : Quoted (.sort u)} (lhs rhs : Quoted α) : Prop where
  /-- For a safer constructor, see `Qq.assertDefEqQ`. -/
  unsafeIntro ::

/--
`QuotedLevelDefEq u v` says that the levels `u` and `v` are definitionally equal.

You should usually write this using the notation `$u =QL $v`.
-/
structure QuotedLevelDefEq (u v : Level) : Prop where
  /-- For a safer constructor, see `Qq.assertLevelDefEqQ`. -/
  unsafeIntro ::

open Meta in
/-- Check that a term `e : Q(α)` really has type `α`. -/
protected def Quoted.check (e : Quoted α) : MetaM Unit := do
  let α' ← inferType e
  unless ← isDefEq α α' do
    throwError "type mismatch{indentExpr e}\n{← mkHasTypeButIsExpectedMsg α' α}"

open Meta in
/-- Check that the claim `$lhs =Q $rhs` is actually true; that the two terms are defeq. -/
protected def QuotedDefEq.check (e : @QuotedDefEq u α lhs rhs) : MetaM Unit := do
  α.check
  lhs.check
  rhs.check
  unless ← isDefEq lhs rhs do
    throwError "{lhs} and {rhs} are not defeq"

open Meta in
/-- Check that the claim `$u =QL $v` is actually true; that the two levels are defeq. -/
protected def QuotedLevelDefEq.check (e : QuotedLevelDefEq lhs rhs) : MetaM Unit := do
  unless ← isLevelDefEq lhs rhs do
    throwError "{lhs} and {rhs} are not defeq"
