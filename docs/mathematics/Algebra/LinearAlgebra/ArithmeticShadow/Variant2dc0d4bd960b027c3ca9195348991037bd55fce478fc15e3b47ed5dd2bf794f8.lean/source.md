# Complete source: GRWTSK.Algebra.LinearAlgebra.ArithmeticShadow.Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e896e05fe3ebbbb432077a9cdceec2a75e82c2e0` · SHA-256 `9bccdaeae58e26cbbf6dcab4cffe4371a0434e4389750e768d175f7061741339`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ArithmeticShadow.Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ArithmeticShadow.Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec","mathematical_subject":"Foundations.Unclassified","original_sha256":"c645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/ArithmeticShadow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.TopologyPrime


namespace GRWTSK.Algebra.LinearAlgebra.ArithmeticShadow.Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure ArithmeticShadow where
  exponentOf : PrimeLabel → Nat

namespace ArithmeticShadow

@[ext]
theorem ext {A B : ArithmeticShadow}
    (h : ∀ p, A.exponentOf p = B.exponentOf p) :
    A = B := by
  cases A with
  | mk Ae =>
    cases B with
    | mk Be =>
      have hfun : Ae = Be := by
        funext p
        exact h p
      cases hfun
      rfl

def zero : ArithmeticShadow where
  exponentOf := fun _ => 0

def singleton (p : PrimeLabel) : ArithmeticShadow where
  exponentOf := fun q =>
    if q.value = p.value then 1 else 0

def add (A B : ArithmeticShadow) : ArithmeticShadow where
  exponentOf := fun p => A.exponentOf p + B.exponentOf p

end ArithmeticShadow

def arithmeticShadowCore : OrderedPrimeCore → ArithmeticShadow
  | OrderedPrimeCore.irreducible p =>
      ArithmeticShadow.singleton p
  | OrderedPrimeCore.composite l r =>
      ArithmeticShadow.add (arithmeticShadowCore l) (arithmeticShadowCore r)

def arithmeticShadow
    (R : NormalizationRules)
    (T : BinaryLogicTree) : ArithmeticShadow :=
  arithmeticShadowCore (normalizeCore R T)

theorem arithmeticShadow_multiplicative_under_compose
    (R : NormalizationRules)
    (L Rtree : BinaryLogicTree) :
    arithmeticShadow R (BinaryLogicTree.node L Rtree) =
      ArithmeticShadow.add (arithmeticShadow R L) (arithmeticShadow R Rtree) := rfl

theorem arithmeticShadow_unique_factorization
    (A B : ArithmeticShadow) :
    A = B ↔ A.exponentOf = B.exponentOf := by
  constructor
  · intro h
    cases h
    rfl
  · intro h
    cases A
    cases B
    cases h
    rfl

theorem arithmeticShadow_forgets_bracketing
    (p q r : PrimeLabel) :
    arithmeticShadowCore
      (OrderedPrimeCore.composite
        (OrderedPrimeCore.composite
          (OrderedPrimeCore.irreducible p)
          (OrderedPrimeCore.irreducible q))
        (OrderedPrimeCore.irreducible r)) =
    arithmeticShadowCore
      (OrderedPrimeCore.composite
        (OrderedPrimeCore.irreducible p)
        (OrderedPrimeCore.composite
          (OrderedPrimeCore.irreducible q)
          (OrderedPrimeCore.irreducible r))) := by
  apply ArithmeticShadow.ext
  intro x
  simp [
    arithmeticShadowCore,
    ArithmeticShadow.add,
    ArithmeticShadow.singleton
  ]
  omega

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```
