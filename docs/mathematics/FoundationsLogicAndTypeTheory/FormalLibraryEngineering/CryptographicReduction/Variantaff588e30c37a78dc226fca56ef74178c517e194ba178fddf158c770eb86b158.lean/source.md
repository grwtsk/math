# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CryptographicReduction.Variantaff588e30c37a78dc226fca56ef74178c517e194ba178fddf158c770eb86b158

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `767bd06ad96652587f892dea12468ce3cfea5644` · SHA-256 `e559c20bde3c05639c2ae7a97930c4d91f5f5f5809eb89a6537e94ca92cfa99d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OracleToConcreteReduction.Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OracleToConcreteReduction.Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/CryptographicReduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic
import Mathematics.Resolution.AdversaryInvariant

/-!
# Oracle-to-concrete and query-to-work reduction

A query lower bound becomes a concrete work lower bound only through explicit,
proof-bearing translations.  This module retains both translations and proves
their composition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OracleToConcreteReduction.Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e

namespace Mathematics.Resolution

universe u v w x y

/--
A concrete attack is translated into an oracle algorithm.  Success and the
query overhead are both theorem fields.
-/
structure OracleToConcreteReduction
    (ConcreteAttack : Type u) (OracleAlgorithm : Type v) where
  translate : ConcreteAttack → OracleAlgorithm
  concreteSuccess : ConcreteAttack → Prop
  oracleSuccess : OracleAlgorithm → Prop
  primitiveEvaluations : ConcreteAttack → Nat
  oracleQueries : OracleAlgorithm → Nat
  queryOverhead : Nat
  preservesSuccess :
    ∀ attack,
      concreteSuccess attack →
        oracleSuccess (translate attack)
  queryBound :
    ∀ attack,
      oracleQueries (translate attack) ≤
        queryOverhead * primitiveEvaluations attack

/-- A proof-bearing translation `q(A) ≤ r(n) · W(A)`. -/
structure QueryToWorkTranslation
    {ConcreteAttack : Type u} {OracleAlgorithm : Type v}
    (reduction : OracleToConcreteReduction ConcreteAttack OracleAlgorithm) where
  work : ConcreteAttack → ℝ
  workNonnegative : ∀ attack, 0 ≤ work attack
  queriesPerWork : ℝ
  queriesPerWorkPositive : 0 < queriesPerWork
  queryToWorkBound :
    ∀ attack,
      (reduction.oracleQueries (reduction.translate attack) : ℝ) ≤
        queriesPerWork * work attack

/-- The complete model-specific lower-bound authority. -/
structure ConcreteHardnessCertificate
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    (problem : OracleProblem Input Output Coordinate)
    (OracleAlgorithm : Type x) (ConcreteAttack : Type y) where
  oracle :
    AdversaryQueryLowerBound problem OracleAlgorithm
  reduction :
    OracleToConcreteReduction ConcreteAttack OracleAlgorithm
  sameQueryCount :
    reduction.oracleQueries = oracle.queryCount
  sameOracleSuccess :
    reduction.oracleSuccess = oracle.boundedError
  workTranslation :
    QueryToWorkTranslation reduction

namespace ConcreteHardnessCertificate

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}
  {OracleAlgorithm : Type x} {ConcreteAttack : Type y}

/--
The adversary lower bound reaches concrete work only through both declared
translations.
-/
theorem work_lower_bound
    (certificate :
      ConcreteHardnessCertificate
        problem OracleAlgorithm ConcreteAttack)
    (attack : ConcreteAttack)
    (successful : certificate.reduction.concreteSuccess attack) :
    (certificate.oracle.constant *
        certificate.oracle.witness.ratio) /
        certificate.workTranslation.queriesPerWork ≤
      certificate.workTranslation.work attack := by
  have oracleSuccessful :
      certificate.oracle.boundedError
        (certificate.reduction.translate attack) := by
    rw [← certificate.sameOracleSuccess]
    exact certificate.reduction.preservesSuccess attack successful
  apply (div_le_iff₀'
    certificate.workTranslation.queriesPerWorkPositive).2
  calc
    certificate.oracle.constant *
          certificate.oracle.witness.ratio ≤
        (certificate.oracle.queryCount
            (certificate.reduction.translate attack) : ℝ) :=
      certificate.oracle.sound _ oracleSuccessful
    _ =
        (certificate.reduction.oracleQueries
            (certificate.reduction.translate attack) : ℝ) := by
      rw [certificate.sameQueryCount]
    _ ≤
        certificate.workTranslation.queriesPerWork *
          certificate.workTranslation.work attack :=
      certificate.workTranslation.queryToWorkBound attack

end ConcreteHardnessCertificate

end Mathematics.Resolution
```
