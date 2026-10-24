# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullbacks.Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75b4b16b77fd6bed9be3880514fe40886af83e97",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75b4b16b77fd6bed9be3880514fe40886af83e97`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean.json)

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
| 1 | `abbrev` | [PullbackObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/pullbackobj--454bc2f84b28fd62f0e77f6f.md) | 33 | `declaration-track:454bc2f84b28fd62f0e77f6f0d27a98de3fec8cd5a2beb211353c5724123f320` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/example--e19a8a1f01ae93af4ac86200.md) | 37 | `declaration-track:e19a8a1f01ae93af4ac86200d7e9efd071e88e438df792224ee8b2b8b0bb152a` |
| 3 | `abbrev` | [pullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/pullbackcone--d5a46f3a8d15be5cd2856fd1.md) | 43 | `declaration-track:d5a46f3a8d15be5cd2856fd1c4b8276c56d5d8b61808a4181002f968311fb3f1` |
| 4 | `def` | [pullbackLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/pullbacklimitcone--a707bd746bc4e82774d7d0f3.md) | 51 | `declaration-track:a707bd746bc4e82774d7d0f38335b909050cce14bf9f65846cb75192a90b5cf5` |
| 5 | `def` | [equivPullbackObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/equivpullbackobj--3291196f8195244b71a613bc.md) | 70 | `declaration-track:3291196f8195244b71a613bcc4d61687c4fa8791a3096010a866234d1116dbfd` |
| 6 | `lemma` | [equivPullbackObj_apply_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/equivpullbackobj-apply-fst--d2dd768ef3b252b338b7c4a9.md) | 74 | `result-track:d2dd768ef3b252b338b7c4a9b72cbc792bdd7bf32636e967193bcd52d2d321f9` |
| 7 | `lemma` | [equivPullbackObj_apply_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/equivpullbackobj-apply-snd--c97e1b1d84f71c01662be206.md) | 79 | `result-track:c97e1b1d84f71c01662be206467bcaf84781d7fbc3f5eab9e76e8eb82f504ce7` |
| 8 | `lemma` | [equivPullbackObj_symm_apply_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/equivpullbackobj-symm-apply-fst--bac0ac964e056549610e0233.md) | 84 | `result-track:bac0ac964e056549610e0233c5a72cc555c114c9ad43f8d8d36e1276f6bec31e` |
| 9 | `lemma` | [equivPullbackObj_symm_apply_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/equivpullbackobj-symm-apply-snd--05276d72743f2d18231e3df0.md) | 90 | `result-track:05276d72743f2d18231e3df06868f67dcfa6cc03645d0b670fc71cc9c13f821d` |
| 10 | `lemma` | [type_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/type-ext--368e97a9c6c6b244f783a855.md) | 96 | `result-track:368e97a9c6c6b244f783a855ed35dc5bc7550d10cf149dbbe590624fe12bf566` |
| 11 | `def` | [toPullbackObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/topullbackobj--959ba71f8ad2c8ef5bffa606.md) | 106 | `declaration-track:959ba71f8ad2c8ef5bffa6069cc61bd28d8ca4bae3f258857cbb8c42d003da43` |
| 12 | `def` | [isLimitEquivBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/islimitequivbijective--4b7e314f58e37381a7f94224.md) | 111 | `declaration-track:4b7e314f58e37381a7f9422491ed07b14a614e5c92fa5d200b4aa78186cdee05` |
| 13 | `def` | [pullbackIsoPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/pullbackisopullback--84e189d16a7aa764cbb04983.md) | 131 | `declaration-track:84e189d16a7aa764cbb0498301168ae88777c4fb7410120aaae7d3b1c054b755` |
| 14 | `theorem` | [pullbackIsoPullback_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/pullbackisopullback-hom-fst--0fc0e3e3798a3922b8cadba3.md) | 135 | `result-track:0fc0e3e3798a3922b8cadba3afcca36497a49e13fd1d9964acc81cf9cbc37ebe` |
| 15 | `theorem` | [pullbackIsoPullback_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/pullbackisopullback-hom-snd--6832534a40a4f6652bc3cf08.md) | 140 | `result-track:6832534a40a4f6652bc3cf086d42b521d21445ab0a8e3f89baab1bc3ec1500b3` |
| 16 | `theorem` | [pullbackIsoPullback_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/pullbackisopullback-inv-fst--2310d4c9902545a9952cd823.md) | 145 | `result-track:2310d4c9902545a9952cd823ec1c1e1d6cda5d29362578f65551aabb48585c0d` |
| 17 | `theorem` | [pullbackIsoPullback_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/pullbackisopullback-inv-snd--8b7ba612ff8d7a3136be6cb1.md) | 152 | `result-track:8b7ba612ff8d7a3136be6cb1ae0b4ea164a00660016bac4ad4b50efe330a98b4` |
| 18 | `lemma` | [range_fst_of_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/range-fst-of-ispullback--3a641d287a26661b9873035c.md) | 169 | `result-track:3a641d287a26661b9873035c531fd547799c185451b8e8942fb1a8a275b07749` |
| 19 | `lemma` | [range_snd_of_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/range-snd-of-ispullback--4f781f7b49cd12a713f1ff24.md) | 180 | `result-track:4f781f7b49cd12a713f1ff242a5474a7706fc24e54ad88fe2708cd1e208f0c75` |
| 20 | `lemma` | [range_pullbackFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/range-pullbackfst--53ce3eb40857a36e92b04a73.md) | 187 | `result-track:53ce3eb40857a36e92b04a734610d1d3dc9d4f33561b39aadae1edea0590c68a` |
| 21 | `lemma` | [range_pullbackSnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/range-pullbacksnd--5947e10d5a0a3e1e0f71dca4.md) | 191 | `result-track:5947e10d5a0a3e1e0f71dca445c5c7395d9da8157a61237784c90bec636ca1ab` |
| 22 | `lemma` | [ext_of_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/ext-of-ispullback--6f457ea6c4f4451638e78955.md) | 200 | `result-track:6f457ea6c4f4451638e7895579e6054cef9dc0aaff9d6430efe9eff9660521da` |
| 23 | `lemma` | [exists_of_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/exists-of-ispullback--89633139e0d78039601e819e.md) | 205 | `result-track:89633139e0d78039601e819e97773e5ee56894efd0f58b1ef9c910cbc4d14ec0` |
| 24 | `lemma` | [isPullback_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/declarations/ispullback-iff--f3e2e0b50d63aa07a5790626.md) | 216 | `result-track:f3e2e0b50d63aa07a57906260e6562522622cc7ddf41c82ba3d9b99ef034bb4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
