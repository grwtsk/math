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
