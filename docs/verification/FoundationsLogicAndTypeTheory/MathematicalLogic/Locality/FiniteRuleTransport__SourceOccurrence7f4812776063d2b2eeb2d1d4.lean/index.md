# Verification target: GRWTSK.Logic.Locality.FiniteRuleTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d6c91c855a5f54a3202dab0af8e5bceef81bb8a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Locality/FiniteRuleTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d6c91c855a5f54a3202dab0af8e5bceef81bb8a`.

Source path: `GRWTSK/Logic/Locality/FiniteRuleTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Locality/FiniteRuleTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Inference.FiniteRuleSystems`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Finset.Union` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [providerReadUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/providerreadunion--dffe70332453b4a4a531ee33.md) | 37 | `declaration-track:dffe70332453b4a4a531ee33498e8a38fbf9ffc7e355d4bfa17f88415fd62f48` |
| 2 | `theorem` | [mem_providerReadUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/mem-providerreadunion--bad9adb79c0eb5e8b63b9802.md) | 41 | `result-track:bad9adb79c0eb5e8b63b98028e7cea38a6e3cc45cfd26c84b01e062ce6f70eaf` |
| 3 | `theorem` | [provider_read_agreement](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/provider-read-agreement--809dbd3aa1ac0616cb4d2178.md) | 48 | `result-track:809dbd3aa1ac0616cb4d2178adbbadce4f67a955eb9a756099a3ba27bcba00c6` |
| 4 | `def` | [eligibleReadUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/eligiblereadunion--42ce4585b4ff8629ce11b210.md) | 61 | `declaration-track:42ce4585b4ff8629ce11b2102660d4810c3a7708629ed080e7197690c4a496a1` |
| 5 | `theorem` | [currently_eligible_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/currently-eligible-preserved--16a4aca3a800bea10ec80420.md) | 68 | `result-track:16a4aca3a800bea10ec80420fffc31554d7a4eb6d83b22dd494e0bb71b6d9231` |
| 6 | `theorem` | [eligible_rule_transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/eligible-rule-transport--0ea3ab05705c53a125f687e8.md) | 87 | `result-track:0ea3ab05705c53a125f687e8f1565e600549e6cfb5070e586828e67c2b2adf33` |
| 7 | `theorem` | [grounded_replay_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/grounded-replay-target--c72d38475beb1346ae980bc7.md) | 105 | `result-track:c72d38475beb1346ae980bc79d619a2e7289df9df00ad2e266e1146116060e01` |
| 8 | `theorem` | [computed_support_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/computed-support-preserved--e36cc21b139f05d5ad5a8cc2.md) | 125 | `result-track:e36cc21b139f05d5ad5a8cc27fc598676b2956335335e120e25a6541463c9968` |
| 9 | `theorem` | [computed_support_replay_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/computed-support-replay-target--e3ab6a749abc493c8bad543b.md) | 141 | `result-track:e3ab6a749abc493c8bad543bf96b0d53302bc768d184b466c0053f27af431dac` |
| 10 | `def` | [target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/target--1d6a78ea2e07b1847b64a78f.md) | 159 | `declaration-track:1d6a78ea2e07b1847b64a78f0013e31e3680bb112685c5e03f4e205cdabcfe41` |
| 11 | `def` | [routes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/routes--8d66aea0877d01a3fc271179.md) | 162 | `declaration-track:8d66aea0877d01a3fc271179a7f5a5350d76517e9d11c634e98626ee5bcb367f` |
| 12 | `def` | [recorded](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/recorded--9b649f3a2c392c0fe4463cfc.md) | 166 | `declaration-track:9b649f3a2c392c0fe4463cfc5a92d942ccd043949ef8a9a1dc2d1b229880320d` |
| 13 | `def` | [providers](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/providers--ac184616a4b12f7bc1a198a6.md) | 170 | `declaration-track:ac184616a4b12f7bc1a198a6095ce61803ab1afdad05cb98c81604ca25a143c4` |
| 14 | `theorem` | [all_providers_eligible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/all-providers-eligible--bd062cfcf985f3662bb5c1a5.md) | 191 | `result-track:bd062cfcf985f3662bb5c1a55217cd743fd91f944d22917e66b2eb9ee7fc8ff1` |
| 15 | `theorem` | [footprint_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/footprint-exact--2608d5da3667dbe27bea935d.md) | 196 | `result-track:2608d5da3667dbe27bea935de4aac8754f9dffe5c8c9ad5d1cf0de997a52e031` |
| 16 | `theorem` | [grounded_P](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/grounded-p--5d1653c60ccb448c092b8aff.md) | 202 | `result-track:5d1653c60ccb448c092b8aff57ab5e80dac12fd4b72cfb3b5c8339bb0d9441b9` |
| 17 | `theorem` | [grounded_Q](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/grounded-q--40ccecf0d4b51e8c6ed72bfc.md) | 211 | `result-track:40ccecf0d4b51e8c6ed72bfcef38f3391c86fb20265aa977f2631a927d321a8c` |
| 18 | `theorem` | [computed_Q](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/computed-q--19434ef3dfcd049054f9d825.md) | 221 | `result-track:19434ef3dfcd049054f9d825421e6e872d4e1a72c465bcfb7da2ee72dfd92aa3` |
| 19 | `def` | [hostileLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/hostileleft--774ade18e4d2a86df4e630a4.md) | 225 | `declaration-track:774ade18e4d2a86df4e630a49f8974280118f19492e62246c306eceb16ce3f72` |
| 20 | `def` | [hostileRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/hostileright--4dbd2d3d84ec61c2d4527aa5.md) | 227 | `declaration-track:4dbd2d3d84ec61c2d4527aa5288937ec85961ae9c3c79e9420d11dac171b6ccf` |
| 21 | `theorem` | [hostile_pair_agrees](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/hostile-pair-agrees--cb5f53aa299e4c657f8dba18.md) | 229 | `result-track:cb5f53aa299e4c657f8dba18dc2702957e7159a02b8cce80f75dbc3bdece77f3` |
| 22 | `theorem` | [global_conclusion_locality_fails](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/global-conclusion-locality-fails--5f88b6c10a3584b57811c3e6.md) | 238 | `result-track:5f88b6c10a3584b57811c3e621194b9b49c010f17bba8d05e26467033189f325` |
| 23 | `theorem` | [no_union_revision_certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/no-union-revision-certificate--61dda2d4cc0418e834ea9302.md) | 247 | `result-track:61dda2d4cc0418e834ea930237e2e9612739acf319d6b5d793f83dddfd52f0a1` |
| 24 | `theorem` | [hostile_left_not_fresh](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/hostile-left-not-fresh--b902c50026ece5270f083ddc.md) | 258 | `result-track:b902c50026ece5270f083ddc50f5d57fc440b9f0594c2083745b242bcf94cc2c` |
| 25 | `theorem` | [safe_unread_change_replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/declarations/safe-unread-change-replay--e777ae0f4f10e343950d9c0d.md) | 266 | `result-track:e777ae0f4f10e343950d9c0da7decac40883b4be03b38e2d410d935306f38fd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
