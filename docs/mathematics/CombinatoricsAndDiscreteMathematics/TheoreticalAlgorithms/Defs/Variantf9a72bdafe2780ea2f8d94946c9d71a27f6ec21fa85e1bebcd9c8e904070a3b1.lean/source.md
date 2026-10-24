# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variantf9a72bdafe2780ea2f8d94946c9d71a27f6ec21fa85e1bebcd9c8e904070a3b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfcc7ec9339b780efa9c90a2fe66abf0323a2c51` · SHA-256 `9b9805f88cf62a8a5df7e62943bd0f55d9f83a0dc6b7fee558a229448e12f814`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CyclicPermute.Variant0ceaa8173eb024184e2f00e10c248586ec173a09fe646a871784a768fe81c582","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ceaa8173eb024184e2f00e10c248586ec173a09fe646a871784a768fe81c582","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CyclicPermute.Variant0ceaa8173eb024184e2f00e10c248586ec173a09fe646a871784a768fe81c582","mathematical_subject":"Computation.DataStructures","original_sha256":"0ceaa8173eb024184e2f00e10c248586ec173a09fe646a871784a768fe81c582","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Array/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Floris van Doorn
-/

import Lean

/-!
## Definitions on Arrays

This file contains various definitions on `Array`. It does not contain
proofs about these definitions, those are contained in other files in `Mathlib.Data.Array`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CyclicPermute.Variant0ceaa8173eb024184e2f00e10c248586ec173a09fe646a871784a768fe81c582

set_option autoImplicit true

namespace Array

/-- Permute the array using a sequence of indices defining a cyclic permutation.
  If the list of indices `l = [i₁, i₂, ..., iₙ]` are all distinct then
  `(cyclicPermute! a l)[iₖ₊₁] = a[iₖ]` and `(cyclicPermute! a l)[i₀] = a[iₙ]` -/
def cyclicPermute! [Inhabited α] : Array α → List Nat → Array α
| a, []      => a
| a, i :: is => cyclicPermuteAux a is a[i]! i
where cyclicPermuteAux : Array α → List Nat → α → Nat → Array α
| a, [], x, i0 => a.set! i0 x
| a, i :: is, x, i0 =>
  let (y, a) := a.swapAt! i x
  cyclicPermuteAux a is y i0

/-- Permute the array using a list of cycles. -/
def permute! [Inhabited α] (a : Array α) (ls : List (List Nat)) : Array α :=
ls.foldl (init := a) (·.cyclicPermute! ·)
```
