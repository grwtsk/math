# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Ultra.Variant8007bb3b6ceb0b58ca8ec8db43db400830898b0b40bcb5385126a3d5a2fb4b2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd02232386e5ee3f2de7063b015efc988b9f84c2` · SHA-256 `db60439dd5eab217b521a6f1a6d425a6ad08f4e0b73ca123e23b293da0203b4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormAddOneLeMaxNormOne.Variant8bfa5ac8fb7d631c34af64e0fb6296b09a420e5855a55822ee2fcb7429184fd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bfa5ac8fb7d631c34af64e0fb6296b09a420e5855a55822ee2fcb7429184fd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.NormAddOneLeMaxNormOne.Variant8bfa5ac8fb7d631c34af64e0fb6296b09a420e5855a55822ee2fcb7429184fd7","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"8bfa5ac8fb7d631c34af64e0fb6296b09a420e5855a55822ee2fcb7429184fd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Ring/Ultra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
module

public import Mathlib.Analysis.Normed.Ring.Basic
public import Mathlib.Analysis.Normed.Group.Ultra

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


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormAddOneLeMaxNormOne.Variant8bfa5ac8fb7d631c34af64e0fb6296b09a420e5855a55822ee2fcb7429184fd7

public section
open NNReal

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
  simpa only [Int.ofNat_eq_natCast, Int.cast_natCast, Int.cast_negSucc, Nat.cast_one, nnnorm_neg]
    using nnnorm_natCast_le_one _ _

lemma norm_intCast_le_one (z : ℤ) :
    ‖(z : R)‖ ≤ 1 :=
  nnnorm_intCast_le_one _ z

end NormOneClass

end IsUltrametricDist
```
