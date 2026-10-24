# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subslice.Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "193e7ec99fd129e78330fdd44940d901cc48dac2",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `193e7ec99fd129e78330fdd44940d901cc48dac2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.IsEmpty` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/subslice--b731f1aed5fadaa3cfe5ebb1.md) | 33 | `declaration-track:b731f1aed5fadaa3cfe5ebb15d740d6f3e07e3c7398d37f5656ab2bd409b5ba8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/instance--7d248c7eb49131c02b45a88a.md) | 41 | `declaration-track:7d248c7eb49131c02b45a88a6aa2d6ca73367ec2768623fc6e687e3111021482` |
| 3 | `def` | [toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/toslice--33cacc65b25d5cc1659270d7.md) | 50 | `declaration-track:33cacc65b25d5cc1659270d758dc31fac7a8bb469bcf73779665fe8413e6fdeb` |
| 4 | `theorem` | [str_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/str-toslice--a96b9859245c5817e2bdfb68.md) | 54 | `result-track:a96b9859245c5817e2bdfb68ce8ae0079d3dd3fc7affe1d874a11e38e718f76f` |
| 5 | `theorem` | [startInclusive_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/startinclusive-toslice--f96ee64de8754e2aeb4e74b4.md) | 57 | `result-track:f96ee64de8754e2aeb4e74b4cd480d5050ae1d45c40a5a9e78ebf625f9b0cb9a` |
| 6 | `theorem` | [endExclusive_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/endexclusive-toslice--c346d0802bcdd6f32c18f1c8.md) | 61 | `result-track:c346d0802bcdd6f32c18f1c8a49829cdefc689417ea67419708bf7cc97e691fa` |
| 7 | `theorem` | [isEmpty_toSlice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/isempty-toslice-iff--9b9f2404f14ae0da5fa4b80a.md) | 65 | `result-track:9b9f2404f14ae0da5fa4b80a4046b1038d2e3d47adc6f71bc66ff3a702d40404` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/instance--e34b69977801682cac9055c8.md) | 69 | `declaration-track:e34b69977801682cac9055c87da91ee66d603ac6f7f004a21630f757dcc4798c` |
| 9 | `def` | [copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/copy--69e5ef98a4d02659d1e2fc35.md) | 76 | `declaration-track:69e5ef98a4d02659d1e2fc35723814f4d699f5e795f7a5d7cbddff04ea4a0745` |
| 10 | `def` | [toString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/tostring--3b2a165b6880a39c9df2a990.md) | 80 | `declaration-track:3b2a165b6880a39c9df2a990bcb95ace8fb24f8ece5ae0a989d22a2ce087fd16` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/instance--c97bb32ba9e25e40d2ddb49c.md) | 83 | `declaration-track:c97bb32ba9e25e40d2ddb49c9c4cc3ed705831cf9f7deead940c845b83a41c82` |
| 12 | `theorem` | [copy_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/copy-eq--a99c28565c6a3df3ca585b04.md) | 87 | `result-track:a99c28565c6a3df3ca585b0457ff55a3cffcb97333aa53581a00a998368abaae` |
| 13 | `theorem` | [toString_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/tostring-eq--8cb016f512d0489c6bf96090.md) | 90 | `result-track:8cb016f512d0489c6bf96090ace2236ef039e23dbb16c60585a458fabaacaadd` |
| 14 | `theorem` | [toStringToString_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/tostringtostring-eq--b10c9a5e3174d5af60f8dfae.md) | 93 | `result-track:b10c9a5e3174d5af60f8dfae252ab05df25cf00631f21a0a83e39a3feb603a9f` |
| 15 | `def` | [subslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/subslice--e8ac3c9a646eed5362f8c8a9.md) | 103 | `declaration-track:e8ac3c9a646eed5362f8c8a979cf5c724a5c3a86fd18fc8286308be239125840` |
| 16 | `theorem` | [toSlice_subslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/toslice-subslice--066d346dfef679c7a9b58a8e.md) | 109 | `result-track:066d346dfef679c7a9b58a8ecb3503ca3350926b142f4b68e25940f6cb030e1c` |
| 17 | `theorem` | [startInclusive_subslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/startinclusive-subslice--c57491b1e7118923d6932517.md) | 113 | `result-track:c57491b1e7118923d693251739789bfefefde771ee8f2c864b558eaa7e7d290a` |
| 18 | `theorem` | [endExclusive_subslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/endexclusive-subslice--035b79eb930bff37027b925c.md) | 117 | `result-track:035b79eb930bff37027b925cc1671f2494da3782b21efd726384048693069520` |
| 19 | `def` | [subslice!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/subslice--9021622a1211e282a79d23c5.md) | 124 | `declaration-track:9021622a1211e282a79d23c5f545bd8ce9b6cb017a8e7a6e9397a0a1615c863c` |
| 20 | `theorem` | [subslice!_eq_subslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/subslice-eq-subslice--70d0cfd84879185076918edb.md) | 130 | `result-track:70d0cfd84879185076918edbfe922cb2e48b31c2ee28fa61034a43b8d7f9d889` |
| 21 | `def` | [subsliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/subslicefrom--c99f08f35e1430945001c7c5.md) | 139 | `declaration-track:c99f08f35e1430945001c7c5ef84681eed43f83c9798dc9b3c90f91b86dfe382` |
| 22 | `theorem` | [startInclusive_subsliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/startinclusive-subslicefrom--416f9ef9dbec6b3ef1142877.md) | 143 | `result-track:416f9ef9dbec6b3ef11428775abd61cb981529d53078d47e28dccbf8a405c2d3` |
| 23 | `theorem` | [endExclusive_subsliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/endexclusive-subslicefrom--6e95fc0aea4dec4ec161a7f1.md) | 147 | `result-track:6e95fc0aea4dec4ec161a7f16a22a3867e3c0b9e3d2e8f7e870b24078641f00e` |
| 24 | `theorem` | [subslice_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/subslice-endpos--45e71e056374837bd00bf199.md) | 151 | `result-track:45e71e056374837bd00bf199bbf3122009728c42b4df659ff9bfd0da650cc9f3` |
| 25 | `theorem` | [toSlice_subsliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/toslice-subslicefrom--d19edb839b4b825e66d2d34a.md) | 155 | `result-track:d19edb839b4b825e66d2d34aba42e412b2083ce15e5a0a20f61d3d3b3ca7c213` |
| 26 | `def` | [toSubslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/tosubslice--bf2a23daee811bcb3c08aeaa.md) | 161 | `declaration-track:bf2a23daee811bcb3c08aeaa48f8bc7ce13ea0105e675fe279311dd68d1cebb6` |
| 27 | `theorem` | [startInclusive_toSubslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/startinclusive-tosubslice--33b9bf372c12f545aeb72a99.md) | 165 | `result-track:33b9bf372c12f545aeb72a999e4dcb8322638338ffe11d32abd6ea03f256201b` |
| 28 | `theorem` | [endExclusive_toSubslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/endexclusive-tosubslice--6d77bc4b2a5a4322350bdb03.md) | 169 | `result-track:6d77bc4b2a5a4322350bdb037a85c521d3469cc81ffca9cf0b246a3f0ced0e07` |
| 29 | `def` | [ofSliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/ofslicefrom--7af3479e39f86f937ce99079.md) | 180 | `declaration-track:7af3479e39f86f937ce99079702e4c50548235424032d9366c8e4e4c527684ba` |
| 30 | `theorem` | [startInclusive_ofSliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/startinclusive-ofslicefrom--5b9f137ba4f22194add24a26.md) | 187 | `result-track:5b9f137ba4f22194add24a26f607e40b86903305ef0c2376257fc09cd7ec6558` |
| 31 | `theorem` | [endExclusive_ofSliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/endexclusive-ofslicefrom--cfd018e8cb877a81bc22d4ea.md) | 191 | `result-track:cfd018e8cb877a81bc22d4ea7a0c7c62413855c593bb254886921df85a1abebb` |
| 32 | `def` | [extendLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/extendleft--a096d7c9b61d1dd4434904bd.md) | 200 | `declaration-track:a096d7c9b61d1dd4434904bd8e4bb459adf8385cca2cd5c0f84544e6326ed5a8` |
| 33 | `theorem` | [startInclusive_extendLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/startinclusive-extendleft--eb8cccaa04335174e4d99f17.md) | 207 | `result-track:eb8cccaa04335174e4d99f17352e69f543c7a93b670700af89450a2b01957cc1` |
| 34 | `theorem` | [endExclusive_extendLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/endexclusive-extendleft--1aa98f961f296693f96e0ee9.md) | 211 | `result-track:1aa98f961f296693f96e0ee9925e897f252ecbcec47bae6ca665b9b6f2d59ffc` |
| 35 | `theorem` | [extendLeft_extendLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/extendleft-extendleft--035fd3cf876c3fdefee326e9.md) | 215 | `result-track:035fd3cf876c3fdefee326e95a09b04da156c95cc88af2f29d3bd9270bd06dc0` |
| 36 | `theorem` | [extendLeft_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/extendleft-self--8c407010a0d1d2ce655210b6.md) | 221 | `result-track:8c407010a0d1d2ce655210b6e9617b3502551a254ac59fddbd948f7c9faf0bd0` |
| 37 | `def` | [cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/cast--08568324a13d7e47948d8ce9.md) | 230 | `declaration-track:08568324a13d7e47948d8ce999ef4af819ed12892b60fe22bf84eaf7d047951f` |
| 38 | `theorem` | [startInclusive_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/startinclusive-cast--29cbc87d29c8f55ccbfee89c.md) | 236 | `result-track:29cbc87d29c8f55ccbfee89c0a7eb7e9eb4da530b2fbe28d1a5f4758ec5fdfa1` |
| 39 | `theorem` | [endExclusive_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/endexclusive-cast--9020b10bd8e9dcbc7781d8da.md) | 240 | `result-track:9020b10bd8e9dcbc7781d8dad51e86126b01eb97982b45b3e0382dcaa5875773` |
| 40 | `theorem` | [cast_rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean/declarations/cast-rfl--1b4c194fa1302caca1519ef6.md) | 244 | `result-track:1b4c194fa1302caca1519ef68bdd28bc712054f2c3cd3e821986333eb0ffa334` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
