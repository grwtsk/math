# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRange.Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71efa1269ef1ab71f54378749884904135e31d9d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71efa1269ef1ab71f54378749884904135e31d9d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Array.OfFn` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean/declarations/finrange--4dd09c7d0ba5a4e19ae083fd.md) | 37 | `declaration-track:4dd09c7d0ba5a4e19ae083fd0884c482d749180b3855e5c05d2d342366f4f247` |
| 2 | `theorem` | [size_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean/declarations/size-finrange--71301089c9bb68a8112a82ed.md) | 39 | `result-track:71301089c9bb68a8112a82ed851681bed5f081a8bd0d543c7404df9dfbd6cd55` |
| 3 | `theorem` | [getElem_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean/declarations/getelem-finrange--4cda37f2aa09c0a6026d67f8.md) | 42 | `result-track:4cda37f2aa09c0a6026d67f89ebc8969e1ace9853606ed8855da5f0957b249ef` |
| 4 | `theorem` | [finRange_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean/declarations/finrange-zero--dfd53ade3f9ba0ee1fe05204.md) | 46 | `result-track:dfd53ade3f9ba0ee1fe05204927e62249058059370c25062922be3b723253f6f` |
| 5 | `theorem` | [finRange_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean/declarations/finrange-succ--9306fee15af1c3757018d128.md) | 48 | `result-track:9306fee15af1c3757018d128399cc9efa748f6cc0593b9f7329db977f0123622` |
| 6 | `theorem` | [finRange_succ_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean/declarations/finrange-succ-last--7e5803e87d6641f022a21690.md) | 55 | `result-track:7e5803e87d6641f022a2169094a51120f8afa47e40151603709ade980b79c24f` |
| 7 | `theorem` | [finRange_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794.lean/declarations/finrange-reverse--64aad4b0c1bc0af51a9ac21a.md) | 66 | `result-track:64aad4b0c1bc0af51a9ac21afb831829b7d3808b10e0cd995c1496e731cdee2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
