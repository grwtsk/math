# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b79d901138eb20850b7883eebdd628b99a45e21",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b79d901138eb20850b7883eebdd628b99a45e21`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitOfIsLimitπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/islimitofislimit--abc9e8b66046df530110e460.md) | 38 | `declaration-track:abc9e8b66046df530110e460d40df3edcc5e2dbe0f52a4c03ec873a388f48ecc` |
| 2 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/limitcone--dd54f70837226bedbfa74c12.md) | 73 | `declaration-track:dd54f70837226bedbfa74c1251be8cc466be55185a3d7f1aa870587202514a79` |
| 3 | `def` | [isLimitπ₁MapConeLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/islimit-mapconelimitcone--97a1d7f2686686590cba2305.md) | 82 | `declaration-track:97a1d7f2686686590cba230577ffde3b822165db427385c96b8a00aa3df28cd4` |
| 4 | `def` | [isLimitπ₂MapConeLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/islimit-mapconelimitcone--7cdcddf63265e45cff6461ee.md) | 86 | `declaration-track:7cdcddf63265e45cff6461ee30d761862b0bb2e2f3759b15fa4363f5ae5d00ea` |
| 5 | `def` | [isLimitπ₃MapConeLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/islimit-mapconelimitcone--6609ca42a5ade936853335f4.md) | 90 | `declaration-track:6609ca42a5ade936853335f4bfafc65245b7568b62a16944f6855cd78e93e3bb` |
| 6 | `def` | [isLimitLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/islimitlimitcone--d7c409ed488e4f983055ebf2.md) | 94 | `declaration-track:d7c409ed488e4f983055ebf2bb82fba5e769e72213e5d336441e4d3731bade53` |
| 7 | `instance` | [hasLimit_of_hasLimitπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/haslimit-of-haslimit--78436d1922eef23a0c3ab722.md) | 98 | `declaration-track:78436d1922eef23a0c3ab722bb21fb0f066587c07e4ca0aeb792456b173670a7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--1328d367a6a6a6b7fd8a1d1f.md) | 100 | `declaration-track:1328d367a6a6a6b7fd8a1d1f5ad1fe01a2a3b877f3da3c0d2b562c12583ef3f1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--186fc93a10df08cb59e0d559.md) | 103 | `declaration-track:186fc93a10df08cb59e0d559d92a0f8c4f961268ada01756f2fbe5250b050397` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--d66f58237b6a4cb6b0cbc060.md) | 106 | `declaration-track:d66f58237b6a4cb6b0cbc060608ba3a010344f1b618fd0de0fac23fb4532468e` |
| 11 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/haslimitsofshape--24c6aff42f1716dabfc1daff.md) | 115 | `declaration-track:24c6aff42f1716dabfc1daffa514c54f300bedae825a071ab56ce2c92937006f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--8f6d1d581e18452b7555f1c3.md) | 118 | `declaration-track:8f6d1d581e18452b7555f1c32124113cdce9ba90db4412e32bd13824610f70cb` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--678a7ab28e0b57997f2faf7a.md) | 120 | `declaration-track:678a7ab28e0b57997f2faf7a5bc40aeffd4f3907ff72b6dd141d120666b2a41b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--54141edc73e5d1711d8f1132.md) | 122 | `declaration-track:54141edc73e5d1711d8f1132e52539f6dd1e9f860fd2413dbcb189c10d58246a` |
| 15 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/hasfinitelimits--98a6a5c8819ee3f7653e9d1a.md) | 130 | `declaration-track:98a6a5c8819ee3f7653e9d1abb7e583a9f24a4f4dccc3a9a32f54da9d7be03d4` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--03b6d012ba69926eba1ca093.md) | 133 | `declaration-track:03b6d012ba69926eba1ca093b6aecb17aa1872ed7f0a1122540fb444cc8d92ee` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--6ae0cec64a6c87604d1c0627.md) | 136 | `declaration-track:6ae0cec64a6c87604d1c0627e63357f6e24a67ac975a9eb2aa020fdf6935cbfd` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--1c2baecd9b225e71ff715639.md) | 139 | `declaration-track:1c2baecd9b225e71ff715639d6e0bb082e33da2970fb01709c4850b969f56f55` |
| 19 | `instance` | [preservesMonomorphisms_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/preservesmonomorphisms--e883939cb73e250639d53e20.md) | 148 | `declaration-track:e883939cb73e250639d53e20ebb7dfbb5d8c5a94a99d584ef0b8a74afb6107e9` |
| 20 | `instance` | [preservesMonomorphisms_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/preservesmonomorphisms--38488d537caec2c4791844c6.md) | 152 | `declaration-track:38488d537caec2c4791844c6c2014d1d97cb3e019cb098f0fdc26513252ed7c7` |
| 21 | `instance` | [preservesMonomorphisms_π₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/preservesmonomorphisms--4418d39e2326d7773ca6535b.md) | 156 | `declaration-track:4418d39e2326d7773ca6535b5525d539f5e9b2a8a26581a464b40dba143e3e4d` |
| 22 | `def` | [isColimitOfIsColimitπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/iscolimitofiscolimit--8cfd56ba9c4556c8d921c0a1.md) | 164 | `declaration-track:8cfd56ba9c4556c8d921c0a1136c807260730937aab1ac0d6b9dcc5be7b4de56` |
| 23 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/colimitcocone--1e16307d1f113eef45872781.md) | 203 | `declaration-track:1e16307d1f113eef45872781deeb01d4b105fcd4fec05817061512588c352a2c` |
| 24 | `def` | [isColimitπ₁MapCoconeColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/iscolimit-mapcoconecolimitcocone--53a2b63775c685b7e284da00.md) | 215 | `declaration-track:53a2b63775c685b7e284da00415c06db908dd6040dc36868c372fa22ccbf7cfc` |
| 25 | `def` | [isColimitπ₂MapCoconeColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/iscolimit-mapcoconecolimitcocone--eaff319862d35140f2ae1f95.md) | 220 | `declaration-track:eaff319862d35140f2ae1f95839cedadd4a36a6eb2400f77cb271160dca1bb8a` |
| 26 | `def` | [isColimitπ₃MapCoconeColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/iscolimit-mapcoconecolimitcocone--1431a304cea09ea2308d3925.md) | 225 | `declaration-track:1431a304cea09ea2308d39252e67d621e848c767799f72cd37f3c7d73eaa4204` |
| 27 | `def` | [isColimitColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/iscolimitcolimitcocone--c2523c378ee93a893bf65657.md) | 230 | `declaration-track:c2523c378ee93a893bf656579666d5ef54b5abebb9fe23a57ce749937f3ed809` |
| 28 | `instance` | [hasColimit_of_hasColimitπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/hascolimit-of-hascolimit--96d113baa79c3c122ed717b4.md) | 234 | `declaration-track:96d113baa79c3c122ed717b44138d3c5612fec66299073e8d99b9c313c42f654` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--c23b109e78b5341020c9ac32.md) | 236 | `declaration-track:c23b109e78b5341020c9ac32c5be03a410573cd3a3791f26e7561dc9841c0256` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--686f39ccb0a58a1e6e12a740.md) | 240 | `declaration-track:686f39ccb0a58a1e6e12a7405a12debff92b3151bb07602a326310369c5160b1` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--d97e91a738a4fa83ed4c2c30.md) | 244 | `declaration-track:d97e91a738a4fa83ed4c2c307b7965709d09546ed5ee5158d6ab9067cbdb44a0` |
| 32 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/hascolimitsofshape--24d819468da8958aad8f83f7.md) | 254 | `declaration-track:24d819468da8958aad8f83f788cebf55592c24103ad24d8eb6b0f4ad15ff596c` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--5cf291535df1db78271fe351.md) | 257 | `declaration-track:5cf291535df1db78271fe351104b8306033e0607e5a270f04a0ab2ee6c4ac185` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--888912674ea46a89880e5dc7.md) | 259 | `declaration-track:888912674ea46a89880e5dc7aaea272437c3a7ee07bf49c4a7cdfe125dd96000` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--1c747d1c5a09f0db822eaf94.md) | 261 | `declaration-track:1c747d1c5a09f0db822eaf943708ab872fb6bbecdf80242de7b15f6d5d00a3e5` |
| 36 | `instance` | [hasFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/hasfinitecolimits--e2b340b00c6c3b0fbb3dfb0e.md) | 269 | `declaration-track:e2b340b00c6c3b0fbb3dfb0eb40c43b9273e2ae290cba469b746ad1e8f9aef7d` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--7a8386743b41c93556fa14ac.md) | 272 | `declaration-track:7a8386743b41c93556fa14ac3ff376b69929879a2d9dacf003b971cab6970771` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--d25990e26c7670d63aee9e14.md) | 275 | `declaration-track:d25990e26c7670d63aee9e14a3252eb4a5c1332d43d0a1b82a8bf0166f905604` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/instance--e9c854497b6c915712d8d529.md) | 278 | `declaration-track:e9c854497b6c915712d8d529bb09780dc031afc07d8cd656a9accc970fc060aa` |
| 40 | `instance` | [preservesEpimorphisms_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/preservesepimorphisms--2f485a35eec5e9d058b099e0.md) | 287 | `declaration-track:2f485a35eec5e9d058b099e0f60535812248b3c97f2e32ffa67298d1a1ccaea8` |
| 41 | `instance` | [preservesEpimorphisms_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/preservesepimorphisms--2a58240a5e778421da3f5e0e.md) | 291 | `declaration-track:2a58240a5e778421da3f5e0ebc3743d9f7e05237e7dd0587304f436ce8349e8c` |
| 42 | `instance` | [preservesEpimorphisms_π₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/declarations/preservesepimorphisms--2fb3679863fb33eeee40688c.md) | 295 | `declaration-track:2fb3679863fb33eeee40688c9018c2fc2046479f1a1e04c4350290db4f0897bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
