# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMuntzInventory.Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad2980c51d82198a052f50d51d8bfb4f5929a9b0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad2980c51d82198a052f50d51d8bfb4f5929a9b0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/positivesamples--5cc3f9c6de9ff48591fe7ea1.md) | 15 | `declaration-track:5cc3f9c6de9ff48591fe7ea11504813c1036d6675645c55b0fb9fe93555078b7` |
| 2 | `def` | [actualMuntz](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/actualmuntz--dc16fb7dc362a348313c5461.md) | 19 | `declaration-track:dc16fb7dc362a348313c54619a4b7e59853c79bca5571200c8eac78cc6002d2d` |
| 3 | `def` | [upperInventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/upperinventory--376e721accf687e7a27b2e9c.md) | 23 | `declaration-track:376e721accf687e7a27b2e9ca86ba8f92b812ca65ee30df8c054ab60106776f4` |
| 4 | `theorem` | [actualLogSource_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/actuallogsource-zero-nonpos--b1f12fddc052cc14ef317dc5.md) | 25 | `result-track:b1f12fddc052cc14ef317dc5543c4274fc93dacd786d3105bd493320090b8dca` |
| 5 | `theorem` | [actualLogSource_zero_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/actuallogsource-zero-at-zero--5055236cb828c9b711c7e08f.md) | 29 | `result-track:5055236cb828c9b711c7e08f42db892f48d34902021417d58c7d57f489341bd5` |
| 6 | `theorem` | [sample_zero_above_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/sample-zero-above-inventory--bd5ba56c306ca3676733edf6.md) | 32 | `result-track:bd5ba56c306ca3676733edf607927a9182794f733c904f0ada1f3226a4971f38` |
| 7 | `theorem` | [allSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/allsamples-summable--1b6b5e499cc72eb82bb0e232.md) | 38 | `result-track:1b6b5e499cc72eb82bb0e232b3f72e798f1b6bbaa38c5fbb9eefc74c0fb93bc5` |
| 8 | `theorem` | [positiveSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/positivesamples-summable--92b97e4a4ff37370b8bae14b.md) | 45 | `result-track:92b97e4a4ff37370b8bae14bd4502b55985fd01704a37662c6e674e83fbb5f46` |
| 9 | `theorem` | [positiveSamples_eq_allSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/positivesamples-eq-allsamples--3b1bb6864a3f4d31e0c98956.md) | 49 | `result-track:3b1bb6864a3f4d31e0c98956c505c0a0bf1ae9264a3e72d533e279e395b1e858` |
| 10 | `theorem` | [allSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/allsamples-eq-closed-inventory--219e1f72ec860400fde04fc1.md) | 54 | `result-track:219e1f72ec860400fde04fc1bc8ffff079f7b39daea0aa3df119f5a26e2c0542` |
| 11 | `theorem` | [positiveSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/positivesamples-eq-closed-inventory--50d6a5d7759dd7a3ee64ef83.md) | 62 | `result-track:50d6a5d7759dd7a3ee64ef8364f2bb1308e4dc810553a2153f55528829f7b937` |
| 12 | `theorem` | [actualMuntz_eq_positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/actualmuntz-eq-positivesamples--52a26f6b2cfee3d46e65b5f2.md) | 71 | `result-track:52a26f6b2cfee3d46e65b5f253001cdf2f3b1ed6da366034d38b4b411f9858c4` |
| 13 | `theorem` | [actualMuntz_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/actualmuntz-eq-closed-inventory--6745b99e8fe079e02f25d9b1.md) | 75 | `result-track:6745b99e8fe079e02f25d9b174f65af712c4acf8acf93f9254b55c6c2e54da93` |
| 14 | `theorem` | [touching_sample_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/touching-sample-zero--a142bb03e3305407720f0db5.md) | 80 | `result-track:a142bb03e3305407720f0db547e3dfdc5492debfdd8579bac2899326c54531cc` |
| 15 | `theorem` | [positiveSamples_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/positivesamples-zero-nonpos--c943e5ca64a78bf324359ae1.md) | 85 | `result-track:c943e5ca64a78bf324359ae1f082eaeb305fe81c1610f002317a549fc2973c4b` |
| 16 | `theorem` | [positiveSamples_zero_above](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/positivesamples-zero-above--f1108b40a20dbc3a8e722441.md) | 92 | `result-track:f1108b40a20dbc3a8e722441f8123081583da7156fc4e82c8d6e6e182d20e2ba` |
| 17 | `theorem` | [actualMuntz_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/actualmuntz-zero-outside--1e7bbcce0379c5bbf8032ef2.md) | 106 | `result-track:1e7bbcce0379c5bbf8032ef2d2e9d4ef1f0b46dd427516fa1d6f425829b7f438` |
| 18 | `theorem` | [positiveSamples_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/positivesamples-measurable--553435b6e1dac1e107f0b099.md) | 113 | `result-track:553435b6e1dac1e107f0b099adc07399e598163833e76ac0f75a7fd060c880a5` |
| 19 | `theorem` | [actualMuntz_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/actualmuntz-measurable--d6af0be0389d58ac35902d92.md) | 117 | `result-track:d6af0be0389d58ac35902d92575d96b2297bd92e55c2c26d74756c68662fc960` |
| 20 | `theorem` | [positiveSamples_summable_global](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/positivesamples-summable-global--218d918579f24b339eac3a3d.md) | 122 | `result-track:218d918579f24b339eac3a3d79ab2fa297c10f83238db26e467533cec06f1922` |
| 21 | `theorem` | [actualMuntz_hasCompactSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant741efc2659a0cfdb728739ca824270a77110fcd13b5c8f13274bfd4990bd0124.lean/declarations/actualmuntz-hascompactsupport--48b2fb9c266315844861c8f4.md) | 131 | `result-track:48b2fb9c266315844861c8f40e8085e650899e65e83199812ecfcf02efd95a95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
