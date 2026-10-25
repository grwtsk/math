# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinTactic.Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33b1ad92faeeedea2580823a3a9656fcec893769",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33b1ad92faeeedea2580823a3a9656fcec893769`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Replace` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RenameInaccessibles` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalWithAnnotateState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalwithannotatestate--d14b29b141a610fff7dd367e.md) | 31 | `declaration-track:d14b29b141a610fff7dd367e9dd66f1ca383db54c0bc2ecbb8976a92cb2d64f7` |
| 2 | `def` | [evalDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evaldone--aec86d91c8338714ba15b026.md) | 36 | `declaration-track:aec86d91c8338714ba15b026c78e891440ee937c38dbb92b00db54e4eb2b117e` |
| 3 | `def` | [evalSepTactics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalseptactics--0d9b5ce31721d951d66c2f6f.md) | 44 | `declaration-track:0d9b5ce31721d951d66c2f6f14b9c1dd4c131be1bbe926a1732f98c3f9736912` |
| 4 | `def` | [evalSeq1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalseq1--de76c1c385b18d5a1e82ef43.md) | 160 | `declaration-track:de76c1c385b18d5a1e82ef43eee5a666c94799841081f980d23574509ada97a1` |
| 5 | `def` | [evalParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalparen--442b32131091083046245524.md) | 163 | `declaration-track:442b32131091083046245524c7c805840f30f0336f223a207fb9ee319ef067ba` |
| 6 | `def` | [evalTacticSeq1Indented](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evaltacticseq1indented--8dc77a6b98fdf81812621a45.md) | 167 | `declaration-track:8dc77a6b98fdf81812621a450c5a45d790f51199438978a289c7599fd150b204` |
| 7 | `def` | [evalTacticSeqBracketed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evaltacticseqbracketed--89d017907019ec053f306546.md) | 171 | `declaration-track:89d017907019ec053f3065469dd3cd5489abc5bc149bb6abb9b247a9cd7098b2` |
| 8 | `def` | [evalTacticCDot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evaltacticcdot--c729c98d9cbe4233888c7109.md) | 179 | `declaration-track:c729c98d9cbe4233888c7109f6a837d60f68382227373a7a37adb6db45d716cf` |
| 9 | `def` | [evalFocus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalfocus--8117e5f2fdac1bda2d413b17.md) | 190 | `declaration-track:8117e5f2fdac1bda2d413b1746bb673c8c488b5027889f7145fb2a9858b3ae78` |
| 10 | `def` | [getOptRotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/getoptrotation--7e87c86572b47b25b7e95beb.md) | 197 | `declaration-track:7e87c86572b47b25b7e95beb1497d2620d7b085a6c41555622d526ba9759abf6` |
| 11 | `def` | [evalRotateLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalrotateleft--215a00cee3be562424b9833e.md) | 200 | `declaration-track:215a00cee3be562424b9833e5fdc2c6a31d9e4533761584726a270bd772773ad` |
| 12 | `def` | [evalRotateRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalrotateright--65ad3a773cb301b6fe84790d.md) | 204 | `declaration-track:65ad3a773cb301b6fe84790dd551c8133146bd8135158666548fd4bc50e74aa0` |
| 13 | `def` | [evalOpen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalopen--cbfba4115b0ca4abb66edb48.md) | 208 | `declaration-track:cbfba4115b0ca4abb66edb482e8e993243970e509e7a1b8ac7253d6bf71419be` |
| 14 | `def` | [elabSetOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/elabsetoption--89325f9e10d1b552935737be.md) | 218 | `declaration-track:89325f9e10d1b552935737be63bc52915df6c540e8919a0996a8c751221a9b9b` |
| 15 | `def` | [evalAllGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalallgoals--47b6f61b8d5f3bd2f18477c5.md) | 228 | `declaration-track:47b6f61b8d5f3bd2f18477c5557ce09e2cbfd7810b9f9b8c169a07d4f05f2722` |
| 16 | `def` | [evalAnyGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalanygoals--8e084383f20a0ee1d0b83cae.md) | 255 | `declaration-track:8e084383f20a0ee1d0b83cae0a300c37cbd042bfa9c0561c9a8214978ada2ef8` |
| 17 | `def` | [evalTacticSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evaltacticseq--2700dd685ed1c7e5c6b6b23f.md) | 273 | `declaration-track:2700dd685ed1c7e5c6b6b23fdec628055b2dba6a37a619bd7f38121b67497564` |
| 18 | `def` | [evalChoiceAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalchoiceaux--7e228d71cd134a4e7b872cf9.md) | 276 | `declaration-track:7e228d71cd134a4e7b872cf9f7d417980a9e093114c70c8f841f11bd61411800` |
| 19 | `def` | [evalChoice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalchoice--081e2a8b2d30b35fced16717.md) | 285 | `declaration-track:081e2a8b2d30b35fced16717d9dd37efcc13abd7c27d833e90d8e79cba58ed30` |
| 20 | `def` | [evalSkip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalskip--85833abc5c7e6cddbaea9be1.md) | 288 | `declaration-track:85833abc5c7e6cddbaea9be16ec703830f22abcaf182f1aa714a40cb5db24df8` |
| 21 | `def` | [evalUnknown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalunknown--6c34e57e06c62a461a8afb21.md) | 290 | `declaration-track:6c34e57e06c62a461a8afb21d73553c218bd388766bf12f2fb9a3960e3da465a` |
| 22 | `def` | [evalFailIfSuccess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalfailifsuccess--9b92ce06f6e2f0910505d659.md) | 293 | `declaration-track:9b92ce06f6e2f0910505d659f48d354de71ad9428be196c52333a970fc8677c9` |
| 23 | `def` | [evalTraceState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evaltracestate--8f9d62bf7092c4e910e69529.md) | 299 | `declaration-track:8f9d62bf7092c4e910e695290ab21ef356d7aefb57dedce772828bc60883a9cd` |
| 24 | `def` | [evalTraceMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evaltracemessage--4198521506be952c6dac8fae.md) | 303 | `declaration-track:4198521506be952c6dac8faebc3b43bf2ae0db1f62bf229112f56bdd2baa37af` |
| 25 | `def` | [evalAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalassumption--13587d77632aa06717064056.md) | 308 | `declaration-track:13587d77632aa0671706405665864fa205d541db175d7d4a02e3b92a031e19e0` |
| 26 | `def` | [evalContradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalcontradiction--1bbcffbe27c29e0b95fc385e.md) | 314 | `declaration-track:1bbcffbe27c29e0b95fc385e1cf0e8e40857720860fd34eabf9b40e2dd503b8c` |
| 27 | `def` | [evalRefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalrefl--e24c99b37d831656fb4f1048.md) | 317 | `declaration-track:e24c99b37d831656fb4f104849b4bdcf5b2a6441347738d9556842dc32cfa2e6` |
| 28 | `def` | [evalIntro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalintro--ec94ca2c3317e9107067f355.md) | 321 | `declaration-track:ec94ca2c3317e9107067f3553c91af1ecbb002bed7a2cc48abf7c3cdce66fa14` |
| 29 | `def` | [evalIntroMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalintromatch--bd4aaec29a7ee0695a05664f.md) | 390 | `declaration-track:bd4aaec29a7ee0695a05664f9bf5f70e3d997523e7eafc8b5cadbb6ca83273f5` |
| 30 | `def` | [evalIntros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalintros--ebcdcd5a86e05d455437868d.md) | 395 | `declaration-track:ebcdcd5a86e05d455437868dc6ae1d738e68c48b9ea65dc5cf369f4106edd655` |
| 31 | `def` | [evalRevert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalrevert--a1de3729929f51685144e63a.md) | 409 | `declaration-track:a1de3729929f51685144e63a30ca84d2ee4d2ae88aaf26a27de0a01e7b95d347` |
| 32 | `def` | [evalClear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalclear--0c80f4a825ed6507a957b58a.md) | 416 | `declaration-track:0c80f4a825ed6507a957b58a1c9d167b751f788a6dbd7aa705aca90b25bf08fd` |
| 33 | `def` | [evalClearValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalclearvalue--48e63653a1b6bb8963e8aef7.md) | 427 | `declaration-track:48e63653a1b6bb8963e8aef7d723cfd71bee985eee32079d917106eeb4ca2219` |
| 34 | `def` | [forEachVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/foreachvar--f5087e865c25c18471cb0164.md) | 492 | `declaration-track:f5087e865c25c18471cb0164c553f5c4a7dcd4428dd44e5a7248af934f72b5bf` |
| 35 | `def` | [evalSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalsubst--fe303f37cfab36f8f60c68f9.md) | 499 | `declaration-track:fe303f37cfab36f8f60c68f9c432b7b80dcb3cbed0c12ac80c1972b6619f0f94` |
| 36 | `def` | [evalSubstVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalsubstvars--a663b794fe26d9a0db056cc8.md) | 517 | `declaration-track:a663b794fe26d9a0db056cc84845572bfef9a7a7cb46d5a1b2288a0cd3ccecb0` |
| 37 | `def` | [evalSubstEqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalsubsteqs--647806007624f06f830e02c5.md) | 520 | `declaration-track:647806007624f06f830e02c5878485c7ad02e5ba199780ec1ace5a80de1875db` |
| 38 | `def` | [findTag?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/findtag--106d01927564ec4234e25687.md) | 534 | `declaration-track:106d01927564ec4234e256870a37f4eb5cc46e85e8da8cbef33656746fd75515` |
| 39 | `def` | [getCaseGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/getcasegoals--a826163173f3fc0648545f94.md) | 542 | `declaration-track:a826163173f3fc0648545f94722f58cce6c11a477dcbafdff3aa996e0df12f04` |
| 40 | `def` | [evalCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalcase--783be9204db0e8c253c119c8.md) | 595 | `declaration-track:783be9204db0e8c253c119c846600f53bb4eed6c545201c7cebfae234de91d20` |
| 41 | `def` | [evalCase'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalcase--8b1085293978a3fe4f2aeac9.md) | 609 | `declaration-track:8b1085293978a3fe4f2aeac99899fad7d296e02a828b159ac1f9c12f1f115c5e` |
| 42 | `def` | [evalRenameInaccessibles](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalrenameinaccessibles--6c6c464dee67f71d84d5eaa9.md) | 626 | `declaration-track:6c6c464dee67f71d84d5eaa9e9301e0c0109d279a7a89fa58cf91aa290cd33ee` |
| 43 | `def` | [evalFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalfirst--b178d15cd52c18dbbc94f047.md) | 630 | `declaration-track:b178d15cd52c18dbbc94f047ee61b7ba7eb8e5957d0ce7a1092f84f2ad5be53d` |
| 44 | `def` | [evalFail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalfail--ae1a8795bfe03e41be66b593.md) | 641 | `declaration-track:ae1a8795bfe03e41be66b59360231ffb9199eb5d4b9fbf29c93ba63b987661f3` |
| 45 | `def` | [evalDbgTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evaldbgtrace--dcde11463485384252b30c7d.md) | 649 | `declaration-track:dcde11463485384252b30c7d917b1c9d2d00d8c959b3427c5825a99b74bff028` |
| 46 | `def` | [evalSleep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalsleep--d2d47e5bda736431a1e4deab.md) | 654 | `declaration-track:d2d47e5bda736431a1e4deab008188ecfc526f1df1f0fb4b1ad899ec20f16e12` |
| 47 | `def` | [evalLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalleft--0c8678db0c8a4eb2a3fee3ea.md) | 659 | `declaration-track:0c8678db0c8a4eb2a3fee3ea3c3c512a115484215cbe57c68cffb7274cd697c8` |
| 48 | `def` | [evalRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalright--f7658af86ae43d8d2fbbe90e.md) | 662 | `declaration-track:f7658af86ae43d8d2fbbe90e95f3bedb901846e11780a2a3a5ac91493eb52e91` |
| 49 | `def` | [evalReplace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalreplace--15f7a88d243a2ed43a3970e1.md) | 665 | `declaration-track:15f7a88d243a2ed43a3970e1d12e02de4379c50548e8f724ee7e1773cbc71a4b` |
| 50 | `def` | [evalRunTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/declarations/evalruntac--0f2e4831f738e185abad4991.md) | 679 | `declaration-track:0f2e4831f738e185abad49912055fc1a2dfbd988aa089769b8e81f0b6d4d0b6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
