# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixFree.Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4393e606846361022bcb3f397706776de3d0430",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4393e606846361022bcb3f397706776de3d0430`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean.json)

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
| 1 | `def` | [IsPrefixFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean/declarations/isprefixfree--d691d870303907aeebb121af.md) | 36 | `declaration-track:d691d870303907aeebb121af83d7c82541787dad9b8fb0d696f04eb0ca6c63dd` |
| 2 | `lemma` | [IsPrefixFree.eq_singleton_empty_of_empty_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean/declarations/isprefixfree-eq-singleton-empty-of-empty-mem--d0c5a3f4a5d7b9e63089a00d.md) | 40 | `result-track:d0c5a3f4a5d7b9e63089a00d62fe03ea83cec45575b1070620de31fc1b5c8a66` |
| 3 | `lemma` | [IsPrefixFree.anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean/declarations/isprefixfree-anti--286ca64ba2eab5a0d6cc7f81.md) | 46 | `result-track:286ca64ba2eab5a0d6cc7f81504e45f26f97a41ec5e8fa525fb89263c340eb98` |
| 4 | `theorem` | [IsPrefixFree.isUniquelyDecodable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean/declarations/isprefixfree-isuniquelydecodable--7b05844707f1118b0f3cc141.md) | 50 | `result-track:7b05844707f1118b0f3cc14167f893c6dc7d3f1344a95294b03abac86dc38344` |
| 5 | `theorem` | [IsPrefixFree.isUniquelyDecodable_of_nontrivial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean/declarations/isprefixfree-isuniquelydecodable-of-nontrivial--d0bdbeca55dd04a126166868.md) | 80 | `result-track:d0bdbeca55dd04a1261668682389bce945cc997fe6cfc1a34438b1a2bde4ac81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
