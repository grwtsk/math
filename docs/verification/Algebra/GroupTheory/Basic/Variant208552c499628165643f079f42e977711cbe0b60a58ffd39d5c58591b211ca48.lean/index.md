# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "789f28392fa47ebdc41b19313473948b871cd6e4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `789f28392fa47ebdc41b19313473948b871cd6e4`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/prod--6ac5bb44b3561edd08eb6877.md) | 52 | `declaration-track:6ac5bb44b3561edd08eb6877b454d89d66605b482058c8a79c858264e3db50b8` |
| 2 | `def` | [pi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/pi--ef6dfc097535a806a97483d5.md) | 58 | `declaration-track:ef6dfc097535a806a97483d5d813aaf16da6172c98e0bf4e98d7bde66c5a06b7` |
| 3 | `def` | [congr](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/congr--8a1846819ae9b8256b9f611a.md) | 66 | `declaration-track:8a1846819ae9b8256b9f611a65e8c46b3213acd951c297f831761a2e8e82c2bc` |
| 4 | `theorem` | [congr_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/congr-mk--1d208bd01d9e97b8f46ea933.md) | 71 | `result-track:1d208bd01d9e97b8f46ea933e4082c33b548aede6de8f19f6e0f6e3a6e82e66d` |
| 5 | `theorem` | [le_comap_conGen](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/le-comap-congen--129b5725b783c6e5f03fcd60.md) | 75 | `result-track:129b5725b783c6e5f03fcd607e0593ada2aa4225d01cc55285909fe382cdf68f` |
| 6 | `theorem` | [comap_conGen_equiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/comap-congen-equiv--78954397001711816bf4390d.md) | 87 | `result-track:78954397001711816bf4390d4d37df82378133be9fed8727751556e48fed9769` |
| 7 | `theorem` | [comap_conGen_of_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/comap-congen-of-bijective--a7a5f91f297863d4eaebedc3.md) | 118 | `result-track:a7a5f91f297863d4eaebedc3f1f1d2b0356d5810ca7886c9f41c0ae67a4d7b00` |
| 8 | `def` | [submonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/submonoid--3388a5c5f7d28f722f5621e7.md) | 132 | `declaration-track:3388a5c5f7d28f722f5621e74abd1493e60d32100723bd560209652322c8190c` |
| 9 | `def` | [ofSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/ofsubmonoid--2b8e8ab7c58115831bb39479.md) | 143 | `declaration-track:2b8e8ab7c58115831bb39479fbb7db615fee1fadf05e20a13391941c04d3ae9d` |
| 10 | `instance` | [toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/tosubmonoid--9ec9f9bf42b404e80c0710cc.md) | 153 | `declaration-track:9ec9f9bf42b404e80c0710cc2ccfe497ec1005dda4b66d9490547df2b31cb6fe` |
| 11 | `theorem` | [mem_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/mem-coe--f1b635334a1d3d5f86ec995c.md) | 157 | `result-track:f1b635334a1d3d5f86ec995cd410a3903fc03a34b97de4465ea16d8d8b8c654a` |
| 12 | `theorem` | [to_submonoid_inj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/to-submonoid-inj--5725b6b7ddf9ba84f1868335.md) | 161 | `result-track:5725b6b7ddf9ba84f18683353f42391c27219e31f0118ddedbff4b302428c724` |
| 13 | `theorem` | [le_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/le-iff--0987b2a5243f4e1cfcdaa0ca.md) | 165 | `result-track:0987b2a5243f4e1cfcdaa0ca252c88ad51e65ca667950cdcfa2e6a21ca738181` |
| 14 | `theorem` | [mrange_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/mrange-mk--d9801bd1a233f030b0e74186.md) | 172 | `result-track:d9801bd1a233f030b0e741867458b226b1e59472eae0f3346b6bd992c47ba5ab` |
| 15 | `constant` | [on](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/on--a5e2dc8a55adb0978268ada4.md) | 181 | `declaration-track:a5e2dc8a55adb0978268ada4188bc69b1734b5ca7aadb5a88ad49aaf7c553af1` |
| 16 | `theorem` | [lift_range](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/lift-range--bd6bf2daaf7d6664a2eefba0.md) | 183 | `result-track:bd6bf2daaf7d6664a2eefba07313d32e2d998829611eede5bde4c0998b2dd71d` |
| 17 | `theorem` | [kerLift_range_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/kerlift-range-eq--6def9f8147d123a5c5eabfe7.md) | 190 | `result-track:6def9f8147d123a5c5eabfe7a655e6d442fb5321eb377893bd10bf9c17ce754f` |
| 18 | `def` | [quotientKerEquivRange](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/quotientkerequivrange--17e8b03509455a1b9e79d0e9.md) | 197 | `declaration-track:17e8b03509455a1b9e79d0e93de8cdb8752dcfb2b69ef287eb489ef31ba176bd` |
| 19 | `def` | [quotientKerEquivOfRightInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/quotientkerequivofrightinverse--4d796358b08588d8fe198e03.md) | 213 | `declaration-track:4d796358b08588d8fe198e03ae217ad2604ca60127edc065661d92c0fffdb2a4` |
| 20 | `def` | [quotientKerEquivOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/quotientkerequivofsurjective--ee0b444a7486d8057989ba4b.md) | 230 | `declaration-track:ee0b444a7486d8057989ba4b24a24b933a7b973f0dcf9931731f1f085e8732c4` |
| 21 | `def` | [comapQuotientEquivOfSurj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/comapquotientequivofsurj--f142a7e610d69341591c1ab7.md) | 237 | `declaration-track:f142a7e610d69341591c1ab77b11c724042b55c6009537c4ad688bcbdc1ea906` |
| 22 | `lemma` | [comapQuotientEquivOfSurj_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/comapquotientequivofsurj-mk--214c19836a89ce70f56010e9.md) | 243 | `result-track:214c19836a89ce70f56010e92719b7bef04bf5412e895f28e720309467f040bb` |
| 23 | `lemma` | [comapQuotientEquivOfSurj_symm_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/comapquotientequivofsurj-symm-mk--48e6bb3d3ffff0ba3cafbe3b.md) | 247 | `result-track:48e6bb3d3ffff0ba3cafbe3b845f86a943ec17f676d613069b21bdc1f7b840d9` |
| 24 | `lemma` | [comapQuotientEquivOfSurj_symm_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/comapquotientequivofsurj-symm-mk--e43290bdd3c69b964433c97d.md) | 254 | `result-track:e43290bdd3c69b964433c97d0b01bec26d8900c365c382f4463b8dd4251c4e49` |
| 25 | `def` | [comapQuotientEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/comapquotientequiv--c9c3276fde73183a3efe1d2b.md) | 261 | `declaration-track:c9c3276fde73183a3efe1d2b7cd5c0630f61128be213e4cbbd485fb541393dc4` |
| 26 | `def` | [quotientQuotientEquivQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/quotientquotientequivquotient--84e7a0e991f9f5767f215335.md) | 267 | `declaration-track:84e7a0e991f9f5767f215335cc1dda75bf7905f9a1d91d9822aabc0e11e5a579` |
| 27 | `theorem` | [smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/smul--09338f385c7c489e0004bf4c.md) | 280 | `result-track:09338f385c7c489e0004bf4cb1d3833a86b29412446049c96fc60169c6091b71` |
| 28 | `instance` | [instSMul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/instsmul--5873fd8e8242b290cba769c1.md) | 289 | `declaration-track:5873fd8e8242b290cba769c1b85659152aa9703abbc445ec548cb324fa021d53` |
| 29 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/coe-smul--9b2bf1b0b0c4f8a80d977cbd.md) | 294 | `result-track:9b2bf1b0b0c4f8a80d977cbd7ce02d24836538aea890f1056d33e58ce84da2ed` |
| 30 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/instsmulcommclass--a2b65fb6de94f21e9436e8c3.md) | 298 | `declaration-track:a2b65fb6de94f21e9436e8c3e917d05c143765f953eefacddae32775cdd3e3f2` |
| 31 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/instisscalartower--9536786f7c70ead6957a8f6d.md) | 303 | `declaration-track:9536786f7c70ead6957a8f6d6cb33b22d20ca80dbe6dd25da27426dc7e94c2ed` |
| 32 | `instance` | [instIsCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/instiscentralscalar--a0c30489bb41ba93a3574ad7.md) | 308 | `declaration-track:a0c30489bb41ba93a3574ad7c731dc0a02637f1a6a10d97ded24f7f3c4eed617` |
| 33 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/mulaction--e1124f413061645100d2d3df.md) | 314 | `declaration-track:e1124f413061645100d2d3dfc18633c88c3887fab93d82bab5e58df7d0535f8c` |
| 34 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean/declarations/muldistribmulaction--407f81df7c90f89de2b95b8d.md) | 319 | `declaration-track:407f81df7c90f89de2b95b8d12d9105d9a84c031630646f4356b5d900eba7b0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
