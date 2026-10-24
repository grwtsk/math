# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34199fddbd2fe7c16c35e3509d6914da7a20b629",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34199fddbd2fe7c16c35e3509d6914da7a20b629`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/one--7250b421e09200f8c9d794e2.md) | 49 | `declaration-track:7250b421e09200f8c9d794e2e5aa32e11cf14458e404e1642faad9137f848e64` |
| 2 | `lemma` | [one_eq_mrange](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/one-eq-mrange--58469325b0aa3e7d47c3f7a8.md) | 53 | `result-track:58469325b0aa3e7d47c3f7a8f07d1552aecb79da002482064bfe1f22e76955ae` |
| 3 | `lemma` | [natCast_mem_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/natcast-mem-one--c5d813ece8aa3398823c6597.md) | 55 | `result-track:c5d813ece8aa3398823c6597dde03d2b738a286d181810e6052dc881a8cf84db` |
| 4 | `lemma` | [mem_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mem-one--ad0d450db5004e6afa76f5ce.md) | 57 | `result-track:ad0d450db5004e6afa76f5ce2c41eb64c0eb227476d4f0ffd9a309072e24e557` |
| 5 | `lemma` | [one_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/one-eq-closure--d4dad629f409118ebf3bb994.md) | 59 | `result-track:d4dad629f409118ebf3bb994197e9910739a244270de315d68a0b8073b795b05` |
| 6 | `lemma` | [one_eq_closure_one_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/one-eq-closure-one-set--dfa27941a264cd65b5e6595d.md) | 62 | `result-track:dfa27941a264cd65b5e6595dec7bc1ef587667269ffc14df3b50c63240227fc6` |
| 7 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/smul--e811879ae991fadf78cafde1.md) | 71 | `declaration-track:e811879ae991fadf78cafde1e5e1fcba692800a888dd3185f2bc1780426b3898` |
| 8 | `lemma` | [smul_mem_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/smul-mem-smul--2e73fd8a1425d65da8205b7b.md) | 78 | `result-track:2e73fd8a1425d65da8205b7bb108e9a4d9c00e8668a11f678ede56ce622cb822` |
| 9 | `lemma` | [smul_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/smul-le--3df0e400e1f816e541033485.md) | 81 | `result-track:3df0e400e1f816e541033485c8f64d1cd8fc0d6b50507c752c0b611d0d5cbf92` |
| 10 | `lemma` | [smul_induction_on](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/smul-induction-on--1685bf8b4df817cd70e00bb1.md) | 86 | `result-track:1685bf8b4df817cd70e00bb1f3dac29e5c813df37572ac2c35e47f612e2b8d55` |
| 11 | `lemma` | [addSubmonoid_smul_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/addsubmonoid-smul-bot--721cd2b8d3e88eeac7e06868.md) | 92 | `result-track:721cd2b8d3e88eeac7e06868413e11c2274a42f42d8189361d74394aa9cb57ba` |
| 12 | `lemma` | [smul_le_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/smul-le-smul--f05c1760673e408fceb756b1.md) | 96 | `result-track:f05c1760673e408fceb756b12540e2a04455d5533a6645643e5b682ee37661db` |
| 13 | `lemma` | [smul_le_smul_left](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/smul-le-smul-left--62db3a85561ac15cb0104e74.md) | 99 | `result-track:62db3a85561ac15cb0104e7436c1349e390e1df69fa222c6014ed2040a223570` |
| 14 | `lemma` | [smul_le_smul_right](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/smul-le-smul-right--6e4b8426d4302819a3bab23a.md) | 100 | `result-track:6e4b8426d4302819a3bab23aaceb9d9a79ccf23dbb139407a679c611e489bf6f` |
| 15 | `lemma` | [smul_subset_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/smul-subset-smul--d3236fd8983b897053aa274f.md) | 102 | `result-track:d3236fd8983b897053aa274fcd3d2101225beda15affa56e417f91f9cb357b60` |
| 16 | `lemma` | [addSubmonoid_smul_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/addsubmonoid-smul-sup--e520a765272e20db0fd1dcec.md) | 105 | `result-track:e520a765272e20db0fd1dcec392c86102a0431d5bba7d5bcc8f193f86b1cc820` |
| 17 | `lemma` | [smul_iSup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/smul-isup--e8a2d387ce09706c6e2ef1c3.md) | 117 | `result-track:e8a2d387ce09706c6e2ef1c3902946848a53ee5942d496954c27526bfd7dc63f` |
| 18 | `def` | [mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul--3c20bf21fdf6046291de04fb.md) | 130 | `declaration-track:3c20bf21fdf6046291de04fb7f284d26de7c76f1f81ed24c1e90c5afc9d411b9` |
| 19 | `lemma` | [mul_mem_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-mem-mul--8da081061541a68a667e65ca.md) | 134 | `result-track:8da081061541a68a667e65ca469ba07f049c2059bc4ce0a2748374b80bdc2254` |
| 20 | `lemma` | [mul_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-le--402135a1320d8e1f95757a4a.md) | 136 | `result-track:402135a1320d8e1f95757a4a26e905fb6fabde9f1bd128638a15f617bcee4ecd` |
| 21 | `lemma` | [mul_induction_on](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-induction-on--583907a74f230ab510cd878c.md) | 139 | `result-track:583907a74f230ab510cd878c5f7c1fa70511b0082417d172317b849d7a34b250` |
| 22 | `lemma` | [closure_mul_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/closure-mul-closure--260abb80f0a6bd45b333d8e6.md) | 144 | `result-track:260abb80f0a6bd45b333d8e6d680273e204ac85c5fd6fb52e3ce409053353e59` |
| 23 | `lemma` | [mul_eq_closure_mul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-eq-closure-mul-set--7088b1f356e0549fb6f2ff9f.md) | 157 | `result-track:7088b1f356e0549fb6f2ff9fc838c2b00b2307889c31b3ddf369022996472a89` |
| 24 | `lemma` | [mul_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-bot--5e65bfed952c357cb144f90d.md) | 160 | `result-track:5e65bfed952c357cb144f90db0ebe5629a87a5857a01c2538918c4cea5e77f64` |
| 25 | `lemma` | [bot_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/bot-mul--9c92b02f30f226924a822171.md) | 164 | `result-track:9c92b02f30f226924a82217129af90c017da1c4cb0baa4bcc7562b46f5c0a59b` |
| 26 | `lemma` | [mul_le_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-le-mul--76f58f65b18ff7717a53782a.md) | 169 | `result-track:76f58f65b18ff7717a53782a65a22c429e85e73daf33feafc27e84743aaa8f41` |
| 27 | `lemma` | [mul_le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-le-mul-left--8922aed2a98177cddb0b03b4.md) | 171 | `result-track:8922aed2a98177cddb0b03b45b8f6651b71fdcce9426b195dd03972cb904c016` |
| 28 | `lemma` | [mul_le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-le-mul-right--f9c1cf1706c2ddb49117b4f7.md) | 172 | `result-track:f9c1cf1706c2ddb49117b4f75eee7ac0d4eaee9713b65b844e6ac2d3f2d9c1fc` |
| 29 | `lemma` | [mul_subset_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-subset-mul--c50f65077eb597c0a6239f91.md) | 174 | `result-track:c50f65077eb597c0a6239f916052f083e245332d96deb647e5d7f0882041f355` |
| 30 | `lemma` | [mul_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-sup--5a77a1ec6d1ff7a16357527a.md) | 176 | `result-track:5a77a1ec6d1ff7a16357527a51da88ebd776bf83b1781397a8b93074b9a80015` |
| 31 | `lemma` | [sup_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/sup-mul--e8d82506dd9cebda8b604609.md) | 179 | `result-track:e8d82506dd9cebda8b604609a2a23b52f0d9a9e701d0ade4f82edaf7f4a24c32` |
| 32 | `lemma` | [iSup_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/isup-mul--18a90ce170d35fbe2a778735.md) | 188 | `result-track:18a90ce170d35fbe2a778735f3d24c2a520c14140021075f096cd9d05dbd9add` |
| 33 | `lemma` | [mul_iSup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-isup--c0cdd5e00fc64554a7797d93.md) | 194 | `result-track:c0cdd5e00fc64554a7797d933e45ddc56cf667380b1ee1a6cae6526af68260aa` |
| 34 | `lemma` | [mul_comm_of_commute](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/mul-comm-of-commute--8e4c25ce3258fde4f8eb7a9d.md) | 197 | `result-track:8e4c25ce3258fde4f8eb7a9dd9eb61381412d6f680738e12647adfc7d12882cd` |
| 35 | `def` | [hasDistribNeg](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/hasdistribneg--10c54b84b4af08ef423b6cfd.md) | 209 | `declaration-track:10c54b84b4af08ef423b6cfd3389e67f1619b9b114f8fd45dc256cf0fd9fa7c0` |
| 36 | `def` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/muloneclass--69c5b70300dc3aa6d81fb66b.md) | 231 | `declaration-track:69c5b70300dc3aa6d81fb66bdbad375f4a4a0a2c6f490f23b084b3b7db3cffcf` |
| 37 | `def` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/semigroup--9a186e10919396066b53b590.md) | 243 | `declaration-track:9a186e10919396066b53b5907d95ee05ce9854e2f6138bd88708f4b638fdf09b` |
| 38 | `def` | [monoid](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/monoid--1ad19c1b23f379aee26cfe33.md) | 261 | `declaration-track:1ad19c1b23f379aee26cfe33998542428877b5b86fbb1d0db21e6faf5bd11b61` |
| 39 | `lemma` | [closure_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/closure-pow--253c6d80b4dddf313f3bc3e4.md) | 265 | `result-track:253c6d80b4dddf313f3bc3e493f813541b5d829a640b7851516dfe85313d81f9` |
| 40 | `lemma` | [pow_eq_closure_pow_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/pow-eq-closure-pow-set--366a24e55a2734bed94db07e.md) | 269 | `result-track:366a24e55a2734bed94db07e0ffc13ea64865a4e0b310e560835251effd53d34` |
| 41 | `lemma` | [pow_subset_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/declarations/pow-subset-pow--b88283b5d49951be95d22982.md) | 273 | `result-track:b88283b5d49951be95d229820f6d71bd46d0d313a2c5ca4c70a96bd7bcde4887` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
