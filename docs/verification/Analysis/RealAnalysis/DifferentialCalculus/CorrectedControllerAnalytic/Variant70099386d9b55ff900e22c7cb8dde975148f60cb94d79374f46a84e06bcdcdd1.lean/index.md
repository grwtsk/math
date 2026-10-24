# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrectedControllerAnalytic.Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6942aa5fc4525c5a3f673b53c26b1e07409a7b9b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6942aa5fc4525c5a3f673b53c26b1e07409a7b9b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpAdapter` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reducedW](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/reducedw--6faee1710b4c9f94c61d687c.md) | 13 | `declaration-track:6faee1710b4c9f94c61d687c838c7eea5dcd03a640f4189e82d02e4dc96c430d` |
| 2 | `theorem` | [W_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/w-factor--3dda6108734d6b3a541a00ff.md) | 18 | `result-track:3dda6108734d6b3a541a00ffed18eaade3641eebdec76006ab28713a38108949` |
| 3 | `theorem` | [reducedW_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/reducedw-differentiable--40b79f21691be3c0fb85df24.md) | 24 | `result-track:40b79f21691be3c0fb85df2452e81fd9dcaf7bfb9efa5f4fd5e1928dc494e96f` |
| 4 | `theorem` | [reducedW_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/reducedw-ne-zero--9ebd3db6b7247481f1601fcc.md) | 31 | `result-track:9ebd3db6b7247481f1601fcc4a7919ee37c7f5797d7577f6d9150dc75cd67b40` |
| 5 | `theorem` | [W_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/w-zero-iff--3f36be8f7916d9fdc6b331db.md) | 46 | `result-track:3f36be8f7916d9fdc6b331db7dee95f2f4e18f11c1aeb5649abc63ef2c1cf002` |
| 6 | `theorem` | [reducedW_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/reducedw-half--cbd5ae6d44432ea6c016d8c5.md) | 51 | `result-track:cbd5ae6d44432ea6c016d8c5d87c4733cf4c93a6bc2d4237963661c30a50d796` |
| 7 | `def` | [quotient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/quotient--f668a58fa5e00306cdd34fb7.md) | 63 | `declaration-track:f668a58fa5e00306cdd34fb70706f0dced6d3dcabfc76bfdd847dc8c744ab06d` |
| 8 | `theorem` | [quotient_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/quotient-of-ne--96843f713a7a910789a1975e.md) | 66 | `result-track:96843f713a7a910789a1975e58b3552fed8039280cbbc3c96523ea95fb1bbaf9` |
| 9 | `theorem` | [W_mul_quotient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/w-mul-quotient--1af2f494030f65a52b3d785e.md) | 72 | `result-track:1af2f494030f65a52b3d785e34fa28b9e38169f0950369475d84e4125ec2ee30` |
| 10 | `theorem` | [quotient_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/quotient-half--0c9ed0c8a10ac486e5113109.md) | 78 | `result-track:0c9ed0c8a10ac486e511310958f79586b035af54265c6bea062e7d413bb0bf1d` |
| 11 | `theorem` | [quotient_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/quotient-differentiableat--1072a2812d9e3f58c15654cd.md) | 83 | `result-track:1072a2812d9e3f58c15654cdb9ea9857d936957e2e75c6c155c132fde6dd50ad` |
| 12 | `def` | [candidate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/candidate--0daa335b5e6cb32e86002a64.md) | 89 | `declaration-track:0daa335b5e6cb32e86002a64c5daa03415f14adf03861b5b2d97ec416ba4e521` |
| 13 | `theorem` | [candidate_denominators_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/candidate-denominators-ne-zero--4658f8c18716e9adc9bb1711.md) | 93 | `result-track:4658f8c18716e9adc9bb17111bacd22ea1de8f7254db468e2e4ef22ff577aac6` |
| 14 | `theorem` | [candidate_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/declarations/candidate-differentiableat--a05e49cf07395a79f8da37da.md) | 108 | `result-track:a05e49cf07395a79f8da37da4cd9ffef038db8f395fb42b8eea80207669ce4e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
