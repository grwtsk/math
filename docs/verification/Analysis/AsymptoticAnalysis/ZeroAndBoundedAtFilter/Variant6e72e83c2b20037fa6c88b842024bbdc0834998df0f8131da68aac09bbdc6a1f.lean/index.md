# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroAndBoundedAtFilter.Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e5af74eeca1fc3b7f39cfac71fa28d35a26c299",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e5af74eeca1fc3b7f39cfac71fa28d35a26c299`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZeroAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/zeroatfilter--be255877ca8567ea9d458671.md) | 41 | `declaration-track:be255877ca8567ea9d458671c6bab4f88c3dbcda31a0f37e449f98ba3f3f9394` |
| 2 | `theorem` | [zero_zeroAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/zero-zeroatfilter--9335f7bad851cf9dda543829.md) | 44 | `result-track:9335f7bad851cf9dda5438297410771ae13a93e78d41689403deb99a0aa3e3c0` |
| 3 | `theorem` | [ZeroAtFilter.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/zeroatfilter-add--03a8b1b82d364b7f14f4070a.md) | 48 | `result-track:03a8b1b82d364b7f14f4070a053f76665585f62ce906bcde498535d1cc4a6893` |
| 4 | `theorem` | [ZeroAtFilter.neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/zeroatfilter-neg--0f9b84eac581fade9a07c3b0.md) | 53 | `result-track:0f9b84eac581fade9a07c3b0849cc4886aebb0019b49d132409b6a0dcca3a2a0` |
| 5 | `theorem` | [ZeroAtFilter.smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/zeroatfilter-smul--4d0af98f1091800fc9828b99.md) | 57 | `result-track:4d0af98f1091800fc9828b99358a905acbe1d7f82ec3c37aada2c3d03e0e7488` |
| 6 | `def` | [zeroAtFilterSubmodule](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/zeroatfiltersubmodule--29f36d931a38339a83de5b06.md) | 64 | `declaration-track:29f36d931a38339a83de5b066dc4e2022cc06b9f67be7258919bb16efb97b1c0` |
| 7 | `def` | [zeroAtFilterAddSubmonoid](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/zeroatfilteraddsubmonoid--af172000f8285549eb7c4c3a.md) | 75 | `declaration-track:af172000f8285549eb7c4c3a8bc6c958503e72a45676ea701fd7e1c9d10935c2` |
| 8 | `def` | [BoundedAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/boundedatfilter--4b0feadd4791e00437fc1362.md) | 83 | `declaration-track:4b0feadd4791e00437fc13620f43c81f87fa9f62eba7c53c74207a79d4ba37a4` |
| 9 | `theorem` | [ZeroAtFilter.boundedAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/zeroatfilter-boundedatfilter--77ad612233c9ee1134b5ae91.md) | 86 | `result-track:77ad612233c9ee1134b5ae9189ae44146e9a35d16a1835e6d321b8d7c7d1aa7b` |
| 10 | `theorem` | [const_boundedAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/const-boundedatfilter--7dbe055b2821e358cd8a9a26.md) | 90 | `result-track:7dbe055b2821e358cd8a9a26ef9761b745037c82d54ffab2074384f649cddad8` |
| 11 | `theorem` | [BoundedAtFilter.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/boundedatfilter-add--19b576ac69653ae68cb88ce6.md) | 96 | `result-track:19b576ac69653ae68cb88ce6c5afc17b2c06a4d1d242bbe7bbdb755af005be35` |
| 12 | `theorem` | [BoundedAtFilter.neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/boundedatfilter-neg--001d1451728f5d40b50d7734.md) | 100 | `result-track:001d1451728f5d40b50d77348e5bdfd221d96f2b2e9333f9ce69368d39fd012e` |
| 13 | `theorem` | [BoundedAtFilter.smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/boundedatfilter-smul--0200411c49806e4eb86d34b5.md) | 104 | `result-track:0200411c49806e4eb86d34b589d350f9f6d847cb2d5f04c6404cc5b3491e5106` |
| 14 | `theorem` | [BoundedAtFilter.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/boundedatfilter-mul--d9821ae69e1993a7f3cd3287.md) | 109 | `result-track:d9821ae69e1993a7f3cd3287c97b8dd97922b678bcab2ac447c33151bc7ad56d` |
| 15 | `theorem` | [ZeroAtFilter.mul_boundedAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/zeroatfilter-mul-boundedatfilter--323c1be19a8d808cd6981c2b.md) | 115 | `result-track:323c1be19a8d808cd6981c2bfd8650f9e291203d09a680b76de2cbd13ec3cd36` |
| 16 | `theorem` | [BoundedAtFilter.mul_zeroAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/boundedatfilter-mul-zeroatfilter--0858e095f2b7816b375b7637.md) | 120 | `result-track:0858e095f2b7816b375b7637bb789ab2e93cd8af7ec356842234f316c328edd5` |
| 17 | `def` | [boundedFilterSubmodule](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/boundedfiltersubmodule--e944bbf408fd12118d28914e.md) | 127 | `declaration-track:e944bbf408fd12118d28914ebb4320d8807b1889bf0e4f4770a88eb22734d2eb` |
| 18 | `def` | [boundedFilterSubalgebra](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/boundedfiltersubalgebra--df728b3204e4f5d0c0685492.md) | 137 | `declaration-track:df728b3204e4f5d0c068549210bcdc5888f419bc404be335a69fff89e7d5c2e3` |
| 19 | `theorem` | [BoundedAtFilter.prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/declarations/boundedatfilter-prod--398a6a88a8781c8d18313129.md) | 145 | `result-track:398a6a88a8781c8d183131298a70bd155678937f40aad52be5577fa21f6f51e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
