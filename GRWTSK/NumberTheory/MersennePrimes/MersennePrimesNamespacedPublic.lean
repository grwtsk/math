-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.LucasLehmer.Variant40eb904b8675fdc2f44837d8ffcfea9c983d66276b2cc652757b8331f06b0da4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40eb904b8675fdc2f44837d8ffcfea9c983d66276b2cc652757b8331f06b0da4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.GeneralNumberTheory.SourceCorpus.LucasLehmer.Variant40eb904b8675fdc2f44837d8ffcfea9c983d66276b2cc652757b8331f06b0da4","mathematical_subject":"NumberTheory.GeneralNumberTheory","original_sha256":"40eb904b8675fdc2f44837d8ffcfea9c983d66276b2cc652757b8331f06b0da4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Examples/MersennePrimes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.NumberTheory.LucasLehmer

/-!
# Explicit Mersenne primes

We run some Lucas-Lehmer tests to prove the first Mersenne primes are prime.

See the discussion at the end of `Mathlib/NumberTheory/LucasLehmer.lean`
for ideas about extending this to larger Mersenne primes.
-/

-- The Lucas-Lehmer test does not apply to `mersenne 2`

namespace GRWTSK.NumberTheory.LucasLehmer.Variant40eb904b8675fdc2f44837d8ffcfea9c983d66276b2cc652757b8331f06b0da4

example : ¬ LucasLehmerTest 2 := by norm_num

example : (mersenne 2).Prime := by decide

example : (mersenne 3).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 5).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 7).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : ¬ (mersenne 11).Prime := by
  intro h
  have := lucas_lehmer_necessity 11 (by norm_num) h
  norm_num at this

example : (mersenne 13).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 17).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 19).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : ¬ (mersenne 23).Prime := by
  intro h
  have := lucas_lehmer_necessity 23 (by norm_num) h
  norm_num at this

/-- 2147483647.Prime, Euler (1772) -/
example : (mersenne 31).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

/-- Pervushin (1883), Seelhoff (1886) -/
example : (mersenne 61).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 89).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 107).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

/-- Édouard Lucas (1876) -/
example : (mersenne 127).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

/-- Lehmer and Robinson using SWAC computer, (1952) -/
example : (mersenne 521).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 607).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 1279).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 2203).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 2281).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 3217).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 4253).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

example : (mersenne 4423).Prime :=
  lucas_lehmer_sufficiency _ (by simp) (by norm_num)

/-
`mersenne 9689` seems to be system dependent:
locally it works fine, but in CI it fails with `(kernel) deep recursion detected`
-/
-- example : (mersenne 9689).Prime :=
--   lucas_lehmer_sufficiency _ (by norm_num) (by norm_num)

/-
`mersenne 9941` seems to be system dependent:
locally it works fine, but in CI it fails with `(kernel) deep recursion detected`
-/
-- example : (mersenne 9941).Prime :=
--   lucas_lehmer_sufficiency _ (by norm_num) (by norm_num)

/-
`mersenne 11213` fails with `(kernel) deep recursion detected` locally as well.
-/
-- example : (mersenne 11213).Prime :=
--   lucas_lehmer_sufficiency _ (by norm_num) (by norm_num)
