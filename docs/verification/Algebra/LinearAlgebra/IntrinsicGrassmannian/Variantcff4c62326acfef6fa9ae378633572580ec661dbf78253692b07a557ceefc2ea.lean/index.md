# Verification target: GRWTSK.Algebra.LinearAlgebra.IntrinsicGrassmannian.Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff2c016b4bca01700b74d77e95685cd9b21a66e5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff2c016b4bca01700b74d77e95685cd9b21a66e5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IntrinsicPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/intrinsicplane--696e084dbc766f94e215c1d2.md) | 30 | `declaration-track:696e084dbc766f94e215c1d2caa7fcd45e211de1af7ffa5d66d1a58337c3ff13` |
| 2 | `def` | [FullRankFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/fullrankframe--3b9df98f470ba11df2d035da.md) | 34 | `declaration-track:3b9df98f470ba11df2d035da5dd4e017676b60029573a6480d1a94d30f5cb6ca` |
| 3 | `def` | [representedPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/representedplane--57910471fd8c975a0179f7dd.md) | 38 | `declaration-track:57910471fd8c975a0179f7ddbee3fa88b41c050c57f363660d96c73ce7f21cc7` |
| 4 | `theorem` | [representedPlane_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/representedplane-eq-iff--10c9c7cfbcb880610bb558a3.md) | 42 | `result-track:10c9c7cfbcb880610bb558a303dcb88fb5e6118771ee0ba277c2896cedf5b459` |
| 5 | `theorem` | [exists_frame_of_intrinsicPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/exists-frame-of-intrinsicplane--6f85e7fd4c256867f2c19130.md) | 52 | `result-track:6f85e7fd4c256867f2c191301336344368e2aa651ebf6fca91d628fc193e1fe2` |
| 6 | `theorem` | [representedPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/representedplane-surjective--fc04d5db7a3d6f4792805a4f.md) | 75 | `result-track:fc04d5db7a3d6f4792805a4f6db143ba59036e0ea344cab52a2288f534c9fe7c` |
| 7 | `theorem` | [intrinsicPlane_dimension_le](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/intrinsicplane-dimension-le--92ac74be4de8485203ed913d.md) | 82 | `result-track:92ac74be4de8485203ed913dfe77e087616f172b3bfe1e4bf510fb4ea0059da0` |
| 8 | `theorem` | [no_intrinsicPlane_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/no-intrinsicplane-of-lt--9833fd6741104048cb4806f2.md) | 89 | `result-track:9833fd6741104048cb4806f26820cbe557b2c413c989d26f0e4f3edc97975642` |
| 9 | `def` | [planeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/planeframe--e665b81c02134b0eb070f7f3.md) | 94 | `declaration-track:e665b81c02134b0eb070f7f34b899a4bbef58de12bef74492218d50683ab0541` |
| 10 | `theorem` | [representedPlane_planeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/representedplane-planeframe--92d8972b89f43ceba5cf5a7e.md) | 98 | `result-track:92d8972b89f43ceba5cf5a7ebe17ec0de2907959c69ee5cefaadb73f9dd44bb9` |
| 11 | `def` | [framePresentationSetoid](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/framepresentationsetoid--fe0460a675c0f9d9f390cebb.md) | 103 | `declaration-track:fe0460a675c0f9d9f390cebbb9d7ddab96b1af8fba3710ac797744b9bc135c6e` |
| 12 | `abbrev` | [FramePresentationQuotient](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/framepresentationquotient--62063f329bcea26b2c4c24a1.md) | 108 | `declaration-track:62063f329bcea26b2c4c24a11f733acb60655e88a203ab8afcc187c69fe17807` |
| 13 | `def` | [quotientToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/quotienttoplane--1346dbcb2560296db034084c.md) | 111 | `declaration-track:1346dbcb2560296db034084c8b377a70f1770acc6b43e1674193b911e7cef4fe` |
| 14 | `def` | [planeToQuotient](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/planetoquotient--fb7ad644de8ef51876bfeb14.md) | 115 | `declaration-track:fb7ad644de8ef51876bfeb14e361dd5ae5ae5a02b6950c26a2bf5735a7bb8f72` |
| 15 | `theorem` | [quotientToPlane_mk](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/quotienttoplane-mk--bc883e369f3535184923dbde.md) | 119 | `result-track:bc883e369f3535184923dbde05270489cce3fcb002817fb886dd2ac918034ccc` |
| 16 | `theorem` | [planeToQuotient_representedPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/planetoquotient-representedplane--95a7d1f1056867492665b379.md) | 124 | `result-track:95a7d1f1056867492665b3799c1702599ac03c6863b12f883706d6c01a570e64` |
| 17 | `def` | [frameQuotientEquivPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/framequotientequivplane--c5396ff62c0dea88ab1bcc13.md) | 131 | `declaration-track:c5396ff62c0dea88ab1bcc1390bb39ddc0dd67e9788be320aedfdbc7afa285d5` |
| 18 | `theorem` | [frameClass_eq_iff_rowSpace](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/frameclass-eq-iff-rowspace--de02eb9fb4bd06626a84e74f.md) | 143 | `result-track:de02eb9fb4bd06626a84e74f4483763f6a6866ab4092745ae3b7c42de7e3f9b9` |
| 19 | `theorem` | [frameClass_eq_iff_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/frameclass-eq-iff-orderedminor-proportional--da58e1719a86e8c92d41cb2b.md) | 150 | `result-track:da58e1719a86e8c92d41cb2b317d94de78c465e0c2cafc522c34cfc450d713dc` |
| 20 | `theorem` | [intrinsicPlane_has_ordered_chart](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/intrinsicplane-has-ordered-chart--a73dd14e7a213ac84bc828e1.md) | 159 | `result-track:a73dd14e7a213ac84bc828e1d9a7c67db9896bcf63312b76052b84eb50bee4bb` |
| 21 | `def` | [IntrinsicNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/intrinsicnonnegative--9b4397fad28ee1734e586c40.md) | 170 | `declaration-track:9b4397fad28ee1734e586c4010f8132b14ab08b655bdf407cabfe6a7530233bf` |
| 22 | `def` | [IntrinsicPositive](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/intrinsicpositive--05c62c4bb6adf20eda3bf4d2.md) | 174 | `declaration-track:05c62c4bb6adf20eda3bf4d212c1993d141e013c794cab41273b5321bdc52451` |
| 23 | `theorem` | [intrinsicNonnegative_of_positive](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/intrinsicnonnegative-of-positive--d65a2724574092d7db93db28.md) | 178 | `result-track:d65a2724574092d7db93db28a525fc0671ee9058654063ba53d3b311a72e50c2` |
| 24 | `def` | [NonnegativeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/nonnegativeframe--07cd5e9c2565ad83a12b5b66.md) | 184 | `declaration-track:07cd5e9c2565ad83a12b5b66403a97dd4700fa6cbf627684974a41dd71b1876f` |
| 25 | `def` | [PositiveFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/positiveframe--2af883c6eda35a5e201b05f3.md) | 188 | `declaration-track:2af883c6eda35a5e201b05f37f0cb8c3fce96ae7510a41e76679879061fcaedd` |
| 26 | `def` | [nonnegativeFrameToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/nonnegativeframetoplane--c0761179e2ea4b6a02831a46.md) | 192 | `declaration-track:c0761179e2ea4b6a02831a460ce99aaf622d7fde4b5ed8a89602ac15574cdea7` |
| 27 | `theorem` | [nonnegativeFrameToPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/nonnegativeframetoplane-surjective--5fb002372f1584185a281f92.md) | 197 | `result-track:5fb002372f1584185a281f92bd01739dbdcb0524fd5b3c8d19c78c27bee54221` |
| 28 | `def` | [positiveFrameToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/positiveframetoplane--b81709734fdab69a3a1cd9fe.md) | 205 | `declaration-track:b81709734fdab69a3a1cd9fe3cdaaf97b3b6e66b5f95afd09d8562dfd6797e58` |
| 29 | `theorem` | [positiveFrameToPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/positiveframetoplane-surjective--b421e825bc635bcd6545b64f.md) | 210 | `result-track:b421e825bc635bcd6545b64f1bbde1cca9b7729573e65aee954cdfc3815d8fb1` |
| 30 | `theorem` | [nonnegativeFrames_positiveGauge](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/declarations/nonnegativeframes-positivegauge--645ef6aa0715d8152d9c879e.md) | 218 | `result-track:645ef6aa0715d8152d9c879e2df0ee7d4794c127b737ac792f67dc1e4b62be1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
