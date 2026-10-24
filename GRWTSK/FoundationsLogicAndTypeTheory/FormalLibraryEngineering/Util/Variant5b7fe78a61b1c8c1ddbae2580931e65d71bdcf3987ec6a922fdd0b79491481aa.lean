-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CnstrPp.Variantb84628e78dcec84762cb6a8dc67c36f4e17d7c70ad3637a1d78c00d75d7f7aae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b84628e78dcec84762cb6a8dc67c36f4e17d7c70ad3637a1d78c00d75d7f7aae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CnstrPp.Variantb84628e78dcec84762cb6a8dc67c36f4e17d7c70ad3637a1d78c00d75d7f7aae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b84628e78dcec84762cb6a8dc67c36f4e17d7c70ad3637a1d78c00d75d7f7aae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Order/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Order.OrderM
import Lean.Meta.Tactic.Grind.Arith.Util

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CnstrPp.Variantb84628e78dcec84762cb6a8dc67c36f4e17d7c70ad3637a1d78c00d75d7f7aae

public section
namespace Lean.Meta.Grind.Order

def Cnstr.pp (c : Cnstr NodeId) : OrderM MessageData := do
  let u ← getExpr c.u
  let v ← getExpr c.v
  let op := match c.kind with
    | .le => "≤"
    | .lt => "<"
  if c.k != 0 then
    return m!"{Arith.quoteIfArithTerm u} {op} {Arith.quoteIfArithTerm v} + {c.k}"
  else
    return m!"{Arith.quoteIfArithTerm u} {op} {Arith.quoteIfArithTerm v}"

def Weight.compare (a b : Weight) : Ordering :=
  if a.k < b.k then
    .lt
  else if a.k > b.k then
    .gt
  else if a.strict == b.strict then
    .eq
  else if a.strict && !b.strict then
    /-
    **Note**: Recall that we view a constraint of the
    form `x < y + k` as `x ≤ y + (k - ε)` where `ε` is
    an "infinitesimal" positive value.
    Thus, `k - ε < k`
    -/
    .lt
  else
    .gt

instance : Ord Weight where
  compare := Weight.compare

instance : LE Weight where
  le a b := compare a b ≠ .gt

instance : LT Weight where
  lt a b := compare a b = .lt

instance : DecidableLE Weight :=
  fun a b => inferInstanceAs (Decidable (compare a b ≠ .gt))

instance : DecidableLT Weight :=
  fun a b => inferInstanceAs (Decidable (compare a b = .lt))

def Weight.add (a b : Weight) : Weight :=
  { k := a.k + b.k, strict := a.strict || b.strict }

instance : Add Weight where
  add := Weight.add

def Weight.isNeg (a : Weight) : Bool :=
  a.k < 0 || (a.k == 0 && a.strict)

def Weight.isZero (a : Weight) : Bool :=
  a.k == 0 && !a.strict

instance : ToString Weight where
  toString a := if a.strict then s!"{a.k}-ε" else s!"{a.k}"

def ToPropagate.pp (todo : ToPropagate) : OrderM MessageData := do
  match todo with
  | .eqTrue _ e u v k k' => return m!"eqTrue: {e}, {← getExpr u}, {← getExpr v}, {k}, {k'}"
  | .eqFalse _ e u v k k' => return m!"eqFalse: {e}, {← getExpr u}, {← getExpr v}, {k}, {k'}"
  | .eq u v => return m!"eq: {← getExpr u}, {← getExpr v}"

def Cnstr.getWeight (c : Cnstr α) : Weight :=
  match c.kind with
  | .le => { k := c.k }
  | .lt => { k := c.k, strict := true }

end Lean.Meta.Grind.Order
