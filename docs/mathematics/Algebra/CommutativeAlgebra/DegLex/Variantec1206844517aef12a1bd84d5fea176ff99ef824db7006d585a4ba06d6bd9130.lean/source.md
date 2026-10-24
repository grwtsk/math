# Complete source: GRWTSK.Algebra.CommutativeAlgebra.DegLex.Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ad8ca2b92a71de03c96debcf7c14d86aa2a36ab` · SHA-256 `962bc2fe2bf72e6674054bf5e4d0c96c44b4c729184704511460aa03441648c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.DegreeDegLexDegree.Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.DegreeDegLexDegree.Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4","mathematical_subject":"Algebra.Polynomials","original_sha256":"43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/MvPolynomial/MonomialOrder/DegLex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/
import Mathlib.RingTheory.MvPolynomial.MonomialOrder
import Mathlib.Data.Finsupp.MonomialOrder.DegLex

/-! # Some lemmas about the deglex monomial order on multivariate polynomials -/


namespace GRWTSK.Algebra.CommutativeAlgebra.DegreeDegLexDegree.Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4

namespace MvPolynomial

open MonomialOrder Finsupp

open scoped MonomialOrder

variable {σ : Type*} {R : Type*} [CommSemiring R] {f g : MvPolynomial σ R}

section LinearOrder

variable [LinearOrder σ] [WellFoundedGT σ]

theorem degree_degLexDegree : (degLex.degree f).degree = f.totalDegree := by
  by_cases hf : f = 0
  · simp [hf]
  apply le_antisymm
  · exact le_totalDegree (degLex.degree_mem_support hf)
  · unfold MvPolynomial.totalDegree
    apply Finset.sup_le
    intro b hb
    exact DegLex.monotone_degree (degLex.le_degree hb)

theorem degLex_totalDegree_monotone (h : degLex.degree f ≼[degLex] degLex.degree g) :
    f.totalDegree ≤ g.totalDegree := by
  simp only [← MvPolynomial.degree_degLexDegree]
  exact DegLex.monotone_degree h

end LinearOrder

theorem totalDegree_mul_of_isDomain [IsCancelMulZero R] (hf : f ≠ 0) (hg : g ≠ 0) :
    totalDegree (f * g) = totalDegree f + totalDegree g := by
  cases exists_wellOrder σ
  rw [← degree_degLexDegree (σ := σᵒᵈ), ← degree_degLexDegree (σ := σᵒᵈ),
    ← degree_degLexDegree (σ := σᵒᵈ), MonomialOrder.degree_mul hf hg]
  simp [Finsupp.sum_add_index]

end MvPolynomial
```
