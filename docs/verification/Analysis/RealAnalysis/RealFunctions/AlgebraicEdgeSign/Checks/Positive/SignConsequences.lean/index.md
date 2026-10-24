# Verification target: GRWTSK.Analysis.RealAnalysis.RealFunctions.AlgebraicEdgeSign.Checks.Positive.SignConsequences

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ee10f35a4b4748e3045e1a8e096083c6e655d43",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ee10f35a4b4748e3045e1a8e096083c6e655d43`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceHighLagPolynomialSign` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fixed_edge_is_negative](../../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean/declarations/fixed-edge-is-negative--30b55470f5b1d3e896775f37.md) | 43 | `result-track:30b55470f5b1d3e896775f374ef594d49303c706a6f9f61dda1cb32f58b19e26` |
| 2 | `theorem` | [fixed_edge_is_not_nonnegative](../../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean/declarations/fixed-edge-is-not-nonnegative--38093d8cfbe66b0be038898f.md) | 46 | `result-track:38093d8cfbe66b0be038898f85014643678e8aa59007cf6b6258e214f9c14f74` |
| 3 | `theorem` | [every_larger_edge_is_negative](../../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean/declarations/every-larger-edge-is-negative--25eaa27c808f51e22e8277a7.md) | 49 | `result-track:25eaa27c808f51e22e8277a7ed9e6f1f8eb9c57c72eabdbb28d364edfa9d98a7` |
| 4 | `theorem` | [positive_normalization_does_not_repair_sign](../../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean/declarations/positive-normalization-does-not-repair-sign--a11e1d176d2ee25305ca7003.md) | 52 | `result-track:a11e1d176d2ee25305ca700364dc829b58d9a2c907f9b91613d56b36a26729a3` |
| 5 | `theorem` | [eventual_nonnegative_route_is_refuted](../../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AlgebraicEdgeSign/Checks/Positive/SignConsequences.lean/declarations/eventual-nonnegative-route-is-refuted--82eacb44665a9c8024310e05.md) | 56 | `result-track:82eacb44665a9c8024310e057b0e84c1f8294546aff4c3acd53771a8b80b83ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
