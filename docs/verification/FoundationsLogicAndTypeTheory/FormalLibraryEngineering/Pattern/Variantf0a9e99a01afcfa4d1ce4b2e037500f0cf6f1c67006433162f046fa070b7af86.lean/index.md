# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pattern.Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76665e9fd9ce09e39552295ac1361b67d7475829",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76665e9fd9ce09e39552295ac1361b67d7475829`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Name` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Coe` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/ispattern--2a20df523720654f1ee939b0.md) | 32 | `declaration-track:2a20df523720654f1ee939b039112a287d1adf6cf5775a9fbf3b31ae818db79b` |
| 2 | `structure` | [Pattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pattern--8bf5be04ce2991d5d907c3c2.md) | 47 | `declaration-track:8bf5be04ce2991d5d907c3c2264d7a9da4b7b4d00e06b6e7e9cb4307c640e25b` |
| 3 | `inductive` | [PatternDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/patterndescr--0033edd1c06e69fb2e824d23.md) | 60 | `declaration-track:0033edd1c06e69fb2e824d23167624cc4c1ae0a68faf04eb91a11fb22ac89265` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--3b281ffc27542bb085697291.md) | 74 | `declaration-track:3b281ffc27542bb085697291a30421126efe61c47a5793c33a476e6a2fbc88bb` |
| 5 | `abbrev` | [Pattern.matches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pattern-matches--ecc667dbd3c8e705eeefb74a.md) | 77 | `declaration-track:ecc667dbd3c8e705eeefb74a87517a973da8e74babc6100f36f1aadefc7045a1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--3caa209303a22ea04bb74d3f.md) | 80 | `declaration-track:3caa209303a22ea04bb74d3f2a2f211a8129171fa50d42174ce7caf0a73741fe` |
| 7 | `def` | [PatternDescr.matches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/patterndescr-matches--af630097b389730a53f5c538.md) | 83 | `declaration-track:af630097b389730a53f5c538d60d5d5ad35be8adeefb75b4f78c44e769d8a810` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--ac1733dbebf096ec67f3d074.md) | 92 | `declaration-track:ac1733dbebf096ec67f3d0741cca30ff3d246a7023f82067b26f864f948942e5` |
| 9 | `def` | [Pattern.ofFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pattern-offn--fc43f2522ac8c511989c33bf.md) | 98 | `declaration-track:fc43f2522ac8c511989c33bf4c834a0f0f81bf2093ed89175a9765d98f1e7881` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--e6b038c55f2e0641ee37bc6b.md) | 101 | `declaration-track:e6b038c55f2e0641ee37bc6b7d60faabac6e1333b2d867d3bf9f5757fe67bbd5` |
| 11 | `def` | [Pattern.ofDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pattern-ofdescr--38cc5f8edfe9edf82f4de95c.md) | 107 | `declaration-track:38cc5f8edfe9edf82f4de95c7be63b1b05a0b4187ffb4650c49c23824e6c0ef4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--6d335fa4015ab7a94d503b68.md) | 110 | `declaration-track:6d335fa4015ab7a94d503b68dde314b5f860d35fa4b035fee13dd7bed6414161` |
| 13 | `def` | [Pattern.not](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pattern-not--fcef6599909a87244acb74df.md) | 113 | `declaration-track:fcef6599909a87244acb74dfac10659c23babca78c2c53118fe0497e9d5066f0` |
| 14 | `def` | [Pattern.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pattern-all--a52046687670233654434e45.md) | 117 | `declaration-track:a52046687670233654434e45f29a67b1e13e3421425028ace4133172b326b00a` |
| 15 | `def` | [Pattern.any](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pattern-any--b02823908fefc4f0a1254984.md) | 121 | `declaration-track:b02823908fefc4f0a1254984e0e1ebab636b5724157c609f4e89a82f2371336f` |
| 16 | `def` | [PatternDescr.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/patterndescr-empty--09b97407f97ec3bffb68ff02.md) | 125 | `declaration-track:09b97407f97ec3bffb68ff02bf5b1f99e475b62777163bc0c3f3729cad88c007` |
| 17 | `def` | [Pattern.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pattern-empty--21b2adc2e18272702e327e4a.md) | 128 | `declaration-track:21b2adc2e18272702e327e4a96a442f76d2f81c5eed2b326f4a72b664c2ef3a7` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--eaaed29d230a8a045560c525.md) | 131 | `declaration-track:eaaed29d230a8a045560c5259e1930ec8bc863ef73158b4a0ac04281aadeb129` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--9d5a9507a4011af84891f9e0.md) | 132 | `declaration-track:9d5a9507a4011af84891f9e0e9883f4c2f1134e8e82b107de70deccef1c5a3b5` |
| 20 | `def` | [PatternDescr.star](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/patterndescr-star--bdece056434ed1c749987f7e.md) | 135 | `declaration-track:bdece056434ed1c749987f7e9daaa35958ce4932c698c36b683c658d349ca113` |
| 21 | `def` | [Pattern.star](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pattern-star--9d4591159cf565eed024379c.md) | 138 | `declaration-track:9d4591159cf565eed024379c2fbf4f0db9ab9b14eace99e2d664ecfbc350c260` |
| 22 | `inductive` | [StrPatDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/strpatdescr--a42033c2d7445979edab598d.md) | 144 | `declaration-track:a42033c2d7445979edab598d2e51af6a8007a7a1a131e7bf398412c28abe1bb5` |
| 23 | `def` | [StrPatDescr.matches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/strpatdescr-matches--e0f8cc716724631fdbca0227.md) | 154 | `declaration-track:e0f8cc716724631fdbca0227b41e81b50124545195d92f129b25fa1db0a6e9a0` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--697fbeb2d14d73bcb0590c02.md) | 160 | `declaration-track:697fbeb2d14d73bcb0590c0248f1b962654a2cfed69d5c427d0dac819038d1b7` |
| 25 | `abbrev` | [StrPat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/strpat--f897a955c8800df26a3bd072.md) | 163 | `declaration-track:f897a955c8800df26a3bd072265540608ca4bcf6bbd1c7a0a71b0d8a19870d52` |
| 26 | `def` | [StrPat.mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/strpat-mem--fbb5b0ece0e989a3fca395bb.md) | 166 | `declaration-track:fbb5b0ece0e989a3fca395bbfb453097535055988aaec026a3450411506f719e` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--a8ef80db517e978efa5ba0a5.md) | 169 | `declaration-track:a8ef80db517e978efa5ba0a5c5c658f18b5e4035d4ec2ef809fd8ea39bbc2b3b` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--178513114b65e296063cc9dd.md) | 170 | `declaration-track:178513114b65e296063cc9dda3a27b54b626b25870facd3ecddd31014dd6af9c` |
| 29 | `def` | [StrPat.startsWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/strpat-startswith--1c47907edfeafa3fee901d4b.md) | 173 | `declaration-track:1c47907edfeafa3fee901d4b38c4799e885ea8fc9d7c5e26efdc603cf954bd3f` |
| 30 | `def` | [StrPat.endsWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/strpat-endswith--e843cc7a65fc0a357287e15b.md) | 177 | `declaration-track:e843cc7a65fc0a357287e15bfe9a5c96d25fbc2d22ad95276a7bfec192ac8ce2` |
| 31 | `def` | [StrPatDescr.beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/strpatdescr-beq--223d0b28c13f366f0701fcc7.md) | 181 | `declaration-track:223d0b28c13f366f0701fcc71c35a31992124d5bf62ff08a2db8eb05f8164692` |
| 32 | `def` | [StrPat.beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/strpat-beq--435c90b83343c9aaf3739577.md) | 184 | `declaration-track:435c90b83343c9aaf3739577179abb2430b53ffe4366b451f6fc86d25bec55f2` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--4df7113931cfa0fb94a9b8b2.md) | 187 | `declaration-track:4df7113931cfa0fb94a9b8b259977fdba78cb63f878b039523b7e075eeb4eca7` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--1a733fc09cad197158a966d7.md) | 188 | `declaration-track:1a733fc09cad197158a966d7e98fa340ce65cbbeaf5060efea5d14a89341e616` |
| 35 | `inductive` | [PathPatDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pathpatdescr--3c3bb42e31eed3c81dce292b.md) | 193 | `declaration-track:3c3bb42e31eed3c81dce292b4e8ffae212d18c45b9c67e3490dfa5571acb47bc` |
| 36 | `def` | [PathPatDescr.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pathpatdescr-eq--bebb0fa5b55eb53682d12ee6.md) | 203 | `declaration-track:bebb0fa5b55eb53682d12ee64443c5e5b14ce927356786306d90c64513415997` |
| 37 | `def` | [PathPatDescr.matches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pathpatdescr-matches--805b8498d43e54cc35a9d156.md) | 207 | `declaration-track:805b8498d43e54cc35a9d1566d0eaf5822cd3ee5cf59aa14632f5f200542f98d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/instance--81b0ea8559b841ff949c9c52.md) | 213 | `declaration-track:81b0ea8559b841ff949c9c524eef26fb0f735b9aedfdb07eea19d29143853c17` |
| 39 | `abbrev` | [PathPat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pathpat--20743a157740f51c506ccb1e.md) | 216 | `declaration-track:20743a157740f51c506ccb1e5b2e4cda68c14ad48885df3cafab5e5a5a6a2d91` |
| 40 | `def` | [PathPat.path](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pathpat-path--2c12ef26a223247e21873e4d.md) | 219 | `declaration-track:2c12ef26a223247e21873e4d35de0e42635b55df0b927a568f9cb7ff03f2f171` |
| 41 | `def` | [PathPat.extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pathpat-extension--8d873ce4fa5a78e6baf80feb.md) | 223 | `declaration-track:8d873ce4fa5a78e6baf80febc8a9908e6ff85b71f4ef86a6398dff5d486f6d0d` |
| 42 | `def` | [PathPat.fileName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/pathpat-filename--c7e3511776febf1a42f8c8ba.md) | 227 | `declaration-track:c7e3511776febf1a42f8c8ba8e7060e30e13cf25f8249dea161c53f43505550f` |
| 43 | `def` | [isVerLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/isverlike--71a6408e9dc0e77bdbd7463c.md) | 236 | `declaration-track:71a6408e9dc0e77bdbd7463c559230255d63cd2f2d5c6136481c946c4f0d2712` |
| 44 | `def` | [StrPat.verLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/strpat-verlike--93743ea9e9a839b10c523fbd.md) | 244 | `declaration-track:93743ea9e9a839b10c523fbd16b4397f9178a18b7fd7577a4a71be3c55e0b109` |
| 45 | `def` | [defaultVersionTags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/defaultversiontags--a1d7ce15e48db5fed86a5fbc.md) | 247 | `declaration-track:a1d7ce15e48db5fed86a5fbc40fe521e49e2db86e132dc89676acc81f66072a1` |
| 46 | `def` | [versionTagPresets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantf0a9e99a01afcfa4d1ce4b2e037500f0cf6f1c67006433162f046fa070b7af86.lean/declarations/versiontagpresets--a1855d1c2a87e858c05d3eda.md) | 250 | `declaration-track:a1855d1c2a87e858c05d3edafd007224291163ddadeda33f3412b3db0e9941cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
