# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dirichlet.Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33c727afc40931eafea5a0148db526f4e9b76d2c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33c727afc40931eafea5a0148db526f4e9b76d2c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier.Analysis` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgeDifferenceProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/edgedifferenceproduct--c2aa9e9b797f4a3d76e148f8.md) | 8 | `declaration-track:c2aa9e9b797f4a3d76e148f843275e0ab9c82e2f1f40d9ae60f9593c660635ce` |
| 2 | `def` | [orderedDirichletNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/ordereddirichletnumerator--93365a4a4cb5f2f6f7868f39.md) | 21 | `declaration-track:93365a4a4cb5f2f6f7868f397e30f63041e405e865ea4b03af837a2b9f7afb8f` |
| 3 | `def` | [unorderedDirichletNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/unordereddirichletnumerator--2f52c98512a58fefa1dd3f7f.md) | 35 | `declaration-track:2f52c98512a58fefa1dd3f7f7294dc95dc68262fbda90659e03ca02f2c29788d` |
| 4 | `inductive` | [DirichletConvention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/dirichletconvention--616f51275d58a288b9d6d44b.md) | 48 | `declaration-track:616f51275d58a288b9d6d44bf540b6994f7ac450eb9c4feef9a10bd625792510` |
| 5 | `def` | [dirichletNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/dirichletnumerator--8b632a0e4551491f6cbe4e5a.md) | 54 | `declaration-track:8b632a0e4551491f6cbe4e5a4f467bd548b50e4daf1ba3ac52c944e9c9dd588e` |
| 6 | `theorem` | [dirichletNumerator_orderedEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/dirichletnumerator-orderededges--e6e372bc63339bcda2d6692e.md) | 61 | `result-track:e6e372bc63339bcda2d6692e9a0cd145b3caab7a7e096c9c9fbcf2a0cb7a94e2` |
| 7 | `theorem` | [dirichletNumerator_unorderedEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/dirichletnumerator-unorderededges--4f983aa9d695b8b0202a0098.md) | 66 | `result-track:4f983aa9d695b8b0202a00986209843052a9aca7bf4ff7d880307a973578378c` |
| 8 | `def` | [orderedDirichletEnergyNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/ordereddirichletenergynumerator--186269a7f7d723867a64d689.md) | 72 | `declaration-track:186269a7f7d723867a64d6898e59fb241023fbaf50cfb5e4506d7b74ee30b31e` |
| 9 | `def` | [unorderedDirichletEnergyNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/unordereddirichletenergynumerator--6ded144ccf5cdf563591eaef.md) | 77 | `declaration-track:6ded144ccf5cdf563591eaefe250434193236e4562f40ce162ad37a5a62654b7` |
| 10 | `theorem` | [orderedDirichletEnergy_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/ordereddirichletenergy-eq-self--43b84e8be7f344276cd91419.md) | 81 | `result-track:43b84e8be7f344276cd91419bfca3ec04bbfe0495109557cf965436b55cb38c1` |
| 11 | `theorem` | [unorderedDirichletEnergy_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f.lean/declarations/unordereddirichletenergy-eq-self--63dfa81985a94074a38a0e00.md) | 86 | `result-track:63dfa81985a94074a38a0e0044da72d0b38ba56b71bc3842b84f1374fc838eef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
