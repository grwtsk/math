# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Ultra.Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab538b2edcbcb747817b3db08bd2b93e3511fe75` · SHA-256 `71c601394f731ade689585d1ca1c19c3ece066ab63e77312113a7425c8f07e6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormAddOneLeMaxNormOne.Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.NormAddOneLeMaxNormOne.Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"f22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Ring/Ultra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.Normed.Group.Ultra

/-!
# Ultrametric norms on rings where the norm of one is one

This file contains results on the behavior of norms in ultrametric normed rings.
The norm must send one to one.

## Main results

* `norm_intCast_le_one`:
  the norm of the image of an integer in the ring is always less than or equal to one

## Implementation details

A `[NormedRing R]` only assumes a submultiplicative norm and does not have `[NormOneClass R]`.
The weakest ring-like structure that has a bundled norm such that `‖1‖ = 1` is
`[NormedDivisionRing K]`.
Since the statements below hold in any context, we can state them
in an unbundled fashion using `[NormOneClass R]`.
In fact one can actually prove all these lemmas only assuming
`{R : Type*} [SeminormedAddGroup R] [One R] [NormOneClass R] [IsUltrametricDist R]`.
But one has to give the typeclass machinery a little help in order to get it to recognise that there
is a coercion from `ℕ` or `ℤ` to `R`.
Instead, we use weakest pre-existing typeclass that implies both
`[SeminormedAddGroup R]` and `[AddGroupWithOne R]`, which is `[SeminormedRing R]`.

## Tags

ultrametric, nonarchimedean
-/

namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormAddOneLeMaxNormOne.Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945

open Metric NNReal

namespace IsUltrametricDist

section NormOneClass

variable {R : Type*} [SeminormedRing R] [NormOneClass R] [IsUltrametricDist R]

lemma norm_add_one_le_max_norm_one (x : R) :
    ‖x + 1‖ ≤ max ‖x‖ 1 := by
  simpa only [le_max_iff, norm_one] using norm_add_le_max x 1

lemma nnnorm_add_one_le_max_nnnorm_one (x : R) :
    ‖x + 1‖₊ ≤ max ‖x‖₊ 1 :=
  norm_add_one_le_max_norm_one _

variable (R)
lemma nnnorm_natCast_le_one (n : ℕ) :
    ‖(n : R)‖₊ ≤ 1 := by
  induction n with
  | zero => simp only [Nat.cast_zero, nnnorm_zero, zero_le]
  | succ n hn => simpa only [Nat.cast_add, Nat.cast_one, hn, max_eq_right] using
    nnnorm_add_one_le_max_nnnorm_one (n : R)

lemma norm_natCast_le_one (n : ℕ) :
    ‖(n : R)‖ ≤ 1 :=
  nnnorm_natCast_le_one R n

lemma nnnorm_intCast_le_one (z : ℤ) :
    ‖(z : R)‖₊ ≤ 1 := by
  cases z <;>
  simpa only [Int.ofNat_eq_coe, Int.cast_natCast, Int.cast_negSucc, Nat.cast_one, nnnorm_neg]
    using nnnorm_natCast_le_one _ _

lemma norm_intCast_le_one (z : ℤ) :
    ‖(z : R)‖ ≤ 1 :=
  nnnorm_intCast_le_one _ z

end NormOneClass

end IsUltrametricDist
```
