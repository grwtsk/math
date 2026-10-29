-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithmeticFunction.Variant5e4e14d4c0ed0de1f8d5ad89657b43410203dcd852d983d33deda02ed7fd179c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e4e14d4c0ed0de1f8d5ad89657b43410203dcd852d983d33deda02ed7fd179c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.ArithmeticFunction.Variant5e4e14d4c0ed0de1f8d5ad89657b43410203dcd852d983d33deda02ed7fd179c","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"5e4e14d4c0ed0de1f8d5ad89657b43410203dcd852d983d33deda02ed7fd179c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/ArithMult.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Arend Mellendijk. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arend Mellendijk
-/

import Mathlib.NumberTheory.ArithmeticFunction



namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithmeticFunction.Variant5e4e14d4c0ed0de1f8d5ad89657b43410203dcd852d983d33deda02ed7fd179c

open ArithmeticFunction

variable {R : Type*} [Field R]

set_option linter.unusedVariables false

example : IsMultiplicative μ := by arith_mult

example : IsMultiplicative (ζ * ζ) := by arith_mult

example {R : Type*} [Field R] (f : ArithmeticFunction R) (hf : IsMultiplicative f) :
    IsMultiplicative ((ζ : ArithmeticFunction R).pdiv f) := by arith_mult

example (f g : ArithmeticFunction R) (hf : IsMultiplicative f) :
    IsMultiplicative (prodPrimeFactors g |>.pmul f) := by arith_mult

example (n : ℕ) : IsMultiplicative <| (σ n * pow (n + 3)).ppow 2 := by arith_mult
