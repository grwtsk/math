# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BestFirst.Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99a73eb22cfd2ca4dd45694b7870cbf4ceb59f8f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99a73eb22cfd2ca4dd45694b7870cbf4ceb59f8f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.MLList.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Estimator` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BestFirstNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/bestfirstnode--32bceee2b93780515a3fc53b.md) | 94 | `declaration-track:32bceee2b93780515a3fc53b561a74773b8fa3f2e5076a2b5a0b06730a2b93c7` |
| 2 | `def` | [BestFirstNode.estimate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/bestfirstnode-estimate--26555c25dbd73525886b23bf.md) | 107 | `declaration-track:26555c25dbd73525886b23bfc1bcd32f6cc3a2341eb6e8ac159a94fcc398b62d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/instance--be677933d9f20dfde3439dde.md) | 109 | `declaration-track:be677933d9f20dfde3439dde9914e6b9a500bb86c32117117d7475055c123d42` |
| 4 | `def` | [BestFirstQueue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/bestfirstqueue--9f1ee80ff2b99c7ed1256163.md) | 119 | `declaration-track:9f1ee80ff2b99c7ed12561633c11260077855556881891870ec44c5be6ebe983` |
| 5 | `def` | [insertAndEject](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/insertandeject--48f281644bdd8b2b50d715ce.md) | 131 | `declaration-track:48f281644bdd8b2b50d715ced19beee908b9c17de8728d600279367a0e574ebf` |
| 6 | `def` | [ensureFirstIsBest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/ensurefirstisbest--2877b5536a926b675636c517.md) | 148 | `declaration-track:2877b5536a926b675636c5172f43ccbbab1918dddc1f73a6b7e60d17c4fe32c3` |
| 7 | `def` | [popWithBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/popwithbound--63384d2c9c89b1f630bb8416.md) | 180 | `declaration-track:63384d2c9c89b1f630bb8416d129d78a573e4e635a0845c3cf51d741475cb313` |
| 8 | `def` | [popWithPriority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/popwithpriority--d57bf5cc46804c89ed8939dd.md) | 201 | `declaration-track:d57bf5cc46804c89ed8939dd107ea150882eae8873a939804ad41047be7aafd7` |
| 9 | `def` | [pop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/pop--38329c0277d6b5b76573e5c4.md) | 210 | `declaration-track:38329c0277d6b5b76573e5c48cbf39fee3b7650539a0657d39bd92fe6ecf4e25` |
| 10 | `def` | [toMLListWithPriority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/tomllistwithpriority--6bf1ee02785cd2c1ee6e3776.md) | 221 | `declaration-track:6bf1ee02785cd2c1ee6e37767b062da9ebe4275df09aac15cf98c0743c94a002` |
| 11 | `def` | [toMLList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/tomllist--ffed7ab88c581a62a7a7ca00.md) | 230 | `declaration-track:ffed7ab88c581a62a7a7ca008222b4c32e31f19360daec1ede63bac19afc916e` |
| 12 | `def` | [impl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/impl--b2a6c7407cf8f56bf7f83b08.md) | 246 | `declaration-track:b2a6c7407cf8f56bf7f83b089804f7105692b5856b0ff7e7c3945ee6bf8ba2d3` |
| 13 | `def` | [implMaxDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/implmaxdepth--33abd8dcdcb7238bf7006c47.md) | 261 | `declaration-track:33abd8dcdcb7238bf7006c476625f433b32f1887ef6fe8f243ac50c79d9935df` |
| 14 | `def` | [bestFirstSearchCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/bestfirstsearchcore--16c51ec0ee7bed75a4108cfb.md) | 296 | `declaration-track:16c51ec0ee7bed75a4108cfb4cad08b4b39b5780ec691db27fba24bc385ec1ae` |
| 15 | `instance` | [instOrderBotEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/instorderboteq--032fb2a740f1a4c2dee343f7.md) | 318 | `declaration-track:032fb2a740f1a4c2dee343f7893bca5061130e964969255d47df5b963b426026` |
| 16 | `def` | [bestFirstSearch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant32d560a4d5e0948f560c5cae3c4187104332f7e59770a5dab9e7218c394f5870.lean/declarations/bestfirstsearch--da4576b4951baf031273c948.md) | 343 | `declaration-track:da4576b4951baf031273c94804db724b6c16f3a05b880478b2562356213a1512` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
