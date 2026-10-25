# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SmallPrime.Variantec7a27024efb7da0a4152d704da3d1d888c9fcf204f4629244a48731bdfbf96c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68bc5d2e554de1f6317031c29a132cd58b61c772` · SHA-256 `b6bfdc7ac7937ef44b836875979ab5a554c3663b5b8bf2385c0790b80c832174`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkSmallProof.Variant38f222b005d9654d2040661bb05c81edfb4ddd61907a23058b0885c853840ef9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38f222b005d9654d2040661bb05c81edfb4ddd61907a23058b0885c853840ef9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MkSmallProof.Variant38f222b005d9654d2040661bb05c81edfb4ddd61907a23058b0885c853840ef9","mathematical_subject":"Foundations.Unclassified","original_sha256":"38f222b005d9654d2040661bb05c81edfb4ddd61907a23058b0885c853840ef9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/PrimeCert/PrimeCert/Meta/SmallPrime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/

import PrimeCert.Meta.PrimeCert

/-! # The `small` certificate method

Looks up a pre-existing `PrimeCert.prime_<n>` declaration (from `SmallPrimes.lean`),
e.g. `PrimeCert.prime_31`. Used as a base case in certificate ladders.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkSmallProof.Variant38f222b005d9654d2040661bb05c81edfb4ddd61907a23058b0885c853840ef9

open Lean Meta Elab Qq

namespace PrimeCert.Meta

/-- Syntax for the `small` method: just a numeric literal `n`.
Looks up the declaration `PrimeCert.prime_<n>` in the environment.

```lean
-- In a prime_cert% call:
prime_cert% [small {2; 3; 5; 7}, ...]
-- Each number must have a corresponding `PrimeCert.prime_<n>` theorem.
```
-/
syntax small_spec := num

def mkSmallProof : PrimeCertMethod ``small_spec := fun stx _ ↦ match stx with
  | `(small_spec| $n:num) => do
    have n := n.getNat
    have name : Name := (`PrimeCert).str s!"prime_{n}"
    return ⟨n, mkNatLit n, mkConst name⟩
  | _ => throwUnsupportedSyntax

@[prime_cert small] def PrimeCertExt.small : PrimeCertExt where
  syntaxName := ``small_spec
  methodName := ``mkSmallProof

end PrimeCert.Meta
````
