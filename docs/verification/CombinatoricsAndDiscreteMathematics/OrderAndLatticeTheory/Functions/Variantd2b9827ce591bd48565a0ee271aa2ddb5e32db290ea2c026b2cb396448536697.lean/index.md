# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Functions.Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ed423578f7b6f80f485a12edd9c8b90213e79f4",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ed423578f7b6f80f485a12edd9c8b90213e79f4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Algebra.Order` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [min_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-def--4e3e05901d18a0232156f4f0.md) | 18 | `result-track:4e3e05901d18a0232156f4f06e570a519c2ddaf22436d0a4eb10cf0d48850ab8` |
| 2 | `theorem` | [max_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-def--72f2219f75c924e6ccea46b0.md) | 22 | `result-track:72f2219f75c924e6ccea46b077f7dcd01d6dd38b4b59e657f6ef1f149441d553` |
| 3 | `theorem` | [min_le_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-le-left--184b55e8ea0c3fe45d95529d.md) | 26 | `result-track:184b55e8ea0c3fe45d95529def01ebe85f35d1ce96f30ac1951a961be4115cb1` |
| 4 | `theorem` | [min_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-le-right--f3b33120ef34de0f4c62ee2d.md) | 33 | `result-track:f3b33120ef34de0f4c62ee2df1414c4f97548a5670855487cecfc64773399532` |
| 5 | `theorem` | [le_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/le-min--305b6150a9e2f00dd69ac1ff.md) | 40 | `result-track:305b6150a9e2f00dd69ac1fff3b4ca95d23e2ea9ab0a3f56235a52f73f2c9cfd` |
| 6 | `theorem` | [le_max_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/le-max-left--b10965d015bc0119d2289129.md) | 47 | `result-track:b10965d015bc0119d22891295c8f5b5a351ee956763625eca409c5ed71e6ac43` |
| 7 | `theorem` | [le_max_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/le-max-right--b8f8fb2c62240a89eceb91bc.md) | 54 | `result-track:b8f8fb2c62240a89eceb91bcd79b0b0f7faf1e44b8eac9ccd55aaa8ca93c1755` |
| 8 | `theorem` | [max_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-le--beda56104b5d3de1d1445656.md) | 61 | `result-track:beda56104b5d3de1d1445656fe75e5c9ba4d29cc1c804bbe72debed68c61fdc6` |
| 9 | `theorem` | [eq_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/eq-min--aa9443f0b76f05d8595f4dae.md) | 68 | `result-track:aa9443f0b76f05d8595f4daef7ea17aded3beb647310d32a2655273ddd7d8ab7` |
| 10 | `theorem` | [min_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-comm--10bc2bf18f98076f1daa2e12.md) | 73 | `result-track:10bc2bf18f98076f1daa2e12be09faf9e828382c0d88e5d445c3e95a8d0319d0` |
| 11 | `theorem` | [min_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-assoc--529cac26d2b9d95d1b2db873.md) | 77 | `result-track:529cac26d2b9d95d1b2db87368112352225ae7e0a1e74f9690ededd342fffeb7` |
| 12 | `theorem` | [min_left_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-left-comm--cd9eeafbe51ebf7ca3c36403.md) | 85 | `result-track:cd9eeafbe51ebf7ca3c36403a8f65d726648a9e76997cb976046fa3b44a1f92e` |
| 13 | `theorem` | [min_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-self--68de3678af2c32a835643891.md) | 90 | `result-track:68de3678af2c32a835643891ce1b8c336a7bd0b64c196ad0882342773a4fd081` |
| 14 | `theorem` | [min_eq_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-eq-left--4eb745ac38f01df46cd871d2.md) | 93 | `result-track:4eb745ac38f01df46cd871d2ded2fb751aadfb286f952a50698c774dbd694631` |
| 15 | `theorem` | [min_eq_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-eq-right--fc31945e082f5860523e5188.md) | 97 | `result-track:fc31945e082f5860523e5188ef7d911a2eadd3b8e05369ffb275c22233e67e34` |
| 16 | `theorem` | [eq_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/eq-max--7787d894658294c5cae66fdc.md) | 101 | `result-track:7787d894658294c5cae66fdc450c610f47d5c972d851c44cc72162f7bcda504d` |
| 17 | `theorem` | [max_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-comm--157518db398d6d3e4a28c9eb.md) | 106 | `result-track:157518db398d6d3e4a28c9eb3171701052cb8426080a8db806a584a715aa1d49` |
| 18 | `theorem` | [max_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-assoc--4f21589ebf7d6a36cc19fcf5.md) | 110 | `result-track:4f21589ebf7d6a36cc19fcf52f0b028ec8c466d4b49ed3a4e4a1d207cfded5fd` |
| 19 | `theorem` | [max_left_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-left-comm--157c8bdac2c5c9efaa53b2aa.md) | 118 | `result-track:157c8bdac2c5c9efaa53b2aa447de0b4ccc73f23b2931552cee0fdb5a3afb2c3` |
| 20 | `theorem` | [max_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-self--6fb9672d2f1a6cdfd281a358.md) | 123 | `result-track:6fb9672d2f1a6cdfd281a358647f5fdee2bba864bc744f61f572306b0e51f095` |
| 21 | `theorem` | [max_eq_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-eq-left--9ba8bae28fc8b0ac8dce4fc9.md) | 126 | `result-track:9ba8bae28fc8b0ac8dce4fc993a0f4ba8ce5f465bb6a41afd58f25c81c679da3` |
| 22 | `theorem` | [max_eq_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-eq-right--1d96c115fa295b18aae05081.md) | 130 | `result-track:1d96c115fa295b18aae0508195acf8a725a7aede36d2f7e7d265ce5f0537a550` |
| 23 | `theorem` | [min_eq_left_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-eq-left-of-lt--5287c003a80c1a35715070e7.md) | 135 | `result-track:5287c003a80c1a35715070e7dca3d18590773eea46b7adc85c53095cf4b799bc` |
| 24 | `theorem` | [min_eq_right_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/min-eq-right-of-lt--d10f9ac3b5c09aeca528e339.md) | 139 | `result-track:d10f9ac3b5c09aeca528e33933b39c9e55a596c4484645c942702b594ee7412e` |
| 25 | `theorem` | [max_eq_left_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-eq-left-of-lt--7d98a20e5d7f6ae96b5b414f.md) | 143 | `result-track:7d98a20e5d7f6ae96b5b414f30a10709065e5209074868b7c4b0fc62f407c94e` |
| 26 | `theorem` | [max_eq_right_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-eq-right-of-lt--cd8706d9533ec760e89c19ed.md) | 147 | `result-track:cd8706d9533ec760e89c19ed1202de8688ba8e223959a9adc59027be8e8c15a9` |
| 27 | `theorem` | [lt_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/lt-min--7bed42c76bfbd18aaf52aaf8.md) | 152 | `result-track:7bed42c76bfbd18aaf52aaf853ea508bd1dbebf848e29072fee9a690b97de5de` |
| 28 | `theorem` | [max_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Functions/Variantd2b9827ce591bd48565a0ee271aa2ddb5e32db290ea2c026b2cb396448536697.lean/declarations/max-lt--7a8d88619f4cb198a82ac477.md) | 159 | `result-track:7a8d88619f4cb198a82ac47778fbf9af9204bd6de8f47440c200af1f546167fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
