# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadrature.Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16a059aaeaf18b0c3314d4444b8bb4aa21502eb8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16a059aaeaf18b0c3314d4444b8bb4aa21502eb8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean/declarations/logsquarequadrature--487e9163554b9d20cad33bce.md) | 24 | `declaration-track:487e9163554b9d20cad33bceddc20f0cd44ca0b26a9518600f77a912fb6b872e` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean/declarations/logsquare-monotoneon--4874f9388466c8b1fc96e5ed.md) | 28 | `result-track:4874f9388466c8b1fc96e5ed324fe1fc4bedf1f9cce0b3b2d16b7d3d59284020` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean/declarations/logsquare-intervalintegrable--569479e97bf44f9ff446f897.md) | 33 | `result-track:569479e97bf44f9ff446f897a8b11595f8a17855cebfa932a7e6cba6651f6754` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean/declarations/logsquare-integer-bounds--eed5f6b6d01ea7cb1c294654.md) | 40 | `result-track:eed5f6b6d01ea7cb1c294654d9afcf052bbd8727277ff35ff91ee7b755890700` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant67f10a11071e808afe39e31ea0cadcbd12360d33651bc43dea545aa76dba2594.lean/declarations/logsquarequadrature-abs-le--cc055643cbf862c8c8427474.md) | 73 | `result-track:cc055643cbf862c8c842747476abdad24a710275fc8a8408341b598c42208a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
