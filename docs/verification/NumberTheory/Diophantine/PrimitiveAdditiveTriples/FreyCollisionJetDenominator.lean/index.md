# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetDenominator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65babef08c08ab3bab06374346f03d191c508740",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65babef08c08ab3bab06374346f03d191c508740`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Height.WeierstrassJetDenominator`](../../../../../mathematics/NumberTheory/Height/WeierstrassJetDenominator.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetTower`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jetCoefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/jetcoefficients--2660961d13fde1a47e97c69f.md) | 25 | `declaration-track:2660961d13fde1a47e97c69f3b8fa3d35ac17d1ea62cf525f42030cd9e965fba` |
| 2 | `theorem` | [same_source_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/same-source-equation--6106fc39147a85eb8d87bdbb.md) | 29 | `result-track:6106fc39147a85eb8d87bdbb4f651742d626376fa7768fe264d0db8d3f79f36e` |
| 3 | `theorem` | [same_selected_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/same-selected-lift--9df981489c3f048b0ce64e6c.md) | 35 | `result-track:9df981489c3f048b0ce64e6c95765f056177b4e33b56fc44a9e42bf35aeb9a59` |
| 4 | `theorem` | [selected_common_den_dvd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/selected-common-den-dvd--ec5af4a5428793444b863d54.md) | 45 | `result-track:ec5af4a5428793444b863d5486fe1a6e74448d87489a2b35eee510f8b025a269` |
| 5 | `theorem` | [selected_coefficient_stable](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/selected-coefficient-stable--e605b6d6d52b6c3c6e2b607c.md) | 49 | `result-track:e605b6d6d52b6c3c6e2b607c2ae1fc75ad8c7b7f958c04b4d1a0a9069cd9c297` |
| 6 | `def` | [family](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/family--ba50c93aaf593169aeaa41af.md) | 56 | `declaration-track:ba50c93aaf593169aeaa41af768617f0472858852de811aac3e5a9ba9e1d93fa` |
| 7 | `theorem` | [family_first](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/family-first--427019bce0ca8780d816869c.md) | 59 | `result-track:427019bce0ca8780d816869cc4d7e7dfa710889f6083479b590dcfe614ab17c6` |
| 8 | `theorem` | [family_descends](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/family-descends--f38d53b275a39d284779a840.md) | 65 | `result-track:f38d53b275a39d284779a8408822d848df009eca739dc7d77ca00f8c14c8ac01` |
| 9 | `theorem` | [family_coefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/family-coefficients--0047aa9856177162a087cb15.md) | 69 | `result-track:0047aa9856177162a087cb15770bbe8b391d27c94441bfead06abc33642761a6` |
| 10 | `theorem` | [family_coefficient_denominator](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/family-coefficient-denominator--d891b655165faa632ad76a17.md) | 78 | `result-track:d891b655165faa632ad76a175c381d6ae88367c8f1367f46a9db893bf885d645` |
| 11 | `theorem` | [family_common_denominator](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/family-common-denominator--d670070e37986b41820d6172.md) | 87 | `result-track:d670070e37986b41820d61727d88f5fa775a37d641cae9e2cbd2bc1673f77062` |
| 12 | `theorem` | [family_common_prime_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/family-common-prime-depth--bbe9863e43f27be1e0084817.md) | 96 | `result-track:bbe9863e43f27be1e008481732e008925e29d86e830fdc0d276abfa36c9ef25d` |
| 13 | `theorem` | [family_clearing_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/family-clearing-iff--e91c02791f22028bc8545ca5.md) | 103 | `result-track:e91c02791f22028bc8545ca58892a3c93b9750724bb81bf948305edf35dc4baa` |
| 14 | `theorem` | [fixed_source_unbounded](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/fixed-source-unbounded--6734d11b41c69b451f8acac9.md) | 108 | `result-track:6734d11b41c69b451f8acac9c90533472eca765958656593310e6c290e758a45` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/instance--0137a9bcbdb37a6f91921100.md) | 114 | `declaration-track:0137a9bcbdb37a6f919211005b3bb43c739cf73f520c40400ba91ea0dca37964` |
| 16 | `def` | [fixed_source_local_tower](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/fixed-source-local-tower--c49548a5b70e5bfadc8b28fa.md) | 117 | `declaration-track:c49548a5b70e5bfadc8b28fa297db7f9c7506fc30e520052b3a03f1ba20a6868` |
| 17 | `theorem` | [fixed_source_observation_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetDenominator.lean/declarations/fixed-source-observation-height--038451bb68059572a28168bf.md) | 126 | `result-track:038451bb68059572a28168bf7cf749e6c275a08333ff2eac3630ab9f98ad72b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
