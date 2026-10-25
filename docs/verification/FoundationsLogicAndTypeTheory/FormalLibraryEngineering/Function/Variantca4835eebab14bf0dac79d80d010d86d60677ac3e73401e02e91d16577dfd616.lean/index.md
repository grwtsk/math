# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Function.Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f632fef87156c1f655515728e3a9cc86438cd7d1",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f632fef87156c1f655515728e3a9cc86438cd7d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.NotationExtra` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/curry--b3a6ff0d5d6b2cffe5681b34.md) | 31 | `declaration-track:b3a6ff0d5d6b2cffe5681b34b2ab018d00e41067703109780374d3d376340c81` |
| 2 | `def` | [uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/uncurry--6fd3a6880094424e3295bbd1.md) | 41 | `declaration-track:6fd3a6880094424e3295bbd141b17f720c7e96820a3a7f13f7e064209e753d70` |
| 3 | `theorem` | [curry_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/curry-uncurry--0a1352fb76e3660d2c293988.md) | 44 | `result-track:0a1352fb76e3660d2c2939880336a1bfa10b77f918e37b182b384e806c96927b` |
| 4 | `theorem` | [uncurry_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/uncurry-curry--54adae2124fdab82258d3435.md) | 48 | `result-track:54adae2124fdab82258d3435aea1820de68ea6e8b5bc382c403f538866742982` |
| 5 | `theorem` | [uncurry_apply_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/uncurry-apply-pair--7b72ba824e68fecb44134340.md) | 52 | `result-track:7b72ba824e68fecb44134340219fcc72e9cfef695057ee5869e9d76f40d94c08` |
| 6 | `theorem` | [curry_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/curry-apply--2001ef62624d1ba037878eef.md) | 56 | `result-track:2001ef62624d1ba037878eef2ff493940f76089bd96a1c78602a8ae15483a9b4` |
| 7 | `def` | [Injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective--f719f8cc60c538603a5cf25f.md) | 61 | `declaration-track:f719f8cc60c538603a5cf25f8d4acc70bd22b4ece560d8b346609af276c7f8c8` |
| 8 | `theorem` | [Injective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective-comp--c61c5f653d5e55a34ae30b60.md) | 64 | `result-track:c61c5f653d5e55a34ae30b6073d23f9e2c2a67aee16b0695fda0567a548ca1a1` |
| 9 | `def` | [Surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/surjective--a0ff28bd20e307eab08ebbbc.md) | 70 | `declaration-track:a0ff28bd20e307eab08ebbbc242b392fb4063544ff4066d0ad1041360ed230ad` |
| 10 | `theorem` | [Surjective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/surjective-comp--453ea19dea34e18dc990fd15.md) | 73 | `result-track:453ea19dea34e18dc990fd153ea72cbb0a46e871617a909d1cbfcbf7f29d11af` |
| 11 | `def` | [LeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/leftinverse--7db6fd2998881476f7b56043.md) | 81 | `declaration-track:7db6fd2998881476f7b56043423ea51e297cfca9b4a35af565111b8429eabd21` |
| 12 | `def` | [HasLeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/hasleftinverse--0e372285e899baaed926aaed.md) | 86 | `declaration-track:0e372285e899baaed926aaed12537adc4d7960ec39c0e72e4a30e4d44090622c` |
| 13 | `def` | [RightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/rightinverse--a616b35b010ebf942fac805a.md) | 91 | `declaration-track:a616b35b010ebf942fac805a627bfd877f48ca3c1c3005d4c2d887e541d235a4` |
| 14 | `def` | [HasRightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/hasrightinverse--93cbf3e20bca5d01d1a32063.md) | 96 | `declaration-track:93cbf3e20bca5d01d1a320632cc37e851882ce950c40aa00693739d1dca30fb7` |
| 15 | `theorem` | [LeftInverse.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/leftinverse-injective--3f56752344c199c50275344a.md) | 99 | `result-track:3f56752344c199c50275344a16766d38aaea1541b11af349fd134f96135c88b4` |
| 16 | `theorem` | [HasLeftInverse.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/hasleftinverse-injective--de8a8cf4aad41674c53970ba.md) | 102 | `result-track:de8a8cf4aad41674c53970ba6f834bb0a255a4b7d402fe162f52eb9971e27234` |
| 17 | `theorem` | [rightInverse_of_injective_of_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/rightinverse-of-injective-of-leftinverse--e1dec82865f6a55307c26347.md) | 105 | `result-track:e1dec82865f6a55307c26347f21c02d660449b53d0535f814c2e7f454278d7d2` |
| 18 | `theorem` | [RightInverse.surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/rightinverse-surjective--f1b52d222acc9f854acb5ba9.md) | 110 | `result-track:f1b52d222acc9f854acb5ba922f0e7ab3df50651437b8c992c6220099569803f` |
| 19 | `theorem` | [HasRightInverse.surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/hasrightinverse-surjective--32bb1e015c5b9493890da34a.md) | 113 | `result-track:32bb1e015c5b9493890da34a3db02d398927cf20d67640f983df3f8c84d5635a` |
| 20 | `theorem` | [leftInverse_of_surjective_of_rightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/leftinverse-of-surjective-of-rightinverse--e3fdfcd4c381d6876ff8286d.md) | 116 | `result-track:e3fdfcd4c381d6876ff8286ded1051330b377e6446292014c99ef56499331de2` |
| 21 | `theorem` | [injective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective-id--dc5cb4cc5ac72fce29aed1c6.md) | 120 | `result-track:dc5cb4cc5ac72fce29aed1c6e4bd836bda008652607e6b80233daa1fc9666f36` |
| 22 | `theorem` | [surjective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/surjective-id--2fb9532168ea3e54ee8adfee.md) | 122 | `result-track:2fb9532168ea3e54ee8adfee30cdc6d1cddaf8c6e46e359b076ff92431708c7d` |
| 23 | `theorem` | [Injective.eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective-eq-iff--1ba64825ef1a47d50f22e015.md) | 126 | `result-track:1ba64825ef1a47d50f22e01564c239d9531ad6c11331f6ad398d3d4f1719a904` |
| 24 | `theorem` | [Injective.eq_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective-eq-iff--a61823deea2b2878de349e13.md) | 129 | `result-track:a61823deea2b2878de349e130389b70e51e671f07237b0320e26a064f0d7f435` |
| 25 | `theorem` | [Injective.ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective-ne--3061b9df0a78cf3a64287852.md) | 132 | `result-track:3061b9df0a78cf3a64287852115a7e244bd23db180aab9d0816b945fde8db76b` |
| 26 | `theorem` | [Injective.ne_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective-ne-iff--3af42c14b49479c6367f0b59.md) | 135 | `result-track:3af42c14b49479c6367f0b599dcb6c2b125a7769f820910be595b0a41da7c20e` |
| 27 | `theorem` | [Injective.ne_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective-ne-iff--c48895c06e98a1db4a932e0a.md) | 138 | `result-track:c48895c06e98a1db4a932e0a5d634ef8bf18d4bad8e1209b7aa773b5a139ff26` |
| 28 | `theorem` | [LeftInverse.id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/leftinverse-id--b21921a4dcda2ce05d228805.md) | 141 | `result-track:b21921a4dcda2ce05d22880576a53315aebfa4d02aedd3748dc2b219550cb752` |
| 29 | `theorem` | [RightInverse.id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/rightinverse-id--736a4c3820fdc647978b00ff.md) | 144 | `result-track:736a4c3820fdc647978b00ffe1165f5e6310ef63d5ff9b40d6b657782a2510d8` |
| 30 | `theorem` | [Injective.exists_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective-exists-leftinverse--8e19ccc1be0f5b569b8ae4d9.md) | 147 | `result-track:8e19ccc1be0f5b569b8ae4d92f10c4e9b796ce0ad646b92484ff4fbb5ee64b9a` |
| 31 | `theorem` | [Injective.leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean/declarations/injective-leftinverse--e86b5a55517581b83155a00f.md) | 162 | `result-track:e86b5a55517581b83155a00f3c8433288245b076adce0dece701fc51845335af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
