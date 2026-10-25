# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofInstInfo.Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fef082357b474373719e585343711cc66d15018a` · SHA-256 `626423c9812d73011b49184746bc77900074048527d515df6f99fee0ec56c069`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreprocessType.Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PreprocessType.Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/ProofInstInfo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM
import Lean.Meta.Sym.IsClass
import Lean.Meta.Sym.Util
import Lean.Meta.Sym.Eta

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreprocessType.Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da

namespace Lean.Meta.Sym

/--
Preprocesses types that used for pattern matching and unification.
-/
public def preprocessType (type : Expr) (zetaReduceLHSOnly := false) : MetaM Expr := do
  let type ← Sym.unfoldReducible type
  let type ← Core.betaReduce type
  let type ← if zetaReduceLHSOnly then
    forallTelescope type fun xs body => do
      match_expr body with
      | f@Eq α lhs rhs => mkForallFVars xs <| mkApp3 f α (← zetaReduce lhs) rhs
      | f@Iff lhs rhs => mkForallFVars xs <| mkApp2 f (← zetaReduce lhs) rhs
      | _ => zetaReduce type
  else
    zetaReduce type
  etaReduceAll type

/--
Analyzes whether the given free variables (aka arguments) are proofs or instances.
Returns `none` if no arguments are proofs or instances.
-/
public def mkProofInstArgInfo? (xs : Array Expr) : MetaM (Option ProofInstInfo) := do
  let env ← getEnv
  let mut argsInfo := #[]
  let mut found := false
  for x in xs do
    let type ← Meta.inferType x
    let isInstance := isClass? env type |>.isSome
    let isProof ← isProp type
    if isInstance || isProof then
      found := true
    argsInfo := argsInfo.push { isInstance, isProof }
  if found then
    return some { argsInfo }
  else
    return none

/--
Analyzes the type signature of `declName` and returns information about which arguments
are proofs or instances. Returns `none` if no arguments are proofs or instances.
-/
public def mkProofInstInfo? (declName : Name) : MetaM (Option ProofInstInfo) := do
  let info ← getConstInfo declName
  let type ← preprocessType info.type
  forallTelescopeReducing type fun xs _ => mkProofInstArgInfo? xs

/--
Returns information about the type signature of `declName`. It contains information about which arguments
are proofs or instances. Returns `none` if no arguments are proofs or instances.
-/
public def getProofInstInfo? (declName : Name) : SymM (Option ProofInstInfo) := do
  if let some r := (← get).proofInstInfo.find? declName then
    return r
  else
    let r ← mkProofInstInfo? declName
    modify fun s => { s with proofInstInfo := s.proofInstInfo.insert declName r }
    return r

public def getProofInstInfoOfExpr? (e : Expr) : SymM (Option ProofInstInfo) := do
  match e with
  | .const declName _ => getProofInstInfo? declName
  | _ => return none -- TODO: if needed

end Lean.Meta.Sym
```
