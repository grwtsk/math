# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CyclicCharacters.Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13df9471244ece4fbaa4967b851f469ee5965479",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13df9471244ece4fbaa4967b851f469ee5965479`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.CyclicCubical` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CyclicSignal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cyclicsignal--500b3aef1bfe6c9e90b0e6e9.md) | 20 | `declaration-track:500b3aef1bfe6c9e90b0e6e9fa37ef96aec8b709f9f3ec17ebf8afb0eaaaaa8f` |
| 2 | `def` | [cyclicCharacter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cycliccharacter--4dbb155264d666796d0ae5d8.md) | 23 | `declaration-track:4dbb155264d666796d0ae5d81fb73b168bd96c0a73abbf23a07d412013d82c3e` |
| 3 | `def` | [cyclicCharacterCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cycliccharactercoefficient--1223f4eb6cca9ef8ad4f8dcb.md) | 27 | `declaration-track:1223f4eb6cca9ef8ad4f8dcbd3a4b0031bed53aab7a981cb6379e004ff0c83ca` |
| 4 | `def` | [cyclicCharacterProjector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cycliccharacterprojector--9ca7054332da5db312c4da7d.md) | 35 | `declaration-track:9ca7054332da5db312c4da7dde8a5f5ae93028a42d87022f2bfff25c701a695b` |
| 5 | `def` | [cyclicInnerProduct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cyclicinnerproduct--11d1eaecda1d9a6cc9edc2e9.md) | 42 | `declaration-track:11d1eaecda1d9a6cc9edc2e9bb6306978af54c18a69ac41405a327e43f4407a2` |
| 6 | `theorem` | [cyclicCharacter_normSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cycliccharacter-normsq--bb352911a6fb003dc22bb94a.md) | 46 | `result-track:bb352911a6fb003dc22bb94a71659fe8b1954150228dc5aeb4db570a178f4606` |
| 7 | `theorem` | [cyclicCharacter_conj_mul_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cycliccharacter-conj-mul-self--6de0bf492acbf12466752556.md) | 52 | `result-track:6de0bf492acbf12466752556f0264a30d06577b5900a1d9ec4d86a80163b0f6e` |
| 8 | `theorem` | [cyclicCharacterCoefficient_projector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cycliccharactercoefficient-projector--949ae965f6b4172ea93f69cc.md) | 57 | `result-track:949ae965f6b4172ea93f69cc0b6e3536ea2f4cfaf82ca849bc916029a576c51d` |
| 9 | `theorem` | [cyclicCharacterProjector_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cycliccharacterprojector-idempotent--1d2412d304f84dc4f0915ff8.md) | 94 | `result-track:1d2412d304f84dc4f0915ff832f609357c5b78f3ab1a5413e7b45410238d552a` |
| 10 | `theorem` | [conj_cyclicCharacterCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/conj-cycliccharactercoefficient--d0551e03979d203ccb0b8587.md) | 106 | `result-track:d0551e03979d203ccb0b858712d02894541b14d8a90276f7c9bc56311a6edc1f` |
| 11 | `theorem` | [conj_natCast_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/conj-natcast-inv--4ae3c9d75ef6ca33c7f89780.md) | 120 | `result-track:4ae3c9d75ef6ca33c7f89780ad67510be36b1b39529dc2cbb5c513e37e9feb9b` |
| 12 | `theorem` | [cyclicInnerProduct_projector_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cyclicinnerproduct-projector-left--3f230264c498c4ee1318adf0.md) | 124 | `result-track:3f230264c498c4ee1318adf0e0e7ae99eed8f13eaa297fb2c048fad3781f07f9` |
| 13 | `theorem` | [cyclicInnerProduct_projector_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cyclicinnerproduct-projector-right--9a5ba9c3ae33f095219a4afa.md) | 154 | `result-track:9a5ba9c3ae33f095219a4afaa14d868a754817f9633b1f427af434e5ceeea856` |
| 14 | `theorem` | [cyclicCharacterProjector_selfAdjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant20d70ea2147e7936c15c13978223824b9d647cb73faffb01ee48cd3b848efa3e.lean/declarations/cycliccharacterprojector-selfadjoint--80db96807866ec600377f032.md) | 186 | `result-track:80db96807866ec600377f032730b85509404f982c57f5679170a73662b5ccfa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
