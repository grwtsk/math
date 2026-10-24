# Verification target: GRWTSK.Geometry.DifferentialGeometry.Monoid.Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23ff5ed7b529def0dd6022e6f9b6ddeb3eae49f5",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23ff5ed7b529def0dd6022e6f9b6ddeb3eae49f5`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiffMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContMDiffAdd](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffadd--178eec014d8c108f650a7be3.md) | 43 | `declaration-track:178eec014d8c108f650a7be3675850ed0d75b07f083592a9d355b84f9ff5b975` |
| 2 | `class` | [ContMDiffMul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffmul--5cf62abfc8e58f7ef63d6b1b.md) | 57 | `declaration-track:5cf62abfc8e58f7ef63d6b1b76e1f54f19635b98faa2f27ebcc63114a41e6377` |
| 3 | `theorem` | [ContMDiffMul.of_le](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffmul-of-le--e97aa9d6633f5fb5e640613c.md) | 75 | `result-track:e97aa9d6633f5fb5e640613cd8eb424c60840d9224187f295c6a4bed814069f3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instance--977fd6328b3c6d9934df1e53.md) | 81 | `declaration-track:977fd6328b3c6d9934df1e53e113f9c09e56d19372adb33dbf449f37bb34a07a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instance--1afc964364d54b2dd55b5ad4.md) | 85 | `declaration-track:1afc964364d54b2dd55b5ad46d2b518d989ccc5b51a4f9590a69b4fff3f37a50` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instance--75cd86365fde8916fc435fd0.md) | 89 | `declaration-track:75cd86365fde8916fc435fd0d821a37b94fb0dc9ee02ad1ae576583726bed742` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instance--2027319da2833606b3a31d1e.md) | 95 | `declaration-track:2027319da2833606b3a31d1e193f8fe9fa5fbcbb48cf5862c837fb0c9b5e8b28` |
| 8 | `theorem` | [contMDiff_mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-mul--1c8ab9c85a1df29137cd19c8.md) | 103 | `result-track:1c8ab9c85a1df29137cd19c8938f7d3b3f271798fd559cb9930a8eb07c008f3b` |
| 9 | `theorem` | [continuousMul_of_contMDiffMul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/continuousmul-of-contmdiffmul--82e1488a385b3aed38ba9852.md) | 114 | `result-track:82e1488a385b3aed38ba985268f142b2602e5002412d956efdbec17212c614a9` |
| 10 | `theorem` | [ContMDiffWithinAt.mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffwithinat-mul--ae5d3ebe9c3b8ed920bede80.md) | 126 | `result-track:ae5d3ebe9c3b8ed920bede80b3bb28c430877077064ac6bdf26e845a83603fe5` |
| 11 | `theorem` | [ContMDiffAt.mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffat-mul--ab95c3664dab590cd10bcdf6.md) | 131 | `result-track:ab95c3664dab590cd10bcdf6b25a46536ede68006a2af0e13cd769f7e799307d` |
| 12 | `theorem` | [ContMDiffOn.mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffon-mul--187e18bd44cc2e966ba3fcfb.md) | 136 | `result-track:187e18bd44cc2e966ba3fcfb0e11042ba0ca96073405d2afbe954de9418e25bc` |
| 13 | `theorem` | [ContMDiff.mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-mul--e1dab251ce5b4b0e1201e689.md) | 140 | `result-track:e1dab251ce5b4b0e1201e68918692f1f98fde6c08922fbe4d58d0fc2e99eec7d` |
| 14 | `theorem` | [contMDiff_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-mul-left--055574de890d28d79f75adae.md) | 154 | `result-track:055574de890d28d79f75adaee86345524c87e3f578ff9f3b115f92c3bece4104` |
| 15 | `theorem` | [contMDiffAt_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffat-mul-left--2e9a811a3505e6bbf522ed99.md) | 161 | `result-track:2e9a811a3505e6bbf522ed997b429697a0487cf5f9932b91b0ed579b00c610ba` |
| 16 | `theorem` | [contMDiff_mul_right](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-mul-right--99b9e42543ab75bf8dc67770.md) | 165 | `result-track:99b9e42543ab75bf8dc67770368c574a41da525d7b14ea70f56e8f8df6c59b77` |
| 17 | `theorem` | [contMDiffAt_mul_right](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffat-mul-right--4943e7464e217450e628dcf3.md) | 172 | `result-track:4943e7464e217450e628dcf37a5b4bb4a73a31ef45519c181b537127530a137c` |
| 18 | `theorem` | [mdifferentiable_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/mdifferentiable-mul-left--46cc8d13e897e1e81c6cca1c.md) | 182 | `result-track:46cc8d13e897e1e81c6cca1c6d1a52d018342de9d645d33e48e7578ff89fae18` |
| 19 | `theorem` | [mdifferentiableAt_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/mdifferentiableat-mul-left--fe660969cd4093b989eadc93.md) | 186 | `result-track:fe660969cd4093b989eadc934e1976ed8280a08dc0efea739f6b55e87d90a831` |
| 20 | `theorem` | [mdifferentiable_mul_right](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/mdifferentiable-mul-right--ffb340e3d515093791a39619.md) | 191 | `result-track:ffb340e3d515093791a39619a9da52cd2b876c1a8abcda1128cadb58dd035c98` |
| 21 | `theorem` | [mdifferentiableAt_mul_right](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/mdifferentiableat-mul-right--64a19f79cd340222132baa4f.md) | 195 | `result-track:64a19f79cd340222132baa4fb5a6d0fee4b2836aafa03f1fb41c62d2e0df1636` |
| 22 | `def` | [smoothLeftMul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/smoothleftmul--d9e34d5d59e60291af5def10.md) | 208 | `declaration-track:d9e34d5d59e60291af5def10f7a27dc8ddc7ed9d57c3e3be24a7e04492452045` |
| 23 | `def` | [smoothRightMul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/smoothrightmul--78ab8b79a1441e698b801d0d.md) | 215 | `declaration-track:78ab8b79a1441e698b801d0d47a92ba3ba40396f718ae2a9a4ecbf7de2282b1c` |
| 24 | `theorem` | [L_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/l-apply--c4894c6c28dc2bfa5e83f8a1.md) | 227 | `result-track:c4894c6c28dc2bfa5e83f8a1798491efd02852d5b7c77cc915214cec50ee7411` |
| 25 | `theorem` | [R_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/r-apply--3a0200d4be7e46fe9417a30f.md) | 231 | `result-track:3a0200d4be7e46fe9417a30f8934ac4554fac94a4d651285bebc39f978de5efa` |
| 26 | `theorem` | [L_mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/l-mul--5e33f418e2691eb89af6ff41.md) | 235 | `result-track:5e33f418e2691eb89af6ff412de42317037cf0e2496d9dce2a7fc6d8ee10d245` |
| 27 | `theorem` | [R_mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/r-mul--ac0f2d935b9d0625035d38fe.md) | 241 | `result-track:ac0f2d935b9d0625035d38fe97732bf96e2ae879c9e99976eca81bcee84b4947` |
| 28 | `theorem` | [smoothLeftMul_one](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/smoothleftmul-one--45973458e340d5600b3bfba0.md) | 251 | `result-track:45973458e340d5600b3bfba038d66c794621a91db4ea279cf4becc22c4785447` |
| 29 | `theorem` | [smoothRightMul_one](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/smoothrightmul-one--2745c2d054b5a23f840aa56a.md) | 254 | `result-track:2745c2d054b5a23f840aa56a5bb802e1eeed971a520d4809b35df799f76ba568` |
| 30 | `instance` | [ContMDiffMul.prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffmul-prod--0054e01eb76f365ef951fd01.md) | 261 | `declaration-track:0054e01eb76f365ef951fd0126f1058fa939973c611ba33bfebc48036853e2a2` |
| 31 | `theorem` | [contMDiff_pow](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-pow--49bc93668f06ce547d590e29.md) | 284 | `result-track:49bc93668f06ce547d590e294e3204cf09a6847859590989a603c101952655c8` |
| 32 | `structure` | [ContMDiffAddMonoidMorphism](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffaddmonoidmorphism--dacd6b0f01f58fca9e71e362.md) | 292 | `declaration-track:dacd6b0f01f58fca9e71e362f2127d82169e04bc270a016bb44d1d0d074a302f` |
| 33 | `structure` | [ContMDiffMonoidMorphism](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffmonoidmorphism--1b9a84994d425fb2de963ba8.md) | 302 | `declaration-track:1b9a84994d425fb2de963ba86568965da924adc6fd7bb9c539daf07804c79467` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instance--c39352679c12f8f1849f8340.md) | 311 | `declaration-track:c39352679c12f8f1849f834029a0dea6a1c9af6ba86ff55478921dbc3afbaa73` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instance--ba872eafce8b00b9785f7361.md) | 316 | `declaration-track:ba872eafce8b00b9785f73615a08f32848a06a4df90fccdbdd739c7b5ec36356` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instance--6471676d7817dc950683f568.md) | 320 | `declaration-track:6471676d7817dc950683f5684c9c487f5900e66efeb40ae01bd65d39b075f4c4` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instance--eef4973938ee68f5c76685d6.md) | 325 | `declaration-track:eef4973938ee68f5c76685d6d770f6cc12545668f1477592dc2fe04fc33636ad` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instance--02cfc67759fda31b234bd2ec.md) | 330 | `declaration-track:02cfc67759fda31b234bd2ec07a1119f3fbbbff9a38d70f59c6fa78cc946e096` |
| 39 | `theorem` | [ContMDiffWithinAt.prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffwithinat-prod--cb3a96c92a0f0f6d10fb63eb.md) | 352 | `result-track:cb3a96c92a0f0f6d10fb63eb2abdca01629568f712ea0c6222ecd7477728477e` |
| 40 | `theorem` | [contMDiffWithinAt_finprod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffwithinat-finprod--7a542040bf4e83bf3b4ad19f.md) | 362 | `result-track:7a542040bf4e83bf3b4ad19f102f060fff5362961e6749f5c48920bc9a712c92` |
| 41 | `theorem` | [contMDiffWithinAt_finset_prod'](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffwithinat-finset-prod--1d36ecfeb9fdad29c16217ea.md) | 370 | `result-track:1d36ecfeb9fdad29c16217ea53570f0c17f7074e7658cce046af9f8f372c841a` |
| 42 | `theorem` | [contMDiffWithinAt_finset_prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffwithinat-finset-prod--ce8dc93187bfa57fe11b2a68.md) | 376 | `result-track:ce8dc93187bfa57fe11b2a6874755002b1653867cd3bc46c2e9383a29f784346` |
| 43 | `theorem` | [ContMDiffAt.prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffat-prod--d8ff8f7acd63e4aba6c9eac7.md) | 382 | `result-track:d8ff8f7acd63e4aba6c9eac7fea2077fe176835d731fdfeb165f06d4cf943623` |
| 44 | `theorem` | [contMDiffAt_finprod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffat-finprod--645c98d961b27f294c7bda7e.md) | 388 | `result-track:645c98d961b27f294c7bda7eb6daf6040e1e16ab04652651fa2f7b3e9f9a3993` |
| 45 | `theorem` | [contMDiffAt_finset_prod'](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffat-finset-prod--e4eae15d05ac280fbb055696.md) | 394 | `result-track:e4eae15d05ac280fbb055696ee0f88f811aaf62d88aa69b5c55b9b3098d785ca` |
| 46 | `theorem` | [contMDiffAt_finset_prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffat-finset-prod--33e4207360720bc91c419332.md) | 399 | `result-track:33e4207360720bc91c41933213f516739405cefe01cae1fe2f14c2cf26ef5f21` |
| 47 | `theorem` | [contMDiffOn_finprod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffon-finprod--bf0e597dfc9d8b6792d2b512.md) | 404 | `result-track:bf0e597dfc9d8b6792d2b512ee13746d4448e775fa1b69bda1460ae86d043882` |
| 48 | `theorem` | [contMDiffOn_finset_prod'](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffon-finset-prod--baa994d70b5d1d3fdcab7752.md) | 410 | `result-track:baa994d70b5d1d3fdcab77526e64e9be9e1d659d3091984c2a28589f7fbed80f` |
| 49 | `theorem` | [contMDiffOn_finset_prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffon-finset-prod--ee8bdf64683acece8c0b3292.md) | 415 | `result-track:ee8bdf64683acece8c0b32928a1ebe38c7f8a72e526e08c182f8b7487cbdd3b8` |
| 50 | `theorem` | [ContMDiff.prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-prod--3c6893e17347d8d1e1545f7b.md) | 420 | `result-track:3c6893e17347d8d1e1545f7bbde9ab96ef68469bdaecc5b3c08fb36627e8312f` |
| 51 | `theorem` | [contMDiff_finset_prod'](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-finset-prod--7433f4744a947bbcb2aae2ad.md) | 425 | `result-track:7433f4744a947bbcb2aae2ad0f71450caa3f2363597eb3fb7934c4d39530ee05` |
| 52 | `theorem` | [contMDiff_finset_prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-finset-prod--7fa9ca19dd80f611f0722517.md) | 429 | `result-track:7fa9ca19dd80f611f0722517203bfec29c267a48f121cd24b343340071a2bae2` |
| 53 | `theorem` | [contMDiff_finprod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-finprod--8848f7a8c6b52dfaaa9b574b.md) | 434 | `result-track:8848f7a8c6b52dfaaa9b574b89f9ec395ddc820068f7843f155697d532ec819b` |
| 54 | `theorem` | [contMDiff_finprod_cond](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-finprod-cond--b30c1fcbe95f4e3e558ce3d7.md) | 439 | `result-track:b30c1fcbe95f4e3e558ce3d73ac1fa2dea6e26850d6faee60505c67f358211ac` |
| 55 | `instance` | [instContMDiffAddSelf](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/instcontmdiffaddself--88c41a5d5a0f87250bc9b12c.md) | 490 | `declaration-track:88c41a5d5a0f87250bc9b12cd0a6366b7817607d2fdac9d5dab5e814ea420fa0` |
| 56 | `theorem` | [ContMDiffWithinAt.div_const](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffwithinat-div-const--8562124930dbff4d5334697a.md) | 510 | `result-track:8562124930dbff4d5334697a9d4857e7e0163769d532ff0d132ca9dc6f72b39e` |
| 57 | `theorem` | [ContMDiffAt.div_const](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffat-div-const--c609d2e2355a5bf453579513.md) | 515 | `result-track:c609d2e2355a5bf453579513063e948e1b6c28bd47a4b6268b2c1022a1805b77` |
| 58 | `theorem` | [ContMDiffOn.div_const](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiffon-div-const--6c5c484d71597e5868265f1d.md) | 520 | `result-track:6c5c484d71597e5868265f1df7abe77d84ad6bf1843da5dcb2c406fdfd03a238` |
| 59 | `theorem` | [ContMDiff.div_const](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/declarations/contmdiff-div-const--4126c8f6090cd9272dc9fac5.md) | 524 | `result-track:4126c8f6090cd9272dc9fac52dee90b329453455a7bf03899503cd62d07df632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
