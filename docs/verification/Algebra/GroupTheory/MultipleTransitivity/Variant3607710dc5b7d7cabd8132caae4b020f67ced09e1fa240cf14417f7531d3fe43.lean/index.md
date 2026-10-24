# Verification target: GRWTSK.Algebra.GroupTheory.MultipleTransitivity.Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f535497d9c5c837feaaa3f8a1c3765a1e7c8e7b3",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f535497d9c5c837feaaa3f8a1c3765a1e7c8e7b3`.

Source path: `GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Embedding` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Primitive` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction.OfStabilizer` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Embedding` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.Injective.mulActionHom_embedding](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/function-injective-mulactionhom-embedding--138ea2ad62e7c76719753285.md) | 62 | `declaration-track:138ea2ad62e7c767197532857bf8b885336027827692a7424fa39bf759fb0c65` |
| 2 | `theorem` | [Function.Injective.mulActionHom_embedding_apply](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/function-injective-mulactionhom-embedding-apply--cb99d661d06bd4db0196f4c4.md) | 68 | `result-track:cb99d661d06bd4db0196f4c418da65c0458e7f1ed254a922918e08175d839557` |
| 3 | `theorem` | [Function.Injective.mulActionHom_embedding_isInjective](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/function-injective-mulactionhom-embedding-isinjective--c85920cbabc8ee65319489c0.md) | 73 | `result-track:c85920cbabc8ee65319489c0204b130197235618405a9dd71cf3de1941f019f8` |
| 4 | `theorem` | [Function.Bijective.mulActionHom_embedding_isBijective](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/function-bijective-mulactionhom-embedding-isbijective--c0aad2e25141b6f577aa65b5.md) | 84 | `result-track:c0aad2e25141b6f577aa65b59a153494b641afdd05bc1c3811f9596a3d5c79a4` |
| 5 | `abbrev` | [IsMultiplyPretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ismultiplypretransitive--57d661fde2ce0f819bd1b1b6.md) | 106 | `declaration-track:57d661fde2ce0f819bd1b1b6eaf8d364a16752f8ad97b90723bb2026c4743b9b` |
| 6 | `theorem` | [IsPretransitive.of_embedding](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ispretransitive-of-embedding--c66701c896a01539518bacd6.md) | 117 | `result-track:c66701c896a01539518bacd68d82e9a43ee5a1094f88e2aa619c9207a5b41fc8` |
| 7 | `theorem` | [IsPretransitive.of_embedding_congr](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ispretransitive-of-embedding-congr--8743c8a07e772e77ae01669b.md) | 134 | `result-track:8743c8a07e772e77ae01669b76392d5602366003ba9b064b0a6086d2a1366a01` |
| 8 | `theorem` | [is_zero_pretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/is-zero-pretransitive--c8384d0bf1239bfa25b3ce15.md) | 143 | `result-track:c8384d0bf1239bfa25b3ce15c6dc2a824fc8a208ecb1e0760cd3b6f8a13362a4` |
| 9 | `theorem` | [is_zero_pretransitive'](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/is-zero-pretransitive--db5e2490a38faf7eccd41247.md) | 148 | `result-track:db5e2490a38faf7eccd412478814c4d4d6eee2944ddd08d49da3f6a59b7e5202` |
| 10 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.MulActionHom.oneEmbeddingMap](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/root-grwtsk-algebra-grouptheory-functioninjectivemulactionhomembedding-v--bc0d4c4dd09ab9da05de2910.md) | 159 | `declaration-track:bc0d4c4dd09ab9da05de2910d293487d39d1ad647fa82aaddbdc609c3f046bc4` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.MulActionHom.oneEmbeddingMap_bijective](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/root-grwtsk-algebra-grouptheory-functioninjectivemulactionhomembedding-v--100d694b05e02af340b4a072.md) | 165 | `result-track:100d694b05e02af340b4a0729f07dc559e51894a0dc2f4e2989e40698f672eea` |
| 12 | `theorem` | [oneEmbedding_isPretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/oneembedding-ispretransitive-iff--953f02d6d96a5df6905998a4.md) | 171 | `result-track:953f02d6d96a5df6905998a420e7f197056913b22d629c8fa3806905e664e1a4` |
| 13 | `theorem` | [is_one_pretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/is-one-pretransitive-iff--4f38464b147057811e2d790c.md) | 177 | `result-track:4f38464b147057811e2d790c1731d08c5265e5c91c3b78e966ff10bfa234e35f` |
| 14 | `theorem` | [is_two_pretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/is-two-pretransitive-iff--a8a4789e88665db8ffaa3d56.md) | 189 | `result-track:a8a4789e88665db8ffaa3d56aefb6445ad3663643d1b915e9ca9b4e1c0d2e774` |
| 15 | `theorem` | [isPretransitive_of_is_two_pretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ispretransitive-of-is-two-pretransitive--a75ec5c68f02c6f7ae1c57b0.md) | 211 | `result-track:a75ec5c68f02c6f7ae1c57b024dc7985416ba400c7725ed97b74f09c4bad7b80` |
| 16 | `theorem` | [isPreprimitive_of_is_two_pretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ispreprimitive-of-is-two-pretransitive--159316598ecf409b4e43ce9c.md) | 222 | `result-track:159316598ecf409b4e43ce9c0aa9fcd08707dabcac9a3c733a5f87df332154ba` |
| 17 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.MulActionHom.embMap](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/root-grwtsk-algebra-grouptheory-functioninjectivemulactionhomembedding-v--453045c5db0548ae46111f12.md) | 251 | `declaration-track:453045c5db0548ae46111f1296b39b5533ab5cf69feeeefccbda26addb70c53a` |
| 18 | `theorem` | [isMultiplyPretransitive_of_le'](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ismultiplypretransitive-of-le--efcf93c158947196bcb42cd4.md) | 267 | `result-track:efcf93c158947196bcb42cd498ae968e77e93f777828179765e58b9056209c42` |
| 19 | `theorem` | [isMultiplyPretransitive_of_le](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ismultiplypretransitive-of-le--fe872143ca3c15790064038d.md) | 284 | `result-track:fe872143ca3c15790064038d6477c5c9e1d7cb7b194b3b82ee0fac58ff5dd4a4` |
| 20 | `theorem` | [isMultiplyPretransitive_iff_of_conj](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ismultiplypretransitive-iff-of-conj--967ce1ebdb564759e3cd43a7.md) | 306 | `result-track:967ce1ebdb564759e3cd43a7d643937477058490ae84b1ce023a8547b508469d` |
| 21 | `theorem` | [isMultiplyPretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ismultiplypretransitive-iff--a2a1416040b6b7afb6c38d6c.md) | 313 | `result-track:a2a1416040b6b7afb6c38d6c81c8e16c19a89e954934410139aa5251602ade91` |
| 22 | `theorem` | [isMultiplyPretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/declarations/ismultiplypretransitive--4d647c42bd4fccb3a01dc96f.md) | 326 | `result-track:4d647c42bd4fccb3a01dc96f39590d883202396d46a78ef14171b227c724e7c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
