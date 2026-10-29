-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PowerRenameVars.Variantd806ea9ee2179334c49f9c812191d53ff1e430e814c688830054b4cb65b93e17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d806ea9ee2179334c49f9c812191d53ff1e430e814c688830054b4cb65b93e17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PowerRenameVars.Variantd806ea9ee2179334c49f9c812191d53ff1e430e814c688830054b4cb65b93e17","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d806ea9ee2179334c49f9c812191d53ff1e430e814c688830054b4cb65b93e17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Arith/VarRename.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Ring.CommSemiringAdapter
public import Lean.Meta.Tactic.Grind.VarRename

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PowerRenameVars.Variantd806ea9ee2179334c49f9c812191d53ff1e430e814c688830054b4cb65b93e17

namespace Lean.Grind.CommRing
open Lean.Meta.Grind

public def Power.renameVars (pw : Power) (f : VarRename) : Power :=
  { pw with x := (f pw.x) }

public def Mon.renameVars (m : Mon) (f : VarRename) : Mon :=
  match m with
  | .unit => .unit
  | .mult pw m => .mult (pw.renameVars f) (renameVars m f)

public def Poly.renameVars (p : Poly) (f : VarRename) : Poly :=
  match p with
  | .num _ => p
  | .add k m p => .add k (m.renameVars f) (renameVars p f)

public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .num .. | .natCast .. | .intCast .. => e
  | .var x => .var (f x)
  | .neg a => .neg (renameVars a f)
  | .add a b => .add (renameVars a f) (renameVars b f)
  | .sub a b => .sub (renameVars a f) (renameVars b f)
  | .mul a b => .mul (renameVars a f) (renameVars b f)
  | .pow a k => .pow (renameVars a f) k

public def Power.collectVars (pw : Power) : VarCollector :=
  collectVar pw.x

public def Mon.collectVars (m : Mon) : VarCollector :=
  match m with
  | .unit => id
  | .mult pw m => pw.collectVars >> m.collectVars

public def Poly.collectVars (p : Poly) : VarCollector :=
  match p with
  | .num _ => id
  | .add _ m p => m.collectVars >> p.collectVars

public def Expr.collectVars (e : Expr) : VarCollector :=
  match e with
  | .num .. | .natCast .. | .intCast .. => id
  | .var x => collectVar x
  | .neg a | .pow a _ => a.collectVars
  | .add a b | .sub a b | .mul a b => a.collectVars >> b.collectVars

end Lean.Grind.CommRing
