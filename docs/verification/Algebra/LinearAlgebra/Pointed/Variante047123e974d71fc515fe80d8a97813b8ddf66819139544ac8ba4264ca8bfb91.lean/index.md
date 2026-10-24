# Verification target: GRWTSK.Algebra.LinearAlgebra.Pointed.Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41be256ffc35ac9a899f9da3fa69f2a5089f9990",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41be256ffc35ac9a899f9da3fa69f2a5089f9990`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.InnerDual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PointedCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/pointedcone--10db7a25061747d7eb5308dc.md) | 25 | `declaration-track:10db7a25061747d7eb5308dc8f0ab3ee28fc136882e8f6398efcd0e4a556fd5f` |
| 2 | `def` | [toConvexCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/toconvexcone--82710cce0061de803ddf0a19.md) | 40 | `declaration-track:82710cce0061de803ddf0a1904787b586e0ca8c32d0a6bede424c2e6ee5c09f8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/instance--222b0ac9b9b9bbc40e8659b3.md) | 45 | `declaration-track:222b0ac9b9b9bbc40e8659b3d7e10ec326443104c1d766a5b51c149ca928aa74` |
| 4 | `theorem` | [toConvexCone_injective](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/toconvexcone-injective--b9866020653a53ef0d0054e8.md) | 48 | `result-track:b9866020653a53ef0d0054e8607c34706496e60c5bea61452a30edef065e9dd4` |
| 5 | `theorem` | [toConvexCone_pointed](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/toconvexcone-pointed--679696716e508416f8d7318f.md) | 52 | `result-track:679696716e508416f8d7318f321bd067cc43b47eb86ea87277cb6051d71ebd62` |
| 6 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/ext--b1eb35d3bd9f2cdd814ccc85.md) | 56 | `result-track:b1eb35d3bd9f2cdd814ccc852fa92f81620b9e77a4001ca5567fd76ea3a81567` |
| 7 | `instance` | [instZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/instzero--7f724fb85fef3bad53df0a77.md) | 59 | `declaration-track:7f724fb85fef3bad53df0a7777eb8a3c34569363d38ada8e486d9f69589b216a` |
| 8 | `def` | [_root_.ConvexCone.toPointedCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/root-convexcone-topointedcone--231611d8ee16f21e22f6f8ed.md) | 63 | `declaration-track:231611d8ee16f21e22f6f8ed4072af05eee7dad50bd11855cd0a2020e70cb7b7` |
| 9 | `lemma` | [_root_.ConvexCone.mem_toPointedCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/root-convexcone-mem-topointedcone--e90a7276e0051fc4f2b73c7f.md) | 78 | `result-track:e90a7276e0051fc4f2b73c7f29f1c6df71c50af20ff016d9108faa07a11f43d4` |
| 10 | `lemma` | [_root_.ConvexCone.coe_toPointedCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/root-convexcone-coe-topointedcone--403a61cb64dfc9e4b04206ab.md) | 83 | `result-track:403a61cb64dfc9e4b04206abd635014c2e52b1966d7191019e71ef28dbddb886` |
| 11 | `instance` | [canLift](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/canlift--87fff037c92e91ce17ff196a.md) | 87 | `declaration-track:87fff037c92e91ce17ff196a4eba04624bdbc5fc2b1ead8dfd8620ff9f0c74e6` |
| 12 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/map--5221474c43b47c273bb9bfaa.md) | 112 | `declaration-track:5221474c43b47c273bb9bfaa4c84aaf57de7db3cbb85c25bcf6e55e4ee1bd92a` |
| 13 | `theorem` | [toConvexCone_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/toconvexcone-map--c17d6f4efe6a05c14392cd95.md) | 116 | `result-track:c17d6f4efe6a05c14392cd95947dbf201e34b1ce6ab1aa346962a445ab0b8fe3` |
| 14 | `theorem` | [coe_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/coe-map--728a9cbe20733f3b94a289b7.md) | 121 | `result-track:728a9cbe20733f3b94a289b7fbd5a2d7215367b0be669bba4b7b6244ed5d3463` |
| 15 | `theorem` | [mem_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/mem-map--040dacc5bd43586016e7afce.md) | 125 | `result-track:040dacc5bd43586016e7afce7e921d5daeaa4b26a520d45c7c31b214c6256dfe` |
| 16 | `theorem` | [map_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/map-map--96e5573086bad65aaa89792e.md) | 128 | `result-track:96e5573086bad65aaa89792e75cbeff60bd9533f7b8260783a3088cb148d3140` |
| 17 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/map-id--d71f05f53b07f1f3816b0099.md) | 133 | `result-track:d71f05f53b07f1f3816b0099fa2661c4422d5054a6a9d40ac56545961cce88c4` |
| 18 | `def` | [comap](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/comap--aac83c1ac21c6af9b329ed7e.md) | 137 | `declaration-track:aac83c1ac21c6af9b329ed7ea57713d78c337b79feca351b4734c8a8d82666f6` |
| 19 | `theorem` | [coe_comap](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/coe-comap--0b7b42294173ce3bb7a5d86f.md) | 141 | `result-track:0b7b42294173ce3bb7a5d86f7f123a1095aa39fc2874cb2b4048f8dec8f54496` |
| 20 | `theorem` | [comap_id](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/comap-id--43781285d93e06fa853a900c.md) | 145 | `result-track:43781285d93e06fa853a900c41627c543a78813f03208c9ad3e70a96b6daf0e3` |
| 21 | `theorem` | [comap_comap](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/comap-comap--4261ab4cd001c227dd925b4b.md) | 148 | `result-track:4261ab4cd001c227dd925b4b8f0fb88f34d42a1c581996a76dd7d0bdfc772df6` |
| 22 | `theorem` | [mem_comap](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/mem-comap--b704e00ead97e358f8b03ce8.md) | 153 | `result-track:b704e00ead97e358f8b03ce8dd63c4a92cdc14875223411507592670bc1538ef` |
| 23 | `def` | [positive](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/positive--c9e8586ba6231cd65c7d75c4.md) | 166 | `declaration-track:c9e8586ba6231cd65c7d75c43f8503a75608e2f56478f2215ec8d7186cf4600a` |
| 24 | `theorem` | [mem_positive](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/mem-positive--8bcc73330afd7d3e002b6652.md) | 170 | `result-track:8bcc73330afd7d3e002b66526660f82f6acf20f78e49e7485400c76206fc26db` |
| 25 | `theorem` | [toConvexCone_positive](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/toconvexcone-positive--db3cd70e06f4b15294206bd6.md) | 174 | `result-track:db3cd70e06f4b15294206bd6b9d72296657d3775f1c2d6553827d2506015bfaa` |
| 26 | `def` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/dual--8b559786085e1ac569f2d4ca.md) | 183 | `declaration-track:8b559786085e1ac569f2d4ca80fa359f350f54d15387b47c6c41699e4cc21db5` |
| 27 | `theorem` | [toConvexCone_dual](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/toconvexcone-dual--fe9e67c9827be569d08f7946.md) | 187 | `result-track:fe9e67c9827be569d08f7946d22f9937f3faae02cf506361774757a5bb1cecb7` |
| 28 | `theorem` | [mem_dual](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/declarations/mem-dual--99ce59df17f290b7624fe5df.md) | 192 | `result-track:99ce59df17f290b7624fe5df0ecdd28b027c306760a3f7071d7296d6c95a3621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
