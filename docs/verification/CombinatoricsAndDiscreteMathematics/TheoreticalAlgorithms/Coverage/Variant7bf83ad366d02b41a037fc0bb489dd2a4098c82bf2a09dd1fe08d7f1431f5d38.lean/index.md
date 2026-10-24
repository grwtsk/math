# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Coverage.Variant7bf83ad366d02b41a037fc0bb489dd2a4098c82bf2a09dd1fe08d7f1431f5d38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e108deb9acce6e6bb6558bb791981a3e080f4ae0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coverage/Variant7bf83ad366d02b41a037fc0bb489dd2a4098c82bf2a09dd1fe08d7f1431f5d38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coverage/Variant7bf83ad366d02b41a037fc0bb489dd2a4098c82bf2a09dd1fe08d7f1431f5d38.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coverage/Variant7bf83ad366d02b41a037fc0bb489dd2a4098c82bf2a09dd1fe08d7f1431f5d38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e108deb9acce6e6bb6558bb791981a3e080f4ae0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coverage/Variant7bf83ad366d02b41a037fc0bb489dd2a4098c82bf2a09dd1fe08d7f1431f5d38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coverage/Variant7bf83ad366d02b41a037fc0bb489dd2a4098c82bf2a09dd1fe08d7f1431f5d38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Heat.Smoothing` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Foundation.LogicalFoundation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeatCoverageContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coverage/Variant7bf83ad366d02b41a037fc0bb489dd2a4098c82bf2a09dd1fe08d7f1431f5d38.lean/declarations/heatcoveragecontext--3d4ba97cbbd26e41c7dc328c.md) | 26 | `declaration-track:3d4ba97cbbd26e41c7dc328c1dd8340dce951f1000e6990614d80d2ca04ad800` |
| 2 | `def` | [HeatFlowCoverageAdmissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coverage/Variant7bf83ad366d02b41a037fc0bb489dd2a4098c82bf2a09dd1fe08d7f1431f5d38.lean/declarations/heatflowcoverageadmissible--9986308c160474c81824184b.md) | 30 | `declaration-track:9986308c160474c81824184bf6d07947b8ddb0cff9e175936e62aab331d30500` |
| 3 | `theorem` | [heatFlowCoverage_requires_foundation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coverage/Variant7bf83ad366d02b41a037fc0bb489dd2a4098c82bf2a09dd1fe08d7f1431f5d38.lean/declarations/heatflowcoverage-requires-foundation--71e7d665ada014166326ce08.md) | 35 | `result-track:71e7d665ada014166326ce08caed9e2c650738aad9e282d86f127cbc710978f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
