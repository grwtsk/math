# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt01.Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3443f496620c031257cb64271aaac9a3c8dccaa7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3443f496620c031257cb64271aaac9a3c8dccaa7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/outerweight--53ccd65abc83e314eb096675.md) | 17 | `declaration-track:53ccd65abc83e314eb096675d0881af8aecf91cdf15171f7c628e4da057a7dab` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/exponentweight--53c9fa66620024e227bc6994.md) | 19 | `declaration-track:53c9fa66620024e227bc69948d14ecebde722f3fabf7ed744841bb76135ab098` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/momentatom--f236e2e3b38f5b18a8685e31.md) | 21 | `declaration-track:f236e2e3b38f5b18a8685e310ebd159cd56b4f87bf578de08367325e9f73e43c` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/primemomentatom--02193deaf6cedbdcc84acca1.md) | 24 | `declaration-track:02193deaf6cedbdcc84acca19e4c94feedd8f0076e3d5e8c6b7d9770bc48f2a9` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/properpowermoment--be3212093198a753bf275cce.md) | 26 | `declaration-track:be3212093198a753bf275cce8347bc9ac7c7c0b3aefd6f3d7b7736e6dab993cd` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/properpowerb1--fee767c64eae80ea7fd49edd.md) | 28 | `declaration-track:fee767c64eae80ea7fd49eddbc292acb58e61923d4e7fe9130ab1fd176a6e82f` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/properpowerb2--a083eb68015c761184e808c9.md) | 30 | `declaration-track:a083eb68015c761184e808c99e0b8501ccb5946f705446363adb93b2f225d737` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/outerweight-nonneg--20122b425bd89e0481573110.md) | 32 | `result-track:20122b425bd89e0481573110b97b38efbdbbdd951a151026e56c4eb7819ded0c` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/exponentweight-nonneg--a343cfa9d961335a7fbe68ff.md) | 40 | `result-track:a343cfa9d961335a7fbe68ff5fdd90497309713a2a66d05783bc5474f2842f0e` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/momentatom-nonneg--faf15b262b75381c26c156f1.md) | 44 | `result-track:faf15b262b75381c26c156f15e917bca75ad15e6a2501da9ea74cab89dc6d560` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/outerweight-summable--2b43738aba1f69a0435bb5d6.md) | 52 | `result-track:2b43738aba1f69a0435bb5d6b7b2b2d282a4a82af1e3f5621d880adbd2232a6c` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/exponentweight-summable--a1488ab7dedd69425c0d4fde.md) | 79 | `result-track:a1488ab7dedd69425c0d4fded5f4483ceeae49f1214d26abfcc45cfdd33ef3b0` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/momentatom-le-product--cb475c9ae71ea32815500fc0.md) | 88 | `result-track:cb475c9ae71ea32815500fc0996383d52a188b15967841e95e65f15e0ac07713` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/prime-outerweight-summable--6e6ea715a619f1a9f1a47c11.md) | 104 | `result-track:6e6ea715a619f1a9f1a47c11649fde4b421dd5d95898a0fdcf19b8c5a08acac6` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/primemomentatom-summable--9bb019461ac680f2eeefd87b.md) | 108 | `result-track:9bb019461ac680f2eeefd87ba42774faa50fb9b81e772803225c3fe2596e60cd` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/primemomentatom-inner-summable--f908bfebb83dcb3c472b703e.md) | 115 | `result-track:f908bfebb83dcb3c472b703e2f5a554c3dcfc4b066f5f9d84f8f9625dff707df` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant9932b2fce0716a474fa925fe0b17cde0cc94f900c0957ab9dfe714d5534b8a6f.lean/declarations/primemomentatom-outer-summable--e8c85ee66781c8fbe62a0bf1.md) | 120 | `result-track:e8c85ee66781c8fbe62a0bf1f4fe39c0f65162990e687281b22bb34442228435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
