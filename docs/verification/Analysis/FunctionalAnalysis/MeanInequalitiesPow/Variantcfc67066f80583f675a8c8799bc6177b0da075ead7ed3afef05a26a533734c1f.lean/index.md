# Verification target: GRWTSK.Analysis.FunctionalAnalysis.MeanInequalitiesPow.Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b6c6a449aebd2732699df4b710259ba66bc71c2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b6c6a449aebd2732699df4b710259ba66bc71c2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Mul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/pow-arith-mean-le-arith-mean-pow--458a562bbb8648338d902627.md) | 62 | `result-track:458a562bbb8648338d9026278523234c2623ec65a8683e4cd24f21393d442d7b` |
| 2 | `theorem` | [pow_arith_mean_le_arith_mean_pow_of_even](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/pow-arith-mean-le-arith-mean-pow-of-even--84ec8459cf2e907aadfc89bf.md) | 67 | `result-track:84ec8459cf2e907aadfc89bf3c0138c381529c3e67a9aa8ec069d23507dd9bd9` |
| 3 | `theorem` | [zpow_arith_mean_le_arith_mean_zpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/zpow-arith-mean-le-arith-mean-zpow--6a0214df1ac3484278ed1b47.md) | 72 | `result-track:6a0214df1ac3484278ed1b4717de5436566ce7c8eaae49c83b73c167b051a926` |
| 4 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--26742c8d7bfabc13cbf58909.md) | 77 | `result-track:26742c8d7bfabc13cbf589096ca408ccfc0c67fac07bad02c1805315e9485e81` |
| 5 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/arith-mean-le-rpow-mean--b835802ff113a33dc3b692e9.md) | 82 | `result-track:b835802ff113a33dc3b692e9fdf119a20af8ff15e8c8c7d51da3bf204670f6d9` |
| 6 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/pow-arith-mean-le-arith-mean-pow--832b0608a07d81a467f9d819.md) | 99 | `result-track:832b0608a07d81a467f9d81977570097d8eb02febc31ac35289628f03d3f1b75` |
| 7 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--1184d4b85ceab6ff0961f070.md) | 107 | `result-track:1184d4b85ceab6ff0961f07018546bb60d5cdbd60d132af47f18e2259c34d3d5` |
| 8 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--d0d6f2029b450a076c8a6b1f.md) | 114 | `result-track:d0d6f2029b450a076c8a6b1faf44f2f2aaf405df8c15cb7eed7886115f61121d` |
| 9 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-le-mul-rpow-add-rpow--6dc3be297ef94e2521314d12.md) | 121 | `result-track:6dc3be297ef94e2521314d12b1ef543457bf8b9b687e59b65462dddb7840eb4f` |
| 10 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/arith-mean-le-rpow-mean--64a405d52b854b710aa6cee8.md) | 135 | `result-track:64a405d52b854b710aa6cee8634dc78037752e132e72c2b0a31bb3ddf451e940` |
| 11 | `theorem` | [add_rpow_le_one_of_add_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/add-rpow-le-one-of-add-le-one--e85ce221697fe400c5eb5828.md) | 141 | `result-track:e85ce221697fe400c5eb58282e587a95031b6460f80132593acc8c146845cbc6` |
| 12 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/add-rpow-le-rpow-add--bbacd3106d57bfbabc3da410.md) | 148 | `result-track:bbacd3106d57bfbabc3da410cb8606d420f0d7f915f077d266c866ddca12a5bd` |
| 13 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-rpow-le-add--548c849a6b6f6f75cc7f1ac9.md) | 164 | `result-track:548c849a6b6f6f75cc7f1ac9f0234b32718e80f120693e4aca8ac9d91857478e` |
| 14 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-rpow-le--7954ee864f03e3a2e90ee0c5.md) | 171 | `result-track:7954ee864f03e3a2e90ee0c53615a02ce2fa0cb98ea1fa1f512e27b7ed44cd83` |
| 15 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-le-add-rpow--cf01d8b7e437ae2506548313.md) | 184 | `result-track:cf01d8b7e437ae2506548313f043b3b88120d491ca2a7a07e2a0482aa6d96395` |
| 16 | `lemma` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/add-rpow-le-rpow-add--2c4447c9470bd3d7edb025b5.md) | 197 | `result-track:2c4447c9470bd3d7edb025b5111f04cd876c4fe3dec46350e816824d3c4eb77a` |
| 17 | `lemma` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-rpow-le-add--6c762e70b67d512698959d18.md) | 203 | `result-track:6c762e70b67d512698959d18bf293d2a57c3659da6c0626f1a3ee77bfd150ca3` |
| 18 | `lemma` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-rpow-le--5d9cec502c3874b3edbf4df8.md) | 209 | `result-track:5d9cec502c3874b3edbf4df8d370478cacef157c8c8e2f55b0511bcfe369051e` |
| 19 | `lemma` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-le-add-rpow--cdf43c4dfff6f614ca9645a5.md) | 216 | `result-track:cdf43c4dfff6f614ca9645a525f46b57c602fdf93ced2cc7ac98a684b5edcb86` |
| 20 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--25d0686ec49cdec61a1cab03.md) | 229 | `result-track:25d0686ec49cdec61a1cab034f2261bf7c66f50b34a45210b10edd9e15449133` |
| 21 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--de789910ea42913598e7df02.md) | 276 | `result-track:de789910ea42913598e7df02b74bb32e1046045b95dd38672d502336ef09c87a` |
| 22 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-le-mul-rpow-add-rpow--8ac633e538cfa478eb88faa1.md) | 283 | `result-track:8ac633e538cfa478eb88faa17f1fe1977ba97dc9bb246c84564cfa01181113da` |
| 23 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/add-rpow-le-rpow-add--c90ddb4f3965467ff47bcb41.md) | 292 | `result-track:c90ddb4f3965467ff47bcb41e4452e22dc59b5cf77e121f442d8a155a59e1a75` |
| 24 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-rpow-le-add--7127b89d8de7fa50bdb00614.md) | 304 | `result-track:7127b89d8de7fa50bdb0061439fc9764144d4415e565168f6ea73a6785d352be` |
| 25 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-rpow-le--e349458888ad35a0d824d6e5.md) | 310 | `result-track:e349458888ad35a0d824d6e54077f7326b44707f0d90b41b446a27b94d5fa291` |
| 26 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variantcfc67066f80583f675a8c8799bc6177b0da075ead7ed3afef05a26a533734c1f.lean/declarations/rpow-add-le-add-rpow--0b5a628c4132d1321c0878dd.md) | 322 | `result-track:0b5a628c4132d1321c0878dd3e1cfda00f3daef64324e72d0f3e5ddf89c03a92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
