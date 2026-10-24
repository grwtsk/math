# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceQuadratureEndpointFixtures.Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb8df3f7eee90aca538c4cec724099a69922116",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb8df3f7eee90aca538c4cec724099a69922116`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFractionalQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellInterior](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean/declarations/cellinterior--02131f7340414d9968f900ea.md) | 22 | `declaration-track:02131f7340414d9968f900ead92fb3b7aa8a47d00f6cffa062dd1643d2dc4126` |
| 2 | `theorem` | [cellInterior_endpoints](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean/declarations/cellinterior-endpoints--c582637e6f469f0c5867054d.md) | 24 | `result-track:c582637e6f469f0c5867054d74fcbb103d73a38f42bd8e3ea6c895023f8b1127` |
| 3 | `theorem` | [cellInterior_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean/declarations/cellinterior-integral--cc23c5b45f08b563611a81d2.md) | 27 | `result-track:cc23c5b45f08b563611a81d251994263dfd804ee58a2e97e5abc8d303f046391` |
| 4 | `theorem` | [zero_endpoints_do_not_erase_continuous_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean/declarations/zero-endpoints-do-not-erase-continuous-tail--86cd917acc2eea34dc691c37.md) | 45 | `result-track:86cd917acc2eea34dc691c37ab6fd90069e50d47c1a54f1f3e68205c2d73cbb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
