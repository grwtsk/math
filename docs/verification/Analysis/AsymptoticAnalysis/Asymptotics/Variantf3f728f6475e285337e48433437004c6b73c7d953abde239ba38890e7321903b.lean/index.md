# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13231c2e8a1b93230313d0b336a0f1471afa7a5d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13231c2e8a1b93230313d0b336a0f1471afa7a5d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigOWith_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigowith-id--c832aecd14f618689a571aff.md) | 27 | `result-track:c832aecd14f618689a571affa9103949fd00adabe070d6e690bf70b39b6bb3a9` |
| 2 | `theorem` | [isBigO_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigo-id--797609357af0ef0e9dce51b0.md) | 30 | `result-track:797609357af0ef0e9dce51b0dec2b1aa38030733183cfbcebd8b7a38b8bb5b77` |
| 3 | `theorem` | [isBigOWith_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigowith-comp--2af76536ef75ce09ae07f050.md) | 33 | `result-track:2af76536ef75ce09ae07f050a0eb53b97172446d7be4caa601d08756c779fda5` |
| 4 | `theorem` | [isBigO_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigo-comp--2a179493f62bad2ee19aa05d.md) | 37 | `result-track:2a179493f62bad2ee19aa05d3a513179e75bb1761b10f240647ee294e17f5c8b` |
| 5 | `theorem` | [isBigOWith_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigowith-sub--fd93c160fb96fd9a86354a28.md) | 41 | `result-track:fd93c160fb96fd9a86354a28e046140964adc688d272aacf50faf08c1857ca0e` |
| 6 | `theorem` | [isBigO_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigo-sub--5fbd4fdfce5a0fda3840fa6c.md) | 45 | `result-track:5fbd4fdfce5a0fda3840fa6c441c3b397d511e081c69f2ce4309d55fff201c09` |
| 7 | `theorem` | [isBigO_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigo-comp--0729c54dc5632e62300ce9fd.md) | 59 | `result-track:0729c54dc5632e62300ce9fdef7d266c9c78bd77e44de8e3a98eafb82b6152ac` |
| 8 | `theorem` | [isBigO_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigo-sub--df6f98ad2d10a1ff5bd0ecc2.md) | 62 | `result-track:df6f98ad2d10a1ff5bd0ecc2513ab6a54beab340bbb1d24c04de5f0482a2a55f` |
| 9 | `theorem` | [isBigO_comp_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigo-comp-rev--18d002c7530405c5919ed0a6.md) | 71 | `result-track:18d002c7530405c5919ed0a67bc8e10c9b90fa1e1c7dc11dee07dd9d02c2da9b` |
| 10 | `theorem` | [isBigO_sub_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b.lean/declarations/isbigo-sub-rev--1b7dfa1237f4088b50769535.md) | 74 | `result-track:1b7dfa1237f4088b50769535adb5727246463e4e4e0a8686006a930abbbb66c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
