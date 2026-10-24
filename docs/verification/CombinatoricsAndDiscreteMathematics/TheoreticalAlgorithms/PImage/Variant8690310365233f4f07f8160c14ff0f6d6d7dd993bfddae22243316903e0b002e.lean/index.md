# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PImage.Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54b7e64db79b9118c47b959c39c10287d2ca1576",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54b7e64db79b9118c47b959c39c10287d2ca1576`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Option` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Part` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/tofinset--b2c95003f8e505e582cb4ffa.md) | 27 | `declaration-track:b2c95003f8e505e582cb4ffaacdbd2ce5f7b4570425aa4c7f989c6792dd1c43a` |
| 2 | `theorem` | [mem_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/mem-tofinset--f0ebde12a3d4ea47ea417f0d.md) | 31 | `result-track:f0ebde12a3d4ea47ea417f0dd38b18fd892d9c98b7e99489a796ca565134f333` |
| 3 | `theorem` | [toFinset_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/tofinset-none--29cb15f8964bc0e6e30abfd2.md) | 35 | `result-track:29cb15f8964bc0e6e30abfd2132fa4e6b3d60bd6575a319298a60987513ff504` |
| 4 | `theorem` | [toFinset_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/tofinset-some--a407e3a0c8228d4726aad1b1.md) | 39 | `result-track:a407e3a0c8228d4726aad1b1f50a859cfdb1f6b52baf1c45465c34122933403e` |
| 5 | `theorem` | [coe_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/coe-tofinset--cd16557f8f1dabfcdd7d1642.md) | 43 | `result-track:cd16557f8f1dabfcdd7d16426e70162d66321a582057f0f6e18c9ec7a5080b71` |
| 6 | `def` | [pimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/pimage--b46e446f26d9e2b9acfb0b91.md) | 54 | `declaration-track:b46e446f26d9e2b9acfb0b91efcd1fbdc0746600e2b56cecb4561c11d5c66136` |
| 7 | `theorem` | [mem_pimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/mem-pimage--439550e4cba96a76389a89d4.md) | 58 | `result-track:439550e4cba96a76389a89d48f15a2fb33af002574ede987e2847578d905f60f` |
| 8 | `theorem` | [coe_pimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/coe-pimage--8dafb5069442e4bdaf21c12d.md) | 62 | `result-track:8dafb5069442e4bdaf21c12d05b89ab4fb4c81bf922d5735007af72004ea9dcd` |
| 9 | `theorem` | [pimage_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/pimage-some--ece7e04bb7fb1fbbf660f397.md) | 66 | `result-track:ece7e04bb7fb1fbbf660f3979143d790011cb7cc8c1a3ec4011a5099d5601706` |
| 10 | `theorem` | [pimage_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/pimage-congr--c6585f8372ddf9f55282260b.md) | 71 | `result-track:c6585f8372ddf9f55282260bb3fb1b10176e63b4a43c87e6fa07120d1d00be3c` |
| 11 | `theorem` | [pimage_eq_image_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/pimage-eq-image-filter--6207f8d7359e10dcbb772ead.md) | 75 | `result-track:6207f8d7359e10dcbb772eadbce2820d103825d906e8b30190e098e92d3927e5` |
| 12 | `theorem` | [pimage_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/pimage-union--1c695e2e8384fd3f5c63f9e8.md) | 81 | `result-track:1c695e2e8384fd3f5c63f9e84799658e54d5227225b4dbb11f29e67437fceb09` |
| 13 | `theorem` | [pimage_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/pimage-empty--79d78142c21f0a0b44bf5b20.md) | 86 | `result-track:79d78142c21f0a0b44bf5b20117ec7b7a57b6db59d8c46592358696fd9c34d6f` |
| 14 | `theorem` | [pimage_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/pimage-subset--257630d51eacfc786c86d6b6.md) | 90 | `result-track:257630d51eacfc786c86d6b6b8a9f9645e2bf0b97b955cf58f6c32f9e3eb52c3` |
| 15 | `theorem` | [pimage_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/pimage-mono--75ce08190140841ef3d498c4.md) | 94 | `result-track:75ce08190140841ef3d498c4072914f7d6234564dda6afbbcc28f9c7bfbef761` |
| 16 | `theorem` | [pimage_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant8690310365233f4f07f8160c14ff0f6d6d7dd993bfddae22243316903e0b002e.lean/declarations/pimage-inter--5864097f6b971e1c96bc37b9.md) | 97 | `result-track:5864097f6b971e1c96bc37b9581a0a4a0b474bb0c083dea84b7be6764862f129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
