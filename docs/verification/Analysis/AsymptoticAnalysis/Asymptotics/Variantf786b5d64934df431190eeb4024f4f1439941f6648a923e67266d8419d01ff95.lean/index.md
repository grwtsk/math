# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65957df1f79bf0913cf02d2a79848e0ddfbb17f0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65957df1f79bf0913cf02d2a79848e0ddfbb17f0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsBigO.integrableAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/isbigo-integrableatfilter--58dbfd75f8dc6cc352c2dbc0.md) | 51 | `result-track:58dbfd75f8dc6cc352c2dbc07dc27176ed0da8aa34fb89d5a5f32e13dd28ac76` |
| 2 | `theorem` | [IsBigO.integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/isbigo-integrable--3510c647d89841cdc80f546f.md) | 62 | `result-track:3510c647d89841cdc80f546fc5eebe6de85bf2d70f89e0970f87b99a8909bfaf` |
| 3 | `theorem` | [IsBigO.eventually_integrableOn](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/isbigo-eventually-integrableon--87696817e72ad46557c6ed8f.md) | 73 | `result-track:87696817e72ad46557c6ed8fd80470b65a0f3ee03a4ab4cf961b5be427c613eb` |
| 4 | `theorem` | [IsBigO.set_integral_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/isbigo-set-integral-isbigo--64c5a636504c096155e49d04.md) | 93 | `result-track:64c5a636504c096155e49d044b7ad326bfafa215ffe8e1ff917a0788af51adba` |
| 5 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/locallyintegrable-integrable-of-isbigo-cocompact--52f33f1c59baa2e2c37b9fae.md) | 113 | `result-track:52f33f1c59baa2e2c37b9fae150e1b23e638d1272a97274aa7cc48263d4b0302` |
| 6 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atBot_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/locallyintegrable-integrable-of-isbigo-atbot-attop--675fdeaa5b0e14eadbf72e6f.md) | 125 | `result-track:675fdeaa5b0e14eadbf72e6fdd92f3c0c132c483c2390284e4594890c564f63c` |
| 7 | `theorem` | [LocallyIntegrableOn.integrableOn_of_isBigO_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/locallyintegrableon-integrableon-of-isbigo-atbot--c0ff7babda1dc90a045c52fc.md) | 136 | `result-track:c0ff7babda1dc90a045c52fc0af0439be9de666613ead0f3635152b978ff1983` |
| 8 | `theorem` | [LocallyIntegrableOn.integrableOn_of_isBigO_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/locallyintegrableon-integrableon-of-isbigo-attop--422ddaad79b7eddfcd41c431.md) | 144 | `result-track:422ddaad79b7eddfcd41c4311b1358fcfa6cf3dbb43c68c0aef6367a65f7167d` |
| 9 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/locallyintegrable-integrable-of-isbigo-atbot--6da6d1cb94151e3d20ee9e76.md) | 152 | `result-track:6da6d1cb94151e3d20ee9e7624d4034faafb400c60b9181d2f9b19ef2bc4f8e3` |
| 10 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/locallyintegrable-integrable-of-isbigo-attop--c0bc60d022127fd52bb468a6.md) | 160 | `result-track:c0bc60d022127fd52bb468a60902cd46a71c98bf4941b89500db20bca14c6a88` |
| 11 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atTop_of_norm_isNegInvariant](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf786b5d64934df431190eeb4024f4f1439941f6648a923e67266d8419d01ff95.lean/declarations/locallyintegrable-integrable-of-isbigo-attop-of-norm-isneginvariant--9ec32a0b6e349d7b30ffd01a.md) | 174 | `result-track:9ec32a0b6e349d7b30ffd01a6b410c8ef2e28538331c0f617965f0562e4c2d47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
