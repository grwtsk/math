# Complete source: GRWTSK.Algebra.LinearAlgebra.AdversaryInvariant.Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `947452e1d6ac21f618b8849cb5ccf67e1b0f15d7` · SHA-256 `7c41073fb34a5b7c7094d35595cc33241c9ee7d40c55f90b3e46297981cb0c5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.OracleProblem.Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.OracleProblem.Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"bc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/AdversaryInvariant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.Permutation
import Mathematics.Resolution.CryptographicProblem

/-!
# General-adversary hardness invariant

Automorphisms may simplify an adversary matrix only after an oracle problem
and its query coordinates are fixed.  The lower-bound authority resides in a
proof-bearing adversary certificate, not in unitarity or connectivity.
-/


namespace GRWTSK.Algebra.LinearAlgebra.OracleProblem.Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138

namespace Mathematics.Resolution

universe u v w x

/-- A finite oracle problem with coordinate-wise query visibility. -/
structure OracleProblem
    (Input : Type u) (Output : Type v) (Coordinate : Type w) where
  answer : Input → Output
  differsAt : Coordinate → Input → Input → Bool
  accessModel : OracleAccessModel

open scoped Matrix.Norms.L2Operator

namespace OracleProblem

variable {Input : Type u} {Output : Type v} {Coordinate : Type w}

def coordinateMask
    (problem : OracleProblem Input Output Coordinate)
    (coordinate : Coordinate) :
    Matrix Input Input ℂ :=
  fun left right =>
    if problem.differsAt coordinate left right then 1 else 0

def restrict
    (problem : OracleProblem Input Output Coordinate)
    (weights : Matrix Input Input ℂ)
    (coordinate : Coordinate) :
    Matrix Input Input ℂ :=
  fun left right =>
    weights left right * problem.coordinateMask coordinate left right

end OracleProblem

/-- Matrix conditions required before the adversary ratio is meaningful. -/
structure ValidAdversaryMatrix
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    (problem : OracleProblem Input Output Coordinate) where
  weights : Matrix Input Input ℂ
  hermitian : weights.conjTranspose = weights
  zero_on_equal_output :
    ∀ left right,
      problem.answer left = problem.answer right →
        weights left right = 0
  nonzero : weights ≠ 0

/--
A maximizing coordinate turns the finite denominator into an exact witnessed
maximum rather than an unaudited numeric claim.
-/
structure GeneralAdversaryWitness
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    (problem : OracleProblem Input Output Coordinate) where
  adversary : ValidAdversaryMatrix problem
  maxCoordinate : Coordinate
  maximal :
    ∀ coordinate,
      ‖problem.restrict adversary.weights coordinate‖ ≤
        ‖problem.restrict adversary.weights maxCoordinate‖
  denominatorPositive :
    0 < ‖problem.restrict adversary.weights maxCoordinate‖

namespace GeneralAdversaryWitness

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}

/-- The exact general-adversary ratio for the witnessed maximizing coordinate. -/
def ratio (witness : GeneralAdversaryWitness problem) : ℝ :=
  ‖witness.adversary.weights‖ /
    ‖problem.restrict witness.adversary.weights witness.maxCoordinate‖

theorem coordinate_norm_le_denominator
    (witness : GeneralAdversaryWitness problem)
    (coordinate : Coordinate) :
    ‖problem.restrict witness.adversary.weights coordinate‖ ≤
      ‖problem.restrict witness.adversary.weights witness.maxCoordinate‖ :=
  witness.maximal coordinate

end GeneralAdversaryWitness

/-- A game automorphism must preserve answers, query coordinates, and access. -/
structure GameAutomorphism
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    (problem : OracleProblem Input Output Coordinate) where
  inputs : Input ≃ Input
  coordinates : Coordinate ≃ Coordinate
  preservesAnswer :
    ∀ input, problem.answer (inputs input) = problem.answer input
  preservesQueries :
    ∀ coordinate left right,
      problem.differsAt (coordinates coordinate)
          (inputs left) (inputs right) =
        problem.differsAt coordinate left right

/--
The query lower bound is proof-bearing.  A witness matrix alone does not
construct this certificate; the declared oracle theorem must connect its
ratio to every bounded-error algorithm.
-/
structure AdversaryQueryLowerBound
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    (problem : OracleProblem Input Output Coordinate)
    (Algorithm : Type x) where
  witness : GeneralAdversaryWitness problem
  boundedError : Algorithm → Prop
  queryCount : Algorithm → Nat
  constant : ℝ
  constantPositive : 0 < constant
  sound :
    ∀ algorithm,
      boundedError algorithm →
        constant * witness.ratio ≤ (queryCount algorithm : ℝ)

theorem adversary_query_lower_bound
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Algorithm : Type x}
    (certificate : AdversaryQueryLowerBound problem Algorithm)
    (algorithm : Algorithm)
    (successful : certificate.boundedError algorithm) :
    certificate.constant * certificate.witness.ratio ≤
      (certificate.queryCount algorithm : ℝ) :=
  certificate.sound algorithm successful

end Mathematics.Resolution
```
