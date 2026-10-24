# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFn.Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cb4f31b57c4a9b1a84add340ac41aa4dbd4beb7",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cb4f31b57c4a9b1a84add340ac41aa4dbd4beb7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Join` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Pairwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/length-offn--c3a169cbd57349b5a7d50893.md) | 41 | `result-track:c3a169cbd57349b5a7d50893327b5c6815e1584462d26e4029b787e2444b4388` |
| 2 | `theorem` | [get_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/get-offn--cef0bb604b4b739615ceff71.md) | 49 | `result-track:cef0bb604b4b739615ceff71de15e4d0aec203ea4b52aeb2ad69a1da5c675ef7` |
| 3 | `theorem` | [get?_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/get-offn--b99b46cef7c5667de5e13d7d.md) | 59 | `result-track:b99b46cef7c5667de5e13d7da939d88d8262db67681b2e47b381ee3932038260` |
| 4 | `theorem` | [nthLe_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/nthle-offn--e2bbb5e4e619c634489740d9.md) | 71 | `result-track:e2bbb5e4e619c634489740d9a0ab84853b1cedd6dd765f3f2f2cea5775ed59a8` |
| 5 | `theorem` | [nthLe_ofFn'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/nthle-offn--097bbf36ebfd381e49873899.md) | 78 | `result-track:097bbf36ebfd381e4987389910fc5c2a0852cf9b72a5df047338b8b645e2e05b` |
| 6 | `theorem` | [map_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/map-offn--328b5a1da994980b20d916ad.md) | 84 | `result-track:328b5a1da994980b20d916ad3ef007549382c7bf567fcb1a4a2d7e1e441df70e` |
| 7 | `theorem` | [ofFn_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-congr--0bff866b52e22544901b3b48.md) | 101 | `result-track:0bff866b52e22544901b3b4828b8f8abf68225b0a84e42b73b5230e51a3a2806` |
| 8 | `theorem` | [ofFn_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-zero--1895e0c55385d12799ac4c8c.md) | 109 | `result-track:1895e0c55385d12799ac4c8cd6ce25e5e16895e18c25ee88e2f282b4e147a8af` |
| 9 | `theorem` | [ofFn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-succ--1d2d9c9de0b8e857955250b7.md) | 114 | `result-track:1d2d9c9de0b8e857955250b7763236c98d3cbb20c4035629accd54b5c4cdd52b` |
| 10 | `theorem` | [ofFn_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-succ--b6be29a555a59f09648de550.md) | 121 | `result-track:b6be29a555a59f09648de5503fda34c808caa88e4d4ccb6fc7abf310b3cddd15` |
| 11 | `theorem` | [ofFn_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-eq-nil-iff--015385a5188ec2e651205a01.md) | 131 | `result-track:015385a5188ec2e651205a0127d85261d7755eec563aea4a7bc723729688f69d` |
| 12 | `theorem` | [last_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/last-offn--c0d28c8e1fc658b561dbd340.md) | 135 | `result-track:c0d28c8e1fc658b561dbd3403ed7cda3b660f74d1201c8b2ebe13d29f67430b0` |
| 13 | `theorem` | [last_ofFn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/last-offn-succ--d8a6a4ab1473c3a606c2a126.md) | 140 | `result-track:d8a6a4ab1473c3a606c2a126f72196dc61336e4c3e7fa2c376c106f98c2d9182` |
| 14 | `theorem` | [ofFn_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-add--b69843cdc3ab14332aa1c009.md) | 147 | `result-track:b69843cdc3ab14332aa1c009f45ae125b972bbb956924e06ef8d84946254d1fe` |
| 15 | `theorem` | [ofFn_fin_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-fin-append--803445ab7dd8d49be07a89c4.md) | 158 | `result-track:803445ab7dd8d49be07a89c4c491d13a10dae17a0e8ff412411bc9f7920a70ff` |
| 16 | `theorem` | [ofFn_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-mul--634de38fd02a8b0bf2c60f3f.md) | 164 | `result-track:634de38fd02a8b0bf2c60f3f3aff0eaa53b5f1b3e6d5597fe34a775d909929e1` |
| 17 | `theorem` | [ofFn_mul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-mul--56f185cb9d068f1501a50cd2.md) | 176 | `result-track:56f185cb9d068f1501a50cd2846efa1574dab7b5fefbff6d32ebaab9d198bc1c` |
| 18 | `theorem` | [ofFn_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-get--e31ffdaaf1f1c30360a9d21b.md) | 184 | `result-track:e31ffdaaf1f1c30360a9d21b3de16cc706ad6f25fc1aef6853780267a00d6075` |
| 19 | `theorem` | [ofFn_nthLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-nthle--50a66cd14c58c6b7ba86f530.md) | 193 | `result-track:50a66cd14c58c6b7ba86f5303b67b49c7a53effc17ebe7fc93dfdf4e95df241b` |
| 20 | `theorem` | [mem_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/mem-offn--056617a09767617ca7f2821a.md) | 199 | `result-track:056617a09767617ca7f2821a39bab03b43c25c62824fbd00447d6158a934fe71` |
| 21 | `theorem` | [forall_mem_ofFn_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/forall-mem-offn-iff--c3a2905f74345aa2d835e547.md) | 205 | `result-track:c3a2905f74345aa2d835e5472b6a8285d05d87c6bedaa9080a8b1dda9e758550` |
| 22 | `theorem` | [ofFn_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-const--d1fe2ed06038dde86b810399.md) | 210 | `result-track:d1fe2ed06038dde86b8103995607424d0ba2617674f5e10661ae11869af50f9e` |
| 23 | `theorem` | [ofFn_fin_repeat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-fin-repeat--8d4cce5ec47b5a1fc21cdc7b.md) | 216 | `result-track:8d4cce5ec47b5a1fc21cdc7b0df3eebcf162817efec3bb40b2163ab338304f3b` |
| 24 | `theorem` | [pairwise_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/pairwise-offn--cb7ad466b5c2f9aa209f9b57.md) | 223 | `result-track:cb7ad466b5c2f9aa209f9b573430b8ffe97dbfbed4a49764705667b8c586a5c9` |
| 25 | `def` | [equivSigmaTuple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/equivsigmatuple--f8826253e2d79a7e0f34d8f9.md) | 231 | `declaration-track:f8826253e2d79a7e0f34d8f9506348b74093ee50748659ee724e51bc98b4e2bf` |
| 26 | `def` | [ofFnRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offnrec--e09db0d82ee92656ae27a397.md) | 246 | `declaration-track:e09db0d82ee92656ae27a397926d5274926212987c11fbbb08ee6bc2861f5997` |
| 27 | `theorem` | [ofFnRec_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offnrec-offn--10fb534d78300d95617124c9.md) | 252 | `result-track:10fb534d78300d95617124c9b00a5aa75483997e4d553fb74455ccda08dd672e` |
| 28 | `theorem` | [exists_iff_exists_tuple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/exists-iff-exists-tuple--fd9d50589458c6c7a2294c51.md) | 263 | `result-track:fd9d50589458c6c7a2294c51b565d066202aa3642313bd26bcd76f52948ea53a` |
| 29 | `theorem` | [forall_iff_forall_tuple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/forall-iff-forall-tuple--3a367a60c917c7b8d954c8ed.md) | 268 | `result-track:3a367a60c917c7b8d954c8ed7ee32412f10d9bbb620c4a399e2477485f2ca9f0` |
| 30 | `theorem` | [ofFn_inj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-inj--eada634e53cef271cebe53e4.md) | 274 | `result-track:eada634e53cef271cebe53e4deeb540ce498b896a5acf01301ed784dced6bd2a` |
| 31 | `theorem` | [ofFn_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-injective--759db5bbeb1697b8982e7533.md) | 280 | `result-track:759db5bbeb1697b8982e75333738254a1195cf95bd16f7e52e0a28b775fe9e09` |
| 32 | `theorem` | [ofFn_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variantdce1e0af32bab862108fd3a22aabd85e009ea48de1f41ba6e943b78bd2ec72ae.lean/declarations/offn-inj--736b4f6f21cc017dc73d22af.md) | 286 | `result-track:736b4f6f21cc017dc73d22af7f59c69f11dc7685ff585406de4bded3d1c53c5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
