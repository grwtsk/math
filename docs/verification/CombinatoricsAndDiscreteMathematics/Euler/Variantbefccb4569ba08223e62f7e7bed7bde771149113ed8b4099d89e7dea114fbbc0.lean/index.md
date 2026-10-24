# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Euler.Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean.json)

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
| 1 | `def` | [IsEuler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/iseuler--300880ded3f752f9f1f10a24.md) | 63 | `declaration-track:300880ded3f752f9f1f10a24f502a7315e3f890ac466deebb2c82cfa6873459f` |
| 2 | `def` | [euler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/euler--17ed35850c87d58d44482e73.md) | 68 | `declaration-track:17ed35850c87d58d44482e73fc8ec265bd945f96fc7c53f9fbe63a2fb148be17` |
| 3 | `def` | [toEuler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/toeuler--2fae3a3d02537815ccdc94ad.md) | 73 | `declaration-track:2fae3a3d02537815ccdc94adad0c78db5c7016d71aeb87204e72ca079e91a5c3` |
| 4 | `theorem` | [terminatedAt_euler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/terminatedat-euler--710dd14cc399bf2e523fcae1.md) | 82 | `result-track:710dd14cc399bf2e523fcae1744ed5ae375fe5956c61fb681922046f79ff40d8` |
| 5 | `theorem` | [exists_euler_s_of_not_terminatedAt_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/exists-euler-s-of-not-terminatedat-zero--9b361bb674c7beed6515bf0e.md) | 85 | `result-track:9b361bb674c7beed6515bf0e75ebfa869a6ba9aa631d780d73d579f93606bff2` |
| 6 | `theorem` | [exists_euler_s_of_not_terminatedAt_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/exists-euler-s-of-not-terminatedat-succ--e04c02f94c9adf324a875091.md) | 90 | `result-track:e04c02f94c9adf324a875091169a1a04500a584d64e0855dc45590704bec0ac9` |
| 7 | `theorem` | [isEuler_euler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/iseuler-euler--8b8e0986c8e7c96bf72a0d6f.md) | 96 | `result-track:8b8e0986c8e7c96bf72a0d6fec3dcc1adf536fe63a434bd7b9b6677a90754147` |
| 8 | `theorem` | [IsEuler.exists_euler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/iseuler-exists-euler--cf2ac34908d7d9829d1b7d6b.md) | 109 | `result-track:cf2ac34908d7d9829d1b7d6bd68c5e4fd35b3fd0a629f9956286f72e747264c2` |
| 9 | `theorem` | [isEuler_iff_exists_euler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/iseuler-iff-exists-euler--6687d83accfdebf1f2cb5a44.md) | 130 | `result-track:6687d83accfdebf1f2cb5a44d5acc5b85ff184eaa63ee81c358cc0c0f0f88569` |
| 10 | `theorem` | [isEuler_toEuler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/iseuler-toeuler--ee5e568e6c06e9f1ac279bd8.md) | 134 | `result-track:ee5e568e6c06e9f1ac279bd84b38b754d1350c2400466f4366b4cebabefd7483` |
| 11 | `theorem` | [terminatedAt_toEuler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/terminatedat-toeuler--113a855f29b90674b95b1f43.md) | 137 | `result-track:113a855f29b90674b95b1f43f5053b8645b4ff208ffc95a61e7e225bb8ead214` |
| 12 | `theorem` | [euler_s_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/euler-s-zero--f86fcb39f10f6a3ddfbe47cc.md) | 141 | `result-track:f86fcb39f10f6a3ddfbe47cc8a464bbfb7ff40e7fcfeeb9f736299d0be7845dc` |
| 13 | `theorem` | [euler_s_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/euler-s-succ--bd326ff185f6daa05b65a46f.md) | 145 | `result-track:bd326ff185f6daa05b65a46f0b9176fbea0aab587cfdafecf63b55d85cc685dd` |
| 14 | `theorem` | [toEuler_s_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/toeuler-s-zero--abf5ad38a84d776cb41cfdc7.md) | 149 | `result-track:abf5ad38a84d776cb41cfdc74d809f37331a48896e9516a639c43fba4c1ba743` |
| 15 | `theorem` | [toEuler_s_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/toeuler-s-succ--1a0d429f65f3b2904e5a78b4.md) | 153 | `result-track:1a0d429f65f3b2904e5a78b4d0b4a1c7702266c6fed1dc30fb5c5c5230c391c1` |
| 16 | `theorem` | [euler_h](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/euler-h--35d03b7f40575ef67bdb474d.md) | 165 | `result-track:35d03b7f40575ef67bdb474d82df84e10703143c5b39ab18116bac8f4038af6f` |
| 17 | `theorem` | [toEuler_h](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/toeuler-h--8dd539640960010bb0877155.md) | 168 | `result-track:8dd539640960010bb0877155b5af801e84e54626c92cf4583757d2dd3054121d` |
| 18 | `theorem` | [partNum_euler_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/partnum-euler-zero--400b4da540bce8af422f65e1.md) | 171 | `result-track:400b4da540bce8af422f65e1c71cbb0557daf63a70b34e3defdef6fac24e4709` |
| 19 | `theorem` | [partDen_euler_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/partden-euler-zero--9a554239e812880b6b94c33b.md) | 176 | `result-track:9a554239e812880b6b94c33b9599eefd5c6039a723843600f5f9275a1a932976` |
| 20 | `theorem` | [partNum_euler_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/partnum-euler-succ--43441aaf329933645baa8000.md) | 181 | `result-track:43441aaf329933645baa800056ff36de7f89c0cb63cbe9a4ef2c061e64d1caf0` |
| 21 | `theorem` | [partDen_euler_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/partden-euler-succ--9653d1cab1a4ed484ba9069d.md) | 186 | `result-track:9653d1cab1a4ed484ba9069d134136e42650a055b08061f206c585a164104f40` |
| 22 | `theorem` | [dens_euler_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/dens-euler-one--db9a8c4106673224d20c6069.md) | 190 | `result-track:db9a8c4106673224d20c606900106c8c576430c18e712107539301042f65481e` |
| 23 | `theorem` | [IsEuler.dens_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/iseuler-dens-eq-one--e4932f93f8b316923a927fa0.md) | 200 | `result-track:e4932f93f8b316923a927fa04c8872a7ad113e05d12007b71fdb9763de7901bf` |
| 24 | `theorem` | [nums_euler_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/nums-euler-aux--955df9985e4b3db4770956ab.md) | 218 | `result-track:955df9985e4b3db4770956ab84bcdfcb9488aebc493428c450446fc1b73b3991` |
| 25 | `theorem` | [nums_euler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/nums-euler--89a81237f93f49bea82b0b15.md) | 231 | `result-track:89a81237f93f49bea82b0b1521e4a602990b128166e5965873d0f03c230a40a0` |
| 26 | `theorem` | [convs_euler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/convs-euler--99c817c32ba9585e177edb17.md) | 248 | `result-track:99c817c32ba9585e177edb172a9c70b9f06fbe863a8c9c01b43248570d8e7c3a` |
| 27 | `theorem` | [IsEuler.toEuler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/iseuler-toeuler--af4804b68b78a8b03852a73b.md) | 255 | `result-track:af4804b68b78a8b03852a73ba82f2f4e2a4091583ad1b26de22a83931c038577` |
| 28 | `theorem` | [convs_toEuler_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/convs-toeuler-of-forall-le--c34a3572ab2fe6c0339f7956.md) | 275 | `result-track:c34a3572ab2fe6c0339f7956405d3b3df4e3edeae98396034cff4986d1234815` |
| 29 | `theorem` | [convs_toEuler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/convs-toeuler--af13485e22b1aa6ebac3b2e6.md) | 308 | `result-track:af13485e22b1aa6ebac3b2e6a0be88abcc137b668cf4e59fe40f82d33ef5478f` |
| 30 | `theorem` | [convs_eq_sum_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/convs-eq-sum-of-forall-le--7393a960aeff3ebf4384eae0.md) | 311 | `result-track:7393a960aeff3ebf4384eae092c31401c42430dc9e0eca0f9c205825c66e299e` |
| 31 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.IsEuler.Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.SimpContFract.convs_eq_sum_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-iseuler-variant0d10a9183--e1acad058b87d87cabb2f116.md) | 356 | `result-track:e1acad058b87d87cabb2f116dda960bc2b2326b38db89ab132867224379e121f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
