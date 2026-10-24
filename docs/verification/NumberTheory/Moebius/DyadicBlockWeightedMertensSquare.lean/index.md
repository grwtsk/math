# Verification target: GRWTSK.NumberTheory.Moebius.DyadicBlockWeightedMertensSquare

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcc97f34fbd31896abb65517b7b69d766f6d5092",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcc97f34fbd31896abb65517b7b69d766f6d5092`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicWeightedMertensSquare`](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicBlockGeometricRatio](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/dyadicblockgeometricratio--5d83601bfa727229d52b5918.md) | 41 | `declaration-track:5d83601bfa727229d52b59182a7b703bc5258eefb8b410f5559d8f328f17460b` |
| 2 | `def` | [dyadicBlockGeometricConstant](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/dyadicblockgeometricconstant--fe6a05ae556f5ea024318de6.md) | 45 | `declaration-track:fe6a05ae556f5ea024318de6c9dcb157e056bc5a278d9d636b537b64fabdeda1` |
| 3 | `theorem` | [dyadicBlockGeometricRatio_gt_one](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/dyadicblockgeometricratio-gt-one--928ae2406af5067ab74d26f4.md) | 50 | `result-track:928ae2406af5067ab74d26f418c836e25413908bcdf7144e0cb95af9b989d2f7` |
| 4 | `theorem` | [dyadicBlockGeometricConstant_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/dyadicblockgeometricconstant-nonneg--2dfb26e4384f4a8d65057727.md) | 58 | `result-track:2dfb26e4384f4a8d6505772780d964f4132269b6d8e4504acebda97eadcb4d74` |
| 5 | `theorem` | [dyadicBlockGeometricConstant_add](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/dyadicblockgeometricconstant-add--55cfdf98cfb6a13f05bc484e.md) | 66 | `result-track:55cfdf98cfb6a13f05bc484ed4ebf2f2aa2902cbdadd87238ad614d2100330a9` |
| 6 | `theorem` | [weightedMertensDyadicPrefix_le_of_block_bound](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/weightedmertensdyadicprefix-le-of-block-bound--de130723b14c95ff5b032bf5.md) | 79 | `result-track:de130723b14c95ff5b032bf547f955d2f437c0b0a7a6a933d79f197e7c31fc5a` |
| 7 | `theorem` | [subpolynomialDyadicPrefix_of_block](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/subpolynomialdyadicprefix-of-block--c81bc5c211b5571909c10994.md) | 113 | `result-track:c81bc5c211b5571909c109940b7cf8c559e8842c99826d4f549cf0036b7a47df` |
| 8 | `theorem` | [subpolynomialDyadicBlock_iff_prefix](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/subpolynomialdyadicblock-iff-prefix--5d1723db7ff300f958418bc4.md) | 125 | `result-track:5d1723db7ff300f958418bc4d2d3de73b0f85d35d582ab64d2d02289b1ef5d2a` |
| 9 | `theorem` | [subpolynomialDyadicBlock_iff_cumulative](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/subpolynomialdyadicblock-iff-cumulative--82e5a0625ac8ffeeb2b79405.md) | 133 | `result-track:82e5a0625ac8ffeeb2b7940538254bda1df1be2f6908a1312192ff5755843e40` |
| 10 | `theorem` | [subpolynomialDyadicBlock_iff_allPositiveWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/subpolynomialdyadicblock-iff-allpositiveweightedmertenssquare--7c748f91cd09dcaecf02d81e.md) | 141 | `result-track:7c748f91cd09dcaecf02d81e53ba98ac9df073126e3099fc52de71a5ffd5eef7` |
| 11 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicBlockWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/declarations/riemannhypothesis-of-subpolynomialdyadicblockweightedmertenssquare--6c682a2eef28a923e9982699.md) | 149 | `result-track:6c682a2eef28a923e9982699fa1cb0467fcc6aa6ff00c20876d707aeadaadd78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
