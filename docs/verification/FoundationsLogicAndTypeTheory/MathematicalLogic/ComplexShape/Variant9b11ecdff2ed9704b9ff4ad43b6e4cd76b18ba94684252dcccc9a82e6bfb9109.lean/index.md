# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ComplexShape.Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a65f002075b9ad65bd06b2a6d534fc194794000",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a65f002075b9ad65bd06b2a6d534fc194794000`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComplexShape](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/complexshape--00363afe44a467eaf79c846a.md) | 58 | `declaration-track:00363afe44a467eaf79c846a33a36f2babf9da0802d29bd63cdcab07da74c13f` |
| 2 | `def` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/refl--cb7ba834c314f4b477123411.md) | 76 | `declaration-track:cb7ba834c314f4b477123411773a662d5b1ab2aa3171661250849d91436bb56e` |
| 3 | `def` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/symm--7b2770495536d8dcd4fdff63.md) | 84 | `declaration-track:7b2770495536d8dcd4fdff632535ba4389ad51871325c0ae8fbbb14557e81eaa` |
| 4 | `theorem` | [symm_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/symm-symm--4c86636179e1084e3bfa83f7.md) | 90 | `result-track:4c86636179e1084e3bfa83f720b4357717bb0eeef7887bf7af800eae04ded394` |
| 5 | `theorem` | [symm_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/symm-bijective--51be4aa3f10bba6ca6226e15.md) | 92 | `result-track:51be4aa3f10bba6ca6226e15112e0354a7e861802179080c9f87dccc808e4124` |
| 6 | `def` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/trans--53e9d9f502d6373c5ab59af0.md) | 101 | `declaration-track:53e9d9f502d6373c5ab59af0d8c0529cd9c4eefc4b06516d55db402f894d0ac6` |
| 7 | `instance` | [subsingleton_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/subsingleton-next--ab40e1a6cc3b48fc7c2aa5cb.md) | 114 | `declaration-track:ab40e1a6cc3b48fc7c2aa5cbb6b4ddfde3a7e61e4923eeeac07d12d746a7ade2` |
| 8 | `instance` | [subsingleton_prev](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/subsingleton-prev--1b037abec4d7aace64cbef38.md) | 120 | `declaration-track:1b037abec4d7aace64cbef3820fb53d651eb3e92e5ef8526704df341ce6f5625` |
| 9 | `def` | [next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/next--127554babc24bb2f98a6db5e.md) | 130 | `declaration-track:127554babc24bb2f98a6db5e4046d1c03f847fce8d350fbe3d18cc53cef2c159` |
| 10 | `def` | [prev](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/prev--1e386be76e62fb9ce237e645.md) | 137 | `declaration-track:1e386be76e62fb9ce237e645ec4baf794ff2b708fd174e7475acda95ee8ed61f` |
| 11 | `theorem` | [next_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/next-eq--19f99519d333ef910917d886.md) | 140 | `result-track:19f99519d333ef910917d8863d721b0b0ead083edba726d93f476448913216c4` |
| 12 | `theorem` | [prev_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/prev-eq--bb320ecb551838fa30332d31.md) | 146 | `result-track:bb320ecb551838fa30332d318aac3669acb4c576275e09148d6d7d5c1dd677a1` |
| 13 | `lemma` | [next_eq_self'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/next-eq-self--f720939b724f6a89a1d6bb01.md) | 151 | `result-track:f720939b724f6a89a1d6bb01e50dec473e2004f08217ae25a6bd948a16c8bf9d` |
| 14 | `lemma` | [prev_eq_self'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/prev-eq-self--f36c4bd9c6a73c80d8f773eb.md) | 155 | `result-track:f36c4bd9c6a73c80d8f773ebfe6655075cb4fb44f3c13005ece27fc1ebf46b94` |
| 15 | `lemma` | [next_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/next-eq-self--bebc4fc5a0bfcdc20570247a.md) | 159 | `result-track:bebc4fc5a0bfcdc20570247a74cdef31451c2cc41b7bd2b1ab2582ac9100a242` |
| 16 | `lemma` | [prev_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/prev-eq-self--386656104c14a14196deb8f9.md) | 163 | `result-track:386656104c14a14196deb8f94645fc5a5885d627534f80095b3f6ed174e501e5` |
| 17 | `def` | [up'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/up--885667286f9d406291f864ad.md) | 171 | `declaration-track:885667286f9d406291f864ad4e4278a3195348b3fcd084656aa7aa9b0412734b` |
| 18 | `def` | [down'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/down--0153b58eaea87fd6df5da086.md) | 180 | `declaration-track:0153b58eaea87fd6df5da086df8b4fd4022af28b2e1a168a39482095dbd8d91f` |
| 19 | `theorem` | [down'_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/down-mk--ef288a6b5f0fc8a4a691d487.md) | 185 | `result-track:ef288a6b5f0fc8a4a691d4879c7228a7cb5860baa5af7e42a2a2ad0ee39a8ab8` |
| 20 | `def` | [up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/up--1e159bf96b4e89dbaffc7fc7.md) | 191 | `declaration-track:1e159bf96b4e89dbaffc7fc71b43d32877090c4e35f6a1d3a2d94ff2aebd8ca7` |
| 21 | `def` | [down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/down--b9d2d64fb98e8d1e18296e46.md) | 197 | `declaration-track:b9d2d64fb98e8d1e18296e4628ea25af4dd5509434c929f98939e9cae80f1ef1` |
| 22 | `theorem` | [down_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/down-mk--d61d874689e2d74c38290ec1.md) | 200 | `result-track:d61d874689e2d74c38290ec188bd4cddc24c737bd413fd092906cf6a81105f9d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/instance--62eaa1b3791f4a503df538c4.md) | 212 | `declaration-track:62eaa1b3791f4a503df538c4f69939ded45ca370174af860177cbcba0f45bb52` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/instance--96a9293d0ae92d7324acbd9e.md) | 215 | `declaration-track:96a9293d0ae92d7324acbd9ea906a05215429b398ae95f26462e666807e0f3bc` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/instance--324b1ac7857771f5163c636c.md) | 220 | `declaration-track:324b1ac7857771f5163c636cc84b5f04fb86f9746d404a9138c6e393009ce47d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant9b11ecdff2ed9704b9ff4ad43b6e4cd76b18ba94684252dcccc9a82e6bfb9109.lean/declarations/instance--9c926ddf97b4d0c58b29448f.md) | 223 | `declaration-track:9c926ddf97b4d0c58b29448f3b3874197bf44b1d588d55739a7b86da88a4780f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
