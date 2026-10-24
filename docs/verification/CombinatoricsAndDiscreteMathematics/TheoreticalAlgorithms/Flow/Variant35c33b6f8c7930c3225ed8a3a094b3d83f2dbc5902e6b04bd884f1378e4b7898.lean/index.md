# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Flow.Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fa3dd49c42de875c033be12446976f3b6567661",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fa3dd49c42de875c033be12446976f3b6567661`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.FiniteField` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.PointCounting` — import line 8; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.LFunction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointCountModuloFromCurve](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean/declarations/pointcountmodulofromcurve--96ece70bb0f1ebb7eeddafe5.md) | 30 | `declaration-track:96ece70bb0f1ebb7eeddafe55adf1944a323c1e093879a2e32040f63ea389af5` |
| 2 | `def` | [localFactorFromPointCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean/declarations/localfactorfrompointcount--f6af1037bcda1063a58d6dc0.md) | 40 | `declaration-track:f6af1037bcda1063a58d6dc0fb0602c76599cc897f45b6098600aba39addd0cd` |
| 3 | `def` | [eulerProductApproxFromCurve](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean/declarations/eulerproductapproxfromcurve--3b4d13d24390584144d45173.md) | 46 | `declaration-track:3b4d13d24390584144d45173f280d9ce6e4343e70d0614bc4908ef223cccdb0e` |
| 4 | `def` | [logScalingClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean/declarations/logscalingclaim--bed864c02799ed07e57bbfc4.md) | 53 | `declaration-track:bed864c02799ed07e57bbfc4823be8e6da2a461d1b3cef9f5f84181c037244cc` |
| 5 | `def` | [analyticRankComparisonNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean/declarations/analyticrankcomparisonnode--61eee05682d0fc4035e28766.md) | 60 | `declaration-track:61eee05682d0fc4035e28766383fc0b0cf8bc5382ec8dad08166d262e29ee015` |
| 6 | `def` | [exampleF5PointCountNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean/declarations/examplef5pointcountnode--405a22cec6a0b0f3dcfbb57c.md) | 72 | `declaration-track:405a22cec6a0b0f3dcfbb57cf2a2f2dd3cbad1fd26266fac7c0ffc28a701ffd7` |
| 7 | `theorem` | [exampleF5PointCountNode_uses_checked_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant35c33b6f8c7930c3225ed8a3a094b3d83f2dbc5902e6b04bd884f1378e4b7898.lean/declarations/examplef5pointcountnode-uses-checked-count--097f4d728fdab1844d215485.md) | 79 | `result-track:097f4d728fdab1844d2154856c4fcd72b4e989e86c1f1726661c11333f032511` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
