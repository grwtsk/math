# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesInfo.Variantdc3d0dd99440301b1f3369359081e06cf944219813974b790215ba26a3df36ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25b43bce5f764bfb528543c92f21502f1d34207b` · SHA-256 `d319f1aea21bfc69a9836fa4b8785dcad692c402c8279d63c804355e7276308f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesAltInfo.Variant2fbf09b14119dc56df5fb67e71752eae8f15df9623857b8d587b64f281f11948","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fbf09b14119dc56df5fb67e71752eae8f15df9623857b8d587b64f281f11948","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CasesAltInfo.Variant2fbf09b14119dc56df5fb67e71752eae8f15df9623857b8d587b64f281f11948","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2fbf09b14119dc56df5fb67e71752eae8f15df9623857b8d587b64f281f11948","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/CasesInfo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Joachim Breitner
-/

module
prelude
public import Lean.Meta.Basic
import Init.Data.Range.Polymorphic.Iterators


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesAltInfo.Variant2fbf09b14119dc56df5fb67e71752eae8f15df9623857b8d587b64f281f11948

open Lean Meta

namespace Lean

/-!
This modules defines the `CasesInfo` data structure and functions to obtain it.
It contains information about the structure of casesOn-like functions, namely of

* Plain `.casesOn` (one alternative per constructor)
* Per-constructor eliminations (with side condition, one alternative only)
* Sparse cases-on (only some constructors, with a catch-all)

It recognizes `.casesOn` by using `isCasesOnRecursor` (name + `isAuxDecl` env ext), and the others
via the `isSparseCasesOn` env ext.

It is used in particular by the code generator to replace calls to such functions with LCNF's
`cases` construct.

The `getSparseCasesInfo?` function calculates the `CasesInfo` from the type of the declaration, and
makes certain assumptions about their shapes. If this is too fragile, the `sparseCasesOn` env
extension could carry more information from which the shape can be calculated..
-/

public inductive CasesAltInfo where
  | ctor (ctorName : Name) (numFields : Nat) : CasesAltInfo
  | default (numHyps : Nat) : CasesAltInfo
deriving Inhabited

/--
Information about the shape of `casesOn`-like declarations.

We treat them uniformly in the code generator.
-/
public structure CasesInfo where
  declName     : Name
  indName      : Name
  arity        : Nat
  discrPos     : Nat
  altsRange    : Std.Rco Nat
  altNumParams : Array CasesAltInfo

public def CasesInfo.numAlts (c : CasesInfo) : Nat :=
  c.altNumParams.size

public def getCasesInfo? (declName : Name) : CoreM (Option CasesInfo) := do
  unless isCasesOnLike (← getEnv) declName do return none
  let info ← getConstVal declName
  MetaM.run' <|
    forallTelescope info.type fun xs r => do
      let arity := xs.size
      assert! r.isApp
      assert! r.appArg!.isFVar  -- major argument
      assert! r.getAppFn.isFVar -- motive
      let some discrPos := xs.idxOf? r.appArg! | unreachable!
      let some indName := (← inferType xs[discrPos]!).getAppFn.constName? | unreachable!
      -- We recognize the per-ctor elims side condition here
      let xsTys ← (xs.extract (discrPos+1)).mapM inferType
      let hasSideCondition : Bool := !xsTys.isEmpty && xsTys[0]!.getForallBody.getAppFn != r.getAppFn
      let altsRange := (discrPos + (if hasSideCondition then 2 else 1))...arity
      let altNumParams ← altsRange.toArray.mapM fun idx => do
        forallTelescope (xsTys[idx - discrPos - 1]!) fun ys mr => do
          assert! mr.isApp
          let motiveArg := mr.appArg!
          -- If the motive is applied to the major premise...
          if motiveArg.isFVar then
            -- Then this is the catch-all case of a sparse match
            assert! motiveArg == xs[discrPos]!
            return .default ys.size
          else
            -- Else we have a normal case
            let some ctorName := motiveArg.getAppFn.constName? | unreachable!
            let ctorVal ← getConstInfoCtor ctorName
            return .ctor ctorName ctorVal.numFields
      return some { declName, indName, arity, discrPos, altsRange, altNumParams }

end Lean
```
