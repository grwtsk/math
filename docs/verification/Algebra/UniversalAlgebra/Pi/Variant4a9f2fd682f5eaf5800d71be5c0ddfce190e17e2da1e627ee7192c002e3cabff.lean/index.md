# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a268de70abd1fa7c2f6e3db3e21345ca5c0a0280",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a268de70abd1fa7c2f6e3db3e21345ca5c0a0280`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean.json)

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
| 1 | `instance` | [isOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/isorderedmonoid--7a3832c4c2a0dac844922989.md) | 40 | `declaration-track:7a3832c4c2a0dac8449229898c3461931e377292d88d18fa0e0f8cc66f33e9ef` |
| 2 | `instance` | [existsMulOfLe](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/existsmulofle--48b0aef9d5724d977a4c2b27.md) | 46 | `declaration-track:48b0aef9d5724d977a4c2b279488652e143efa5a1205aa3149a44850c39e1de6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/instance--a56b3df2e1eed8a7c5df0a7b.md) | 56 | `declaration-track:a56b3df2e1eed8a7c5df0a7ba24bacf63775546f79997edd324ec3f2461a3626` |
| 4 | `instance` | [isOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/isorderedcancelmonoid--368c3ae8ece27e3f55993b1a.md) | 64 | `declaration-track:368c3ae8ece27e3f55993b1aa06c280b54932bbe6cad593f2f13c5d6bafcf275` |
| 5 | `instance` | [isOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/isorderedring--f18aba69943d22a941d99705.md) | 69 | `declaration-track:f18aba69943d22a941d99705e5cef4135e26ddba2bd280e162ecd91bfcc9df00` |
| 6 | `theorem` | [one_le_const_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/one-le-const-of-one-le--30445d6c85f58308f6753c0b.md) | 83 | `result-track:30445d6c85f58308f6753c0b8d3bbdbfa481033ddd9180dc135bbb15b4c1722b` |
| 7 | `theorem` | [const_le_one_of_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/const-le-one-of-le-one--b85d67bc95f5b06f2130bf3f.md) | 86 | `result-track:b85d67bc95f5b06f2130bf3f9083bb5c137ecc9d52e1ca619cd0e73f4cb1b216` |
| 8 | `theorem` | [one_le_const](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/one-le-const--10ec4b6761d2037426847258.md) | 91 | `result-track:10ec4b6761d203742684725847b93b2f814c24739409b4a5c817209c2a4a4c69` |
| 9 | `theorem` | [one_lt_const](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/one-lt-const--721c667bc903aad6ac0eb6eb.md) | 95 | `result-track:721c667bc903aad6ac0eb6eb8a19394cb335aa56ef21a9dd68f01964788ed0cd` |
| 10 | `theorem` | [const_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/const-le-one--f29fee119395de8264eef2a3.md) | 99 | `result-track:f29fee119395de8264eef2a3bd4669104caca25a39a15b264f48698c26a41edf` |
| 11 | `theorem` | [const_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/const-lt-one--996376b00f4a88521443a3f4.md) | 103 | `result-track:996376b00f4a88521443a3f4c9f7ccdaad2884e512a22f9d50bf226125dcedf8` |
| 12 | `lemma` | [one_le_extend](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/one-le-extend--7e4481785bfbfab58a28f72e.md) | 111 | `result-track:7e4481785bfbfab58a28f72e1893b3cbfacdff637562dbf8cd13af5954f4e73b` |
| 13 | `lemma` | [extend_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/extend-le-one--5dda7be66e3efa9da91e4cf8.md) | 114 | `result-track:5dda7be66e3efa9da91e4cf88aee8253aa22322215db5478d8a720b7fc1c00d2` |
| 14 | `lemma` | [mulSingle_le_mulSingle](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/mulsingle-le-mulsingle--5805e22c76885b5b5781c4a0.md) | 125 | `result-track:5805e22c76885b5b5781c4a008658c6e4cc738e9b5f248d6cdeed0e06ec3b6a9` |
| 15 | `lemma` | [one_le_mulSingle](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/one-le-mulsingle--3224085fffef60226e0d0be4.md) | 129 | `result-track:3224085fffef60226e0d0be420f582dd01fe3d411b1a76124ccb2ff5a8cc28fe` |
| 16 | `lemma` | [one_lt_mulSingle](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/one-lt-mulsingle--69c5f17404c36f0e9cd1a541.md) | 132 | `result-track:69c5f17404c36f0e9cd1a541c135a538ad83b5d50f5a3e0fae1cda5eedc85e52` |
| 17 | `lemma` | [mulSingle_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant4a9f2fd682f5eaf5800d71be5c0ddfce190e17e2da1e627ee7192c002e3cabff.lean/declarations/mulsingle-le-one--34e24a696e081e0fc6180374.md) | 135 | `result-track:34e24a696e081e0fc61803744bfb866512c75c007eb7486f36e0fd13d4e69045` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
