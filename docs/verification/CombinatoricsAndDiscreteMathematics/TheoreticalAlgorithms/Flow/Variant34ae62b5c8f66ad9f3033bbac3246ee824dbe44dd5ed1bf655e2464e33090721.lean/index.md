# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Flow.Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33c389ee9501eafdc82da777a99e2b04cb10afe1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33c389ee9501eafdc82da777a99e2b04cb10afe1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Arithmetic` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.FiniteField` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.PointCounting` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.LFunction` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointCountModuloFromCurve](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean/declarations/pointcountmodulofromcurve--9e078f7fa1295b3802b5ba5c.md) | 22 | `declaration-track:9e078f7fa1295b3802b5ba5c4bebc1c2ec1cff3150da8d24a575c392a3168b05` |
| 2 | `def` | [localFactorFromPointCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean/declarations/localfactorfrompointcount--76344047ac787879913171ea.md) | 32 | `declaration-track:76344047ac787879913171ea933ecae923a64a9e298615e3710adc8b000c4d89` |
| 3 | `def` | [eulerProductApproxFromCurve](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean/declarations/eulerproductapproxfromcurve--da13a23c93b8dd0abd852dd7.md) | 38 | `declaration-track:da13a23c93b8dd0abd852dd78e2ea90174b6f3d84892289b969204ebc3bf8b6c` |
| 4 | `def` | [logScalingClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean/declarations/logscalingclaim--92b224d22349f03f8ec42934.md) | 45 | `declaration-track:92b224d22349f03f8ec429342f9c4e372c90fe4055c6d14c8271c0ed9687e568` |
| 5 | `def` | [analyticRankComparisonNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean/declarations/analyticrankcomparisonnode--55e038f9c63b1ce1490d2cbe.md) | 52 | `declaration-track:55e038f9c63b1ce1490d2cbe3fba189efd33182a085d32e45a18c6b960977171` |
| 6 | `def` | [exampleF5PointCountNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean/declarations/examplef5pointcountnode--25123b7020ebe65bb761ccca.md) | 64 | `declaration-track:25123b7020ebe65bb761ccca9dd2c2022146a724a091da72f8913bdf74bdfbad` |
| 7 | `theorem` | [exampleF5PointCountNode_uses_checked_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flow/Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721.lean/declarations/examplef5pointcountnode-uses-checked-count--070b54b59b7b0e28b7394e17.md) | 71 | `result-track:070b54b59b7b0e28b7394e1720c338c001e58ec93dd7858dcbc0d69a29ee05d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
