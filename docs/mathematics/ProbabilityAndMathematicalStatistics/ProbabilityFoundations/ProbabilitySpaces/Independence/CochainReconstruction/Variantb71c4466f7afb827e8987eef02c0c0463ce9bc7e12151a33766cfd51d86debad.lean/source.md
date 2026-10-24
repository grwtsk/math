# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CochainReconstruction.Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f2e1928c15398fc8a531bcc90667c31999b112d` · SHA-256 `a42fd86eec52f1ea1edd54f547f4053d82d6809e26d4990c0b843ad4d2b10529`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.InsertPath.Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.InsertPath.Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d","mathematical_subject":"Probability.Independence","original_sha256":"c0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/CochainReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Finite path reconstruction

The sum of exact capacity increments along a finite insertion list equals the
terminal capacity minus the initial capacity.  Consequently two lists with
the same terminal cut have the same path sum.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.InsertPath.Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d

namespace Mathematics.SemiLocalDefect

def insertPath
    {Prime : Type u}
    [DecidableEq Prime] :
    List Prime → Finset Prime → Finset Prime
  | [], cut => cut
  | prime :: remaining, cut =>
      insertPath remaining (insert prime cut)

def capacityPathSum
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate) :
    List Prime → Finset Prime → DiagonalOperator Coordinate
  | [], _ => 0
  | prime :: remaining, cut =>
      capacity.increment cut prime +
        capacityPathSum capacity remaining (insert prime cut)

theorem capacityPathSum_eq_terminal_sub_initial
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (path : List Prime)
    (initial : Finset Prime) :
    capacityPathSum capacity path initial =
      capacity.value (insertPath path initial) -
        capacity.value initial := by
  induction path generalizing initial with
  | nil =>
      funext coordinate
      simp [capacityPathSum, insertPath]
  | cons prime remaining induction_hypothesis =>
      rw [capacityPathSum, induction_hypothesis]
      change
        capacity.increment initial prime +
            (capacity.value
                (insertPath remaining (insert prime initial)) -
              capacity.value (insert prime initial)) =
          capacity.value
              (insertPath remaining (insert prime initial)) -
            capacity.value initial
      funext coordinate
      simp only [PositiveCapacity.increment, Pi.add_apply, Pi.sub_apply]
      ring

theorem capacity_path_sum_independent
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (firstPath secondPath : List Prime)
    (initial : Finset Prime)
    (same_terminal :
      insertPath firstPath initial =
        insertPath secondPath initial) :
    capacityPathSum capacity firstPath initial =
      capacityPathSum capacity secondPath initial := by
  rw [
    capacityPathSum_eq_terminal_sub_initial,
    capacityPathSum_eq_terminal_sub_initial,
    same_terminal,
  ]

end Mathematics.SemiLocalDefect
```
