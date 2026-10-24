# Verification target: GRWTSK.NumberTheory.PrimeCounting.OctaveBaseSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cb50beaf2fd05c7fd04326c576c396ef508972c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/PrimeCounting/OctaveBaseSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/OctaveBaseSeparation.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/OctaveBaseSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cb50beaf2fd05c7fd04326c576c396ef508972c`.

Source path: `GRWTSK/NumberTheory/PrimeCounting/OctaveBaseSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/PrimeCounting/OctaveBaseSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_le_power](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/OctaveBaseSeparation.lean/declarations/one-le-power--d960f5c1cd980b5d6ecc09d5.md) | 17 | `result-track:d960f5c1cd980b5d6ecc09d5031d5122aa3cec242e5401bb40f20d4c5cf343a6` |
| 2 | `theorem` | [two_le_positive_power](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/OctaveBaseSeparation.lean/declarations/two-le-positive-power--f96b3c311bcbe6f4d4bb070e.md) | 24 | `result-track:f96b3c311bcbe6f4d4bb070e65e50b2c0af0f8fd65e5ce37c2b81ceb6fdbb38d` |
| 3 | `theorem` | [later_power_at_least_double](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/OctaveBaseSeparation.lean/declarations/later-power-at-least-double--b013390f0a27b1e239be66e8.md) | 32 | `result-track:b013390f0a27b1e239be66e8f4f1960f39615f48aed5ecfee586f7ab26867e28` |
| 4 | `theorem` | [exponent_unique](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/OctaveBaseSeparation.lean/declarations/exponent-unique--2aea2879bd7d37b339949fbb.md) | 41 | `result-track:2aea2879bd7d37b339949fbb0aabca7487d1bc3310b09d8eaf45f7b725eea2a5` |
| 5 | `theorem` | [lower_endpoint_excluded](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/OctaveBaseSeparation.lean/declarations/lower-endpoint-excluded--bb64b3330ac0de4de3cc8236.md) | 52 | `result-track:bb64b3330ac0de4de3cc8236262427bfe546847aca40f762ee45b87b90341700` |
| 6 | `theorem` | [upper_endpoint_allowed](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/OctaveBaseSeparation.lean/declarations/upper-endpoint-allowed--ff69be967f9a73789a702a9d.md) | 54 | `result-track:ff69be967f9a73789a702a9d53d0e350f2e2afee12808b8c94ea7fa609f622ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
