# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Basic.Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4009f2f613c89811b88cd6570fe75c531e6c481d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4009f2f613c89811b88cd6570fe75c531e6c481d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Syntax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ringFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/ringfunc--cb1b71cc0c5053a31d6aba07.md) | 50 | `declaration-track:cb1b71cc0c5053a31d6aba0778dbaf94bb6b1da0d14ef71bd38cd47def1468b0` |
| 2 | `def` | [Language.ring](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/language-ring--49490228b33eca47e865bd15.md) | 59 | `declaration-track:49490228b33eca47e865bd155a893890f2dbccb192f109bbc0f0c92f6914b852` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/example--34a5c0aa105628cb1f857d0a.md) | 70 | `declaration-track:34a5c0aa105628cb1f857d0ab6c83b2536845590092ded2c4feb89f6f6e8ef68` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/example--632bf9a567f7d2433ba9cc30.md) | 74 | `declaration-track:632bf9a567f7d2433ba9cc306696a379b45af22d508afb6eabed8f7d01dfb116` |
| 5 | `abbrev` | [addFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/addfunc--fbd009939c74306b18c62e45.md) | 78 | `declaration-track:fbd009939c74306b18c62e45df25a8074bb8d56616157aeb2025c0f1becac726` |
| 6 | `abbrev` | [mulFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/mulfunc--8fe9e1173f4a736d2a4dd58c.md) | 82 | `declaration-track:8fe9e1173f4a736d2a4dd58cd8b0fc410f492e33cc0aa4c57c7c3c62c2b7b957` |
| 7 | `abbrev` | [negFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/negfunc--250eb158a3b8f08a25048be4.md) | 86 | `declaration-track:250eb158a3b8f08a25048be47decbae3d641b918d86de82ba069e706b4d8a402` |
| 8 | `abbrev` | [zeroFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/zerofunc--b9b3759310e233ba64837358.md) | 90 | `declaration-track:b9b3759310e233ba648373583a04e70f56f3129b0bcb15466fd0c375e7708e61` |
| 9 | `abbrev` | [oneFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/onefunc--d28ae6129eafd67af54bf432.md) | 94 | `declaration-track:d28ae6129eafd67af54bf432219e8d71a4b75f646908cce2e5dcf7c0b372c2e0` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/instance--58ed22283ce64e46b15b12b0.md) | 96 | `declaration-track:58ed22283ce64e46b15b12b025d669f7d7d0b2cdc3114237078036d6b5b6439a` |
| 11 | `theorem` | [zero_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/zero-def--00f37c58196ab5f8df9c4a0b.md) | 99 | `result-track:00f37c58196ab5f8df9c4a0b4e25245678c5bdcb6857e531b17b3f5c01b67c02` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/instance--48941ad23a34c94715c0e153.md) | 101 | `declaration-track:48941ad23a34c94715c0e15302b20794d9b4b8670dcb0f4e60483eb5ba88ba18` |
| 13 | `theorem` | [one_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/one-def--76bb49261612689569b376ab.md) | 104 | `result-track:76bb49261612689569b376ab2f3eae4e2e1ed2fc72fef1e4f4e1ee1849951da1` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/instance--de5d2f115bba6a68907c42fa.md) | 106 | `declaration-track:de5d2f115bba6a68907c42fadd9dcba101abce7350b94c2b183934e457cf0e0b` |
| 15 | `theorem` | [add_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/add-def--0d5e40d40e840a7efe49c230.md) | 109 | `result-track:0d5e40d40e840a7efe49c230c731719718b9802c2e0557e0af424617185d9fee` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/instance--be069e15a5f2924532acd8b6.md) | 112 | `declaration-track:be069e15a5f2924532acd8b6faad5ed7530673393569ea4765d005a22310a105` |
| 17 | `theorem` | [mul_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/mul-def--c0a61c5ade65fa060f8c4781.md) | 115 | `result-track:c0a61c5ade65fa060f8c478157d846a1ecd4aca54ad75ff7ae68fb0e35f5c36f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/instance--02d437633ce7e5791b41da4c.md) | 118 | `declaration-track:02d437633ce7e5791b41da4c4d6b78078a7f2bda0a255bf4df8951e543c6c3e6` |
| 19 | `theorem` | [neg_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/neg-def--4c04eb09623f536a392e7df0.md) | 121 | `result-track:4c04eb09623f536a392e7df09fbc16b041f59dda97fa8ab97e838387a25d8422` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/instance--26fe40d67a3cac15423bed8c.md) | 124 | `declaration-track:26fe40d67a3cac15423bed8c5ec0a8e21fe21812272376331336297893f2baac` |
| 21 | `theorem` | [card_ring](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/card-ring--0fb0c32c8409a5bc0cc7a3bb.md) | 139 | `result-track:0fb0c32c8409a5bc0cc7a3bb3b09e649cc752085e210ecfb5b0877f9e8b01f8f` |
| 22 | `class` | [CompatibleRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/compatiblering--180d35180e57b9b69555fa3c.md) | 154 | `declaration-track:180d35180e57b9b69555fa3cdb53dd47373a317bb4914397cb1865d2599e1958` |
| 23 | `theorem` | [realize_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/realize-add--224fb93493c7b36e5eddd16c.md) | 181 | `result-track:224fb93493c7b36e5eddd16cb031d3a14ccc4123d52c73d75e4ad3f31e9a4148` |
| 24 | `theorem` | [realize_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/realize-mul--c560ec5f712f6e959bde9bb1.md) | 186 | `result-track:c560ec5f712f6e959bde9bb180cfde54db8a60f018a602d39b6d4e0a3734c1f6` |
| 25 | `theorem` | [realize_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/realize-neg--05c0ee635d647c2d96e39c5a.md) | 191 | `result-track:05c0ee635d647c2d96e39c5af875b3dca48e406f76b4fee751a10d5846ebd535` |
| 26 | `theorem` | [realize_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/realize-zero--9ef0efeb64a179a91a82adb0.md) | 196 | `result-track:9ef0efeb64a179a91a82adb0f4d26afa7f8cbb464169515385ac958e29f5c463` |
| 27 | `theorem` | [realize_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/realize-one--cad8b742d061aa7a101b8637.md) | 200 | `result-track:cad8b742d061aa7a101b863700fdf2ac11e7febcc34d714fbab0eaae33d8d6e9` |
| 28 | `def` | [compatibleRingOfRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/compatibleringofring--9b9eb280846bc951d6d1a43c.md) | 220 | `declaration-track:9b9eb280846bc951d6d1a43ced0a745611e5886fb309e342b1654caf6d07f4ff` |
| 29 | `def` | [languageEquivEquivRingEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/languageequivequivringequiv--5e94177d2331f5a9ef6771d5.md) | 236 | `declaration-track:5e94177d2331f5a9ef6771d56cbb1b5ec2e1923639a9ba85069bb9b97854125f` |
| 30 | `abbrev` | [addOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/addofringstructure--97ca0452a3475a10dec6ae32.md) | 262 | `declaration-track:97ca0452a3475a10dec6ae32f03d4f0aee37f5a24769aebb3346b568eac380a3` |
| 31 | `abbrev` | [mulOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/mulofringstructure--fe98db90e096f37cc745cb9d.md) | 269 | `declaration-track:fe98db90e096f37cc745cb9d6f10ee3fd7cfe13921c6103f196ffbd211d10c4c` |
| 32 | `abbrev` | [negOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/negofringstructure--c7600f888bef43fe9be0e6da.md) | 276 | `declaration-track:c7600f888bef43fe9be0e6daa8e1f957c19ab5b2d301f37e8f047ffee9a697f6` |
| 33 | `abbrev` | [zeroOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/zeroofringstructure--fe34e7f1a774fa6ab9f0d39b.md) | 283 | `declaration-track:fe34e7f1a774fa6ab9f0d39b9e801a962c800be698775d1f5720bfa37f0cd615` |
| 34 | `abbrev` | [oneOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/oneofringstructure--4d91b9072f7848f147795bbd.md) | 290 | `declaration-track:4d91b9072f7848f147795bbd1cf6ed643ad67350c9034d757cf849488fc2810c` |
| 35 | `abbrev` | [compatibleRingOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/declarations/compatibleringofringstructure--913269d8af3c28209135f5db.md) | 303 | `declaration-track:913269d8af3c28209135f5db2987c5c86025b2be1d52d77ff140c635c5feeb8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
