# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Chain.Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "567d6e59a66ab670045eccf9995df345615ea31e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `567d6e59a66ab670045eccf9995df345615ea31e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean.json)

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
| 1 | `inductive` | [ChainClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/chainclosure--4418c14e6495d1d35cd76281.md) | 42 | `declaration-track:4418c14e6495d1d35cd762815e64337c8d0dab51de62920ec7e379ff13bdd5d2` |
| 2 | `def` | [maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/maxchain--dd57d1c53478b8aaa93eb8fb.md) | 47 | `declaration-track:dd57d1c53478b8aaa93eb8fb1a3f745734827d4ffa65029ca4f292530a92bbb3` |
| 3 | `lemma` | [chainClosure_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/chainclosure-empty--42362b99606c4ad93c4bad28.md) | 49 | `result-track:42362b99606c4ad93c4bad285ee85c3dc37aac7253d13c7312b281a72d0fc689` |
| 4 | `lemma` | [chainClosure_maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/chainclosure-maxchain--59a5f384fdd7d96d5f669fe3.md) | 53 | `result-track:59a5f384fdd7d96d5f669fe3d3d8b903f41f378edebbd9d208f1ffd6aa3615b1` |
| 5 | `lemma` | [chainClosure_succ_total_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/chainclosure-succ-total-aux--bd06f93099198a4064b58cd1.md) | 56 | `result-track:bd06f93099198a4064b58cd18b0b18b2d2b25ed0ee7e14fa26ee036eb19911af` |
| 6 | `lemma` | [chainClosure_succ_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/chainclosure-succ-total--085ccabcf117b0cc2338d33a.md) | 68 | `result-track:085ccabcf117b0cc2338d33a611ffb0cb992cbf926f63a3d1470ea49dc1f5404` |
| 7 | `lemma` | [ChainClosure.total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/chainclosure-total--f3be933a7d30cf9e4a37878f.md) | 87 | `result-track:f3be933a7d30cf9e4a37878fd80606118beee6f5a1d25542e7cf6ec84f7b1df2` |
| 8 | `lemma` | [ChainClosure.succ_fixpoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/chainclosure-succ-fixpoint--5f457c98212b70d8bd9e720e.md) | 92 | `result-track:5f457c98212b70d8bd9e720e2c3fa8b421667f312f07626dada0c5286bfcfa78` |
| 9 | `lemma` | [ChainClosure.succ_fixpoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/chainclosure-succ-fixpoint-iff--dfa4b9e389af6e44f459eec1.md) | 98 | `result-track:dfa4b9e389af6e44f459eec1d1a7038bf4cefed103a6bade1c1e0324c27b2fa0` |
| 10 | `lemma` | [ChainClosure.isChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/chainclosure-ischain--c608ef3e325571b5c01e1bf9.md) | 103 | `result-track:c608ef3e325571b5c01e1bf90b19076bc2c03ec137636e8b3af6ef5cbcbed133` |
| 11 | `theorem` | [maxChain_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variantd979f4f5352888e57e5cfc85e1e4755f0325a1ce009def1e28f162635640b1b7.lean/declarations/maxchain-spec--23c96572974d7df7dcd8598e.md) | 115 | `result-track:23c96572974d7df7dcd8598eae8e842db2ab96cda0bc06f1c4348c67c80a192b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
