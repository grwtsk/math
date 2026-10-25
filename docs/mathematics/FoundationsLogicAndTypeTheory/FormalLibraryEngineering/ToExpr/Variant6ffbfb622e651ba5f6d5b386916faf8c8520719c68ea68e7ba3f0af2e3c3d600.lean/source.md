# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variant6ffbfb622e651ba5f6d5b386916faf8c8520719c68ea68e7ba3f0af2e3c3d600

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7420a9fa6ff76ab3674b179d543dc46a4c5c345c` · SHA-256 `7ad88882febd23e3c8f01f6208693d0076fef8b13fb57ed13a03ac2cb0eb0b56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExprLevel.Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToExprLevel.Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/Qq/ForLean/ToExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean.ToExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExprLevel.Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9

public section

open Lean

instance : ToExpr MVarId where
  toTypeExpr := .const ``MVarId []
  toExpr i := mkApp (.const ``MVarId.mk []) (toExpr i.name)

instance : ToExpr LevelMVarId where
  toTypeExpr := .const ``LevelMVarId []
  toExpr i := mkApp (.const ``LevelMVarId.mk []) (toExpr i.name)

open Level in
def toExprLevel : Level → Expr
  | zero       => .const ``zero []
  | succ l     => mkApp (.const ``succ []) (toExprLevel l)
  | .max l₁ l₂ => mkApp2 (.const ``Level.max []) (toExprLevel l₁) (toExprLevel l₂)
  | imax l₁ l₂ => mkApp2 (.const ``imax []) (toExprLevel l₁) (toExprLevel l₂)
  | param n    => mkApp (.const ``param []) (toExpr n)
  | mvar n     => mkApp (.const ``mvar []) (toExpr n)

instance : ToExpr Level := ⟨toExprLevel, .const ``Level []⟩

instance : ToExpr BinderInfo where
  toTypeExpr := .const ``BinderInfo []
  toExpr bi := match bi with
    | .default => .const ``BinderInfo.default []
    | .implicit => .const ``BinderInfo.implicit []
    | .strictImplicit => .const ``BinderInfo.strictImplicit []
    | .instImplicit => .const ``BinderInfo.instImplicit []

instance : ToExpr MData where
  toTypeExpr := .const ``MData []
  toExpr md := Id.run do
    let mut e := .const ``MData.empty []
    for (k, v) in md do
      let k := toExpr k
      e := open DataValue in match v with
      | ofString v => mkApp3 (.const ``KVMap.setString []) e k (toExpr v)
      | ofBool v   => mkApp3 (.const ``KVMap.setBool []) e k (toExpr v)
      | ofName v   => mkApp3 (.const ``KVMap.setName []) e k (toExpr v)
      | ofNat v    => mkApp3 (.const ``KVMap.setNat []) e k (toExpr v)
      | ofInt v    => mkApp3 (.const ``KVMap.setInt []) e k (toExpr v)
      | ofSyntax _ => e -- TODO
    e

open Expr Literal in
def toExprExpr : Expr → Expr
  | bvar n        => mkApp (.const ``bvar []) (mkNatLit n)
  | fvar n        => mkApp (.const ``fvar []) (toExpr n)
  | mvar n        => mkApp (.const ``mvar []) (toExpr n)
  | sort l        => mkApp (.const ``sort []) (toExpr l)
  | const n ls    => mkApp2 (.const ``const []) (toExpr n) (toExpr ls)
  | app f x       => mkApp2 (.const ``app []) (toExprExpr f) (toExprExpr x)
  | lam x d b c     => mkApp4 (.const ``lam []) (toExpr x) (toExprExpr d) (toExprExpr b) (toExpr c)
  | forallE x d b c => mkApp4 (.const ``forallE []) (toExpr x) (toExprExpr d) (toExprExpr b) (toExpr c)
  | letE x t v b c  => mkApp5 (.const ``letE []) (toExpr x) (toExprExpr t) (toExprExpr v) (toExprExpr b) (toExpr c)
  | lit l         => mkApp (.const ``lit []) (toExpr l)
  | mdata md e    => mkApp2 (.const ``mdata []) (toExpr md) (toExprExpr e)
  | proj s i e    => mkApp3 (.const ``proj []) (toExpr s) (mkNatLit i) (toExprExpr e)

instance : ToExpr Expr := ⟨toExprExpr, .const ``Expr []⟩
```
