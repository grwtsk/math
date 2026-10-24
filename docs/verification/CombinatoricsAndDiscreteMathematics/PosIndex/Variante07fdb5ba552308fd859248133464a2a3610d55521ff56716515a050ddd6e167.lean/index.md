# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PosIndex.Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c04c5ff371bf6b1ef722a0188a1740aeedd7ac2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c04c5ff371bf6b1ef722a0188a1740aeedd7ac2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/posindex--1f4e01f62ab3d8c7fb5f1afe.md) | 41 | `declaration-track:1f4e01f62ab3d8c7fb5f1afe8d434c0fa6bd0686b3b72ecb5dd3f2a2141453d7` |
| 2 | `def` | [negIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/negindex--540c57915b9d657bdb1f07b0.md) | 45 | `declaration-track:540c57915b9d657bdb1f07b03e57eb27f09adff5013aa62ad1034ec19310b446` |
| 3 | `def` | [posIndexAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/posindexabove--deea203d76ae2089964e0153.md) | 50 | `declaration-track:deea203d76ae2089964e0153b405cee453ff8041a7ad28aef89521ccf92f2600` |
| 4 | `lemma` | [posIndex_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/posindex-le-card--60281dbacf2c5556176dc46d.md) | 53 | `result-track:60281dbacf2c5556176dc46db3d1b3516788d4a21987d0c88970c4d7b2fbecae` |
| 5 | `lemma` | [posIndex_eq_rank_of_posSemidef](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/posindex-eq-rank-of-possemidef--e3bcad0a457c5a5ca1a33de4.md) | 59 | `result-track:e3bcad0a457c5a5ca1a33de463c4a4b590861328d8f5731f24c7a2b76c087910` |
| 6 | `def` | [rtrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/rtrace--d72d9f4c51057e06156861fc.md) | 70 | `declaration-track:d72d9f4c51057e06156861fc3e0346c58ce839c26ab4d673999ae24f61393f39` |
| 7 | `def` | [frobSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/frobsq--7c3c39c9613fb9de652a1fb9.md) | 73 | `declaration-track:7c3c39c9613fb9de652a1fb9fd4f5c679778051c0f97c83b273ee49c0776189e` |
| 8 | `lemma` | [rtrace_eq_sum_eigenvalues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/rtrace-eq-sum-eigenvalues--33b23843e9bdd8e9e1345d32.md) | 75 | `result-track:33b23843e9bdd8e9e1345d32742ce552d0e16742b6c40d57d80bb28243ee6d59` |
| 9 | `def` | [eigEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/eigequiv--03d24e770cacb2bb43c879d3.md) | 87 | `declaration-track:03d24e770cacb2bb43c879d39def768c63d61cf44244e8dd4f3be5de6ebe7dd6` |
| 10 | `lemma` | [eigenvalues_eigEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/eigenvalues-eigequiv--c03195341ecd5307e6968bda.md) | 90 | `result-track:c03195341ecd5307e6968bda3f69c1b3fbe8727e9a7e8f56bd5e169f097a838d` |
| 11 | `lemma` | [sum_eigenvalues_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/sum-eigenvalues-reindex--158c721306b698e3e1864d6f.md) | 96 | `result-track:158c721306b698e3e1864d6f68b8fefef2573c8693f3ddb85335a37f3df54f9c` |
| 12 | `lemma` | [card_eigenvalues_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/card-eigenvalues-reindex--88d8ffc5890e03bf7f3f9050.md) | 101 | `result-track:88d8ffc5890e03bf7f3f90504e5dd2c174ffe4ed5f335bf84a37e5d63101a49e` |
| 13 | `lemma` | [frobSq_hermitian_eq_sum_sq_eigenvalues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/declarations/frobsq-hermitian-eq-sum-sq-eigenvalues--83775c866286db7f4d9cf946.md) | 117 | `result-track:83775c866286db7f4d9cf94665dae8a549f5b67df7d76690d67bb22c699a5d57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
