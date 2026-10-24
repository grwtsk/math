# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TriangleInequality.Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b672689ebd0122c5197cbb9bf9afb84d8dccf3c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b672689ebd0122c5197cbb9bf9afb84d8dccf3c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.MeanInequalities` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_add_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnorm-add-le--dcbca11c0183e87a5e8b8de2.md) | 25 | `result-track:dcbca11c0183e87a5e8b8de2a894cadc98a92bfb8963ad942a6e5b6be58e3cf1` |
| 2 | `theorem` | [eLpNorm'_add_le_of_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnorm-add-le-of-le-one--38f9114a5ae53b1d67e0db61.md) | 33 | `result-track:38f9114a5ae53b1d67e0db61bd3044667ac45343e81e7fa23a186960e2a8be2f` |
| 3 | `theorem` | [eLpNormEssSup_add_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnormesssup-add-le--1cc5abec511f5342e7368df8.md) | 42 | `result-track:1cc5abec511f5342e7368df87c7da7b674667ed3a272b40736ebba9f9790a4c4` |
| 4 | `theorem` | [eLpNorm_add_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnorm-add-le--9071c7cf0ef73bb602837cfb.md) | 48 | `result-track:9071c7cf0ef73bb602837cfbee89ec5e8c49501c7ecea7a15493dd72f3320a65` |
| 5 | `def` | [LpAddConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/lpaddconst--12894770ce43efe409006465.md) | 61 | `declaration-track:12894770ce43efe40900646582b287c4ac52ac3025e2ebfacb86594757685bee` |
| 6 | `theorem` | [LpAddConst_of_one_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/lpaddconst-of-one-le--009f5290dc0048dec6d30587.md) | 64 | `result-track:009f5290dc0048dec6d3058771891a4294cde78fb3dcff6563e981e7c563ab0f` |
| 7 | `theorem` | [LpAddConst_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/lpaddconst-zero--60d2dec3520e2547d9ad1dc7.md) | 69 | `result-track:60d2dec3520e2547d9ad1dc708f040ce04502eeea3de518303db36f808fe027c` |
| 8 | `theorem` | [LpAddConst_lt_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/lpaddconst-lt-top--c5e75473845d406daa20671f.md) | 74 | `result-track:c5e75473845d406daa20671fc97069e0181ed5857c87c1f8839a0b4c3f094b24` |
| 9 | `theorem` | [eLpNorm_add_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnorm-add-le--b53eb72fe1ddd210ebc876c3.md) | 82 | `result-track:b53eb72fe1ddd210ebc876c301a8e185f38195395f9e8264385034e0cd9909dc` |
| 10 | `theorem` | [exists_Lp_half](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/exists-lp-half--0a182e4c771c4ee41d045115.md) | 99 | `result-track:0a182e4c771c4ee41d045115e4e19435261d5bd5c1e4f71856bda8d22967889d` |
| 11 | `theorem` | [eLpNorm_sub_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnorm-sub-le--9acb7b0b7b15a205bab51b70.md) | 117 | `result-track:9acb7b0b7b15a205bab51b704f83bec5359875a72fe9611c03c141f4fcfefc1c` |
| 12 | `theorem` | [eLpNorm_sub_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnorm-sub-le--a275270de7cc4804207610e4.md) | 122 | `result-track:a275270de7cc4804207610e4402ef220026542176bd70025312a6720fbd0322c` |
| 13 | `theorem` | [eLpNorm_add_lt_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnorm-add-lt-top--238ba4264da1957bfc824e5b.md) | 126 | `result-track:238ba4264da1957bfc824e5bb4dcf5a938770c016b3537cbed62be64296cfd0c` |
| 14 | `theorem` | [eLpNorm'_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnorm-sum-le--6abbe280fd0bd4fb30a92f2d.md) | 135 | `result-track:6abbe280fd0bd4fb30a92f2da6b006db45b1fe8e9309e03686db84716aefa490` |
| 15 | `theorem` | [eLpNorm_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/elpnorm-sum-le--c6df470655e4d1e0839c5bce.md) | 142 | `result-track:c6df470655e4d1e0839c5bced3b1baca4d64ae5a32489f2187db10c2ecfc0218` |
| 16 | `theorem` | [MemLp.add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/memlp-add--afa851c7f4eb4d5d6b8be3b3.md) | 149 | `result-track:afa851c7f4eb4d5d6b8be3b3f2609c3dee4659d3c6c54ea0577b50740e37dc64` |
| 17 | `theorem` | [MemLp.sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/memlp-sub--2250f6a969bdd810fdc4d51c.md) | 152 | `result-track:2250f6a969bdd810fdc4d51ce7b9da020024849dfe2753b5599a9ac164bd6155` |
| 18 | `theorem` | [memLp_finset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/memlp-finset-sum--ce93647343b28bd997210f2b.md) | 156 | `result-track:ce93647343b28bd997210f2bbf6e88b7b8e111448b9e2af585e814210c2905aa` |
| 19 | `theorem` | [memLp_finset_sum'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/declarations/memlp-finset-sum--20f4769cb19b88a87c9a36e3.md) | 167 | `result-track:20f4769cb19b88a87c9a36e3f1c2ac9163f3817a24390efc26c0b3254b445fd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
