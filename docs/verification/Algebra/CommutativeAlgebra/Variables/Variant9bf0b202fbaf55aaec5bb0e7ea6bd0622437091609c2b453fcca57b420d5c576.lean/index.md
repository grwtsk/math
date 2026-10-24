# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Variables.Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad822a86290b0bc126556ae4f9086270579aa598",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad822a86290b0bc126556ae4f9086270579aa598`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Degrees` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vars](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars--8a81da294996a4f70f4bab95.md) | 65 | `declaration-track:8a81da294996a4f70f4bab95052f974f7ab035e2c954ea586bbbc5de0d4643fb` |
| 2 | `theorem` | [vars_def](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-def--d634054c1564e99200acb817.md) | 69 | `result-track:d634054c1564e99200acb8174360dcfb33e0bffce9db6da98d1d63f996bab55b` |
| 3 | `theorem` | [vars_0](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-0--9ecf36465babbdb8165b38d4.md) | 74 | `result-track:9ecf36465babbdb8165b38d4c526281b058a8adb3a359e0973ed1be23ade53d1` |
| 4 | `theorem` | [vars_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-monomial--d92cc29b3cf226f9abc06c3d.md) | 78 | `result-track:d92cc29b3cf226f9abc06c3d79b9389b641984fb28a6f0d5b17503779d424cc5` |
| 5 | `theorem` | [vars_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-c--4122bd570a681a1f45c3bfef.md) | 82 | `result-track:4122bd570a681a1f45c3bfef901acdc9a7929c9c865235d30777e1be95768c3a` |
| 6 | `theorem` | [vars_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-x--ac66d7092931854103e992a8.md) | 86 | `result-track:ac66d7092931854103e992a84e04dded9f72542454fb425bfc9d463a84162161` |
| 7 | `theorem` | [mem_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/mem-vars--640e5fc12ef2cdfa4600acf8.md) | 89 | `result-track:640e5fc12ef2cdfa4600acf80752ddddebad56357fc10c699f4582ed9ffadf4a` |
| 8 | `theorem` | [mem_support_notMem_vars_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/mem-support-notmem-vars-zero--be190be3d777d807eeb3c253.md) | 92 | `result-track:be190be3d777d807eeb3c25381289818e3d0f084b5e7dfe1fd9d6afe0233dc25` |
| 9 | `theorem` | [vars_add_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-add-subset--ea95c83946204c7afd04d6f4.md) | 100 | `result-track:ea95c83946204c7afd04d6f46e8d6487442c5aaf2528f54f0b203c8573ed87df` |
| 10 | `theorem` | [vars_add_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-add-of-disjoint--65e0be4cc2fdb5d3c5b8b3f1.md) | 106 | `result-track:65e0be4cc2fdb5d3c5b8b3f19ede042c4705d72f352fd26c775d3e0717ec2d7b` |
| 11 | `theorem` | [vars_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-mul--a18980b93dbae9287b368c4c.md) | 114 | `result-track:a18980b93dbae9287b368c4cf87f85b1a9530ef3e7437ca13a42d486f20bff91` |
| 12 | `theorem` | [vars_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-one--866e5c0a97fac92c381a6634.md) | 119 | `result-track:866e5c0a97fac92c381a663408f88873edbcd9621c7f68bf39cb8979d8becb7b` |
| 13 | `theorem` | [vars_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-pow--36c8dfa83570ff426294fecc.md) | 122 | `result-track:36c8dfa83570ff426294fecc1d72ec9282a679a5558e51711895e544f5ade666` |
| 14 | `theorem` | [vars_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-prod--02acb518dfc5982bd0b62d2a.md) | 134 | `result-track:02acb518dfc5982bd0b62d2af5788174570a60a1148fc3da84ed14519133276f` |
| 15 | `theorem` | [vars_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-c-mul--746a112cb18ad495db5659a5.md) | 148 | `result-track:746a112cb18ad495db5659a5eab5e8db9c4c17cf32218810face7879e768290a` |
| 16 | `theorem` | [vars_sum_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-sum-subset--fa841757f47a55087c4a3209.md) | 165 | `result-track:fa841757f47a55087c4a32097853dfe1babf6f5cd16ac1f4769976ebb9fe0255` |
| 17 | `theorem` | [vars_sum_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-sum-of-disjoint--b73dc9485946bf4d46013a36.md) | 176 | `result-track:b73dc9485946bf4d46013a36817916b996f361c40c2345f84e9a0131597cac18` |
| 18 | `theorem` | [vars_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-map--a570841a71980c6b4b87a3a5.md) | 200 | `result-track:a570841a71980c6b4b87a3a568c34d0754c2edfcdc6ca3e0e45b010c697fab0b` |
| 19 | `theorem` | [vars_map_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-map-of-injective--1955adabbde5132bd4da158d.md) | 205 | `result-track:1955adabbde5132bd4da158db5ce9cd784f8d87d1c679cf2076c0e3a345464a5` |
| 20 | `theorem` | [vars_monomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-monomial-single--0095f2d6bd2f07b3e21bc1c4.md) | 208 | `result-track:0095f2d6bd2f07b3e21bc1c47179febcea16b6a9ce79899ece3d3b196bd68ec5` |
| 21 | `theorem` | [vars_eq_support_biUnion_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-eq-support-biunion-support--ffe22b868e1b51a513a63e02.md) | 212 | `result-track:ffe22b868e1b51a513a63e024d652736d9265c794ac3f59232e2ed34c52cee2a` |
| 22 | `theorem` | [eval₂Hom_eq_constantCoeff_of_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/eval-hom-eq-constantcoeff-of-vars--fe7f28677368455b200e1f08.md) | 228 | `result-track:fe7f28677368455b200e1f0803b58d6ee788ec2ceac92402d5148622c1aead9b` |
| 23 | `theorem` | [aeval_eq_constantCoeff_of_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/aeval-eq-constantcoeff-of-vars--c551620646e04c54bcd0dca8.md) | 256 | `result-track:c551620646e04c54bcd0dca8961edc11625fd8b38eba31425e4e123a331c2aaa` |
| 24 | `theorem` | [eval₂Hom_congr'](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/eval-hom-congr--929f1aecca94d8cf007158bb.md) | 260 | `result-track:929f1aecca94d8cf007158bb45ee2bf7a7150bd72909daf53267f121fe70a53b` |
| 25 | `theorem` | [hom_congr_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/hom-congr-vars--4d276e2f592a5bcce484cfda.md) | 281 | `result-track:4d276e2f592a5bcce484cfda6f234258a051086b52271bc1c8dde0220e93a6ad` |
| 26 | `theorem` | [exists_rename_eq_of_vars_subset_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/exists-rename-eq-of-vars-subset-range--2d11b6bf43159946d92ffe01.md) | 289 | `result-track:2d11b6bf43159946d92ffe0147cdc7ddad71129d644062b887c157e5c201cb97` |
| 27 | `theorem` | [vars_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/vars-rename--502ef65ae6d75a81d7aa8d4a.md) | 302 | `result-track:502ef65ae6d75a81d7aa8d4a6226c2ae0adf4dd8367ee9888b536404833fb861` |
| 28 | `theorem` | [mem_vars_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/mem-vars-rename--c18f7d1ba25e3f1fa99d05f5.md) | 309 | `result-track:c18f7d1ba25e3f1fa99d05f5bb5e30a53fcba5bbb59cf8392cc06cb2f0dccc2d` |
| 29 | `lemma` | [aeval_ite_mem_eq_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/aeval-ite-mem-eq-self--29ba9fc97fc1c1aeaec2c4c0.md) | 314 | `result-track:29ba9fc97fc1c1aeaec2c4c0260dd6be4253af9d4efd5bd021ceb055bbf933cb` |
| 30 | `lemma` | [leadingCoeff_toLex](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/leadingcoeff-tolex--9ff0dcc3ac0e474ad30f1070.md) | 329 | `result-track:9ff0dcc3ac0e474ad30f107077934c609ba0f6492aa93a93be48af8d4c41d03a` |
| 31 | `lemma` | [supDegree_toLex_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/supdegree-tolex-c--367a6de5d89fa3036c65d1a3.md) | 335 | `result-track:367a6de5d89fa3036c65d1a36530b181c128b0db5ee2c79737b7badad0d57039` |
| 32 | `lemma` | [leadingCoeff_toLex_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/declarations/leadingcoeff-tolex-c--5860925f8a397dee1d75b222.md) | 339 | `result-track:5860925f8a397dee1d75b2229f30b102473380318f92a1fbb52bfb7a6d6d0275` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
