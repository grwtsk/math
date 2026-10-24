# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FactorThru.Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d31664987a7c8fca1e47ed3507b3e4b305626a7d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d31664987a7c8fca1e47ed3507b3e4b305626a7d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean.json)

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
| 1 | `def` | [Factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors--8d31a39a1a5b11a0767fd37a.md) | 46 | `declaration-track:8d31a39a1a5b11a0767fd37a9a14d41a3ab9f447c6a20f85c0cdd94aab6c4f24` |
| 2 | `theorem` | [factors_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-congr--86936f74bf277bbc8b234d62.md) | 49 | `result-track:86936f74bf277bbc8b234d6250e0dc1ddd19fa4c250233ef156401cf8ade2315` |
| 3 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru--b32bb9d65f35503342d29142.md) | 56 | `declaration-track:b32bb9d65f35503342d291426d6ea1a8764bcd37878a7e77230daa0c9f86a8cb` |
| 4 | `def` | [Factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors--1163459cdb5be46de33ff97a.md) | 67 | `declaration-track:1163459cdb5be46de33ff97a8550b8727eeb114efad1436f1305a4f944fbb37b` |
| 5 | `theorem` | [mk_factors_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/mk-factors-iff--4c14a5bd14fe84e8dcf71d38.md) | 79 | `result-track:4c14a5bd14fe84e8dcf71d38efe724504a6ca340af9db2d4cc6635c22a6d5476` |
| 6 | `theorem` | [mk_factors_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/mk-factors-self--8d44b68da20587373e9f83ac.md) | 83 | `result-track:8d44b68da20587373e9f83ac8b447e75facf416e011ec6a3da7d13b92cbd0d17` |
| 7 | `theorem` | [factors_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-iff--1a27111877837e3eeb38bf4a.md) | 86 | `result-track:1a27111877837e3eeb38bf4af7743278c263063a60ee09af32b4713b165b7ec9` |
| 8 | `theorem` | [factors_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-self--08f304daddd021d571a30c08.md) | 90 | `result-track:08f304daddd021d571a30c0858da8b32b09994051e7327f47c609150c84e810f` |
| 9 | `theorem` | [factors_comp_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-comp-arrow--bbd207f372aba83c647562b8.md) | 93 | `result-track:bbd207f372aba83c647562b80dad1cd701178cf735967427fb312898aa24bf3d` |
| 10 | `theorem` | [factors_of_factors_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-of-factors-right--39a1f37fbd588fa5873ff942.md) | 96 | `result-track:39a1f37fbd588fa5873ff94209a55065c7bd18db1efcfa401160541dc7c30333` |
| 11 | `theorem` | [factors_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-zero--1d078764f7b6828bee9f2a74.md) | 103 | `result-track:1d078764f7b6828bee9f2a74e82a6bda6ff0fec4bdbaee4645bacc7c5d5c36aa` |
| 12 | `theorem` | [factors_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-of-le--18a5be37b3885e9f29022f62.md) | 107 | `result-track:18a5be37b3885e9f29022f62934cbf3cb0a906d331c8885bcd9fd52f6304b233` |
| 13 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru--21c32d7d936b18ff3dc47fad.md) | 114 | `declaration-track:21c32d7d936b18ff3dc47fad444823b2025455f48021a111596188cad94ae95e` |
| 14 | `theorem` | [factorThru_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-arrow--914d6b93a8bec5b6c1321356.md) | 118 | `result-track:914d6b93a8bec5b6c1321356cb99fa0f14bc8135bd23c99287bde6d7a31d6c6a` |
| 15 | `theorem` | [factorThru_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-self--fb1d7ae171d9a7a447c664cb.md) | 123 | `result-track:fb1d7ae171d9a7a447c664cb96662ec2da840a1630eacb93c4200b3089663423` |
| 16 | `theorem` | [factorThru_mk_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-mk-self--7658c03ec434722dabdf5f30.md) | 128 | `result-track:7658c03ec434722dabdf5f3015f9006d9b7329c1272639f3af576dd6df5bf6cd` |
| 17 | `theorem` | [factorThru_comp_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-comp-arrow--88b91c534705c4a5d612a944.md) | 134 | `result-track:88b91c534705c4a5d612a94435e0bff499b247b89e3d003abf05f5613bf64205` |
| 18 | `theorem` | [factorThru_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-eq-zero--2ea5afd03060da3b29b25e96.md) | 140 | `result-track:2ea5afd03060da3b29b25e96a3041b120f4c9a152d7c0fd0263fe6fb6e5a4be5` |
| 19 | `theorem` | [factorThru_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-right--265c7544d382c08cb9237800.md) | 150 | `result-track:265c7544d382c08cb9237800fff4e44bb41477bd4003ba952481fadb00a6a55d` |
| 20 | `theorem` | [factorThru_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-zero--fd19b30428c622f869ef6baf.md) | 156 | `result-track:fd19b30428c622f869ef6baf6808412bcaedced236d75ccf86b4c99f8c016c6b` |
| 21 | `theorem` | [factorThru_ofLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-ofle--8110c35c919272e7731b4316.md) | 162 | `result-track:8110c35c919272e7731b431619b368172848360e3a23ffa5f781ed374a650437` |
| 22 | `theorem` | [le_of_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/le-of-factors--2a027616d589a5a808e77b8c.md) | 167 | `result-track:2a027616d589a5a808e77b8cee43efcb8a2be7a450f559bda3a64ed23ede1009` |
| 23 | `def` | [homOfFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/homoffactors--8b99fa8de9aea2bf7c7140a2.md) | 174 | `declaration-track:8b99fa8de9aea2bf7c7140a235fa38cc5a57116bd331bf3e0cdfd98ba4db8f5b` |
| 24 | `theorem` | [factors_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-add--65ca40972c654aa882934200.md) | 181 | `result-track:65ca40972c654aa882934200a2b5a942136b2fee2f1c8ee4d85b369bd24d4308` |
| 25 | `theorem` | [factorThru_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-add--4a697d70e0b0fd277d630a20.md) | 187 | `result-track:4a697d70e0b0fd277d630a2072b740bc00edcf8a73c02e9b995abaa11e6d2e02` |
| 26 | `theorem` | [factors_left_of_factors_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-left-of-factors-add--92c2971755b1f6206306f989.md) | 193 | `result-track:92c2971755b1f6206306f989ae143f2ebcaff87ff2c61916fff98e7cb76ba50e` |
| 27 | `theorem` | [factorThru_add_sub_factorThru_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-add-sub-factorthru-right--5de78814ca480eb3f72c81c2.md) | 198 | `result-track:5de78814ca480eb3f72c81c207b651990ff7763ba7f0c99853696caf4b3294ad` |
| 28 | `theorem` | [factors_right_of_factors_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factors-right-of-factors-add--d8ff2b37162260ad2edf8c0c.md) | 205 | `result-track:d8ff2b37162260ad2edf8c0c415e5976437c73f761b8a010d9991c01d56e12b7` |
| 29 | `theorem` | [factorThru_add_sub_factorThru_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/declarations/factorthru-add-sub-factorthru-left--794bf1dd2eb00fd20e86a04e.md) | 210 | `result-track:794bf1dd2eb00fd20e86a04e7b3e571cfbffe61558221384afe60223f6277409` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
