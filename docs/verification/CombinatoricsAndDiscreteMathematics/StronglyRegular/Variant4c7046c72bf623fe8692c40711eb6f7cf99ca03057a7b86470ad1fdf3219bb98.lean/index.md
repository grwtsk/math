# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.StronglyRegular.Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02b1dfde59ae5790e16b43866d6e1c799b686872",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02b1dfde59ae5790e16b43866d6e1c799b686872`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.AdjMatrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSRGWith](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith--1d92584844ec42f62ddfacab.md) | 45 | `declaration-track:1d92584844ec42f62ddfacabe4c4a0f129b0f0314e85788a18e74029b28ca921` |
| 2 | `theorem` | [bot_strongly_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/bot-strongly-regular--9949e7f0cc7ce8ff261c85d6.md) | 55 | `result-track:9949e7f0cc7ce8ff261c85d6706e6e1db7cc8c10e712568f604a06c2fcfbdff9` |
| 3 | `theorem` | [IsSRGWith.top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-top--e1415f061742bea872e513a7.md) | 73 | `result-track:e1415f061742bea872e513a7ed1396ebbe73bce68d7b3aa5f3788ee105e3841e` |
| 4 | `theorem` | [IsSRGWith.card_neighborFinset_union_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-card-neighborfinset-union-eq--33f80f6be5f73f5545dd1097.md) | 80 | `result-track:33f80f6be5f73f5545dd10975317c09bfb3598053e55a4a0ad99212378d7bcf7` |
| 5 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_not_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-card-neighborfinset-union-of-not-adj--a5f6872ecdddf5e6c5ad918a.md) | 93 | `result-track:a5f6872ecdddf5e6c5ad918ac654798c3b594b20a2a2c809d2150c86fdd2cd28` |
| 6 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-card-neighborfinset-union-of-adj--24479019bb64a1ed2613fa3c.md) | 99 | `result-track:24479019bb64a1ed2613fa3c580508382a8cd686a5192d93f1ea125ddd022681` |
| 7 | `theorem` | [compl_neighborFinset_sdiff_inter_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/compl-neighborfinset-sdiff-inter-eq--0894e2cf99e94c3e3c164c71.md) | 104 | `result-track:0894e2cf99e94c3e3c164c7192d92c5f509582b9bbf4abcaf23124b0cd67d18a` |
| 8 | `theorem` | [sdiff_compl_neighborFinset_inter_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/sdiff-compl-neighborfinset-inter-eq--bcb78eae63b72ac5aa1b7b3c.md) | 111 | `result-track:bcb78eae63b72ac5aa1b7b3c3790c381ff994f4a137bf43230fcc05391c77284` |
| 9 | `theorem` | [IsSRGWith.compl_is_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-compl-is-regular--7a1d8a07386dbbafc00c8237.md) | 122 | `result-track:7a1d8a07386dbbafc00c8237712c8923b3ba116c1d80709b07af344373d8eba5` |
| 10 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_adj_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-card-commonneighbors-eq-of-adj-compl--f6781123b824179da1d277bf.md) | 127 | `result-track:f6781123b824179da1d277bff5b68b3d0775821f4b1006b70e43fc92b1252ab0` |
| 11 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_not_adj_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-card-commonneighbors-eq-of-not-adj-compl--e30c8dfeb475a1e80c4432d7.md) | 141 | `result-track:e30c8dfeb475a1e80c4432d73072f27d35af160da20e0bd4579749ce72493ea3` |
| 12 | `theorem` | [IsSRGWith.compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-compl--880ee9682658b8904bb30dd0.md) | 152 | `result-track:880ee9682658b8904bb30dd07b2fe57e049ba66ccbd393e2e6ddd8b06d8b8a1d` |
| 13 | `theorem` | [IsSRGWith.param_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-param-eq--faec8fe7b270a221d10f9b4e.md) | 161 | `result-track:faec8fe7b270a221d10f9b4e17bb3c7576fbbff79c7b2b63efff7efc26424bb3` |
| 14 | `theorem` | [IsSRGWith.matrix_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variant4c7046c72bf623fe8692c40711eb6f7cf99ca03057a7b86470ad1fdf3219bb98.lean/declarations/issrgwith-matrix-eq--136095dbda4414da01f56aa5.md) | 196 | `result-track:136095dbda4414da01f56aa5957b81b9bc8a18f3247d0a48cd0e3ab748ff4587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
