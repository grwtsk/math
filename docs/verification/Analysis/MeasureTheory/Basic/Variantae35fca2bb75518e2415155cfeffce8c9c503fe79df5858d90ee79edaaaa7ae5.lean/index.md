# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3dfeefbdc07b9ec2263ffba68caddeddc152583",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3dfeefbdc07b9ec2263ffba68caddeddc152583`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Content` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Compact` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [index](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/index--88821e9b7d80485dffa97677.md) | 90 | `declaration-track:88821e9b7d80485dffa97677a48e5175afcf38779339fd661e1e2936d8210b7a` |
| 2 | `theorem` | [index_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/index-empty--f2c859607d6626c9ddc9135e.md) | 94 | `result-track:f2c859607d6626c9ddc9135ef2a0c56662ba6cefa98432f1209c45772640a49a` |
| 3 | `def` | [prehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar--058f05ae0df96f574ca348b4.md) | 104 | `declaration-track:058f05ae0df96f574ca348b4dc78ba273c4442df1814f70098c16fa9369f0c8e` |
| 4 | `theorem` | [prehaar_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar-empty--f688fb456f0b6635e92eeb40.md) | 108 | `result-track:f688fb456f0b6635e92eeb408c8cb6a2e6356f4c07901b3f242f90add8559725` |
| 5 | `theorem` | [prehaar_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar-nonneg--2a969d3e56cfa14a1283c0e6.md) | 112 | `result-track:2a969d3e56cfa14a1283c0e638349d9ea358fc1a4d02a49a22ef8476ae7dbd00` |
| 6 | `def` | [haarProduct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarproduct--1c2bd3335ffbf2337d181907.md) | 118 | `declaration-track:1c2bd3335ffbf2337d18190782ba2dd999ab122e0b4310cdfd6a1888887b07b1` |
| 7 | `theorem` | [mem_prehaar_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/mem-prehaar-empty--05b2eea88ce9965dd079a97e.md) | 122 | `result-track:05b2eea88ce9965dd079a97ec3a61f8a64cbb861e358c257b639c8cf53d7f36e` |
| 8 | `def` | [clPrehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/clprehaar--95416e797ebc4e692010b650.md) | 132 | `declaration-track:95416e797ebc4e692010b6502836f1f6a31b34fecfe416401b2b59fbea26546b` |
| 9 | `theorem` | [index_defined](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/index-defined--da03f58e92c3c3d942f7fccd.md) | 147 | `result-track:da03f58e92c3c3d942f7fccd057ed9c57f6f0fda3bfa282aa3bc5f644fa17900` |
| 10 | `theorem` | [index_elim](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/index-elim--25f3f968972d3471af1bb381.md) | 152 | `result-track:25f3f968972d3471af1bb381c300ed1039855bfc6886f777beb621aa405d1ecd` |
| 11 | `theorem` | [le_index_mul](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/le-index-mul--a2ed1d8ddfe14bf6f9592e0f.md) | 157 | `result-track:a2ed1d8ddfe14bf6f9592e0fd2b1f73059b339d7246e432e7f2f9378ab4f4304` |
| 12 | `theorem` | [index_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/index-pos--3cfb4eab4d899ac513926522.md) | 172 | `result-track:3cfb4eab4d899ac513926522d7b0b6a305d98d725fa97277328640c5b24f5583` |
| 13 | `theorem` | [index_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/index-mono--24329f03be7fb7ebfac8e7a1.md) | 184 | `result-track:24329f03be7fb7ebfac8e7a13709b5ca5de7ea7c3ae6d69f1c1d65d02eda8f19` |
| 14 | `theorem` | [index_union_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/index-union-le--f2051dfe991d3a32e15cef52.md) | 190 | `result-track:f2051dfe991d3a32e15cef522f09d96c101d94b3ab36bfd14624afe272b11e7a` |
| 15 | `theorem` | [index_union_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/index-union-eq--8983ae5f7d5f4814591f4579.md) | 203 | `result-track:8983ae5f7d5f4814591f4579d5c97f496fcebf331f785d4393257af09736dd09` |
| 16 | `theorem` | [mul_left_index_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/mul-left-index-le--3b4584b4dba293033e71806b.md) | 237 | `result-track:3b4584b4dba293033e71806b7dbfd72f897e075501e63d54593f9327c6f7ddd5` |
| 17 | `theorem` | [is_left_invariant_index](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/is-left-invariant-index--13c6d0a8c09ae3122af89525.md) | 250 | `result-track:13c6d0a8c09ae3122af895256b453dc43c158cdb13accbc33858ca4ae8412e99` |
| 18 | `theorem` | [prehaar_le_index](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar-le-index--850bd1497d46413ffb4d520b.md) | 262 | `result-track:850bd1497d46413ffb4d520b15f2232133fa3f51a01c948d926fa46a06205fd2` |
| 19 | `theorem` | [prehaar_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar-pos--2061328ca8f76be51235e380.md) | 269 | `result-track:2061328ca8f76be51235e3803fe4ba8f8f63061745b37ec606f57f81aa515be3` |
| 20 | `theorem` | [prehaar_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar-mono--06731ee076e53ee43092bc3f.md) | 276 | `result-track:06731ee076e53ee43092bc3f6a60229d93956f389eb19cae0cb403843bea2ac5` |
| 21 | `theorem` | [prehaar_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar-self--420c448646abe155144982ce.md) | 284 | `result-track:420c448646abe155144982ceb4b02b6cea9358b584b99ac754601867aff492c1` |
| 22 | `theorem` | [prehaar_sup_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar-sup-le--ef91893ee93579e507f345db.md) | 289 | `result-track:ef91893ee93579e507f345dbf951a82ee110198e93623c00e32ba94f71fb6eba` |
| 23 | `theorem` | [prehaar_sup_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar-sup-eq--3adebf9289b48aa6f3b007c7.md) | 297 | `result-track:3adebf9289b48aa6f3b007c72a9f4e7bb2aa854efac2bc4f6832a492bfac524a` |
| 24 | `theorem` | [is_left_invariant_prehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/is-left-invariant-prehaar--acd12bd2d0869683c61ab939.md) | 306 | `result-track:acd12bd2d0869683c61ab939ceae22d87c41d4a9681aed6278f1f0869db7a96b` |
| 25 | `theorem` | [prehaar_mem_haarProduct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/prehaar-mem-haarproduct--fa1a5e5ac14afb4ee3215566.md) | 316 | `result-track:fa1a5e5ac14afb4ee3215566db5ef275efd1df754906f5589333be7b1929870d` |
| 26 | `theorem` | [nonempty_iInter_clPrehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/nonempty-iinter-clprehaar--539914d821cd974b3eaee779.md) | 321 | `result-track:539914d821cd974b3eaee7791934b844f353d99fd8e858ee4d6898cee9cb28fc` |
| 27 | `def` | [chaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/chaar--8aacba9e83d58d9780bfb1a9.md) | 347 | `declaration-track:8aacba9e83d58d9780bfb1a9c10380b39a7d4c7d23cd6dc94e16f4c5e63be977` |
| 28 | `theorem` | [chaar_mem_haarProduct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/chaar-mem-haarproduct--c6d98d91767cc54042c0199b.md) | 351 | `result-track:c6d98d91767cc54042c0199bc3399ad8edb1059c0a866f9c64fc2c8bbb16a2b2` |
| 29 | `theorem` | [chaar_mem_clPrehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/chaar-mem-clprehaar--76221d43e63ba5deccb559da.md) | 355 | `result-track:76221d43e63ba5deccb559da21d0baf78f8de2c72b76bbecea0c557c2fd234c1` |
| 30 | `theorem` | [chaar_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/chaar-nonneg--1a74b087b0492725d1ae9b02.md) | 361 | `result-track:1a74b087b0492725d1ae9b0214270c4cfc83d3b3688b522db3d1688a03e3ca4e` |
| 31 | `theorem` | [chaar_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/chaar-empty--ed8550a209387402d833ecf4.md) | 365 | `result-track:ed8550a209387402d833ecf403db373ffbbc81833a118398f67784ae75666376` |
| 32 | `theorem` | [chaar_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/chaar-self--6cbbb36563bd5ae8ff28fa1f.md) | 375 | `result-track:6cbbb36563bd5ae8ff28fa1f4e979b8a59c216aa8339b56cff1d5dec173dd511` |
| 33 | `theorem` | [chaar_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/chaar-mono--b72d0f44c191e6f5fe52a141.md) | 386 | `result-track:b72d0f44c191e6f5fe52a141fe11ec510155bb7d9c7ff611d418c2a86485e3f2` |
| 34 | `theorem` | [chaar_sup_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/chaar-sup-le--8093a4f82eb199869f661289.md) | 398 | `result-track:8093a4f82eb199869f661289ceb69e8dd4488444d492da18262be6dc323eeed9` |
| 35 | `theorem` | [chaar_sup_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/chaar-sup-eq--84826c80c5268c686f7a980b.md) | 411 | `result-track:84826c80c5268c686f7a980becec53b1ae17aca87eda1d8ad512239175fd85d3` |
| 36 | `theorem` | [is_left_invariant_chaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/is-left-invariant-chaar--375b6a15d93ae468bd7d73f0.md) | 445 | `result-track:375b6a15d93ae468bd7d73f0869afa3b152a61f7cfb4ea90e7c0f1dbddb83d75` |
| 37 | `def` | [haarContent](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarcontent--c6478213cab70defcd76fc26.md) | 459 | `declaration-track:c6478213cab70defcd76fc263b92fde6cd41a9e1eaed9aeaba62a366d4b92772` |
| 38 | `theorem` | [haarContent_apply](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarcontent-apply--b6a1fea447a01ed9ba413e65.md) | 471 | `result-track:b6a1fea447a01ed9ba413e65c13daba4987c0310cf79108770713760bb8c0037` |
| 39 | `theorem` | [haarContent_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarcontent-self--fa503177511425bf571aa531.md) | 477 | `result-track:fa503177511425bf571aa53130e70cbde8fd3e6b41bcb445211343d206e971ce` |
| 40 | `theorem` | [is_left_invariant_haarContent](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/is-left-invariant-haarcontent--5105621615261821e2ff2b39.md) | 482 | `result-track:5105621615261821e2ff2b3996c8c92e526279b79386c63b8e633bb4c9e24ab6` |
| 41 | `theorem` | [haarContent_outerMeasure_self_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarcontent-outermeasure-self-pos--670f6092de6d069a18669702.md) | 488 | `result-track:670f6092de6d069a186697023da760c4ecd9b0e4eb12d6db674b7c613eb3d3ae` |
| 42 | `theorem` | [haarContent_outerMeasure_closure_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarcontent-outermeasure-closure-pos--adf1e29b7cf77e3a5eca33fc.md) | 496 | `result-track:adf1e29b7cf77e3a5eca33fc6a9ecf1a454265397b4d32ab254d352e46f3c148` |
| 43 | `def` | [haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarmeasure--ef9ba49c512e85f7fa0d0be0.md) | 514 | `declaration-track:ef9ba49c512e85f7fa0d0be03309db203d23dda1dc593e06641b23f857107380` |
| 44 | `theorem` | [haarMeasure_apply](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarmeasure-apply--1994a26e31d4a7face00598a.md) | 518 | `result-track:1994a26e31d4a7face00598ac59893d28f41d48029369f80127e3a77e40a41fd` |
| 45 | `instance` | [isMulLeftInvariant_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/ismulleftinvariant-haarmeasure--5d872d4f5f947ddcf67afe6d.md) | 524 | `declaration-track:5d872d4f5f947ddcf67afe6d7ff02f38b74927ee03bdb493b792bac0a02ccebe` |
| 46 | `theorem` | [haarMeasure_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarmeasure-self--0d271010ab80c4d19baf49fb.md) | 535 | `result-track:0d271010ab80c4d19baf49fbc426d85743e055f6d955fc2a2ac43ef76ca30773` |
| 47 | `instance` | [regular_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/regular-haarmeasure--248b0a08af90223aeccaabda.md) | 545 | `declaration-track:248b0a08af90223aeccaabda406f71e05321d967de29e23050530e317cf3bade` |
| 48 | `theorem` | [haarMeasure_closure_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarmeasure-closure-self--abbd58f587c907d1c267bf9d.md) | 553 | `result-track:abbd58f587c907d1c267bf9d2be1e2676d894a49a03deacdc257b97dc38d4c3c` |
| 49 | `instance` | [sigmaFinite_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/sigmafinite-haarmeasure--92170772b422ab7d5327a449.md) | 558 | `declaration-track:92170772b422ab7d5327a4497d9176fd59d338046f931bc292f56aa2db31535c` |
| 50 | `instance` | [isHaarMeasure_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/ishaarmeasure-haarmeasure--6d035049cbfc145785b23585.md) | 567 | `declaration-track:6d035049cbfc145785b2358585c26a19ee17e050b4c41e54eb38e2cce2bf571d` |
| 51 | `abbrev` | [haar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haar--fde5e4179cac4ecbf0ca2250.md) | 577 | `declaration-track:fde5e4179cac4ecbf0ca22500c7edbcd8762dbda4e89e20fe025e98d290db399` |
| 52 | `lemma` | [steinhaus_mul_aux](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/steinhaus-mul-aux--574de20dade2a5574e8e6c09.md) | 590 | `result-track:574de20dade2a5574e8e6c09ada356daf66e59ffc41295be5d566e3bc3189f2a` |
| 53 | `theorem` | [div_mem_nhds_one_of_haar_pos_ne_top](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/div-mem-nhds-one-of-haar-pos-ne-top--2b981265cf1fdea56cbfdfa4.md) | 618 | `result-track:2b981265cf1fdea56cbfdfa4d7a18c5e8a0a42b3af41dce637c9cf54c10aa890` |
| 54 | `theorem` | [div_mem_nhds_one_of_haar_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/div-mem-nhds-one-of-haar-pos--4c6a8cf12028a714ca7b4c8d.md) | 632 | `result-track:4c6a8cf12028a714ca7b4c8d323ac80230f458f12fac0d4e0b4ef7bb57938761` |
| 55 | `theorem` | [haarMeasure_unique](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarmeasure-unique--1cbcf9048bdd66118e3ac9f8.md) | 662 | `result-track:1cbcf9048bdd66118e3ac9f834f65832f84909f7f5eb06465ea626dc199acba7` |
| 56 | `theorem` | [haarMeasure_eq_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/haarmeasure-eq-iff--1beec794f2b88df1b97a4481.md) | 673 | `result-track:1beec794f2b88df1b97a448195916029ee8fe7285cf117b96ed1bf88875a1303` |
| 57 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/example--4c55b09034fb3ac5cff8bc97.md) | 678 | `declaration-track:4c55b09034fb3ac5cff8bc971f84fd68b930fa7d408fccf959369639c5037e25` |
| 58 | `theorem` | [regular_of_isMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/declarations/regular-of-ismulleftinvariant--021c4d84c92bc70e5acadb6e.md) | 687 | `result-track:021c4d84c92bc70e5acadb6e3e0e53d90c1342a4888d2cea4d517c23333750c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
