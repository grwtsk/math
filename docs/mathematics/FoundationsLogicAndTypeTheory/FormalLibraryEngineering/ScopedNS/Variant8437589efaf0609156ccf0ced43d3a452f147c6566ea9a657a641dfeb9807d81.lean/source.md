# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopedNS.Variant8437589efaf0609156ccf0ced43d3a452f147c6566ea9a657a641dfeb9807d81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0d20e611113f3edaa38dcd806cc4df069a93756` · SHA-256 `49315be1a29b7c794492a8bc1649e9062d170a2faad0b48f9eeb3ea8207fa15a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithWeakNamespace.Variant066fcc108b491018eac20b24176b0acbf0d559a5b42bfda0561c66d9774979ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"066fcc108b491018eac20b24176b0acbf0d559a5b42bfda0561c66d9774979ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithWeakNamespace.Variant066fcc108b491018eac20b24176b0acbf0d559a5b42bfda0561c66d9774979ec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"066fcc108b491018eac20b24176b0acbf0d559a5b42bfda0561c66d9774979ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ScopedNS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Mario Carneiro
-/
import Mathlib.Util.WithWeakNamespace

/-! # `scoped[NS]` syntax

This is a replacement for the `localized` command in mathlib. It is similar to `scoped`,
but it scopes the syntax in the specified namespace instead of the current namespace.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithWeakNamespace.Variant066fcc108b491018eac20b24176b0acbf0d559a5b42bfda0561c66d9774979ec

namespace Mathlib.Tactic
open Lean

/--
`scoped[NS]` is similar to the `scoped` modifier on attributes and notations,
but it scopes the syntax in the specified namespace instead of the current namespace.
```
scoped[Matrix] postfix:1024 "ᵀ" => Matrix.transpose
-- declares `ᵀ` as a notation for matrix transposition
-- which is only accessible if you `open Matrix` or `open scoped Matrix`.

namespace Nat

scoped[Nat.Count] attribute [instance] CountSet.fintype
-- make the definition Nat.CountSet.fintype an instance,
-- but only if `Nat.Count` is open
```
-/
syntax (name := scopedNS) (docComment)? (Parser.Term.attributes)?
  "scoped" "[" ident "] " command : command
macro_rules
  | `($[$doc]? $(attr)? scoped[$ns] notation $(prec)? $(n)? $(prio)? $sym* => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped notation $(prec)? $(n)? $(prio)? $sym* => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:prefix $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:prefix $prec $(n)? $(prio)? $sym => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:infix $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:infix $prec $(n)? $(prio)? $sym => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:infixl $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:infixl $prec $(n)? $(prio)? $sym => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:infixr $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:infixr $prec $(n)? $(prio)? $sym => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:postfix $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:postfix $prec $(n)? $(prio)? $sym => $t)
  | `(scoped[$ns] attribute [$[$attr:attr],*] $ids*) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      attribute [$[scoped $attr:attr],*] $ids*)

end Mathlib.Tactic
````
