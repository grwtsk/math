# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Dual.Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cbdd40387bf91c66e3f6f340f781fbe5cb4dabd",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cbdd40387bf91c66e3f6f340f781fbe5cb4dabd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.IndepAxioms` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualIndepMatroid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dualindepmatroid--298a2cfc1d205a3b89b6f103.md) | 43 | `declaration-track:298a2cfc1d205a3b89b6f103c6f88dbc1a77a6432277e35f76ce26924fc4f357` |
| 2 | `def` | [dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual--9a8f245a95da487b6cbff890.md) | 112 | `declaration-track:9a8f245a95da487b6cbff8900de297e18f8fe68974210191186898a8c24373eb` |
| 3 | `theorem` | [dual_indep_iff_exists'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-indep-iff-exists--5ce848425f4c397060f98ef3.md) | 118 | `result-track:5ce848425f4c397060f98ef344a98ed3249913921b9f4c82b61e3fe0e29eef35` |
| 4 | `theorem` | [dual_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-ground--b42137c6172ba04a63218dd7.md) | 121 | `result-track:b42137c6172ba04a63218dd733270d73a5e89d43b6d4766a0b888e0eef81006b` |
| 5 | `theorem` | [dual_indep_iff_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-indep-iff-exists--730b7c3c0003b911802dced9.md) | 123 | `result-track:730b7c3c0003b911802dced9e9cece2b5f28627886907f9203a64c8a40b9d567` |
| 6 | `theorem` | [dual_dep_iff_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-dep-iff-forall--74b207be574648914f0c16d5.md) | 127 | `result-track:74b207be574648914f0c16d595ca8e0397a497a7deebd3ab9c0234520bc9ee22` |
| 7 | `instance` | [dual_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-finite--a72bcd962b87bb15217215f8.md) | 132 | `declaration-track:a72bcd962b87bb15217215f827ad2b272981fc26684e1155a4f76f3ceac4533f` |
| 8 | `instance` | [dual_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-nonempty--0055b8abec9c3c81d49b42ce.md) | 135 | `declaration-track:0055b8abec9c3c81d49b42cecb075c5ca38155803f7a14ab20b0870bd66ed279` |
| 9 | `theorem` | [dual_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-isbase-iff--685d47f23414dd89b50d808e.md) | 138 | `result-track:685d47f23414dd89b50d808e014622af351b2798177c85e692d8f817f56630b6` |
| 10 | `theorem` | [dual_isBase_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-isbase-iff--7a62dbc15f0f0d8bc24a1dc0.md) | 144 | `result-track:7a62dbc15f0f0d8bc24a1dc0d7eb1e25f925f58604f9b53a6a49cec27455280f` |
| 11 | `theorem` | [setOf_dual_isBase_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/setof-dual-isbase-eq--ef98ed134f8eaa24d345f55d.md) | 148 | `result-track:ef98ed134f8eaa24d345f55d03ca29961faad95b285caf1437d89ee20c9a9437` |
| 12 | `theorem` | [dual_dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-dual--31fd9cfba8920f7fefedcd3b.md) | 155 | `result-track:31fd9cfba8920f7fefedcd3b7ab7f9807d0905aa722005e8f0b2dfa08c4dc91e` |
| 13 | `theorem` | [dual_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-involutive--654cadca7c2261b745d45814.md) | 159 | `result-track:654cadca7c2261b745d45814969e98c1c070a0f32070d8f3045136713c847893` |
| 14 | `theorem` | [dual_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-injective--a811ee296df0764f9706b5a2.md) | 161 | `result-track:a811ee296df0764f9706b5a27a04fe0a4c6bb755bea2ae8e2500f98d3421f564` |
| 15 | `theorem` | [dual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-inj--85aea8d24f7beb947817600b.md) | 164 | `result-track:85aea8d24f7beb947817600b198be2f070d37baece9d5a4be9a8d7922c4e3e75` |
| 16 | `theorem` | [eq_dual_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/eq-dual-comm--828cdc7dcd1a101851380299.md) | 167 | `result-track:828cdc7dcd1a101851380299e00eff1e4db4db3081ddf595139984fb1a52db10` |
| 17 | `theorem` | [eq_dual_iff_dual_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/eq-dual-iff-dual-eq--446f1c1c3693c7b1e635cfc6.md) | 170 | `result-track:446f1c1c3693c7b1e635cfc659f41b5a6b43e127cbae7f8894fe95a842d76bab` |
| 18 | `theorem` | [IsBase.compl_isBase_of_dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/isbase-compl-isbase-of-dual--19e2db52f9a036e47aecba75.md) | 173 | `result-track:19e2db52f9a036e47aecba75f4e5adfcab8e70c90856293a31b2ab62d29fe900` |
| 19 | `theorem` | [IsBase.compl_isBase_dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/isbase-compl-isbase-dual--d0af050795c6d7fb17bf6664.md) | 176 | `result-track:d0af050795c6d7fb17bf6664b341ef63dc9acf99415f88be6d98d23dd2ce49c9` |
| 20 | `theorem` | [IsBase.compl_inter_isBasis_of_inter_isBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/isbase-compl-inter-isbasis-of-inter-isbasis--0fd15dec45bbc09f343ec222.md) | 179 | `result-track:0fd15dec45bbc09f343ec2227347b3296fbb74f17a77afd2fb5390510ca1b4ad` |
| 21 | `theorem` | [IsBase.inter_isBasis_iff_compl_inter_isBasis_dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/isbase-inter-isbasis-iff-compl-inter-isbasis-dual--0ce5c3133ed8ab0a8ccd0903.md) | 200 | `result-track:0ce5c3133ed8ab0a8ccd09039329e6aae082497bafa6785643a92df5259fc790` |
| 22 | `theorem` | [base_iff_dual_isBase_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/base-iff-dual-isbase-compl--a4e7fda81a1b4d31d4e1ccce.md) | 207 | `result-track:a4e7fda81a1b4d31d4e1ccceab39b125b51db26bf42d765d4572f9ee63a223e1` |
| 23 | `theorem` | [ground_not_isBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/ground-not-isbase--64530a6368f6c8b99792f152.md) | 211 | `result-track:64530a6368f6c8b99792f152907c7c4bba4754cd1c842a931f10d96feab72840` |
| 24 | `theorem` | [IsBase.ssubset_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/isbase-ssubset-ground--9e89ddf81fbcd2c5b5e07fa4.md) | 214 | `result-track:9e89ddf81fbcd2c5b5e07fa47e2a93ecebd5ee0098241949a7e025224e785d28` |
| 25 | `theorem` | [Indep.ssubset_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/indep-ssubset-ground--a03e896b679d366dbfd5feea.md) | 217 | `result-track:a03e896b679d366dbfd5feeae8a6c914f01a40bfc516183ed7355c06d11aa851` |
| 26 | `abbrev` | [Coindep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/coindep--cf94f9e81acff4b96e63cf82.md) | 222 | `declaration-track:cf94f9e81acff4b96e63cf8280343adafdcb8bf73f7609f49c8266f5c2ddb5df` |
| 27 | `theorem` | [coindep_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/coindep-def--b9084c4107fd1797a18849fe.md) | 224 | `result-track:b9084c4107fd1797a18849fed877fceb9cf2880364b2d3d2c0609ba9237467ea` |
| 28 | `theorem` | [Coindep.indep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/coindep-indep--12e0e16beaf929e94dcb0cf6.md) | 226 | `result-track:12e0e16beaf929e94dcb0cf69e04057bf2aa27936b358222ae719ae13a2db938` |
| 29 | `theorem` | [dual_coindep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/dual-coindep-iff--8afd92ccee29e3ed0403e728.md) | 229 | `result-track:8afd92ccee29e3ed0403e72854286df81bf8973861cab0147b5c92c13049d02a` |
| 30 | `theorem` | [Indep.coindep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/indep-coindep--3de4c1be21aa599cce5d4aae.md) | 232 | `result-track:3de4c1be21aa599cce5d4aae7da262191caab658501256f666ad49afbaaeaeaa` |
| 31 | `theorem` | [coindep_iff_exists'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/coindep-iff-exists--a9ff9e58765b13563b5c48b5.md) | 235 | `result-track:a9ff9e58765b13563b5c48b5d46c6ca23af11d3c15d2797e2ecdfea21316872d` |
| 32 | `theorem` | [coindep_iff_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/coindep-iff-exists--0ae70351d446ae9d458ee3f9.md) | 240 | `result-track:0ae70351d446ae9d458ee3f9493e070240e3dcbc127c026009397116e04cb9f9` |
| 33 | `theorem` | [coindep_iff_subset_compl_isBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/coindep-iff-subset-compl-isbase--d1f4928f3da7bab3b45116e0.md) | 244 | `result-track:d1f4928f3da7bab3b45116e05ad0a8045faf5193ccb299759eb5735904f67185` |
| 34 | `theorem` | [Coindep.subset_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/coindep-subset-ground--b39b9a66159832ec981d3041.md) | 250 | `result-track:b39b9a66159832ec981d3041b0561029336d4aea317bfe1f88283bb60c159d38` |
| 35 | `theorem` | [Coindep.exists_isBase_subset_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/coindep-exists-isbase-subset-compl--9d878f8de6f57bd6e072c361.md) | 253 | `result-track:9d878f8de6f57bd6e072c361dbde90ba952a14b92de0966a739ca413f309e3ec` |
| 36 | `theorem` | [Coindep.exists_subset_compl_isBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/declarations/coindep-exists-subset-compl-isbase--5c6869bc49ee04185b8a8d06.md) | 256 | `result-track:5c6869bc49ee04185b8a8d0658c976b6c3c8cc2961dfa311c29361aeac66c9df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
