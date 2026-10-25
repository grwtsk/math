# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AutoDecl.Variantcbc01c3046d3f4bf04787a478da46bc2dc9375a174e0adcfee4da6ecd1c3a4a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `520b764dcf65a20bb3b5d6bec9cc6902b0ca2677` · SHA-256 `00feec45aae3db6bc30c4a15fc4ec80eee97aeade8c5a16ffa06c012e414cc1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsAutoDeclOrPrivateInternal.Variant67b9553c36481666ed4bad819abe7edcd634a4863ce79eecf2ae7f2846628fde","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67b9553c36481666ed4bad819abe7edcd634a4863ce79eecf2ae7f2846628fde","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsAutoDeclOrPrivateInternal.Variant67b9553c36481666ed4bad819abe7edcd634a4863ce79eecf2ae7f2846628fde","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"67b9553c36481666ed4bad819abe7edcd634a4863ce79eecf2ae7f2846628fde","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/AutoDecl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski

Copyright (c) 2020 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Robert Y. Lewis, Gabriel Ebner
-/

module

prelude
public import Lean.Structure
public import Lean.CoreM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsAutoDeclOrPrivateInternal.Variant67b9553c36481666ed4bad819abe7edcd634a4863ce79eecf2ae7f2846628fde

public section

namespace Lean
/--
Returns true if `decl` is an automatically generated declaration.

Also returns true if `decl` is an internal name or created during macro
expansion.
-/
def isAutoDeclOrPrivate_Internal (decl : Name) : CoreM Bool := do
  if decl.hasMacroScopes then return true
  if decl.isInternal then return true
  let env ← getEnv
  if isReservedName env decl then return true
  if let Name.str n s := decl then
    if (← isAutoDeclOrPrivate_Internal n) then return true
    if s.startsWith "proof_"
        || s.startsWith "match_"
        || s.startsWith "unsafe_"
        || s.startsWith "grind_"
    then return true
    if env.isConstructor n && s ∈ ["injEq", "inj", "sizeOf_spec", "elim", "noConfusion"] then
      return true
    if let ConstantInfo.inductInfo _ := env.find? n then
      if s.startsWith "brecOn_" || s.startsWith "below_" then return true
      if s ∈ [casesOnSuffix, recOnSuffix, brecOnSuffix, belowSuffix,
          "ndrec", "ndrecOn", "noConfusionType", "noConfusion", "ofNat", "toCtorIdx", "ctorIdx",
          "ctorElim", "ctorElimType"] then
        return true
      if let some _ := isSubobjectField? env n (.mkSimple s) then
        return true
    -- Coinductive/inductive lattice-theoretic predicates:
    if let ConstantInfo.inductInfo _ := env.find? (Name.str n "_functor") then
      if s == "functor_unfold" || s == casesOnSuffix || s == "mutual" then return true
      if env.isConstructor (Name.str (Name.str n "_functor") s) then return true
  pure false

end Lean
```
