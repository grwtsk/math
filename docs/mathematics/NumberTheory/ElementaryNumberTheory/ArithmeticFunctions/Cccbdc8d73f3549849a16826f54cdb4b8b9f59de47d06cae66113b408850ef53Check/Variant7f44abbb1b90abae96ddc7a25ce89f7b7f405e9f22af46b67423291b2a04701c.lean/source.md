# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Cccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53Check.Variant7f44abbb1b90abae96ddc7a25ce89f7b7f405e9f22af46b67423291b2a04701c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e290e707efcf2b387c9c549e7cc7447fbb013fa` · SHA-256 `008fe3d45a81b08761de9de87812bd5c8f8752b9d325c578b05b6cd65503d77c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variantcccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.Moebius.Variantcccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"cccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/cc/cccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53--Check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic.NormNum.Prime

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variantcccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53

set_option autoImplicit false
open ArithmeticFunction
example : moebius 6 = 1 := by
  rw [show (6 : ℕ) = 2 * 3 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (2 : ℕ).gcd 3 = 1 by decide),
    moebius_apply_prime (by norm_num), moebius_apply_prime (by norm_num)]
  norm_num
example : moebius 30 = -1 := by
  rw [show (30 : ℕ) = (2 * 3) * 5 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (6 : ℕ).gcd 5 = 1 by decide),
    isMultiplicative_moebius.map_mul_of_coprime (show (2 : ℕ).gcd 3 = 1 by decide)]
  norm_num [moebius_apply_prime (by norm_num : Nat.Prime 2),
    moebius_apply_prime (by norm_num : Nat.Prime 3),
    moebius_apply_prime (by norm_num : Nat.Prime 5)]
example : (30 : ℕ).divisors = {1,2,3,5,6,10,15,30} := by
  norm_num [Nat.divisors]
  decide
```
