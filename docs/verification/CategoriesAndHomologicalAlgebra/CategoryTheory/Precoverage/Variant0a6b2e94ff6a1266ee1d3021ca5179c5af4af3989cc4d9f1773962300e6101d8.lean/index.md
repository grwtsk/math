# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Precoverage.Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e889494c1f5733cd24819014b2f35ee2244479e6",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e889494c1f5733cd24819014b2f35ee2244479e6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean.json)

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
| 1 | `lemma` | [faithful_pullFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/faithful-pullfunctor--8f3b23f03d28a920e50c7df9.md) | 70 | `result-track:8f3b23f03d28a920e50c7df98e2cc9dac5050851a7ff2ed61030a617f621720a` |
| 2 | `abbrev` | [sieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/sieve--d04271a5d245e1ac6f5351e8.md) | 110 | `declaration-track:d04271a5d245e1ac6f5351e82b28637e0e459c5bed7686fb19814a7b202cbd5b` |
| 3 | `lemma` | [sieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/sieve-mem--4bb1abdcb3ddf046311d2c40.md) | 116 | `result-track:4bb1abdcb3ddf046311d2c4070002a06845d7ea4d986b61b5a8c55dfcdf9d7e8` |
| 4 | `lemma` | [mem_sieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/mem-sieve--63ff2cd541026df6e44c0df5.md) | 120 | `result-track:63ff2cd541026df6e44c0df540543af2da2abb316502565f4ee68f6115ff33e3` |
| 5 | `lemma` | [exists_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/exists-fac--45e5c72fe7bcf8acf97198c8.md) | 132 | `result-track:45e5c72fe7bcf8acf97198c83fd8c5ec39fca703927667591acfc2f8b742eeab` |
| 6 | `def` | [idx](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/idx--08e9eb3a842ac562ee45ee88.md) | 139 | `declaration-track:08e9eb3a842ac562ee45ee882c18de998768b0a317c086428488b2084466bc63` |
| 7 | `def` | [hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/hom--c9de2e8b87d0bc36ac5fdcb9.md) | 143 | `declaration-track:c9de2e8b87d0bc36ac5fdcb96c5af24595fb12eaa41264a153193f97ba923686` |
| 8 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/fac--a6ff2ed4b26df3775f111242.md) | 146 | `result-track:a6ff2ed4b26df3775f111242f9f56a37a0997576195f59e37f0a87b8ecc2c26e` |
| 9 | `def` | [mor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/mor--bd744e6db4c8402ebb36a981.md) | 155 | `declaration-track:bd744e6db4c8402ebb36a981bc975f05fa21056ae7b7e0fad35f76594375a876` |
| 10 | `lemma` | [mor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/mor-eq--aba4379907afcb58a9ed2232.md) | 160 | `result-track:aba4379907afcb58a9ed2232d061d0e6d656ba54a6e93913dbbee648c8f688cf` |
| 11 | `lemma` | [mor_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/mor-precomp--d019b4a686bbf88c252d455c.md) | 170 | `result-track:d019b4a686bbf88c252d455ce2cf0c2803b55f77b19c5cc24d4a7f4b928a72a2` |
| 12 | `lemma` | [mor_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/mor-unique--6a16ce5123a059afc705c471.md) | 193 | `result-track:6a16ce5123a059afc705c4712e5d8de6650a1d9086a058f1e8e2ab23a6777a4d` |
| 13 | `def` | [familyOfElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/familyofelements--e03fd847547e8c46876bf527.md) | 217 | `declaration-track:e03fd847547e8c46876bf527f040b9e08cad04a1ccc2c86e8d60f0a8c19ca116` |
| 14 | `lemma` | [familyOfElements_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/familyofelements-eq--662b662f0615a309c5f4954f.md) | 225 | `result-track:662b662f0615a309c5f4954f47a6814a929cd6263b0f8789c9bae64aef407a44` |
| 15 | `lemma` | [compatible_familyOfElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/compatible-familyofelements--34e96507035c46b1999d23f8.md) | 232 | `result-track:34e96507035c46b1999d23f86b9b50279fb532f3bd3a6d916288ed6b70fbc86a` |
| 16 | `def` | [hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/hom--7ef085507be13d0c0ce37b84.md) | 253 | `declaration-track:7ef085507be13d0c0ce37b847ba9b1c3ff8ca355c5acb967108e4f33ff2fe848` |
| 17 | `lemma` | [map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/map-hom--fed85234e3d289736c9d3947.md) | 261 | `result-track:fed85234e3d289736c9d3947d9bca1b084e1778b7ec80fe18e4283076328c39a` |
| 18 | `lemma` | [comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/comm--fb4c105e63775b06236afb34.md) | 278 | `result-track:fb4c105e63775b06236afb3457000a7040d5db0e3438d91a2403c8aea6cff35e` |
| 19 | `lemma` | [full_pullFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/full-pullfunctor--e52161764029fa1ef98fc277.md) | 314 | `result-track:e52161764029fa1ef98fc277ad0069b7d6171584839b04debffdb436bc6289c6` |
| 20 | `def` | [fullyFaithfulPullFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/fullyfaithfulpullfunctor--d68d669da12b3880356b2c00.md) | 330 | `declaration-track:d68d669da12b3880356b2c0015ac7f07bb723e6bb22c9c5cec93a51d7daa0331` |
| 21 | `lemma` | [isEquivalence_toDescentData_of_sieve_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/isequivalence-todescentdata-of-sieve-le--c591da2395947c48c18f0a4b.md) | 336 | `result-track:c591da2395947c48c18f0a4b23f480d7da79504d5a0dab4daea01f0d3a1eee6b` |
| 22 | `lemma` | [IsStackFor.of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/isstackfor-of-le--6fe13e22a6c9af7a108812bc.md) | 369 | `result-track:6fe13e22a6c9af7a108812bc03ce44ff1ad28d9bd99663eb9280beac1cca4b68` |
| 23 | `lemma` | [IsStackFor.of_le'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/isstackfor-of-le--846ec8b92dfebd976d215e92.md) | 380 | `result-track:846ec8b92dfebd976d215e929b513d5a4db1ea450526c3c9ec84c5a1f0c8fba2` |
| 24 | `lemma` | [IsPrestack.of_precoverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/isprestack-of-precoverage--741b1ef196b7ec994c1b2245.md) | 396 | `result-track:741b1ef196b7ec994c1b2245108f3b5e907cd2e436c86b9d641a7e6c9271f7b0` |
| 25 | `lemma` | [IsStack.of_precoverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/declarations/isstack-of-precoverage--2125c10122a64b02c684fe64.md) | 418 | `result-track:2125c10122a64b02c684fe642f41192f1a7cf891b74a331f8bc97b8e5197df3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
