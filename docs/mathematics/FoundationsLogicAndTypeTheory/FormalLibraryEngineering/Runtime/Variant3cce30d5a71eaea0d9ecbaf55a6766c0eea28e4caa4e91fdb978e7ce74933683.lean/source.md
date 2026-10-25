# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Runtime.Variant3cce30d5a71eaea0d9ecbaf55a6766c0eea28e4caa4e91fdb978e7ce74933683

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6ca5873c7631dc533d32a20368b174854e81b95` · SHA-256 `df0c32829e6057d5eeffc42e48b8ef40cc43ff72878ca7cc8f494a0b3fe5af46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosureMaxArgsFn.Variantabc12a1d30004da2b8d98dfa2aecbdad2a4a38941814d95a750bbf932f8000d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abc12a1d30004da2b8d98dfa2aecbdad2a4a38941814d95a750bbf932f8000d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ClosureMaxArgsFn.Variantabc12a1d30004da2b8d98dfa2aecbdad2a4a38941814d95a750bbf932f8000d6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"abc12a1d30004da2b8d98dfa2aecbdad2a4a38941814d95a750bbf932f8000d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Runtime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Prelude


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosureMaxArgsFn.Variantabc12a1d30004da2b8d98dfa2aecbdad2a4a38941814d95a750bbf932f8000d6

public section

namespace Lean

@[extern "lean_closure_max_args"]
opaque closureMaxArgsFn : Unit → Nat

@[extern "lean_max_small_nat"]
opaque maxSmallNatFn : Unit → Nat

@[extern "lean_libuv_version"]
opaque libUVVersionFn : Unit → Nat

@[extern "lean_openssl_version"]
opaque openSSLVersionFn : Unit → Nat

def closureMaxArgs : Nat :=
  closureMaxArgsFn ()

def maxSmallNat : Nat :=
  maxSmallNatFn ()

def libUVVersion : Nat :=
  libUVVersionFn ()

def openSSLVersion : Nat :=
  openSSLVersionFn ()

end Lean
```
