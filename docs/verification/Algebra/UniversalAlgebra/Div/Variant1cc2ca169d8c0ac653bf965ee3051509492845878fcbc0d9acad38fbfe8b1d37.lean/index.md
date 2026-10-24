# Verification target: GRWTSK.Algebra.UniversalAlgebra.Div.Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30f18045c9bd0c81459a670605c94a11c58c7383",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30f18045c9bd0c81459a670605c94a11c58c7383`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv--bb858c00568c9365622e38c9.md) | 72 | `declaration-track:bb858c00568c9365622e38c99d92c03bdb885451effa848df6e81378bf720701` |
| 2 | `class` | [CeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv--365cdea216be6a1ce088c982.md) | 84 | `declaration-track:365cdea216be6a1ce088c9829d48b78d2749afbe1f823a0d9d30ebcca2e43d2e` |
| 3 | `lemma` | [gc_floorDiv_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/gc-floordiv-smul--df9c80976cc5b05c603023eb.md) | 102 | `result-track:df9c80976cc5b05c603023eb019e11b3dac72e16ca30b115b77874b5d3190e3a` |
| 4 | `lemma` | [le_floorDiv_iff_smul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/le-floordiv-iff-smul-le--376be2f2e66a3291c67e363c.md) | 105 | `result-track:376be2f2e66a3291c67e363c8fc2b2bf7c24d55f101f2c9ec2f40788c71ee024` |
| 5 | `lemma` | [floorDiv_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv-of-nonpos--e577bf2f63df0145beb0ac9f.md) | 108 | `result-track:e577bf2f63df0145beb0ac9fcd6fcbd8e63084c688983f9e3a258372c645e30a` |
| 6 | `lemma` | [floorDiv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv-zero--8e5472f9b1e3696b21b485a1.md) | 109 | `result-track:8e5472f9b1e3696b21b485a1634b524ad6dc3d6155d8aea768c8e98ef9b0c1b0` |
| 7 | `lemma` | [zero_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/zero-floordiv--6c577996988907061df74943.md) | 110 | `result-track:6c577996988907061df749433960ed46a390e23eb20469e8d91bd2402d518164` |
| 8 | `lemma` | [smul_floorDiv_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/smul-floordiv-le--d8ee2355068356baf6c0882e.md) | 112 | `result-track:d8ee2355068356baf6c0882e94918db05753eea1d6f1fa44de1ce62af9681b2a` |
| 9 | `lemma` | [gc_smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/gc-smul-ceildiv--96672c20357ec90c006bc85b.md) | 119 | `result-track:96672c20357ec90c006bc85b88242505880a67b0fde286501ba795de2314b48a` |
| 10 | `lemma` | [ceilDiv_le_iff_le_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-le-iff-le-smul--d2f5c3faa3affb859b7fa1e4.md) | 123 | `result-track:d2f5c3faa3affb859b7fa1e4d4b9cda05586aca4643ed0903e17d3529d3bc087` |
| 11 | `lemma` | [ceilDiv_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-of-nonpos--4082cbee03b558307110822f.md) | 125 | `result-track:4082cbee03b558307110822f26a5c28bdb362aad85295feff2fb274aac9c2e1e` |
| 12 | `lemma` | [ceilDiv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-zero--f6a493276fa134a16aad1411.md) | 126 | `result-track:f6a493276fa134a16aad14113f8bfc824d4fa1bd8377d5c5e54ceed4f6f09720` |
| 13 | `lemma` | [zero_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/zero-ceildiv--f5a7fdc54dd5e9fb59e566a6.md) | 127 | `result-track:f5a7fdc54dd5e9fb59e566a6c702b3de17e12109fb36024f381b90b4a8fc288f` |
| 14 | `lemma` | [le_smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/le-smul-ceildiv--683f747a9e5969826688f529.md) | 129 | `result-track:683f747a9e5969826688f529ef420892ff97642f832c273ebee80f01f3d0bb32` |
| 15 | `lemma` | [floorDiv_le_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv-le-ceildiv--4d288d107e81ab234359c196.md) | 138 | `result-track:4d288d107e81ab234359c196d60bb5e94fd06443986a78cefda87320c3485125` |
| 16 | `lemma` | [floorDiv_one](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv-one--4580ce516fc845439cc47bfd.md) | 151 | `result-track:4580ce516fc845439cc47bfd881fc529257ce3236adb733e8b157288eb0393eb` |
| 17 | `lemma` | [smul_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/smul-floordiv--b0a1be3a4f303b463349a164.md) | 154 | `result-track:b0a1be3a4f303b463349a16411d89bd8e64824e29daf12d5446ab500735fb44c` |
| 18 | `lemma` | [ceilDiv_one](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-one--34dc2f75e3ac23a45f7977bf.md) | 163 | `result-track:34dc2f75e3ac23a45f7977bf5a79e1d6ae98062443cbcb5f115a79e8bd13a89b` |
| 19 | `lemma` | [smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/smul-ceildiv--6bf154e40b7b084c1f689fdd.md) | 166 | `result-track:6bf154e40b7b084c1f689fdd754dc15007dfe5f4f7c0b47b7d7b655b1b503a03` |
| 20 | `lemma` | [gc_floorDiv_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/gc-floordiv-mul--208ae7657c45302c3f774189.md) | 175 | `result-track:208ae7657c45302c3f774189608a07e64443f91557092906104fb6c6b0d9c788` |
| 21 | `lemma` | [le_floorDiv_iff_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/le-floordiv-iff-mul-le--82a50e64ef219bcaad1674cc.md) | 176 | `result-track:82a50e64ef219bcaad1674ccdf728d28e042c2dc02fdb254c03997902454a5b1` |
| 22 | `lemma` | [gc_mul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/gc-mul-ceildiv--8fe505740d3d52be9dbd0218.md) | 183 | `result-track:8fe505740d3d52be9dbd02184d6026729b35b5f65467ed35e23e8d8d66b1090e` |
| 23 | `lemma` | [ceilDiv_le_iff_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-le-iff-le-mul--6f1a51b880c27a15b3b2edce.md) | 184 | `result-track:6f1a51b880c27a15b3b2edcecbc00bdfa380cd5a3dbce151c832fbd41c35075a` |
| 24 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/instfloordiv--f13de0f2830ad6c31fa3de23.md) | 191 | `declaration-track:f13de0f2830ad6c31fa3de239f1bfce37cc5b43a85df81adc61b3dc670427365` |
| 25 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/instceildiv--5c6f7181289105b3540a23af.md) | 197 | `declaration-track:5c6f7181289105b3540a23af3bfb0850c3e568812bb6b39f551690be80a1c9d8` |
| 26 | `lemma` | [floorDiv_eq_div](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv-eq-div--1c4aa386cb706edcc40e7549.md) | 204 | `result-track:1c4aa386cb706edcc40e7549193afafb61fea7013d45cab8ef655223310d9209` |
| 27 | `lemma` | [ceilDiv_eq_add_pred_div](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-eq-add-pred-div--5f3ef58d4860de3d562307ea.md) | 205 | `result-track:5f3ef58d4860de3d562307eafcf438f250b21acb59049db37d53fcffe3b54d53` |
| 28 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/instfloordiv--3480f19bde124209b04196f7.md) | 217 | `declaration-track:3480f19bde124209b04196f7dccb709352c8572f66dcc2e06ebb42144f40c75c` |
| 29 | `lemma` | [floorDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv-def--9ce478ffcebc0f29bd2b5a56.md) | 224 | `result-track:9ce478ffcebc0f29bd2b5a560fc0aec23c00a9179958e7233e5b7773fa80e3ca` |
| 30 | `lemma` | [floorDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv-apply--e9ce7c516ec1d27255168bce.md) | 225 | `result-track:e9ce7c516ec1d27255168bce8ac3fa210869946103b569f6297b1e2b5ae7ed56` |
| 31 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/instceildiv--c392b452ebc8293e3274e64b.md) | 232 | `declaration-track:c392b452ebc8293e3274e64bdbf117b1ac89f47b09a6f7205f827a743e7f8f04` |
| 32 | `lemma` | [ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-def--acf078675804ae08ca64dff4.md) | 238 | `result-track:acf078675804ae08ca64dff48e13a5ee76cfe94d93790b0ca9f364403b525cae` |
| 33 | `lemma` | [ceilDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-apply--46b16f71706b52a4242d5551.md) | 239 | `result-track:46b16f71706b52a4242d55517caa400741faf58d9f99e91b6e8acabf326b25de` |
| 34 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/instfloordiv--7460fc932097a635fef89ce6.md) | 251 | `declaration-track:7460fc932097a635fef89ce6d03df756304c58c0bdb0c8b3f56413cc8094f319` |
| 35 | `lemma` | [floorDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv-def--5cfba31dbc91414a8d0083e2.md) | 258 | `result-track:5cfba31dbc91414a8d0083e2d3039f2d1712ef663310987d7796bdb20c9fd51f` |
| 36 | `lemma` | [coe_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/coe-floordiv--61cdb0c16acd92ef3b62da50.md) | 260 | `result-track:61cdb0c16acd92ef3b62da50871b75c3debb400206457766bdcc09b5d9fc1700` |
| 37 | `lemma` | [floorDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/floordiv-apply--8fb505878c195860b8446571.md) | 261 | `result-track:8fb505878c195860b84465711a51dbd520fe294b03e6ba12ccc45e98ad8e48a4` |
| 38 | `lemma` | [support_floorDiv_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/support-floordiv-subset--c73977370ee5fc3ea8fe9f11.md) | 263 | `result-track:c73977370ee5fc3ea8fe9f119196885bdf3b611b27009c5745fd0ab7412f7a9b` |
| 39 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/instceildiv--c35bfb6a3d6519f9d6b8b909.md) | 271 | `declaration-track:c35bfb6a3d6519f9d6b8b9096396a4958615ee300dbf86edac6b5af22240249e` |
| 40 | `lemma` | [ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-def--d883f5349688c168b40700d9.md) | 278 | `result-track:d883f5349688c168b40700d9bd8f6279f366f987da1510170ae346fc10a146ca` |
| 41 | `lemma` | [coe_ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/coe-ceildiv-def--f8c8992fc74b4de10ddefe18.md) | 280 | `result-track:f8c8992fc74b4de10ddefe1806b165af681bad397d1d83b88cf8d7f147327ca4` |
| 42 | `lemma` | [ceilDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/ceildiv-apply--81351299ef0c9b1b5bd3b972.md) | 281 | `result-track:81351299ef0c9b1b5bd3b972825de0a0071b47d6cab382226c0f37e24d483d1c` |
| 43 | `lemma` | [support_ceilDiv_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/support-ceildiv-subset--fbd5befefcff73612665d333.md) | 283 | `result-track:fbd5befefcff73612665d3332cc2d0b8de92fc91fda795cec5ca2ab04b64725c` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/declarations/example--6d31f5ad4ff5ebb5290b8110.md) | 290 | `declaration-track:6d31f5ad4ff5ebb5290b8110d3982b92117f6d8ac518c8be1f281ab66ee60166` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
