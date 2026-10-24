# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlatMap.Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abf1cf005a5797933028c9816f6c43f50f7fbcb9",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abf1cf005a5797933028c9816f6c43f50f7fbcb9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.Monadic.FilterMap` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.step_flattenAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-step-flattenafter--6c91ee70191c611da3d280ec.md) | 29 | `result-track:6c91ee70191c611da3d280ec4da148feced7774a8f0398d0fdcbfe70b7a9aa30` |
| 2 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-outeryield-flatmapm--68f33d54c0b24464cf4040f7.md) | 51 | `result-track:68f33d54c0b24464cf4040f7aef077085b8c3eca151957db362bfee9d6c39668` |
| 3 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-outerskip-flatmapm--626d0bb362503e15f7a3948b.md) | 58 | `result-track:626d0bb362503e15f7a3948b3033ea46a024b748787a1f21c512844e6d9c42e2` |
| 4 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-outerdone-flatmapm--9f44a6b13525c8ceaec6c4d2.md) | 65 | `result-track:9f44a6b13525c8ceaec6c4d2120a79d1de7bb5dcd77bca662bc23f81eb8c76e8` |
| 5 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-inneryield-flatmapm--c0d23ab499a6c457bf084d69.md) | 72 | `result-track:c0d23ab499a6c457bf084d6995985c96cda0196d57de7ed421d14bc3fb6922f9` |
| 6 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-innerskip-flatmapm--a85d72190ec6100fd4f7f5a0.md) | 79 | `result-track:a85d72190ec6100fd4f7f5a0f596ab714f5cda2cb2b6cffc97b52ef200bc2d89` |
| 7 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-innerdone-flatmapm--e637d9ee3107bdebe5fc7bba.md) | 86 | `result-track:e637d9ee3107bdebe5fc7bbad720c94f27b925770f7dccb529a15fbe701b9ed3` |
| 8 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-outeryield-flatmap--657ab9dee2667f03f5b246d1.md) | 93 | `result-track:657ab9dee2667f03f5b246d1819070ecc8665417c6c2c385b6e75b17144694df` |
| 9 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-outerskip-flatmap--5cffa00b39a866d943f75d3c.md) | 100 | `result-track:5cffa00b39a866d943f75d3c9dab68485d29f3429df6ed803996402cae604f6e` |
| 10 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-outerdone-flatmap--84094e522268c26a5454846d.md) | 107 | `result-track:84094e522268c26a5454846d2d82a3a2b77ff6773f6f4593588c3b8007fc4448` |
| 11 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-inneryield-flatmap--4b43231e4df867a32a28db33.md) | 114 | `result-track:4b43231e4df867a32a28db337e52024ac07cd59fe13b0edf7a9d486c75da2c83` |
| 12 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-innerskip-flatmap--faa721afcfa6876c5745ca69.md) | 121 | `result-track:faa721afcfa6876c5745ca69275461709fae4ccbd20b5253712587ddd3e79220` |
| 13 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/flatten-isplausiblestep-innerdone-flatmap--fc14a39ce9da3b90f88e8c0c.md) | 128 | `result-track:fc14a39ce9da3b90f88e8c0c6267b1ebf5512dcd05d4c0f6a704df808d1f8284` |
| 14 | `theorem` | [IterM.step_flatMapAfterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-step-flatmapafterm--f5a7d9dac541ee9068628c61.md) | 137 | `result-track:f5a7d9dac541ee9068628c61b13621feb3acfcbfb0f3b2d64467a1f3e27d484d` |
| 15 | `theorem` | [IterM.step_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-step-flatmapm--cd7bd4aef0f9a802a1074ff9.md) | 165 | `result-track:cd7bd4aef0f9a802a1074ff905f83b0f9df5de77a73a98ddb59e225a3779998f` |
| 16 | `theorem` | [IterM.step_flatMapAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-step-flatmapafter--fd55d6179101c3cf5aed871a.md) | 179 | `result-track:fd55d6179101c3cf5aed871a14a888f3aeef27f7b9db64c8e15c14a8a70f3c6c` |
| 17 | `theorem` | [IterM.step_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-step-flatmap--622c0d79af51673fa1afb6ce.md) | 202 | `result-track:622c0d79af51673fa1afb6cec771c338b7edcee76d9fbbf677a6ebc355ca45b5` |
| 18 | `theorem` | [IterM.toList_flattenAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-tolist-flattenafter--af89a0247378bf58e778532d.md) | 213 | `result-track:af89a0247378bf58e778532d26a25947c45f67604a2dac8a4dc093f34414ea75` |
| 19 | `theorem` | [IterM.toArray_flattenAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-toarray-flattenafter--4aef357241999a54233d7c0d.md) | 247 | `result-track:4aef357241999a54233d7c0d37b8703dc46b76011f76031c7a10b5f525cd7949` |
| 20 | `theorem` | [IterM.toList_flatMapAfterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-tolist-flatmapafterm--80dff059473e4b7995468094.md) | 269 | `result-track:80dff059473e4b79954680947766b697104e58959305524b4025c32358f73b1b` |
| 21 | `theorem` | [IterM.toArray_flatMapAfterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-toarray-flatmapafterm--33e9c35dcc392385af59c3af.md) | 281 | `result-track:33e9c35dcc392385af59c3af233d17e6c0fe9b93776e4f293f76a618cad6314e` |
| 22 | `theorem` | [IterM.toList_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-tolist-flatmapm--490649057637d6ddcd4ddd25.md) | 293 | `result-track:490649057637d6ddcd4ddd251b939c1aefd677b2d0ea5fbf5ec9688902e9d127` |
| 23 | `theorem` | [IterM.toArray_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-toarray-flatmapm--24e70727824c0a2905be9ecf.md) | 301 | `result-track:24e70727824c0a2905be9ecfcbe5bcd39436cd0b8e541dd4ac960839dcea970f` |
| 24 | `theorem` | [IterM.toList_flatMapAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-tolist-flatmapafter--cec29cdcf41fc977c5a343a6.md) | 309 | `result-track:cec29cdcf41fc977c5a343a66b08d2b990598166055c536d69af1a0ad4d881e7` |
| 25 | `theorem` | [IterM.toArray_flatMapAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-toarray-flatmapafter--49441f57cb78e1af4305e094.md) | 321 | `result-track:49441f57cb78e1af4305e094debd19dec7a9e6b1ed8b268a85d821ba5858b1fc` |
| 26 | `theorem` | [IterM.toList_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-tolist-flatmap--760754f4c47d43f63bb91d61.md) | 333 | `result-track:760754f4c47d43f63bb91d6191437a1e5efe1b6e34d4ef4bc3bb537f10be6259` |
| 27 | `theorem` | [IterM.toArray_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/declarations/iterm-toarray-flatmap--89ff4f0168ca9ad385a3dc5c.md) | 342 | `result-track:89ff4f0168ca9ad385a3dc5c97578b5b1e195a21d70ac3c521a0a9c29ac92be0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
