# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ShapleyAttribution.Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f75beeb55ab91c83916ee55b6a05f7412fef949` · SHA-256 `1020cffd0a75cb9319b14735589fe3a4fc10b7480b173c9bf1e197f4a55eb7fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ShapleyWeightCertificate.Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ShapleyWeightCertificate.Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ShapleyAttribution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.MobiusInteraction

/-!
# Canonical finite-universe prime attribution

Factorial Shapley weights average every predecessor history.  Positivity is
derived from capacity monotonicity; the standard finite efficiency identity is
bound by an explicit combinatorics certificate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ShapleyWeightCertificate.Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46

namespace Mathematics.SemiLocalDefect

open scoped BigOperators

universe uPrime

def shapleyWeight
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (primeSet : Finset Prime)
    (_prime : Prime)
    (predecessors : Finset Prime) : ℚ :=
  (predecessors.card.factorial : ℚ) *
      ((primeSet.card -
        predecessors.card - 1).factorial : ℚ) /
    (primeSet.card.factorial : ℚ)

def shapleyDefect
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (primeSet : Finset Prime)
    (prime : Prime) :
    model.Operator :=
  ∑ predecessors ∈ (primeSet.erase prime).powerset,
    shapleyWeight primeSet prime predecessors •
      capacity.increment predecessors prime

structure ShapleyWeightCertificate
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (primeSet : Finset Prime) where
  universe_nonempty : primeSet.Nonempty
  weight_nonnegative :
    ∀ prime ∈ primeSet,
      ∀ predecessors ∈
        (primeSet.erase prime).powerset,
        0 ≤
          shapleyWeight primeSet prime predecessors

theorem shapleyDefect_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (primeSet : Finset Prime)
    (weights :
      ShapleyWeightCertificate primeSet)
    (prime : Prime)
    (prime_mem : prime ∈ primeSet) :
    model.Nonnegative
      (shapleyDefect capacity primeSet prime) := by
  unfold shapleyDefect
  apply operatorFinsetSum_nonnegative
    model
    ((primeSet.erase prime).powerset)
  intro predecessors predecessorsMem
  apply model.rational_smul_nonnegative
  · exact weights.weight_nonnegative
      prime prime_mem predecessors predecessorsMem
  · exact increment_nonnegative
      capacity predecessors prime

structure ShapleyEfficiencyCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (primeSet : Finset Prime) where
  weights : ShapleyWeightCertificate primeSet
  efficiency :
    ∑ prime ∈ primeSet,
        shapleyDefect capacity primeSet prime =
      capacity.defect primeSet -
        capacity.defect ∅

theorem shapley_efficiency
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    {primeSet : Finset Prime}
    (certificate :
      ShapleyEfficiencyCertificate
        capacity primeSet) :
    ∑ prime ∈ primeSet,
        shapleyDefect capacity primeSet prime =
      capacity.defect primeSet -
        capacity.defect ∅ :=
  certificate.efficiency

end Mathematics.SemiLocalDefect
```
