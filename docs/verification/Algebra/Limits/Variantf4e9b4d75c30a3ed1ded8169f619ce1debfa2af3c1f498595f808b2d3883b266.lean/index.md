# Verification target: GRWTSK.Algebra.Limits.Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28567d9e22e4bf79f8f574bba0d00db64d9ccf7b",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/index.md) · [Full source](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28567d9e22e4bf79f8f574bba0d00db64d9ccf7b`.

Source path: `GRWTSK/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/semiringobj--4fa89a3168e1c79ef703f3ce.md) | 42 | `declaration-track:4fa89a3168e1c79ef703f3ce41a402f44865df10770bcadb7dfba355c3aca735` |
| 2 | `def` | [sectionsSubsemiring](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/sectionssubsemiring--29518fd2e850490122d7d7c7.md) | 46 | `declaration-track:29518fd2e850490122d7d7c74d819f25ef7e9f9fa1abb34024088e2467974168` |
| 3 | `instance` | [sectionsSemiring](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/sectionssemiring--c0dba07eee4414293ed38bdd.md) | 52 | `declaration-track:c0dba07eee4414293ed38bdd3c115e600b823ea302ad23f56f40803d9f4474fc` |
| 4 | `instance` | [limitSemiring](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitsemiring--cbd759961b27eaf6712206be.md) | 57 | `declaration-track:cbd759961b27eaf6712206beb1a5441b24992aa788e30ba32c01e4916b4760a9` |
| 5 | `def` | [limitπRingHom](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limit-ringhom--c764f2f7da48a1a939254da5.md) | 63 | `declaration-track:c764f2f7da48a1a939254da5232e03b0fd61f533475aba3cb786896e8d17f32b` |
| 6 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitcone--9dc58917ddf0171d2a197e94.md) | 83 | `declaration-track:9dc58917ddf0171d2a197e9494b6b44b5a5ca6c9a7d2c9f4b27d6d8bf16933b0` |
| 7 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitconeislimit--62031f6b8583f1a5bb79f939.md) | 96 | `declaration-track:62031f6b8583f1a5bb79f9398a02f7ba87cfab7bfcb92a82f708f0da8d326e0c` |
| 8 | `instance` | [hasLimit](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimit--70ae73aabbc377d5800b778b.md) | 116 | `declaration-track:70ae73aabbc377d5800b778b3ddcef979b337691e67013109d2da50842c065b0` |
| 9 | `instance` | [hasLimitsOfShape](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimitsofshape--04bbce7852b4cfb932be53b6.md) | 119 | `declaration-track:04bbce7852b4cfb932be53b6ab7bd7bca0840da9d0481c1f78833b0340070825` |
| 10 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimitsofsize--fb08d84004e68596453d32d2.md) | 122 | `declaration-track:fb08d84004e68596453d32d2688eee98b4a8002512a37ec34599a33a9905868c` |
| 11 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimits--d79a21d15c43a2e040bfec19.md) | 125 | `declaration-track:d79a21d15c43a2e040bfec19d60367f807f7222087981fa62679bde3445fabeb` |
| 12 | `def` | [forget₂AddCommMonPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-addcommmonpreserveslimitsaux--c511d052b62c9f96ee88a643.md) | 131 | `declaration-track:c511d052b62c9f96ee88a643c7722a7cd8798bbafe4956ee3fa570d2dd4019c2` |
| 13 | `instance` | [forget₂AddCommMon_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-addcommmon-preserveslimitsofsize--8319d44f3bea388c50e42ef1.md) | 139 | `declaration-track:8319d44f3bea388c50e42ef1c633527b2f8429be1278eb8bcdb9d490e9d510cf` |
| 14 | `instance` | [forget₂AddCommMon_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-addcommmon-preserveslimits--949b3e5498707414a612080c.md) | 146 | `declaration-track:949b3e5498707414a612080cd3ac12fcd0d8e1cafb7414c78c5e03be3a1033d9` |
| 15 | `def` | [forget₂MonPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-monpreserveslimitsaux--ab94c7b8758d70011fdeab61.md) | 152 | `declaration-track:ab94c7b8758d70011fdeab614266e387f9b9d39691f29251310a2a6fa4bfc01a` |
| 16 | `instance` | [forget₂Mon_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-mon-preserveslimitsofsize--dac8abcb58d7933e53a834ef.md) | 160 | `declaration-track:dac8abcb58d7933e53a834efcab85a814e67868a512bc9f2e27e8a118c553293` |
| 17 | `instance` | [forget₂Mon_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-mon-preserveslimits--87a07a003de8188fd8e6e227.md) | 167 | `declaration-track:87a07a003de8188fd8e6e227d02c9479544b8b9dfe2ee087cc7beaf625005553` |
| 18 | `instance` | [forget_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-preserveslimitsofsize--95a7751ac3f0a4457fec55bf.md) | 172 | `declaration-track:95a7751ac3f0a4457fec55bfd30383ff9e7ac45be6dd22d25fa71f747c5d6399` |
| 19 | `instance` | [forget_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-preserveslimits--ab3b27f8625ae2f536161a5f.md) | 179 | `declaration-track:ab3b27f8625ae2f536161a5f401966f28a345146f3f94ae1811544cd3fdfe822` |
| 20 | `instance` | [commSemiringObj](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/commsemiringobj--bb8e58d4cc9012e17691dbb0.md) | 188 | `declaration-track:bb8e58d4cc9012e17691dbb04d5e19061d8bfa428486dd254c809314940fa0cd` |
| 21 | `instance` | [limitCommSemiring](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitcommsemiring--2c37ecb18364083b4df5af29.md) | 194 | `declaration-track:2c37ecb18364083b4df5af29d18481712ba91529968f4989f498dd65a5a56628` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/instance--70a4312d143b57ecc3f4e4a6.md) | 206 | `declaration-track:70a4312d143b57ecc3f4e4a61539191174530719e727ceac50903c34dfe916db` |
| 23 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitcone--31bad4a1889a59b680a6c92e.md) | 232 | `declaration-track:31bad4a1889a59b680a6c92e8443f8f6e4c7998c6743ddc6a2147c423f35ba13` |
| 24 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitconeislimit--96b8c7609d37fa68e10c8c87.md) | 240 | `declaration-track:96b8c7609d37fa68e10c8c8707f75b87983b0dcc1df7962d08d7e2084df092d3` |
| 25 | `instance` | [hasLimit](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimit--2c39fa929f376448888b9348.md) | 244 | `declaration-track:2c39fa929f376448888b9348f19c98c84e29a2e31c535121ede4a7f1206b86c8` |
| 26 | `instance` | [hasLimitsOfShape](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimitsofshape--07119f63110d4daaeec33a50.md) | 247 | `declaration-track:07119f63110d4daaeec33a50c27455d24d2dbf5face9ecf3a9b070aed28df017` |
| 27 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimitsofsize--d9e2b84dc082957b755a7a4e.md) | 250 | `declaration-track:d9e2b84dc082957b755a7a4e4a00078a7cee7ad809ff41625715f2e98069c709` |
| 28 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimits--78679678c0fc303e92ff20f3.md) | 252 | `declaration-track:78679678c0fc303e92ff20f3bf1f7090c9045a38e17b4b50f85e64f4ed4c8856` |
| 29 | `instance` | [forget₂SemiRing_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-semiring-preserveslimitsofsize--8d4765890de34ec4e620207f.md) | 257 | `declaration-track:8d4765890de34ec4e620207f9a434ad3b6343942f6256453cadfac54c3ca6fd9` |
| 30 | `instance` | [forget₂SemiRing_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-semiring-preserveslimits--669e37b253aaf912d9004974.md) | 264 | `declaration-track:669e37b253aaf912d9004974eb4ba3dc352d8a7bec23cffe46437e2c6ca137b1` |
| 31 | `instance` | [forget_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-preserveslimitsofsize--d67cf548c6021943c77af0e7.md) | 271 | `declaration-track:d67cf548c6021943c77af0e7054bf058e6fd61e04c72848e500ab1e060e67fa9` |
| 32 | `instance` | [forget_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-preserveslimits--c1bd616cb0490e79ea340f44.md) | 278 | `declaration-track:c1bd616cb0490e79ea340f446b07c3e352d9976cd6016d2a3b34967a2554e8ca` |
| 33 | `instance` | [ringObj](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/ringobj--43ada48e19a906df19e75c42.md) | 287 | `declaration-track:43ada48e19a906df19e75c425371b4863da0593ad4ee8e9e4645c7a243731b58` |
| 34 | `def` | [sectionsSubring](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/sectionssubring--765d8ba4d7dc7ee7b40f2c61.md) | 292 | `declaration-track:765d8ba4d7dc7ee7b40f2c6177067e9f7720ff35ef35080497745ee91518b83c` |
| 35 | `instance` | [limitRing](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitring--6c1e84eaf340a68729765072.md) | 303 | `declaration-track:6c1e84eaf340a687297650725b8b20827577b7d1899ce422f44b93a21d76e745` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/instance--ce70738f34318aaa7e88a243.md) | 312 | `declaration-track:ce70738f34318aaa7e88a24368d576838a8f5e041f023d5ef8f4ccd5a21400d6` |
| 37 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitcone--a8185df85c67cfc64fdaa7b1.md) | 334 | `declaration-track:a8185df85c67cfc64fdaa7b1b41ba1691342b9444784498459ef9ee11a75aca2` |
| 38 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitconeislimit--a4b174cec0f73db4613daa60.md) | 342 | `declaration-track:a4b174cec0f73db4613daa6032d2a796a806cce76928a73cb4639fa9ae6be6ff` |
| 39 | `instance` | [hasLimit](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimit--ae941900314263a509c14ac0.md) | 346 | `declaration-track:ae941900314263a509c14ac00d08e95db418229f2b415785f5fdd4179329cc68` |
| 40 | `instance` | [hasLimitsOfShape](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimitsofshape--62cfc9fffbf352da10ee24be.md) | 352 | `declaration-track:62cfc9fffbf352da10ee24be6bebfbc14d11cd0fef58f6255c9d4aaa5cda3dfc` |
| 41 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimitsofsize--216536fc332ffe21e568b6af.md) | 355 | `declaration-track:216536fc332ffe21e568b6af9e1cfbd0707aeca827880bf9e2f07bdd8f79d597` |
| 42 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimits--3b9c8cd8046c49ac5a7cf82d.md) | 357 | `declaration-track:3b9c8cd8046c49ac5a7cf82d6bd0d08af8d77da4cdb3c59a32af20c777620677` |
| 43 | `instance` | [forget₂SemiRing_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-semiring-preserveslimitsofsize--225f8d7cbbded6ef228ca90f.md) | 362 | `declaration-track:225f8d7cbbded6ef228ca90f86157cc083d85d7b6a0b5cbabd786ddb5720cfb8` |
| 44 | `instance` | [forget₂SemiRing_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-semiring-preserveslimits--97c478ddc4fbf510ec2db969.md) | 369 | `declaration-track:97c478ddc4fbf510ec2db9695bcb3e665eeeead07b8cec3e77ef891e1a66a632` |
| 45 | `def` | [forget₂AddCommGroupPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-addcommgrouppreserveslimitsaux--7d6665682aa5492ba6661262.md) | 374 | `declaration-track:7d6665682aa5492ba66612626d0c07e8cb782f93dc011cd5561b38cb43bb57e7` |
| 46 | `instance` | [forget₂AddCommGroup_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-addcommgroup-preserveslimitsofsize--42f24c14f37a277b4eda67a4.md) | 382 | `declaration-track:42f24c14f37a277b4eda67a4e6455345776a703619e963c7094efa6e2f6f666a` |
| 47 | `instance` | [forget₂AddCommGroup_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-addcommgroup-preserveslimits--dd30ebe0a098e4bf16cab27c.md) | 389 | `declaration-track:dd30ebe0a098e4bf16cab27c4570ae9d123212832f0d1e2525345d477a9ff28d` |
| 48 | `instance` | [forget_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-preserveslimitsofsize--afabd394950588a95005acc1.md) | 396 | `declaration-track:afabd394950588a95005acc13c0b0a99bfce8f45c4d32eda43affd05d6febd16` |
| 49 | `instance` | [forget_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-preserveslimits--796d250544ef878645d64e30.md) | 403 | `declaration-track:796d250544ef878645d64e30dec5f15a87e580d79666d9565054da7e6b817390` |
| 50 | `instance` | [commRingObj](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/commringobj--291763ca8e2859a60d248400.md) | 412 | `declaration-track:291763ca8e2859a60d2484004b97c503547e08da09783c1807313b22129758e5` |
| 51 | `instance` | [limitCommRing](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitcommring--7ad7f205330201758b4ebb10.md) | 417 | `declaration-track:7ad7f205330201758b4ebb106fa5449d59b5a1210bab75154b94b8cb76bd49fb` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/instance--29ac09d13d18588921ab229e.md) | 428 | `declaration-track:29ac09d13d18588921ab229e976d8032292c98935102457e0b6644967e4cf983` |
| 53 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitcone--879b8657cbe6a05950655072.md) | 465 | `declaration-track:879b8657cbe6a0595065507234dc4653fd6d0617a1df3bae6d9c97992404dab6` |
| 54 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/limitconeislimit--b2792632ec025f695301e030.md) | 471 | `declaration-track:b2792632ec025f695301e0304187447dbcd9f9a1b95ba180d33abcdc24c7c72e` |
| 55 | `instance` | [hasLimit](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimit--6c4a62c7ae99f01566c07950.md) | 475 | `declaration-track:6c4a62c7ae99f01566c07950ff8c7269989daf19aec7f33ec344816bca485253` |
| 56 | `instance` | [hasLimitsOfShape](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimitsofshape--449fd87d6324889608704f27.md) | 481 | `declaration-track:449fd87d6324889608704f276b262b87c6f95616b82854e9be4b34a285b4ee58` |
| 57 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimitsofsize--cea84d1c0ae9654797b53a0e.md) | 484 | `declaration-track:cea84d1c0ae9654797b53a0e7fcacf787eb9aca2545213046ed52cfa5b95c65b` |
| 58 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/haslimits--8679f7eeedaf6dba71106725.md) | 486 | `declaration-track:8679f7eeedaf6dba711067253a158bb2be2bca5de21ef007a7e30dadcef582a2` |
| 59 | `instance` | [forget₂Ring_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-ring-preserveslimitsofsize--e2cee591ed10a719dfb28854.md) | 492 | `declaration-track:e2cee591ed10a719dfb288541b21b35e0a6968908e5115c569fc400e3a938cef` |
| 60 | `instance` | [forget₂Ring_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-ring-preserveslimits--82e5cd1e15e79a5e4fea7b0c.md) | 499 | `declaration-track:82e5cd1e15e79a5e4fea7b0c2ae4f02a0bc423cf2b443f51db882b76a615eee3` |
| 61 | `def` | [forget₂CommSemiRingPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-commsemiringpreserveslimitsaux--90ded88104a90b640a0ed777.md) | 504 | `declaration-track:90ded88104a90b640a0ed7778d231c98ddb23e8858e6779b96c51f86cda2bef0` |
| 62 | `instance` | [forget₂CommSemiRing_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-commsemiring-preserveslimitsofsize--3ea2fcc5591d2d881c3e8693.md) | 514 | `declaration-track:3ea2fcc5591d2d881c3e869338824c01956655092f672fcaad081ce588151273` |
| 63 | `instance` | [forget₂CommSemiRing_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-commsemiring-preserveslimits--1d05ca254fae91806437f0b5.md) | 521 | `declaration-track:1d05ca254fae91806437f0b5b9b579c7952e3e43cb1505e7b6b4ff995c28867a` |
| 64 | `instance` | [forget_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-preserveslimitsofsize--c15f7969b749ff02e8c544e8.md) | 528 | `declaration-track:c15f7969b749ff02e8c544e8c471fc491d231acec496a2e9f1e8d3b6cf994a57` |
| 65 | `instance` | [forget_preservesLimits](../../../../mathematics/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/declarations/forget-preserveslimits--37aa49cdfae984412d64184b.md) | 535 | `declaration-track:37aa49cdfae984412d64184b007ae75fa1b608123c9f8ccb4239e536b6b9e787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
