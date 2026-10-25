# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Algebra.Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db098b366008506e9ac20a6d5770351c80fbc843",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db098b366008506e9ac20a6d5770351c80fbc843`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Vector.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/zero--8b908ad025bb696524c8c786.md) | 22 | `declaration-track:8b908ad025bb696524c8c786ebd5b0c271bf3949b39a9660291f67c7f62dccfd` |
| 2 | `instance` | [instZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instzero--3331e169e6fde5497555a0fa.md) | 24 | `declaration-track:3331e169e6fde5497555a0fa201a4ffd318c4d1aaebc8df0c1de40f5e4d62b7a` |
| 3 | `theorem` | [getElem_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/getelem-zero--ac238e2e7e205ecb5b4496bf.md) | 27 | `result-track:ac238e2e7e205ecb5b4496bf6a6c13abb7c67e83bc84c638bff6682272cba091` |
| 4 | `def` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/add--6f6033e8512e6a99ab506938.md) | 31 | `declaration-track:6f6033e8512e6a99ab50693894ab714e35b3ef1746e6d57462009b0777033fbd` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--e983114e200a7010925e627a.md) | 34 | `declaration-track:e983114e200a7010925e627aa2ad8cb1245eb9d616de73cbd430fddc97dd9c2e` |
| 6 | `theorem` | [getElem_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/getelem-add--fd5cab755b0e3cffd53f73db.md) | 37 | `result-track:fd5cab755b0e3cffd53f73db7bbee9f00876a2a40e5df50aba963ddec193d627` |
| 7 | `theorem` | [add_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/add-zero--3959ddbc2a7607e281052252.md) | 40 | `result-track:3959ddbc2a7607e28105225299f61a9c9365995ad3b46cd40735071cab312e21` |
| 8 | `theorem` | [zero_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/zero-add--2677165070d955bbb17e20e1.md) | 41 | `result-track:2677165070d955bbb17e20e123a7fafac96f829d07447c169961380c9965bf4f` |
| 9 | `theorem` | [add_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/add-comm--20f0eefd6d66acfc38484412.md) | 42 | `result-track:20f0eefd6d66acfc38484412aabccef0ce36136786d3413d44f8a94c582ad603` |
| 10 | `theorem` | [add_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/add-assoc--67151155ddbbc4344d659af3.md) | 43 | `result-track:67151155ddbbc4344d659af329b371bc7b111779e19718f29bff7f7d658ecc69` |
| 11 | `def` | [neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/neg--02d32ba510884ac77961f029.md) | 46 | `declaration-track:02d32ba510884ac77961f029387cb29bbf9e9b89c4234386ff47a6a82fa1e16f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--5df0ad69cc39516e70916575.md) | 49 | `declaration-track:5df0ad69cc39516e709165757f3b291a77da39782ef82ea2b85e24d68c9826ad` |
| 13 | `theorem` | [getElem_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/getelem-neg--94a702a195a480006aecb3fe.md) | 52 | `result-track:94a702a195a480006aecb3fed0ed478bfd4710368b0f4c8fd70d2fcf6c8281c7` |
| 14 | `theorem` | [neg_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/neg-zero--87f89f149f4e7155367ccd40.md) | 55 | `result-track:87f89f149f4e7155367ccd406d566f4f45ab3b81772ad1b917ece42a4f58cd3b` |
| 15 | `theorem` | [neg_add_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/neg-add-cancel--c8bed0fdac85ea8b9a027239.md) | 56 | `result-track:c8bed0fdac85ea8b9a02723949eda09661dad758e3748f727f7d6624d11a9ed8` |
| 16 | `def` | [sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/sub--a5c9528e89fe1deca4107e4c.md) | 59 | `declaration-track:a5c9528e89fe1deca4107e4c8c43e274559bdc30486eb96408ec1dd187079c55` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--312358092648be3b88290a2c.md) | 62 | `declaration-track:312358092648be3b88290a2c618163c9e06c11592a4714b0072e0e28afa9d961` |
| 18 | `theorem` | [getElem_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/getelem-sub--246627fc6a5ae2e9f8cab836.md) | 65 | `result-track:246627fc6a5ae2e9f8cab8360510810638230fc2f29ff2022242ef961bf97aba` |
| 19 | `theorem` | [sub_eq_add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/sub-eq-add-neg--6c27e5c6d6eb5facc87418c0.md) | 68 | `result-track:6c27e5c6d6eb5facc87418c050be021a6be161d6c88d731e78bada47591c2acc` |
| 20 | `def` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/mul--ed38cbe778d7ab1874c28de4.md) | 71 | `declaration-track:ed38cbe778d7ab1874c28de4cf5551b399979a4b5d98a1b6782eedf1f4ca29c0` |
| 21 | `def` | [instMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instmul--35e8e0d5f1e2020de19eefd8.md) | 79 | `declaration-track:35e8e0d5f1e2020de19eefd8cda45a1e82120b6c4cea6fea8f0985cd73f554b6` |
| 22 | `theorem` | [getElem_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/getelem-mul--09ab40ceab680a3a0b18b49a.md) | 86 | `result-track:09ab40ceab680a3a0b18b49a92af571054da8148d5d27b19c5ecef0fcd73e812` |
| 23 | `theorem` | [mul_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/mul-zero--f727dacbe32f0f5286447e6d.md) | 89 | `result-track:f727dacbe32f0f5286447e6dc4a1ea9fe28c34058258feee5d0eaf3e901aeaf1` |
| 24 | `theorem` | [zero_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/zero-mul--a7dd27b07ed6af9c5015b415.md) | 90 | `result-track:a7dd27b07ed6af9c5015b41543fabaa8bd856314ab9d015d659978add03b100e` |
| 25 | `theorem` | [mul_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/mul-comm--a1e540ba2a4e51b8dc2235c4.md) | 91 | `result-track:a1e540ba2a4e51b8dc2235c421b4ddbb25aef65185188377c0a3abe893165b03` |
| 26 | `theorem` | [mul_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/mul-assoc--fcafbe6cd7df12b8173711f8.md) | 92 | `result-track:fcafbe6cd7df12b8173711f814a2bd40165d1782e055c178764f43e8d2ff1405` |
| 27 | `theorem` | [left_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/left-distrib--2a471757dc333c8b49466e78.md) | 93 | `result-track:2a471757dc333c8b49466e783ad9eb9ff5dda1bc13854060042c2fbde63d8dfa` |
| 28 | `theorem` | [right_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/right-distrib--15bcaaab722369022971c5f0.md) | 94 | `result-track:15bcaaab722369022971c5f068cda0fe16c876631f5670131bd91f92bcad3d67` |
| 29 | `def` | [hmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/hmul--3a777724885abbda573e1922.md) | 99 | `declaration-track:3a777724885abbda573e1922433057c891429bf2bf80a8898ce7b10e8b828004` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--4570c5291fcb467ecede10c3.md) | 102 | `declaration-track:4570c5291fcb467ecede10c3b1c1d6b050cc035d64767ab0777eea8b729baf30` |
| 31 | `theorem` | [getElem_hmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/getelem-hmul--62a7d02b7a93f6fe15390d1c.md) | 105 | `result-track:62a7d02b7a93f6fe15390d1c779b907017e12f1704885c74b2db80d829350fc5` |
| 32 | `theorem` | [hmul_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/hmul-zero--e90e9f59c65547052f16dc40.md) | 108 | `result-track:e90e9f59c65547052f16dc40b5f906c368cb5c4c5f04342e0e538c265530d078` |
| 33 | `theorem` | [zero_hmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/zero-hmul--f580f5cf786d7e30a521fd1c.md) | 109 | `result-track:f580f5cf786d7e30a521fd1c6feeb45584369c416a53cf128dc2f8d21cf0ffb8` |
| 34 | `theorem` | [hmul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/hmul-add--6e15f104364382d22e9e776c.md) | 110 | `result-track:6e15f104364382d22e9e776c68f1da6efc40e56f6cc4749e2fda3b35a491c7e9` |
| 35 | `theorem` | [add_hmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/add-hmul--0fb123dc21e2af2f51fa42db.md) | 111 | `result-track:0fb123dc21e2af2f51fa42db05a61040fea248f9c43f157b9ea3edc2f651dd8d` |
| 36 | `def` | [smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/smul--2ff6bf4fa9d9078c0439d140.md) | 114 | `declaration-track:2ff6bf4fa9d9078c0439d1400d7d92b7bfb51a0d44cac5ea3f8ad97f36354129` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--848ae9e9a864d99f473d9df0.md) | 117 | `declaration-track:848ae9e9a864d99f473d9df05d5df7e85c35e56c8e3278019e67f006bef5e976` |
| 38 | `theorem` | [getElem_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/getelem-smul--b70cb6c6131268c60572f803.md) | 120 | `result-track:b70cb6c6131268c60572f803ca441066a7dfd0e047db3b57195d4d355174797e` |
| 39 | `theorem` | [smul_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/smul-zero--66430569e749e0ec900e25e3.md) | 123 | `result-track:66430569e749e0ec900e25e3e28fbfa0251ba41d26450fb3892e015ac9db73d6` |
| 40 | `theorem` | [zero_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/zero-smul--3c949dedcdb5900bafe13940.md) | 124 | `result-track:3c949dedcdb5900bafe139404827203998a350eb3a9ca484bc4a7fcf3a9ded29` |
| 41 | `theorem` | [smul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/smul-add--e3fc8623152eb08b3a0a5e01.md) | 125 | `result-track:e3fc8623152eb08b3a0a5e0148d44761acd7ed4fb18ac8e6092524d1bcafa473` |
| 42 | `theorem` | [add_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/add-smul--d9dcccfc83711d55d09311c0.md) | 126 | `result-track:d9dcccfc83711d55d09311c095e281434280ead2a14f2a3641f47b6f15038ec5` |
| 43 | `theorem` | [mul_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/mul-smul--440cedd28bc910dc39bb5070.md) | 127 | `result-track:440cedd28bc910dc39bb5070b699c34ae71bceb47022698709c95c245b7f8ef1` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--4c85340462f1b4d613f585c1.md) | 133 | `declaration-track:4c85340462f1b4d613f585c12e85e51695adeb5735ec33c973df2d8f95350e43` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--89fb31ff3e017fde8b7af5c3.md) | 140 | `declaration-track:89fb31ff3e017fde8b7af5c34f10509df77352463b4a4e473a716bd7037029c5` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--29331fc4cf2786ef432b73f3.md) | 145 | `declaration-track:29331fc4cf2786ef432b73f3a537224f45c109e196bcaaf209f576acddbf388c` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--ecf60e4dc3d9d84c7d6b1f16.md) | 149 | `declaration-track:ecf60e4dc3d9d84c7d6b1f168dcbf5ba27767d38e9be0f61a9f5d037e1f0ba0e` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--a397b5b883dc010c278d47d4.md) | 155 | `declaration-track:a397b5b883dc010c278d47d4559d019ebe4cfc4f0d96d7a11ea6b2ddb636e19f` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variantb748397cde04cbab878f77e53c7ff5b3501e776bd46ede6492a64ec2ee76123c.lean/declarations/instance--7959578267512b27bf71b6f8.md) | 167 | `declaration-track:7959578267512b27bf71b6f8cc59aa1da698554d5457b983b74231805e46ddca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
