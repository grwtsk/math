# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Perm.Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba72d03a33a7674726dc64013cb894db4a3385fc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba72d03a33a7674726dc64013cb894db4a3385fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/permsoflist--86282ebec58f027947c4d9ad.md) | 47 | `declaration-track:86282ebec58f027947c4d9ad83c6c957d12a65a8b4487cd5da618be6da72c2e7` |
| 2 | `theorem` | [length_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/length-permsoflist--5b69d1443ac390c63463a4dd.md) | 51 | `result-track:5b69d1443ac390c63463a4dd3a58b7f26a4cfcae0df290aabf411c5a052e4a30` |
| 3 | `theorem` | [mem_permsOfList_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/mem-permsoflist-of-mem--78e202ddefff97d5d3e2caf0.md) | 56 | `result-track:78e202ddefff97d5d3e2caf09dad83e7b05e1ab4b3ea432de3f3419c2138bc71` |
| 4 | `theorem` | [mem_of_mem_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/mem-of-mem-permsoflist--312c7a07bc370858cb22d984.md) | 78 | `result-track:312c7a07bc370858cb22d9843133ff8a02cf0ad52c3adecad9da61c47bd54c61` |
| 5 | `theorem` | [mem_permsOfList_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/mem-permsoflist-iff--590f7f74421300ca137ec907.md) | 95 | `result-track:590f7f74421300ca137ec907608b936c7161689e492941c3cfe84b4318d590b4` |
| 6 | `theorem` | [nodup_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/nodup-permsoflist--473f2a1d821c39980464b4c5.md) | 99 | `result-track:473f2a1d821c39980464b4c53bd68c0b38fefcbaae2d1414fa1955abb93df67f` |
| 7 | `def` | [permsOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/permsoffinset--d9429c3c5f2abcedcd36f102.md) | 128 | `declaration-track:d9429c3c5f2abcedcd36f102d155cc89fca0960f411307c0bcd44e4468bea6ff` |
| 8 | `theorem` | [mem_perms_of_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/mem-perms-of-finset-iff--44c1167fa3dd1b1b2e97c16f.md) | 135 | `result-track:44c1167fa3dd1b1b2e97c16fc2fd2b964dc7d91d993f340f686fc8ef31a7e732` |
| 9 | `theorem` | [card_perms_of_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/card-perms-of-finset--a6fdfd6f414a54c39aadf251.md) | 139 | `result-track:a6fdfd6f414a54c39aadf251c18c717fd8e3ce859696ce5e495fd1525a969bb4` |
| 10 | `def` | [fintypePerm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/fintypeperm--99c236842c2aed102a8c71f6.md) | 144 | `declaration-track:99c236842c2aed102a8c71f6c5928ca31836c67e02a372476187cf079211940f` |
| 11 | `instance` | [Equiv.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/equiv-instfintype--0f96810b77ad030664499148.md) | 147 | `declaration-track:0f96810b77ad030664499148883069646d2bec461d4cdebb8d5f779b6bf62bea` |
| 12 | `instance` | [MulEquiv.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/mulequiv-instfintype--a8a96005904455df17a53892.md) | 156 | `declaration-track:a8a96005904455df17a53892a28d1a2d2ecc6d768fb855ec1efff3d767bd91af` |
| 13 | `theorem` | [Fintype.card_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/fintype-card-perm--cc919929b37e4c6af1bcb338.md) | 163 | `result-track:cc919929b37e4c6af1bcb338e40b4de3581ad7a51477d54ce02333e693587126` |
| 14 | `theorem` | [Fintype.card_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/declarations/fintype-card-equiv--8065bfc1b1925896750a5787.md) | 166 | `result-track:8065bfc1b1925896750a57875ef3d1dd41a5590adc8c8340a77a338a39bdfb9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
