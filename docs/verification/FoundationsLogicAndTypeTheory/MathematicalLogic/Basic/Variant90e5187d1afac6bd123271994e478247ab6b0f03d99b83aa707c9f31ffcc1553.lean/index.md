# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "159d9c3e398c7aca334166fcd6a4e7bef66bc4e7",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `159d9c3e398c7aca334166fcd6a4e7bef66bc4e7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Logic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/isleft--22771e3ca46fbc3697b61d3a.md) | 59 | `declaration-track:22771e3ca46fbc3697b61d3a5ceea84e847ac18423f71cd56d96979b8835c200` |
| 2 | `def` | [isRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/isright--799c687269fb7dbba4522717.md) | 64 | `declaration-track:799c687269fb7dbba45227178e908f15787788a38d1e155be8dc38d026b5a203` |
| 3 | `def` | [getLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getleft--837d796ca3c5516f9ff17a97.md) | 69 | `declaration-track:837d796ca3c5516f9ff17a9786b100311bb7ee54491bc5d7502495610cd1fbcc` |
| 4 | `def` | [getRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getright--96c5c66446db33496f5a65ca.md) | 73 | `declaration-track:96c5c66446db33496f5a65ca39734a91902df74be8b8015af8812583ee16b2f4` |
| 5 | `def` | [getLeft?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getleft--00995ed3cf7e6dfb59bb91f1.md) | 77 | `declaration-track:00995ed3cf7e6dfb59bb91f123034b0698ab7de97897b6cdb2605ccb8e5373cb` |
| 6 | `def` | [getRight?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getright--2410ef090963fdf5af590254.md) | 82 | `declaration-track:2410ef090963fdf5af590254b812e43bb1f4fbfc74a5656236c576bd3ae62ba8` |
| 7 | `theorem` | [isLeft_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/isleft-inl--b24013ebed6e4d376e61dce2.md) | 86 | `result-track:b24013ebed6e4d376e61dce25de9f63d9102a2079c1ea1f24788ca3f2f778f7f` |
| 8 | `theorem` | [isLeft_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/isleft-inr--b35fedf86866fe1aa37bc624.md) | 87 | `result-track:b35fedf86866fe1aa37bc624d35ce866bbee4a4f1f7a00981a82a44d7cbee5f8` |
| 9 | `theorem` | [isRight_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/isright-inl--d065b8af2fbe749dab9d4d4e.md) | 88 | `result-track:d065b8af2fbe749dab9d4d4ed23ce6c54c84c1a13f36fd30ccf793c4072aed53` |
| 10 | `theorem` | [isRight_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/isright-inr--6d7bde5b5b7c4688f6a200cd.md) | 89 | `result-track:6d7bde5b5b7c4688f6a200cd8623fef59bb37babc10ee5a883f973b30b315a5c` |
| 11 | `theorem` | [getLeft_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getleft-inl--b439e8e40c192d8eee0dff12.md) | 91 | `result-track:b439e8e40c192d8eee0dff12a34fb6604677effb14dfa3fa13edcd9c70c09dc4` |
| 12 | `theorem` | [getRight_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getright-inr--c4bf9ceea2638ffb71324aa5.md) | 92 | `result-track:c4bf9ceea2638ffb71324aa584ef12ee7f0bd17b110dc99d361166949a3bd6aa` |
| 13 | `theorem` | [getLeft?_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getleft-inl--8360ca80b1eaaaad081f1094.md) | 94 | `result-track:8360ca80b1eaaaad081f1094f8bfc6924336dce6b765017afd5eaac4fb904218` |
| 14 | `theorem` | [getLeft?_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getleft-inr--a3b1c1112caa6b7899787159.md) | 95 | `result-track:a3b1c1112caa6b7899787159782ce8d4eabe3a62a3da41d91ba62cf3737a3180` |
| 15 | `theorem` | [getRight?_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getright-inl--bd11e6e6d4150147c8ad5052.md) | 96 | `result-track:bd11e6e6d4150147c8ad50528002fb02ee4b76294e2dc54e78b89ac39548a728` |
| 16 | `theorem` | [getRight?_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/getright-inr--51e8a43758a2ab3c0875759c.md) | 97 | `result-track:51e8a43758a2ab3c0875759c95d6494b9bd62237258f0d67199fcd342dda8963` |
| 17 | `def` | [elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/elim--1634a159af0437528b3d7a4d.md) | 102 | `declaration-track:1634a159af0437528b3d7a4d8f88ba6b7d29499cb1f7e189557b4a4369f5b0b2` |
| 18 | `theorem` | [elim_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/elim-inl--9119f0cba405ee992fa1e74f.md) | 105 | `result-track:9119f0cba405ee992fa1e74ff8f506379bef21145cdb9bfef1e3052537cb30ca` |
| 19 | `theorem` | [elim_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/elim-inr--1f4019d3d53cde10cee9a49e.md) | 108 | `result-track:1f4019d3d53cde10cee9a49e8776b7928031adeffc05618ddd1c6b1f97ab9a7a` |
| 20 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/map--1f22617fb78889a03e9cdf9c.md) | 112 | `declaration-track:1f22617fb78889a03e9cdf9c24957a59f17ac3d542ed560cdfe0ddfb8cccbc6f` |
| 21 | `theorem` | [map_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/map-inl--f49127fc94b9a5c55d99ce93.md) | 115 | `result-track:f49127fc94b9a5c55d99ce9300883f6cdcac7f140f8b13238bc5928b51e91361` |
| 22 | `theorem` | [map_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/map-inr--817f43a708a6dd42718ccc25.md) | 117 | `result-track:817f43a708a6dd42718ccc25c68513b47f8591d7b17df0e9d65163f271df1d56` |
| 23 | `def` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/swap--947708eb20937fb4463c2daa.md) | 120 | `declaration-track:947708eb20937fb4463c2daa5752e301edac5da2a87795389740ebf8bf4fa9bc` |
| 24 | `theorem` | [swap_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/swap-inl--ff9995266e00aba75c544115.md) | 122 | `result-track:ff9995266e00aba75c544115790b818a8cf13e83f3d58c7afc7e0c55b3efcac7` |
| 25 | `theorem` | [swap_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/swap-inr--f779a46041b8e3b40af9955c.md) | 124 | `result-track:f779a46041b8e3b40af9955c00343a7586be8eedb661ec3dce0790b88dbf8adc` |
| 26 | `inductive` | [LiftRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/liftrel--cc12f4eddaf5213cd13b61f8.md) | 130 | `declaration-track:cc12f4eddaf5213cd13b61f85c9c41a21c25d776a747a9ed04f5194c7dc020f9` |
| 27 | `theorem` | [liftRel_inl_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/liftrel-inl-inl--685ee29e6cf1bfc0af85ee0b.md) | 136 | `result-track:685ee29e6cf1bfc0af85ee0b2fcf9305613904cf21afd497361ecdd501b95d3c` |
| 28 | `theorem` | [not_liftRel_inl_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/not-liftrel-inl-inr--3253a050b6558d6809195303.md) | 139 | `result-track:3253a050b6558d680919530354a1e9a0ff8505f31d8aa65e5ec8a74e1e5f0883` |
| 29 | `theorem` | [not_liftRel_inr_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/not-liftrel-inr-inl--d6be2e6d91a4d5e180723b62.md) | 141 | `result-track:d6be2e6d91a4d5e180723b62672facaa79156018476dd5b55a2a8176faca4392` |
| 30 | `theorem` | [liftRel_inr_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/liftrel-inr-inr--51760c740c82e731a28f920c.md) | 143 | `result-track:51760c740c82e731a28f920c74e75d80cbc34d22b86e754fd40e36cd4878acf9` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/instance--360ccb89ee60cbf4692a7f86.md) | 146 | `declaration-track:360ccb89ee60cbf4692a7f8681b64af66dbcb25d13264fa6930944ba769ea8a1` |
| 32 | `inductive` | [Lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/lex--70c5aa543a3c587e74e6d9e2.md) | 160 | `declaration-track:70c5aa543a3c587e74e6d9e2df9d2d84b7e9e9baad4eae6d9e1affc692727e53` |
| 33 | `theorem` | [lex_inl_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/lex-inl-inl--62dc38919ec42e21499c7cf6.md) | 170 | `result-track:62dc38919ec42e21499c7cf664892fb6aeab7b4e8d4da6b00d74bf88a5f9ee3b` |
| 34 | `theorem` | [lex_inr_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/lex-inr-inr--f4c63d2e7f729a49fcd31961.md) | 173 | `result-track:f4c63d2e7f729a49fcd319615af5bee81733329cc3c60181f40ad548c57ad311` |
| 35 | `theorem` | [lex_inr_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/lex-inr-inl--ff8cc60c58b1a5ceee1a6c3b.md) | 176 | `result-track:ff8cc60c58b1a5ceee1a6c3b47cda23b3550bf6b8cc10075c6b0017e1280b119` |
| 36 | `instance` | [instDecidableRelSumLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90e5187d1afac6bd123271994e478247ab6b0f03d99b83aa707c9f31ffcc1553.lean/declarations/instdecidablerelsumlex--d0822403fd45da117a606c7a.md) | 178 | `declaration-track:d0822403fd45da117a606c7aa568a6f78ccb7286052477ffc1623c2adc6f374e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
