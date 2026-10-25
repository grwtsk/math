# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PiLex.Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31f7ae6d82f19fb13adc1189356b8ce8e03448da",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31f7ae6d82f19fb13adc1189356b8ce8e03448da`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WellFounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/lex--17b8b005898fae9c44efb00b.md) | 45 | `declaration-track:17b8b005898fae9c44efb00b4c229b4d9c7d3034fa4809bf1f44e2d8b22929d7` |
| 2 | `theorem` | [toLex_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/tolex-apply--c092e4d0b43446b1dce84797.md) | 54 | `result-track:c092e4d0b43446b1dce84797a63557b89a80258b453aa75f38564336b6a459e8` |
| 3 | `theorem` | [ofLex_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/oflex-apply--15b9ac224cffaec6288ece2b.md) | 58 | `result-track:15b9ac224cffaec6288ece2b41fd365ee5e75ccfd8018c167a30674692563518` |
| 4 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/lex-lt-of-lt-of-preorder--70f44d2645ac7ed7fb135eed.md) | 61 | `result-track:70f44d2645ac7ed7fb135eedc6cc427876aa64b713ad4e5b8ab509a420745a9e` |
| 5 | `theorem` | [lex_lt_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/lex-lt-of-lt--2dc2f1bd1eb65bfbc7b78da1.md) | 67 | `result-track:2dc2f1bd1eb65bfbc7b78da150bf3c6c1b2fe8726cfc16c79706d6e074ad0380` |
| 6 | `theorem` | [isTrichotomous_lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/istrichotomous-lex--4c98e207c86056908a642374.md) | 72 | `result-track:4c98e207c86056908a642374f09a5e791d774180f2093a626a5c9dde983d4300` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/instance--cbd52b21345f486402a406a4.md) | 88 | `declaration-track:cbd52b21345f486402a406a4a18312d5f2dc9e1315ee2860711db1d0e399608b` |
| 8 | `instance` | [Lex.isStrictOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/lex-isstrictorder--6dd50f1fda79fbf30286e674.md) | 91 | `declaration-track:6dd50f1fda79fbf30286e6744a4460423840a611b65d3fc8cc4862e5cbc94c63` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/instance--de8132c72a45950ff52f2611.md) | 101 | `declaration-track:de8132c72a45950ff52f2611172c63c22002640a8b17af0803d6e9afdbaf4f04` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/instance--45ebf99b67dbc8bf8152af05.md) | 105 | `declaration-track:45ebf99b67dbc8bf8152af059b9a3cc25ed34947573eb3b735ac6d1a80220be7` |
| 11 | `theorem` | [toLex_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/tolex-monotone--9e4c80be1c8f3fc156067ae5.md) | 117 | `result-track:9e4c80be1c8f3fc156067ae58f5168c34965e3b8dbb64682f878688ba85b528e` |
| 12 | `theorem` | [toLex_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/tolex-strictmono--590948d67ae849b65846823a.md) | 125 | `result-track:590948d67ae849b65846823ada96c0f23ab14f90c5d8790ad942db0c269f3266` |
| 13 | `theorem` | [lt_toLex_update_self_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/lt-tolex-update-self-iff--53fc98ef76e62daf17b7a7bd.md) | 133 | `result-track:53fc98ef76e62daf17b7a7bd6798742900d34a06df8b1624a62a20978c69260f` |
| 14 | `theorem` | [toLex_update_lt_self_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/tolex-update-lt-self-iff--e821126a479a96c844e735ee.md) | 144 | `result-track:e821126a479a96c844e735ee7b8400fa850447400a7d970007da576af5b53ab2` |
| 15 | `theorem` | [le_toLex_update_self_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/le-tolex-update-self-iff--5b08749e6625eeeb3a48d5ff.md) | 155 | `result-track:5b08749e6625eeeb3a48d5ff47828b7cc74dae4309b990d077d7f744568275f4` |
| 16 | `theorem` | [toLex_update_le_self_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/tolex-update-le-self-iff--f18affb12e3b53f375a1f621.md) | 159 | `result-track:f18affb12e3b53f375a1f6216be91300a15caddb9e9c24b1277c2a9c74985a67` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/instance--062b64f7b28208679bfabe8f.md) | 164 | `declaration-track:062b64f7b28208679bfabe8fcf2510f65e0d0fab9cf0bb943c98ae42092a8c62` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/instance--5873e044f9355f76d3021dfe.md) | 169 | `declaration-track:5873e044f9355f76d3021dfe648e65dcbee6723f28b9752691202484869ac6c1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/instance--1f6dd5d2f959c59b397ad8ce.md) | 174 | `declaration-track:1f6dd5d2f959c59b397ad8ce20c6bb4428447fe79e710252fe06e4474fd2d274` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/instance--7cbe3136a1aca460862af43a.md) | 178 | `declaration-track:7cbe3136a1aca460862af43a263d9c0092c5c34d01dddecf5cec1542e632ab05` |
| 21 | `theorem` | [Lex.noMaxOrder'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/lex-nomaxorder--fff6246ede662e36aaad4d5d.md) | 192 | `result-track:fff6246ede662e36aaad4d5d91949868c05451f82f4625a09ef082e6d26ccfd8` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/instance--a6ebeaacf1a18f40fa5b9d6b.md) | 200 | `declaration-track:a6ebeaacf1a18f40fa5b9d6ba993903a81927c1f84f6329654c0b2c6eac5260c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/instance--7d7127111781a7c9fc6c96a0.md) | 206 | `declaration-track:7d7127111781a7c9fc6c96a02ae461cab5c2c2004a6f0e419148be08cc2a46b3` |
| 24 | `theorem` | [lex_desc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant90ad49ea6e837ba71136f4c384a0aa4b89142f036effabd61652577d19dd7c7d.lean/declarations/lex-desc--710c33f004ded7455c41db1c.md) | 214 | `result-track:710c33f004ded7455c41db1c8bc8c68c3635e77d306db000ba238aacef62ddfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
