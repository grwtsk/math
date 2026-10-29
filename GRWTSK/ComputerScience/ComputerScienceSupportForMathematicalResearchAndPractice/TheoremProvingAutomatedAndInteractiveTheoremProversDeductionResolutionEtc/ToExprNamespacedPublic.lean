-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OfPower.Variant019640f16c1d9709d818d0417072f658f3c1916a05a9eb8660636e8010414863","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"019640f16c1d9709d818d0417072f658f3c1916a05a9eb8660636e8010414863","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.OfPower.Variant019640f16c1d9709d818d0417072f658f3c1916a05a9eb8660636e8010414863","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"019640f16c1d9709d818d0417072f658f3c1916a05a9eb8660636e8010414863","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Arith/ToExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Ring.CommSemiringAdapter
public import Lean.ToExpr

namespace GRWTSK.Algebra.OfPower.Variant019640f16c1d9709d818d0417072f658f3c1916a05a9eb8660636e8010414863

public section
namespace Lean.Meta.Sym.Arith
open Grind.CommRing
/-!
`ToExpr` instances for `CommRing.Poly` types.
-/

def ofPower (p : Power) : Expr :=
  mkApp2 (mkConst ``Power.mk) (toExpr p.x) (toExpr p.k)

instance : ToExpr Power where
  toExpr := ofPower
  toTypeExpr := mkConst ``Power

def ofMon (m : Mon) : Expr :=
  match m with
  | .unit => mkConst ``Mon.unit
  | .mult pw m => mkApp2 (mkConst ``Mon.mult) (toExpr pw) (ofMon m)

instance : ToExpr Mon where
  toExpr := ofMon
  toTypeExpr := mkConst ``Mon

def ofPoly (p : Poly) : Expr :=
  match p with
  | .num k => mkApp (mkConst ``Poly.num) (toExpr k)
  | .add k m p => mkApp3 (mkConst ``Poly.add) (toExpr k) (toExpr m) (ofPoly p)

instance : ToExpr Poly where
  toExpr := ofPoly
  toTypeExpr := mkConst ``Poly

open Lean.Grind

def ofRingExpr (e : CommRing.Expr) : Expr :=
  match e with
  | .num k => mkApp (mkConst ``CommRing.Expr.num) (toExpr k)
  | .intCast k => mkApp (mkConst ``CommRing.Expr.intCast) (toExpr k)
  | .natCast k => mkApp (mkConst ``CommRing.Expr.natCast) (toExpr k)
  | .var x => mkApp (mkConst ``CommRing.Expr.var) (toExpr x)
  | .add a b => mkApp2 (mkConst ``CommRing.Expr.add) (ofRingExpr a) (ofRingExpr b)
  | .mul a b => mkApp2 (mkConst ``CommRing.Expr.mul) (ofRingExpr a) (ofRingExpr b)
  | .sub a b => mkApp2 (mkConst ``CommRing.Expr.sub) (ofRingExpr a) (ofRingExpr b)
  | .neg a => mkApp (mkConst ``CommRing.Expr.neg) (ofRingExpr a)
  | .pow a k => mkApp2 (mkConst ``CommRing.Expr.pow) (ofRingExpr a) (toExpr k)

instance : ToExpr CommRing.Expr where
  toExpr := ofRingExpr
  toTypeExpr := mkConst ``CommRing.Expr

end Lean.Meta.Sym.Arith
